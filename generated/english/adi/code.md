<details><summary>c</summary>

---

##  **ベース：`adi.c`**

*  時間ループ内に「縦方向のスイープ（column）」と「横方向のスイープ（row）」
*  並列化なし（OpenMPもPolyBench `#pragma scop` のみ）
*  SIMDやキャッシュブロッキングなし
*  可読性の高い**逐次実装**
*  演算の再利用（分母の共通部分など）未活用

---

##  `opt_1.c` の違い【OpenMPベーシック導入】

*  `#pragma omp parallel for private(i, j)` により `t` ループを並列化【静的スケジューリング】
*  `column`・`row` スイープは逐次のまま
*  `collapse(2)` 未使用
*  `sum` や `pval` 中間変数未導入 → 分母 `(a * p[i][j - 1] + b)` が**2回繰り返される**
*  ベースと同様のアルゴリズム構造、だが**OpenMP化された**

>  **opt\_1** = 並列導入のみ、アルゴリズム構造そのまま

---

##  `opt_2.c` の違い【スイープループの並列化】

*  `#pragma omp parallel for schedule(static) collapse(2)` → `i`-`j` スイープループの並列化
*  `pval` 一時変数導入 → 共通項再計算削減
*  `column` と `row` スイープにそれぞれ並列化を個別適用
*  `t` ループ自体の並列化は上手く作用していない（ネストした中の各スイープで並列）

>  **opt\_2** = スイープ単位の並列化 + 演算最適化 → **計算コスト削減とマルチスレッド化**

---

##  `opt_3.c` の違い【全体をOpenMP並列領域に】

*  `#pragma omp parallel` でスレッド領域を確保し、

  * `#pragma omp for schedule(static) collapse(2)` によって**ループごとに並列スレッドを再利用**
*  `pval` 変数もスレッドローカルに導入
*  `column`・`row` の**両スイープにcollapse(2)** 適用
*  `opt_2` よりも**スレッド起動回数が少ない（1回）**
*  同様に `t` は逐次（同期あり）

>  **opt\_3** = **スレッド起動最小化 + キャッシュローカリティ改善 + 全ループ並列化**

---

##  最適化要素比較

| 特徴              | `adi.c` | `opt_1.c` | `opt_2.c`       | `opt_3.c`                   |
| --------------- | ------- | --------- | --------------- | --------------------------- |
| `t` ループ並列       | ❌       | ✅         | ❌               | ❌                           |
| `i-j` スイープ並列    | ❌       | ❌         | ✅ `collapse(2)` | ✅ `collapse(2)`（スレッド持続）     |
| `pval` 一時変数導入   | ❌       | ❌（2重評価）   | ✅               | ✅                           |
| スレッド領域再利用       | ❌       | ❌         | ❌               | ✅ `#pragma omp parallel` 使用 |
| 冗長な除算の削減        | ❌       | ❌         | ✅               | ✅                           |
| PolyBenchスコープ利用 | ✅       | ❌         | ❌               | ❌                           |

---

##  結論

* **opt\_1.c**：最も基本的なOpenMP導入（並列導入のベースライン）
* **opt\_2.c**：スイープ部に重点を置いた並列化と演算共通化
* **opt\_3.c**：スレッド再利用と並列範囲の最大化による高性能構造

---

</details>

<details><summary>ll</summary>

---

##  **base.ll（逐次スカラーループ構造）**

*  `__kmpc_*` 無 → OpenMP並列無し
*  `!llvm.loop.vectorize.enable` メタ無し → LLVM SIMD最適化なし
*  `<N x float>` 系のSIMD命令無し
*  典型的な `for i`, `for j` の2重スカラーループ
*  中間変数（例：`pval`）未使用 → 式内再計算あり
*  store命令の回数が多く、キャッシュ非効率

---

##  `opt_1.ll` の違い【OpenMP導入のみ】

*  `__kmpc_fork_call`, `__kmpc_for_static_init` 登場 → OpenMP並列化あり
*  `pval` 等の計算再利用構造なし → 同じ除算2回出現（IR的に冗長）
*  `vectorize` メタ無し、SIMD無
*  `collapse(2)` 無し → 並列粒度は粗い
*  ベースIRと大差ない構造にOpenMPだけ追加した形

>  **opt\_1.ll** = 並列の皮をかぶった逐次命令そのまま構造

---

## ⚙️ `opt_2.ll` の違い【OpenMP collapse + 計算再利用】

*  `__kmpc_fork_call` + `collapse(2)` に対応（ループをflatten）
*  `pval` に相当する `%divtmp = fdiv ...` を1回のみ生成
*  それを `store` 経由で使い回し → **load/store効率的**
*  SIMDベクトル命令は無し、`vectorize.*` メタも無い

>  **opt\_2.ll** = `div`, `fmul`, `fadd` の計算再利用が可能になった**リファクタ構造**

---

##  `opt_3.ll` の違い【OpenMP再利用型領域 + collapse(2)】

*  `#pragma omp parallel` に対応した `__kmpc_parallel_*` 領域生成
*  各スイープループに `collapse(2)` 構造あり（`i-j`をフラットに）
*  `%pval` 的な一時変数を導入し、**fdivや再演算回避**
*  スレッド再利用のため `__kmpc_barrier` の数が少ない → スレッド切替オーバーヘッド軽減
*  SIMDは無し、`<N x float>` 出現無し

>  **opt\_3.ll** = **スレッド継続 + 命令融合 + 書き込み最小化**が揃った理想IR

---

##  LLVM IR差分まとめ

| 特徴                    | base.ll | opt\_1.ll   | opt\_2.ll     | opt\_3.ll              |
| --------------------- | ------- | ----------- | ------------- | ---------------------- |
| OpenMP並列 (`__kmpc_*`) | ❌       | ✅（基本）       | ✅（collapse対応） | ✅（parallel + collapse） |
| `collapse(2)`対応       | ❌       | ❌           | ✅             | ✅                      |
| 冗長除算の回避               | ❌       | ❌（2回`fdiv`） | ✅（1回のみ）       | ✅                      |
| `pval` 的一時変数          | ❌       | ❌           | ✅             | ✅                      |
| `vectorize.*` メタ      | ❌       | ❌           | ❌             | ❌                      |
| SIMD命令（`<N x float>`） | ❌       | ❌           | ❌             | ❌                      |
| スレッド再利用構造             | ❌       | ❌           | ❌             | ✅（`omp parallel`全体包囲）  |

---

##  結論

* **opt\_1.ll**：OpenMPを加えただけのスカラーベース
* **opt\_2.ll**：計算再利用 + `collapse` 対応で中程度の最適化
* **opt\_3.ll**：スレッドスコープ最小 + 計算共通化 + 書き込み減 → **最上級最適IR**

---

</details>
