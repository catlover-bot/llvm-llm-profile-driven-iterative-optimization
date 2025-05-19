<details><summary>c</summary>

---

##  **ベース：`lu.c`**

* 処理順：逐次スカラー演算 (`i → j → k`)
* 内部ループは単純な3重ループ構成（`A[i][j] -= A[i][k] * A[k][j]`）
*  `#pragma scop ... endscop` による PolyBench 最適化対象
*  OpenMP 無し
*  SIMD ベクトル化無し
* `B = A*A^T` による初期化で正定値化（共通）

---

##  `lu_1.c` の違い【PolyBench スコープ保持】

*  `#pragma scop` を維持 → PolyBench スキャンツールと互換性あり
*  計算構造はベースと同一（順序やアルゴリズムの変更なし）
*  OpenMP 無し
*  SIMD 無し

>  **lu\_1.c** = **PolyBench互換を維持した非並列ベースコード**

---

##  `lu_2.c` の違い【OpenMP + SIMD 導入】

*  `#pragma omp parallel for private(j, k)` による `i` 並列化
*  `#pragma omp simd reduction(-:sum)` による `k`ループ SIMD ベクトル化
*  `sum` の再利用によるメモリアクセス最適化あり
*  `#pragma scop` 削除（PolyBench最適化には非対応）

> **lu\_2.c** = **並列 + SIMD ベースの最適化実装**

---

##  `lu_3.c` の違い【lu\_2.c とほぼ同一：最大並列化】

*  `#pragma omp parallel for` + `simd reduction` の構成も lu\_2.c と同様
*  `init_array` に `#pragma omp parallel for collapse(2)` による `B[r][s] += A[r][t] * A[s][t]` の並列化
*  `memcpy` による `A ← B` コピーも明示
*  メモリ操作や初期化まで並列化されており **最広域の並列化対象**

>  **lu\_3.c** = **ループと初期化すべてに OpenMP 並列化を導入した完成形**

---

##  比較まとめ表

| 特徴                          | `lu.c` | `lu_1.c` | `lu_2.c`           | `lu_3.c`                  |
| --------------------------- | ------ | -------- | ------------------ | ------------------------- |
| `#pragma scop`（PolyBench）   | ✅      | ✅        | ❌                  | ❌                         |
| OpenMP 並列化 (`parallel for`) | ❌      | ❌        | ✅（kernelのみ）        | ✅（kernel + init\_array）   |
| SIMD (`#pragma omp simd`)   | ❌      | ❌        | ✅（kernel内kループ）     | ✅ 同上                      |
| `init_array` の並列化           | ❌      | ❌        | ❌                  | ✅ `collapse(2)` による行列積並列化 |
| ベースコードからの演算変更               | ❌      | ❌        | ✅（SIMD化に向けたsum変数化） | ✅ 同上                      |

---

##  結論

* **lu\_1.c**：ベースコードを PolyBench 用に維持。最適化なしの評価ベース。
* **lu\_2.c**：演算の中心（LU分解）に対して **OpenMP 並列化 + SIMD** を導入。
* **lu\_3.c**：演算だけでなく初期化処理まで並列化した **最大並列性能指向設計**。

---

</details>

<details><summary>ll</summary>

---

##  **`lu_base.ll` の特徴**

*  `__kmpc_*` 関数なし → OpenMP 並列化されていない
*  `!llvm.loop.vectorize` 等のベクトル化メタ無し
*  SIMD 命令（`<4 x float>`）出現なし → 完全スカラー構成
*  典型的な 3重ループ構成（LU分解のネストされた `i-j-k`）
* 命令構成：`load`, `fmul`, `fadd`, `fsub`, `store` のみ（スカラー）

---

##  `lu_1.ll` の違い【構造維持・最適化なし】

*  `lu_base.ll` と完全に一致する IR 構造
*  OpenMP 呼び出しなし (`__kmpc_*` 無し)
*  SIMD 命令無し
*  LLVMメタデータなし（`vectorize`, `unroll`）

>  **lu\_1.ll** = ベースコードと**機能的に同一な非最適化IR**

---

##  `lu_2.ll` の違い【OpenMP + SIMD】

*  `__kmpc_fork_call`, `__kmpc_for_static_init` 出現 → **OpenMP 並列化あり**
*  `@.omp_outlined.*` によるアウトライン化された並列ループ関数
*  `!llvm.loop.vectorize.enable = true` メタ付き → LLVM SIMD 展開可能指示
*  `fmul <4 x float>`, `fadd <4 x float>` などの **SIMD命令** 出現
*  `reduction` に関するIR構成：`sum` が `%add` 等で明示的にベクトル化展開

>  **lu\_2.ll** = OpenMP 並列 + LLVM SIMD ベクトル化された **高性能中核IR**

---

##  `lu_3.ll` の違い【全面並列化 + SIMD命令 + 初期化までカバー】

*  `__kmpc_*` 系関数多数出現 → `init_array` も含め OpenMP 並列化対象が最大
*  複数の `omp_outlined.*` に `collapse(2)` 相当の並列指示を確認（IRレベル）
*  SIMD命令とベクトル化メタデータを保持（`vectorize.width`, `unroll.count`）
*  `memcpy`, `load/store <4 x float>` 等による最適なブロックメモリアクセス命令を併用

>  **lu\_3.ll** = 計算・初期化・データ移動まで含めて **最大範囲に最適化された完成IR**

---

##  LLVM IR 差分まとめ

| 特徴                      | `lu_base.ll` | `lu_1.ll` | `lu_2.ll`                         | `lu_3.ll`                           |
| ----------------------- | ------------ | --------- | --------------------------------- | ----------------------------------- |
| OpenMP 並列化 (`__kmpc_*`) | ❌            | ❌         | ✅ `fork_call`, `outlined`         | ✅（多数、初期化含む）                         |
| ベクトル化メタ (`vectorize.*`) | ❌            | ❌         | ✅ `vectorize.enable`, `width = 4` | ✅ `vectorize.width`, `unroll.count` |
| SIMD命令 (`<4 x float>`)  | ❌            | ❌         | ✅ `fmul`, `fadd`, `load/store`    | ✅（初期化段階も含む）                         |
| `init_array` 最適化        | ❌            | ❌         | ❌                                 | ✅ `collapse(2)` による並列初期化            |
| 構造的違い（ループ/関数数）          | 基本形          | 同左        | アウトライン関数あり                        | 複数アウトライン + メモリ最適化命令あり               |

---

##  結論

* **lu\_1.ll**：`lu_base.ll` と構造・最適化レベルともに同一（比較用ベースライン）
* **lu\_2.ll**：OpenMP 並列 + SIMD 展開された **演算部最適化 IR**
* **lu\_3.ll**：OpenMP 並列 + SIMD + 初期化・データコピー最適化 → **最大範囲最適化済みIR**

---

</details>
