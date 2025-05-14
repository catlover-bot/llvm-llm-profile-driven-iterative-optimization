<details><summary>c</summary>

---

##  **ベースライン: `doitgen.c`**

*  外側 `r`, `q` ループで `A[r][q][p]` を更新
*  内部2重ループ：`p` & `s` → 行列ベクトル積のような形
*  並列化なし
*  SIMD 化なし
*  `#pragma scop ... #pragma endscop` による Polly 対応あり

---

##  `opt_1.c` の違い

*  PolyBench スコープは維持（`#pragma scop`）
*  並列化なし（OpenMP不使用）
*  `memset(sum, 0)` による初期化 → `sum[p] = 0.0` を高速化
*  SIMD/vector pragma なし

>  `opt_1` = **構造同一 + メモリ初期化の簡略化のみ**のリファクタ型最適化

---

##  `opt_2.c` の違い

*  `#pragma omp parallel for private(q, p, s) schedule(static)`

  * 外側 `r` による並列処理導入
*  `#pragma omp simd` で `p` ループを **SIMD ベクトル化**
*  `memset(sum, 0)` で初期化
*  全体構造そのまま、ただし**SIMDにより `sum[p]` が vector register で操作可能**

>  `opt_2` = **OpenMP + SIMDベクトル化** による**マルチコア+SIMD命令**最適化型

---

##  `opt_3.c` の違い

*  `#pragma omp parallel for` に `schedule(dynamic)` を使用

  * → ワークロードの不均衡時に**スレッド負荷分散を自動調整**
*  `memset`, `memcpy` で `sum` の初期化と `A[r][q][*]` への代入を最適化
*  SIMD pragma (`omp simd`) 無し（`opt_2`に比べて明示ベクトル化がない）
*  より実用的な OpenMP の並列戦略へ進化

>  `opt_3` = **メモリ操作高速化 + スケジューリングの柔軟化**を加えた**現実的な並列化パターン**

---

##  比較まとめ表

| 項目                | `doitgen.c` | `opt_1`   | `opt_2`                           | `opt_3`                            |
| ----------------- | ----------- | --------- | --------------------------------- | ---------------------------------- |
| OpenMP 並列化        | ❌           | ❌         | ✅ `parallel for schedule(static)` | ✅ `parallel for schedule(dynamic)` |
| SIMD ベクトル化        | ❌           | ❌         | ✅ `#pragma omp simd`              | ❌                                  |
| `sum` 初期化方法       | ループ         | `memset`  | `memset`                          | `memset`                           |
| `A[r][q][*]` 書き戻し | `for` ループ   | `for` ループ | `memcpy`                          | `memcpy`                           |
| メモリ最適化（配列代入）      | ❌           | ❌         | ✅                                 | ✅                                  |
| 並列スケジューリング制御      | ❌           | ❌         | ✅ `static`                        | ✅ `dynamic`                        |

---

##  結論

* **opt\_1**：元コードと同構造で、`memset` 最適化のみの微小改善
* **opt\_2**：並列＋SIMDによる**命令・データレベルの並列性**向上
* **opt\_3**：**動的スケジューリング＋memcpy高速化**で実運用に向けたパフォーマンス安定化を目指す

---
</details>

<details><summary>ll</summary>

---

##  **base.ll（非最適化）特徴**

*  OpenMP 関連 (`__kmpc_*`) 一切なし
*  ループに `!llvm.loop.vectorize` 等のメタデータ無し
*  forループのネスト：`r`, `q`, `p`, `s` すべて単純構造
*  命令構成：スカラー演算（`fadd`, `fmul`, `load`, `store`）

---

##  `opt_1.ll` の違い【構造変化なし・初期化最適化】

*  OpenMP 無し：`__kmpc_*` 呼び出し無し
*  `sum` の初期化が `llvm.memset.*` に変換（`memset(sum, 0)` 由来）
*  `loop.vectorize` メタ無し
*  ベクトル命令無し（`<4 x double>` 等）

>  **opt\_1.ll** = 命令レベルの差分は最小限。初期化の高速化のみが明示的に表れている。

---

##  `opt_2.ll` の違い【OpenMP 並列化 + SIMD】

*  `__kmpc_fork_call`, `__kmpc_for_static_init` 登場 → **OpenMP 並列化あり**
*  `@.omp_outlined.*` によるループ関数分離
*  `!llvm.loop.vectorize.enable = true` メタデータ → **LLVM による自動ベクトル化許可**
*  一部ループで `fadd <4 x double>` や `fmul <4 x double>` などの SIMD 命令が出現（vector化されている）
*  `alloca sum` は `private` でスレッド毎に確保

>  **opt\_2.ll** = 並列実行とベクトル命令の両立を図った IR。**マルチコア + SIMD 最適化**

---

##  `opt_3.ll` の違い【動的スケジューリング + メモリ最適化】

*  `opt_2.ll` の全要素を継承
*  `__kmpc_for_dynamic_init` → `schedule(dynamic)` 指定の並列制御を使用
*  `llvm.memcpy.*` による `A[r][q][*] = sum` の高速書き戻し
*  `!llvm.loop.vectorize.width = 4` のようなベクトル幅指定付きメタデータが一部ループに追加
*  IR内でもベクトル命令がより多く出現（環境依存）

>  **opt\_3.ll** = 静的スケジュールから動的に進化し、**メモリアクセス最適化 + SIMD幅指定によるさらなる性能改善**が図られている。

---

##  差分比較まとめ表

| 特徴            | base.ll | opt\_1.ll       | opt\_2.ll            | opt\_3.ll                       |
| ------------- | ------- | --------------- | -------------------- | ------------------------------- |
| OpenMP 並列処理   | ❌       | ❌               | ✅ `__kmpc_*`         | ✅ `__kmpc_for_dynamic_init`     |
| ループメタデータ付加    | ❌       | ❌               | ✅ `vectorize.enable` | ✅ + `vectorize.width`, `unroll` |
| SIMD命令の導入     | ❌       | ❌               | ✅ `<4 x double>`     | ✅ `<N x double>` 幅広がる           |
| `sum` 初期化最適化  | ❌       | ✅ `llvm.memset` | ✅                    | ✅                               |
| `A` への書き戻し最適化 | ❌       | ❌               | `store` ループ          | ✅ `llvm.memcpy` により一括転送         |
| スケジューリング制御    | ❌       | ❌               | ✅ `static`           | ✅ `dynamic`                     |

---

##  結論

* **opt\_1.ll**：メモリ初期化 (`memset`) のみ反映、構造そのまま
* **opt\_2.ll**：OpenMP 並列化 + ベクトル命令による基本最適化
* **opt\_3.ll**：スケジューリング + メモリ操作 + SIMD幅指定の全適用 → **実行性能を最大化**

---

  
</details>
