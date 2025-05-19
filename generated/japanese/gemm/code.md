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

<details><summary>ll</summary>

---

##  **gemm\_base.ll（ベースライン）特徴**

*  `__kmpc_*` 呼び出しなし → 並列化なし（シングルスレッド）
*  `!llvm.loop.vectorize.*` メタデータなし → ベクトル化非対応
*  ネストされたループ (`i`, `j`, `k`) がそのまま IR に反映
* 命令構成：

  * `load`, `fadd`, `fmul`, `store` のみ（スカラー操作）

---

##  `gemm_1.ll` の違い【OpenMP 並列化の導入】

*  `__kmpc_fork_call`, `__kmpc_for_static_init` の出現 → **OpenMP 並列化**
*  `@.omp_outlined.*` 関数が `i` ループ単位でアウトライン化
*  SIMD 命令（`<4 x float>`など）なし → ベクトル化未適用
*  `!llvm.loop.vectorize.enable` メタデータなし

>  **gemm\_1.ll** = マルチスレッド実行向けに変換された IR。**並列処理導入**

---

##  `gemm_2.ll` の違い【OpenMP + SIMD強化】

*  `__kmpc_*` 関数あり → `gemm_1` 同様の並列構造
*  `!llvm.loop.vectorize.enable = true` メタデータ付き → **LLVM ベクトル化有効化**
*  一部ループに `!llvm.loop.vectorize.width = 4` あり
*  `fmul <4 x float>`, `fadd <4 x float>` などの **SIMD命令展開あり**
*  `tmp` による中間演算導入（演算式順序が `alpha * sum + beta * C`）

>  **gemm\_2.ll** = ベクトル命令 + 並列ループの併用。**SIMD & OpenMP のバランス最適化**

---

##  `gemm_3.ll` の違い【OpenMP + SIMD最大化 + 表現変更】

*  `__kmpc_*` 呼び出しあり（並列処理維持）
*  ループに `!llvm.loop.vectorize.enable = true` と `unroll.count = 4` メタ付き
*  `fmul <4 x float>` 命令に加えて `llvm.memcpy` のようなブロック転送命令確認されることもあり（環境依存）
*  `C[i][j] = tmp` 書き戻し直前にすべての操作をまとめて実施（命令スケジューラ効率化）

>  **gemm\_3.ll** = ベクトル化最適化 + 演算縮約 + メモリアクセス効率の最大化を図る最終形

---

##  差分比較まとめ表

| 項目                          | `gemm_base.ll` | `gemm_1.ll`  | `gemm_2.ll`                  | `gemm_3.ll`                          |
| --------------------------- | -------------- | ------------ | ---------------------------- | ------------------------------------ |
| OpenMP 並列処理                 | ❌              | ✅ `__kmpc_*` | ✅ `__kmpc_*`                 | ✅ `__kmpc_*`                         |
| ベクトル化メタ (`vectorize`)       | ❌              | ❌            | ✅ `vectorize.enable/width`   | ✅ `vectorize.width` + `unroll.count` |
| SIMD命令（`<N x float>`）       | ❌              | ❌            | ✅ `fadd`, `fmul <4 x float>` | ✅ 拡張 SIMD命令 + `memcpy`（一部）           |
| 演算式再構成 (`alpha*A*B+beta*C`) | ❌              | ❌            | ✅                            | ✅                                    |
| 書き戻し最適化 (`C[i][j]`)         | ❌              | 一部レジスタ利用     | ✅ 中間変数使用                     | ✅ SIMD + まとめて write                  |

---

##  結論

* **gemm\_1.ll**：OpenMP による並列化適用 → マルチスレッド処理対応
* **gemm\_2.ll**：SIMD展開 & `alpha*A*B+beta*C` 演算の再構成で演算最適化
* **gemm\_3.ll**：ベクトル幅・ループ展開・メモリ効率すべての最適化を網羅した完成IR

---

</details>
