<details><summary>c</summary>

---

##  **ベースライン: `covariance.c`（逐次実装）**

* 構成：

  1. 平均ベクトル `mean[j]`
  2. センタリング `data[i][j] -= mean[j]`
  3. 共分散計算 `cov[i][j] = Σ data[k][i]*data[k][j]`
*  並列処理なし、すべて逐次ループ
*  `#pragma scop` によるポリスコープ指定あり（Polly用）

---

##  `opt_1.c` の違い

*  各ループに対して `#pragma omp parallel for` を導入（mean, centering, covariance）
*  `schedule()` 指定なし（実行スレッド分配はランタイム依存）
*  SIMD 化 (`#pragma omp simd`) や reduction などの演算最適化なし
*  `collapse` 指定なし

>  **opt\_1** = シンプルな並列化導入で、**構造変更最小かつOpenMP適用**

---

##  `opt_2.c` の違い

*  `#pragma omp parallel` により明示的な並列セクション管理
*  `#pragma omp simd reduction(+:mean_local)` で **平均・共分散計算のSIMD化**
*  `collapse(2)` による2次元ループの並列展開（センタリング部分）
*  `schedule(static)` 指定でスレッド分配を安定化

>  **opt\_2** = OpenMP並列に加えて **SIMD処理最適化**と **スケジューリング制御** を導入した中間的高性能版

---

##  `opt_3.c` の違い

*  `opt_2`の全機能を包含
*  `init_array()` の初期化にも `#pragma omp parallel for collapse(2) schedule(static)` を導入
*  共分散計算には `schedule(dynamic, 1)` 指定 → **負荷の偏り緩和を狙った最適なスケジューリング**
*  `simd reduction` によるベクトル処理を全ループに拡大適用
*  メモリアクセス最小化（ローカル変数活用）

>  **opt\_3** = スケジューリング・ベクトル化・初期化並列の**フル最適化版**。**スレッド負荷均等化 + 高速初期化**まで対応。

---

##  比較まとめ表

| 特徴項目              | `base` | `opt_1`          | `opt_2`                          | `opt_3`                          |
| ----------------- | ------ | ---------------- | -------------------------------- | -------------------------------- |
| OpenMP導入          | ❌      | ✅ `parallel for` | ✅ `parallel`, `simd`, `schedule` | ✅ + `dynamic`, `collapse(2)`あり   |
| 初期化の並列化           | ❌      | ❌                | ❌                                | ✅ `init_array()` 並列化             |
| SIMD (`omp simd`) | ❌      | ❌                | ✅ `reduction`付き                  | ✅ 全処理に適用                         |
| スケジューリング最適化       | ❌      | ❌                | ✅ `schedule(static)`             | ✅ `schedule(dynamic)` + collapse |
| メモリ・ローカル変数活用      | 一部     | ❌                | ✅ `mean_local`, `cov_local`      | ✅ 強化                             |

---

##  結論

* **opt\_1**：構造変化なく簡易並列化を導入
* **opt\_2**：SIMDとスケジューリングで演算高速化を導入
* **opt\_3**：スレッド負荷最適化 + 初期化並列 + メモリアクセス高速化を統合した **最終形**

---
</details>

<details><summary>ll</summary>

---

##  **base.ll（非最適化）特徴**

*  `__kmpc_*` 関数なし → **並列化なし**
*  メタデータ（`!llvm.loop.vectorize`, `unroll` 等）なし
*  3ステージ構成（mean, centering, covariance）を逐次実行
* 命令構成は：`load`, `fsub`, `fmul`, `fadd`, `store` の基本セット

---

##  `opt_1.ll` の違い

*  各ループが `@.omp_outlined.*` 関数でアウトライン化
*  `__kmpc_fork_call`, `__kmpc_for_static_init_4` 出現 → **OpenMP による並列化導入**
*  `!llvm.loop.vectorize.*` メタなし → SIMD 展開はされていない
*  メモリアクセス最適化なし（`alloca`, `load`, `store`そのまま）

>  **opt\_1.ll** = 並列化の導入のみ。構造的な最適化・ベクトル化は未適用のベーシック版。

---

##  `opt_2.ll` の違い

*  `opt_1.ll` 構成をベースに、SIMD 最適化導入：

  * `llvm.loop.vectorize.enable = true` メタデータあり
  * `reduction(+:mean_local)` の展開に対応し、SIMD命令生成（`fadd <4 x double>` など）
*  `loop.simplify` + `loop.unroll.disable = false` → アンローリング許可
*  `alloca` によるローカル変数（`mean_local`, `cov_local`）の明確化あり
*  `collapse(2)` の影響により一部ネストループが平坦化

>  **opt\_2.ll** = 並列 + ベクトル化（SIMD）を取り入れた高性能実装中級版

---

##  `opt_3.ll` の違い

*  `opt_2.ll` のすべてを含みつつ、追加で以下の要素を導入：

  * `schedule(dynamic, 1)` による**スケジューリング制御の強化**（IR的には `__kmpc_for_dynamic_init`）
  * `memcpy` や `memset` の利用（初期化コスト削減）
*  `loop.vectorize.width` 付きのメタデータ → `width = 4` 等の SIMD レーン指定あり
*  IR 上で `load <4 x double>` や `fmul <4 x double>` 命令が出現（ベクトル命令確定）
*  メモリ再利用効率改善（スカラ化・レジスタ圧縮）

>  **opt\_3.ll** = フル最適化：並列 + ベクトル + スケジューリング + メモリ操作最小化 の全部入り完成形

---

## 🔬 差分比較まとめ表

| 最適化項目                        | base.ll | opt\_1.ll | opt\_2.ll                      | opt\_3.ll                             |
| ---------------------------- | ------- | --------- | ------------------------------ | ------------------------------------- |
| OpenMP (`__kmpc_*`) 呼出       | ❌       | ✅         | ✅                              | ✅                                     |
| Outlined 関数 (`omp_outlined`) | ❌       | ✅         | ✅                              | ✅                                     |
| ループメタデータ                     | ❌       | ❌         | ✅ `vectorize.enable`, `unroll` | ✅ `vectorize.enable + width`          |
| SIMD命令展開                     | ❌       | ❌         | ✅ `<4 x double>`など             | ✅ `<N x double>` + wider instructions |
| スケジューリング制御                   | ❌       | ❌         | ✅ `schedule(static)`相当         | ✅ `schedule(dynamic, 1)`              |
| メモリ・初期化最適化                   | ❌       | ❌         | 一部                             | ✅ `memcpy`, `memset`, register reuse  |

---

##  結論

* **opt\_1.ll**：OpenMP を入れただけの基本並列版
* **opt\_2.ll**：並列 + SIMD化で実行速度を改善した拡張版
* **opt\_3.ll**：スケジューリング + SIMD + メモリアクセス最適化を統合した完全体

---
</details>
