<details><summary>c</summary>

---

##  **ベースライン: `correlation.c`**

*  計算構造：

  1. `mean[j] = Σ data[i][j] / n`
  2. `stddev[j] = sqrt(Σ (data[i][j] - mean[j])² / n)`
  3. `data[i][j] = (data[i][j] - mean[j]) / (sqrt(n) * stddev[j])`
  4. `corr[i][j] = Σ data[k][i] * data[k][j]`
*  並列化なし
*  `#pragma scop` による Polly向け構造化あり

---

##  `opt_1.c` の違い

*  各主要ループに `#pragma omp parallel for` を付加

  * `mean[j]`, `stddev[j]` 計算
  * Zスコア正規化
  * 相関行列構築
*  `collapse(2)` による内外ループの並列展開あり（正規化処理部）
*  `nowait`, `private`, `shared` 指定は未使用（構造はシンプル）

>  **opt\_1** = 基本的な OpenMP 並列化を各ステージに導入した**並列入門版**

---

##  `opt_2.c` の違い

*  `opt_1` と同様の全並列構造を維持
*  `mean_local[M]`, `stddev_local[M]` を `#pragma omp parallel` セクション内に導入（スレッドローカル化）
*  **`mean[j]` / `stddev[j]` の計算結果は共有配列に書かれず、ローカル配列で保持**

  * → 最終正規化/相関計算時に `mean_local`, `stddev_local` を参照
*  ループのデータ競合を避けるため `nowait` やセクション分離あり

>  **opt\_2** = データ競合回避 + ローカルキャッシュ最適化を取り入れた構造。スレッドセーフ設計。

---

##  `opt_3.c` の違い

*  `opt_2` の構造を全て継承
*  `corr[i][i] = 1` と `corr[i][j]` の計算も並列セクションに統合
*  ループ分割における `collapse(2)` など細かい調整を最適化
*  `nowait` 指定を活用し、スレッドの**オーバーラップ効率**向上
*  ローカル変数と配列アクセスのバランスが最も最適化された構成
  
>  **opt\_3** = 並列性 + キャッシュ効率 + スケジューリング改善の**完成版**

---

##  比較まとめ表

| 最適化項目                 | `correlation.c` | `opt_1`       | `opt_2`                        | `opt_3`            |
| --------------------- | --------------- | ------------- | ------------------------------ | ------------------ |
| OpenMP 導入             | ❌               | ✅ 各ループ並列化     | ✅ 並列 + ローカル変数展開                | ✅ 並列 + 最適化スケジューリング |
| `collapse` 使用         | ❌               | ✅ 正規化部分       | ✅                              | ✅                  |
| ローカル変数による分離           | ❌               | ❌             | ✅ `mean_local`, `stddev_local` | ✅                  |
| `nowait` などの効率指定      | ❌               | ❌             | ✅ 一部                           | ✅ 複数箇所             |
| データ競合回避 (write guard) | ❌               | 一部 (`shared`) | ✅ 変数分離                         | ✅ 完全スレッドセーフ化       |
| スレッド/キャッシュ効率          | ❌               | 🆗            | ✅ より良い                         | ✅✅ 最高効率            |

---

##  結論

* **opt\_1**：シンプルにOpenMPを導入したバージョン
* **opt\_2**：ローカル変数分離によりスレッドセーフ性とキャッシュ効率を改善
* **opt\_3**：全最適化（並列分解・変数分離・スケジューリング制御）を取り入れた最上級構成

---
</details>

<details><summary>ll</summary>

---

##  **base.ll（元コード対応）特徴**

*  `__kmpc_*` や `@.omp_outlined` 関数無し → **シングルスレッド**
*  `!llvm.loop.vectorize` や `!llvm.loop.unroll` など**最適化メタデータ無し**
*  全処理（mean/stddev/normalize/correlation）は1スレッドで実施
* 命令構成：`load`, `fsub`, `fmul`, `fadd`, `store`, `call @sqrt`

---

##  `opt_1.ll` の違い

*  各ループに対して OpenMP 展開：

  * `__kmpc_fork_call`, `__kmpc_for_static_init_4` 登場
  * `@.omp_outlined.*` によるループアウトライン化
*  `loop.vectorize` メタデータなし → **SIMD展開は未使用**
*  メモリ効率改善なし（すべてグローバル変数参照）
*  ローカルスカラー最適化（例：`mean_local[j]`）は無し

>  **opt\_1.ll** = 単純なスレッド並列化を導入した初級 IR。

---

## ⚙ `opt_2.ll` の違い

*  OpenMP 並列は `opt_1.ll` と同様に全処理をカバー
*  変数 `mean_local` および `stddev_local` が IR 上で stack allocation（`alloca`）されており、

  * `%mean_local = alloca [M x double], align 8`
  * `%stddev_local = alloca [M x double], align 8`
*  各スレッドが `mean[j]` を `mean_local[j]` として保持 → **メモリ競合回避**
*  `loop.vectorize.*` や `unroll` メタデータは依然無し

>  **opt\_2.ll** = 並列性 + ローカル変数最適化 によってスレッドセーフな IR を形成

---

## ⚙ `opt_3.ll` の違い

*  `opt_2` の全構造を継承
*  `!llvm.loop.vectorize.enable = true` の**ループベクトル化メタデータ**が明示される（IR内確認可）
*  `collapse(2)` の影響でループネストがフラット化された構造に再編成
*  SIMD命令登場：`load <4 x double>`, `fadd <4 x double>` 等（環境依存）
*  各ループで `schedule(static)` 相当の初期化引数が `__kmpc_for_static_init` に指定されている

>  **opt\_3.ll** = 完全な並列性 + ベクトル化 + メモリ競合制御による**フル最適化IR**

---

##  比較まとめ表

| 最適化要素                          | base.ll | opt\_1.ll | opt\_2.ll               | opt\_3.ll                       |
| ------------------------------ | ------- | --------- | ----------------------- | ------------------------------- |
| OpenMP runtime (`__kmpc_*`)    | ❌       | ✅         | ✅                       | ✅                               |
| Loop outlined (`omp_outlined`) | ❌       | ✅         | ✅                       | ✅                               |
| ローカル変数最適化                      | ❌       | ❌         | ✅ `alloca [M x double]` | ✅                               |
| ベクトル化メタ (`loop.vectorize`)     | ❌       | ❌         | ❌                       | ✅ `!llvm.loop.vectorize.enable` |
| SIMD命令展開（例: `<4 x f64>`）       | ❌       | ❌         | ❌                       | ✅                               |
| ループネスト再構成（collapse）            | ❌       | ❌         | ❌                       | ✅ flattenされたネスト構造               |

---

##  結論

* **opt\_1.ll**：基本的な OpenMP 並列化導入。命令構造は base に近い。
* **opt\_2.ll**：スレッドローカル変数の導入により、メモリアクセスの競合防止。
* **opt\_3.ll**：並列 + ベクトル化 + スケジューリング制御された最終最適化形態。

---
</details>
