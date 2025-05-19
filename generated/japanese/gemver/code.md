<details><summary>c</summary>

---

##  **ベースライン: `gemver.c`**

* 処理内容（4段階）：

  1. `A[i][j] += u1[i] * v1[j] + u2[i] * v2[j]`
  2. `x[i] += beta * A[j][i] * y[j]`
  3. `x[i] += z[i]`
  4. `w[i] += alpha * A[i][j] * x[j]`
*  並列化なし（全て逐次）
*  `#pragma scop` による最適化スコープあり（Polly対応）
*  SIMD/vector 指示なし

---

##  `opt_1.c` の違い【OpenMP 導入 + 演算一体化】

*  `#pragma omp parallel for private(j)` 各ループに導入
*  `x[i] += beta * temp + z[i]` に再構成 → 2段階目と3段階目を合体
*  `w[i] += ...` などにして蓄積形式（+=）で更新
*  PolyBench の `#pragma scop` 削除済み（手動最適化に移行）

>  **opt\_1** = 並列化 + 式の集約によって **スレッド並列性と命令融合性を向上**

---

##  `opt_2.c` の違い【OpenMP + ループ collapse + 分離演算】

*  `#pragma omp parallel for collapse(2)` により `i`,`j` の2重ループをまとめて並列化

  * → **粒度の細かいワークロード分割**
*  `x[i] = beta * temp + z[i]`（非蓄積）
*  他の部分は `opt_1` と同様に temp 変数を使用
*  明示的に `temp_*` を使ったレジスタキャッシュ強化戦略

>  **opt\_2** = ベクトル化誘導と並列化の中間的バランス。**ループ分解と集約演算の両立**

---

##  `opt_3.c` の違い【最終形：分割ループ + 安定並列】

*  `#pragma omp parallel for` 各ステージに導入
*  各 `i` における `temp_x = z[i] + sum(...)` の形 → 元コードに近いが temp 使用
*  蓄積でなく `x[i] = ...`, `w[i] = ...` の明示更新（より安定なメモリアクセス）
*  `collapse(2)` は使用していない → **パフォーマンスより可搬性と確実性を重視**

>  **opt\_3** = 並列化の安定性を重視した構造。**可読性 + 並列性のハイブリッド**

---

##  比較まとめ表

| 特徴                     | `gemver.c` | `opt_1`              | `opt_2`            | `opt_3`               |
| ---------------------- | ---------- | -------------------- | ------------------ | --------------------- |
| OpenMP 並列化             | ❌          | ✅ `parallel for` 各段階 | ✅ `collapse(2)` 使用 | ✅ 各段階に `parallel for` |
| `x[i]` の更新形式           | `+=`       | `+=` → `temp + z[i]` | `=` （temp + z\[i]） | `=` （temp + z\[i]）    |
| `w[i]` の更新形式           | `+=`       | `+=`                 | `=`                | `=`                   |
| `#pragma scop`         | ✅          | ❌                    | ❌                  | ❌                     |
| 演算の一体化 (`z[i]`組込)      | 分離         | ✅ 組み込み済み             | ✅ 組み込み済み           | ✅ 組み込み済み              |
| ループ再構成 (`collapse(2)`) | ❌          | ❌                    | ✅                  | ❌                     |

---

##  結論

* **opt\_1**：最小限の変更で並列化と式融合を加えた高速化入門
* **opt\_2**：ループ collapse により並列処理粒度を細かく調整、キャッシュ親和性も意識
* **opt\_3**：安定動作を重視し、OpenMP を自然な粒度で適用した完成形

---

</details>

<details><summary>c</summary>

---

##  **base.ll（非最適化）特徴**

*  `__kmpc_*` 系 OpenMP 関数無し → 完全逐次処理
*  `!llvm.loop.vectorize` などメタデータなし → SIMD最適化なし
*  全体構造は直列ループ (`i` / `j`) で更新
* 命令構成は：`load`, `fmul`, `fadd`, `store` のスカラー構成

---

##  `opt_1.ll` の違い【並列処理導入 + 式変形なし】

*  `__kmpc_fork_call`, `__kmpc_for_static_init` による OpenMP 並列化あり（ループアウトライン）
*  `@.omp_outlined.*` 関数で `i` ループ分割
*  `!llvm.loop.vectorize.*` メタなし → SIMD化はされていない
*  `vector width`, `unroll.count` メタなし

>  **opt\_1.ll** = **並列化のみ導入した IR**。スカラー演算ベースのマルチスレッド実装

---

##  `opt_2.ll` の違い【OpenMP + ループ collapse + ベクトル化誘導】

*  `__kmpc_*` 関数 + `omp_outlined` 関数あり
*  ループに `!llvm.loop.vectorize.enable = true` メタ付き → **LLVMベクトル化指示**
*  `collapse(2)` の影響で `i`,`j` 両ループが単一関数でまとめられる
*  `fadd <4 x float>`, `fmul <4 x float>` 等の SIMD 命令登場（vectorレーン利用）

>  **opt\_2.ll** = 並列 + ベクトル命令 + ループ集約により **演算並列性を最大化**

---

##  `opt_3.ll` の違い【OpenMP 安定版 + 明示SIMD】

*  `__kmpc_*` 呼出による OpenMP 並列化あり（opt\_2と同様）
*  `!llvm.loop.vectorize.width = 4` などの **ベクトル幅指定**付きメタ追加
*  `unroll.count = 4` により LLVM に対してループ展開指示
*  `load/store <4 x float>` の SIMD 命令を明示展開
*  `memcpy`, `memset` によるメモリ高速初期化も一部にあり（環境依存）

>  **opt\_3.ll** = LLVM に向けた **最大限のベクトル化・展開・整列** のヒントを持った **完成型IR**

---

##  比較まとめ表

| 最適化項目                   | base.ll | opt\_1.ll | opt\_2.ll                       | opt\_3.ll                                   |
| ----------------------- | ------- | --------- | ------------------------------- | ------------------------------------------- |
| OpenMP 並列化 (`__kmpc_*`) | ❌       | ✅         | ✅                               | ✅                                           |
| ループアウトライン (`omp_*`)     | ❌       | ✅         | ✅                               | ✅                                           |
| ベクトル化メタ (`vectorize`)   | ❌       | ❌         | ✅ `enable = true`               | ✅ `enable`, `width = 4`, `unroll.count = 4` |
| SIMD命令 (`<N x float>`)  | ❌       | ❌         | ✅ `fadd`, `fmul`, `load` SIMD命令 | ✅ さらに多くの SIMD 命令 + 高速メモリ操作                  |
| `collapse(2)` の影響       | ❌       | ❌         | ✅ （i+j 統合）                      | ❌（各ループ個別）                                   |

---

##  結論

* **opt\_1.ll**：スカラー演算のまま OpenMP を導入した**並列ベース**
* **opt\_2.ll**：ベクトル化とループ統合による**データ並列性強化構成**
* **opt\_3.ll**：ベクトル幅明示 + アンローリング + 整列ヒントにより **LLVM最適化完全対応IR**

---


</details>
