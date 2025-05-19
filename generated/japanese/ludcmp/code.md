<details><summary>c</summary>

---

##  **ベース：`ludcmp.c`**

### 特徴：

* `#pragma scop` による **PolyBench最適化対象**
* 完全な **逐次処理構造**
* LU分解部分：

  * 前進：`A[i][j] -= Σ A[i][k]*A[k][j]`
  * 正規化：`A[i][j] /= A[j][j]`
* `y[i]`, `x[i]` は順方向/逆方向の代入解法（ガウス消去）

---

##  `opt_1.c` の違い【OpenMP並列化の導入（基本構造）】

*  `#pragma omp parallel for` を全3ループに適用（LU分解, y解法, x解法）
*  `schedule()` 未指定（スケジューリングはデフォルト）
*  `collapse`, `simd`, `reduction` 無し → ベクトル化誘導はなし
*  初期化フェーズは非並列

>  **opt\_1** = 処理構造を保ちつつ、**演算ループに基本的なOpenMPを追加**した実装

---

##  `opt_2.c` の違い【OpenMP + SIMD対応 + 初期化並列】

*  `#pragma omp parallel for schedule(dynamic)`（LU分解部分）
*  `#pragma omp parallel for collapse(2) reduction(+:B[:n][:n])` による行列 `B` の並列初期化
*  `w` の中間変数使用、`sum` の再利用で SIMD に適した構造
*  `x[i], y[i]` 解法フェーズにも OpenMP 静的スケジューリング指定あり

>  **opt\_2** = **計算 + 初期化** の主要箇所に **OpenMP 並列 + SIMD 対応** を実装した中間最適化版

---

##  `opt_3.c` の違い【opt\_2 拡張 + 全域並列化】

*  `init_array()` の全ステップに `#pragma omp parallel for`（変数 `x`, `y`, `b` 初期化含む）
*  行列初期化では `collapse(2)` 使用
*  LU分解、y解、x解、全てに `OpenMP` 指定 (`dynamic`, `static` 組み合わせ)
*  全段階がマルチスレッド対象で、初期化・分解・解法すべて並列化

>  **opt\_3** = **OpenMP適用範囲最大化 + SIMDフレンドリー設計**の完成形

---

##  比較表

| 特徴                              | `ludcmp.c` | `opt_1.c` | `opt_2.c`                         | `opt_3.c`                      |
| ------------------------------- | ---------- | --------- | --------------------------------- | ------------------------------ |
| PolyBench `#pragma scop`        | ✅          | ❌         | ❌                                 | ❌                              |
| OpenMP 並列化                      | ❌          | ✅（演算部のみ）  | ✅（演算 + 初期化）                       | ✅（init\_array + kernel 全体）     |
| OpenMP `schedule` 指定            | ❌          | ❌         | ✅ dynamic/static 併用               | ✅ 同上                           |
| 初期化フェーズの並列化                     | ❌          | ❌         | ✅ 行列 `B` の計算                      | ✅ `x`, `y`, `b`, `A`, `B` 全域対象 |
| SIMD対応 (`reduction`, collapse)  | ❌          | ❌         | ✅ `collapse(2)`, `reduction(+:B)` | ✅ 同上                           |
| `omp parallel for private(...)` | ❌          | 各ループで使用   | 各ループで使用                           | 各ループで使用（全面対応）                  |

---

##  結論

* **opt\_1**：逐次→並列化への導入レベル。**最低限のOpenMP適用**
* **opt\_2**：ループ最適化 + 初期化も並列化し、**実行性能を強化**
* **opt\_3**：**最も広い範囲を並列化 + SIMDに最も適した構造**（理論ピーク性能を狙える）

---

</details>

<details><summary>ll</summary>

---

##  **base.ll（非最適化）特徴**

*  `__kmpc_*` 呼び出しなし → **OpenMP 無**
*  `!llvm.loop.vectorize` メタデータなし → **ベクトル化未指示**
*  SIMD 命令（`<4 x float>` 等）出現なし
*  LU分解の3重ループ + 前進・後退代入（y, x）の順次更新構造
* 命令群：`load`, `fmul`, `fadd`, `fsub`, `store`（すべてスカラー）

---

##  `opt_1.ll` の違い【基本OpenMP並列化構造】

*  `__kmpc_fork_call`, `__kmpc_for_static_init` → OpenMP 並列化導入
*  複数の `@.omp_outlined.*` 関数に `i`, `j`, `k` ループを分割処理
*  SIMD命令なし（`<4 x double>` 出現なし）
*  `!llvm.loop.vectorize.enable` 等のメタなし
*  `reduction` 命令やメタ情報も未適用

>  **opt\_1.ll** = OpenMP 並列化のみ適用、**最小限のマルチスレッドIR**

---

##  `opt_2.ll` の違い【OpenMP + SIMDベクトル化導入】

*  `__kmpc_*` 呼び出しあり（OpenMP 並列）
*  `!llvm.loop.vectorize.enable = true` メタあり → ベクトル化指示明示
*  SIMD命令出現：`fadd <4 x double>`, `fmul <4 x double>` など
*  `loop.unroll.count`, `vectorize.width = 4` 等のヒントメタ付き
*  `sum` による `reduction` 対応が確認され、スカラーtoベクトル展開適応済み

>  **opt\_2.ll** = 並列化 + SIMD を組み合わせた **中間最適化IR**

---

##  `opt_3.ll` の違い【全面並列 + SIMD最適化】

*  `__kmpc_*`, `omp.outlined.*` 多数 → 初期化/解法含む **全面並列化**
*  `vectorize.enable`, `vectorize.width`, `unroll.count` メタ複数あり → **ベクトル命令誘導強化**
*  SIMD命令多数出現：`<4 x double>` 単位でロード/ストア/演算
*  `loop.unroll.enable = true` による LLVM ループ展開許可
*  メモリ最適化指向：`memcpy`, `getelementptr` 連続操作あり

>  **opt\_3.ll** = IRベースで**最大並列・最大ベクトル・最大展開**の構成を実現した完全体

---

##  LLVM IR 差分まとめ

| 特徴                              | base.ll | opt\_1.ll | opt\_2.ll                               | opt\_3.ll                              |
| ------------------------------- | ------- | --------- | --------------------------------------- | -------------------------------------- |
| OpenMP 並列化 (`__kmpc_*`)         | ❌       | ✅         | ✅                                       | ✅（全関数）                                 |
| `omp_outlined` 関数の構成            | ❌       | 3～4 関数    | 同上                                      | 5以上                                    |
| ベクトル化メタ (`vectorize.*`)         | ❌       | ❌         | ✅ `enable`, `width=4`, `unroll.count=4` | ✅ + `unroll.enable`, `vectorize.hint`等 |
| SIMD命令 (`<4 x double>`)         | ❌       | ❌         | ✅                                       | ✅（load/store/fma 全対応）                  |
| `sum` の `reduction` 対応          | ❌       | ❌         | ✅                                       | ✅（多変数対応）                               |
| `init_array`, `b`, `x`, `y` 並列化 | ❌       | ❌         | 一部対応                                    | ✅（全域並列対象）                              |

---

##  結論

* **opt\_1.ll**：最小限のOpenMPによる並列化。**並列版ベースライン**
* **opt\_2.ll**：OpenMP + SIMD メタでLLVM最適化に踏み込んだ構成。**性能向上の主力**
* **opt\_3.ll**：初期化・解法も含め全処理領域で**最大最適化IR**

---

</details>
