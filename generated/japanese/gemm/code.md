<details><summary>c</summary>

---

##  **ベースライン: `gemm.c`**

*  3重ループ構造：`i`, `j`, `k`
* 更新ステップ：

  1. `C[i][j] *= beta;`
  2. `C[i][j] += alpha * A[i][k] * B[k][j];`
*  並列化なし
*  `#pragma scop` あり（PolyBench最適化対象）
*  SIMD/vector 化や OpenMP なし

---

##  `gemm_1.c` の違い【OpenMP導入 + 逐次構造保持】

*  `#pragma omp parallel for private(j, k) schedule(static)`
*  `tmp` ではなく `c_ij` を使って更新（可読性向上＋レジスタ効率UP）
* 更新ステップはベースと論理的に同じ：

  ```c
  c_ij = C[i][j] * beta;
  for (k) {
    c_ij += alpha * A[i][k] * B[k][j];
  }
  C[i][j] = c_ij;
  ```
*  ベクトル化や`ivdep`、SIMD 指示なし

>  **opt\_1** = 並列化入門版。**OpenMP導入とレジスタ使用の強化**

---

##  `gemm_2.c` の違い【式順変更 + OpenMP】

*  OpenMP 並列 (`#pragma omp parallel for`)
*  更新ステップが BLASライクに再構成：

  ```c
  tmp = 0;
  for (k) tmp += A[i][k] * B[k][j];
  C[i][j] = alpha * tmp + beta * C[i][j];
  ```
*  `alpha` と `beta` を最後にまとめて適用 → **キャッシュ効率や命令数最適化の余地**
*  SIMD 明示無し（ただしLLVM最適化では有利）

>  **opt\_2** = 数式再構成で **キャッシュ親和性UP + OpenMP**

---

##  `gemm_3.c` の違い【構造同一 + SIMD誘導期待】

*  OpenMP 並列 (`#pragma omp parallel for`)
*  更新ステップを `tmp = C[i][j] * beta;` から開始
*  `tmp += alpha * A[i][k] * B[k][j];` を内ループに保持
*  書き戻し `C[i][j] = tmp;`
*  `gemm_1` と似ているが、`tmp` vs `c_ij` の違い（最適化影響小）

>  **opt\_3** = **逐次構造に近くSIMD化されやすい配置**を維持したバージョン

---

##  差分比較表

| 最適化ポイント               | `gemm.c` | `gemm_1.c`       | `gemm_2.c`                  | `gemm_3.c`       |
| --------------------- | -------- | ---------------- | --------------------------- | ---------------- |
| OpenMP 並列化            | ❌        | ✅ `parallel for` | ✅ `parallel for`            | ✅ `parallel for` |
| 計算順最適化                | ❌        | ❌（元構造保持）         | ✅ `alpha*A*B + beta*C`順に再構成 | ❌（逐次構造維持）        |
| レジスタ使用最適化             | ❌        | ✅ `c_ij` 明示使用    | ✅ `tmp` の再利用                | ✅ `tmp` ベース      |
| SIMD/vector指示         | ❌        | ❌                | ❌（ただし再構成が有利）                | ❌                |
| PolyBench `scop` 領域保持 | ✅        | ❌                | ❌                           | ❌                |

---

##  結論まとめ

* **gemm\_1**：OpenMP導入＋ベース構造踏襲。**堅実な並列化**
* **gemm\_2**：更新順変更により **計算効率・キャッシュ性能向上**
* **gemm\_3**：OpenMP + SIMDに親和性ある構造 → **LLVMによるSIMD展開向け**

---

</details>
