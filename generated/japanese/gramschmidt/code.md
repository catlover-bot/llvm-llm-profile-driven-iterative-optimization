<details><summary>c</summary>

---

##  **ベースライン: `gramschmidt.c`**

### 処理ステップ（簡略化）：

1. **ノルム計算**：`nrm = sum(A[i][k]^2)`
2. **正規化**：`Q[i][k] = A[i][k] / sqrt(nrm)`
3. **直交成分抽出**：

   * `R[k][j] = sum(Q[i][k] * A[i][j])`
   * `A[i][j] -= Q[i][k] * R[k][j]`

*  `#pragma scop` により PolyBench に最適化許可
*  OpenMP なし、逐次処理
*  SIMD 指示なし、ベクトル化されにくい

---

##  `opt_1.c` の違い【構造保存型（PolyBench準拠）】

*  `#pragma scop` 構文維持（PolyBench対応）
*  処理ロジック・演算式はベースと完全同一
*  OpenMP, SIMD, vector 最適化なし

>  **opt\_1** = PolyBench 用にそのまま整理された**等価変換コード**

---

##  `opt_2.c` の違い【OpenMP 並列化導入】

*  `#pragma omp parallel for private(i, j)` 付きの `k` ループ → 並列化
*  変数 `nrm`, `Rkk`, `invRkk`, `Rkj` をループ内に安全に定義
*  SIMD/vector 指示なし
*  処理ロジック・精度変化なし

>  **opt\_2** = **スレッドレベル並列化による高速化対応**（OpenMP 入門構成）

---

##  `opt_3.c` の違い【OpenMP + SIMD ベクトル化】

*  `#pragma omp parallel for` に加えて：

  * `#pragma omp simd` 指示が2か所に追加

    * `Q[i][k] = A[i][k] * invRkk;`
    * `A[i][j] -= Q[i][k] * Rkj;`
*  SIMD 対応でループ依存性を排除（コンパイラに明示）
*  スカラー乗算形式により FMA 最適化のチャンス増

>  **opt\_3** = **マルチスレッド + SIMD 並列を最大限活用**した高速化版

---

##  比較まとめ表

| 特徴                         | `gramschmidt.c` | `opt_1.c` | `opt_2.c`                | `opt_3.c`               |
| -------------------------- | --------------- | --------- | ------------------------ | ----------------------- |
| OpenMP 並列化                 | ❌               | ❌         | ✅ `parallel for` (`k`方向) | ✅ 同左                    |
| SIMD ベクトル化                 | ❌               | ❌         | ❌                        | ✅ `omp simd` による明示ベクトル化 |
| `#pragma scop`（PolyBench用） | ✅               | ✅         | ❌（OpenMPと排他）             | ❌                       |
| 計算式の変形                     | ❌               | ❌         | ✅ 中間変数を安全に分離             | ✅ + SIMD最適化向けのスカラー展開    |
| 並列度                        | 単一スレッド          | 単一スレッド    | マルチスレッド                  | マルチスレッド + SIMD          |

---

##  結論

* **opt\_1**：構文的に整理された PolyBench 処理。最適化目的では使わない。
* **opt\_2**：OpenMP による並列化を導入。**マルチスレッドで高速化可能**
* **opt\_3**：OpenMP に加えて SIMD 化を明示し、**マルチコア + ベクトル命令**をフル活用する形

---

</details>
