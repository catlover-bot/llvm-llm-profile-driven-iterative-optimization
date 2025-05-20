<details><summary>c</summary>

---

##  オリジナル実装：`floyd-warshall.c`

* 構造：三重ループ `k→i→j`
* 処理内容：`path[i][j] = min(path[i][j], path[i][k] + path[k][j])`
*  並列化なし（OpenMPなし）
*  SIMD化なし（ベクトル命令化考慮なし）
*  `#pragma scop` あり → Polybenchによる静的最適化の候補

---

##  `opt_1.c` の違い【構文簡略化】

*  計算内容・構造ともに**baseと同一**
*  条件式の三項演算で簡潔に記述

  ```c
  path[i][j] = path[i][j] < path[i][k] + path[k][j] ? path[i][j] : path[i][k] + path[k][j];
  ```
*  OpenMP構文なし
*  SIMD指示なし

>  **opt\_1 = baseと同様の逐次構造、構文最適化型**

---

##  `opt_2.c` の違い【明確な配列alias制御】

*  `restrict` 付きポインタで `path[i]`, `path[k]` の**重なりを排除**
*  加算を一時変数 `sum` に切り出し → 分岐前評価により**依存関係の明示化**

  ```c
  DATA_TYPE sum = path_i[k] + path_k[j];
  if (path_i[j] > sum)
    path_i[j] = sum;
  ```
*  OpenMPなし
*  SIMDなし

>  **opt\_2 = alias明示による依存性排除と分岐評価でのベクトル化準備構造**

---

## ⚙️ `opt_3.c` の違い【明示的ループ最適化・メモリ局所性対応】

*  `restrict` + `path[i]` と `path[k]` を**ポインタ変数でバインド**
*  `path_i_k` を外ループでキャッシュ → メモリアクセス削減
*  `sum` を使って同様に分岐前に評価

  ```c
  const DATA_TYPE *restrict path_k = path[k];
  DATA_TYPE *restrict path_i = path[i];
  DATA_TYPE path_i_k = path_i[k];
  ...
  DATA_TYPE sum = path_i_k + path_k[j];
  path_i[j] = (path_i[j] > sum) ? sum : path_i[j];
  ```
*  OpenMP構文なし
*  SIMD命令化構文なし

>  **opt\_3 = キャッシュ効率・明示的評価順でベクトル化／パイプライン化への備え強化**

---

##  最適化比較サマリ

| 特徴                     | base.c | opt\_1.c | opt\_2.c | opt\_3.c     |
| ---------------------- | ------ | -------- | -------- | ------------ |
| 三項演算で最小値選択             | ✅      | ✅        | ❌（if文）   | ❌（if文）       |
| `restrict` によるalias排除  | ❌      | ❌        | ✅        | ✅            |
| `sum = a + b` 評価順最適化   | ❌      | ❌        | ✅        | ✅            |
| `path[i][k]` ループ外キャッシュ | ❌      | ❌        | ❌        | ✅            |
| OpenMP並列化              | ❌      | ❌        | ❌        | ❌            |
| SIMD対応構文               | ❌      | ❌        | ❌        | ❌（ただし準備構造あり） |

---

##  総括

* **opt\_1**：構文最適化による**読みやすさ改善**
* **opt\_2**：`restrict`と分岐条件分離により**LLVM/Clangの自動ベクトル化支援**
* **opt\_3**：**メモリ局所性と評価順制御で、ベクトル化＋パイプライン向けに最も最適**

---

</details>

<details><summary>ll</summary>

---

##  `floyd-warshall_opt_base.ll`（ベース）

*  `!llvm.loop.vectorize.enable` メタデータなし
*  SIMD命令（例：`<N x float>`、`vector.reduce.*`）無し
*  OpenMP構造も無し
*  三重ループ構造そのまま、スカラー演算中心 (`fadd`, `fcmp`, `select`)
*  メモリアクセスは `load`, `store` で逐次的に実施

>  **base = スカラーモデル、最適化されていない生IR**

---

##  `opt_1.ll`（構文整理版）

*  IR構造は `base` とほぼ同一（命名規則やコメント改善）
*  SIMD命令なし
*  vectorizeメタなし
*  三項演算形式が `select` 命令に展開（LLVM IRとしては通常）

>  **opt\_1 = baseと機能等価。`select`ベースの明示処理あり**

---

##  `opt_2.ll`（依存性除去意識版）

*  メモリアクセスでの `alias.scope` や `noalias` が注入
*  `!llvm.loop.vectorize.enable = true` メタが各ループに付与
*  SIMD命令は生成されていない
*  OpenMP構造無し
*  `sum = path_i_k + path_k_j` の中間評価がIR内でも明確（演算順が整理されている）

>  **opt\_2 = ベクトル化ヒントあり。中間評価明示でベクトル化しやすいIRに変換**

---

##  `opt_3.ll`（最適構造誘導版）

*  `!llvm.loop.vectorize.*` メタが**すべてのループに展開**

  * `enable = true`, `width = 4`, `interleave.count = 2` など確認
*  `align 32` や `nontemporal` hints が `load`, `store` に付加されている場合あり
*  `restrict`相当の `alias.scope`, `noalias` 属性が `opt_2` よりさらに徹底
*  `path_i_k` としての定数保持がIRにも反映 → `load` 最適化されている
*  SIMD命令（`<N x float>`）の展開は依然確認されず

>  **opt\_3 = LLVMが自動ベクトル化しやすいよう最大限誘導されたIR**

---

##  比較表（IR視点）

| 特徴                    | base.ll | opt\_1.ll | opt\_2.ll | opt\_3.ll                        |
| --------------------- | ------- | --------- | --------- | -------------------------------- |
| `vectorize.enable` メタ | ❌       | ❌         | ✅         | ✅ + `width`, `interleave`など詳細    |
| SIMD命令 `<N x float>`  | ❌       | ❌         | ❌         | ❌（ただし展開準備構造あり）                   |
| `select` 式による最小選択     | ✅       | ✅         | ✅（演算展開）   | ✅（演算展開＋最適化属性）                    |
| alias/noalias スコープ制御  | ❌       | ❌         | ✅         | ✅（さらに徹底）                         |
| ループの最適化誘導メタ構成         | ❌       | ❌         | 部分的       | ✅ 完全指定（ループ毎）                     |
| `load/store` のアラインメント | 通常      | 通常        | 一部        | ✅ `align 32`, `nontemporal`可能性あり |

---

##  結論

* **opt\_2.ll**：依存性情報と演算順制御によりLLVMの自動最適化対応力を高めている
* **opt\_3.ll**：アラインメント・メタデータ・ループ属性含め、LLVMにとって**完全な自動ベクトル化候補**IR

---

</details>
