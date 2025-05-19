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

<details><summary>ll</summary>

---

##  **base.ll（非最適化）特徴**

*  `__kmpc_*` 系 OpenMP 呼び出しなし → 単一スレッド実行
*  `!llvm.loop.*` メタデータなし → ベクトル化非対応
*  3重ループ：`k` → `i`, `j` を使って逐次的に `Q`, `R`, `A` を更新
* 使用命令：`load`, `fmul`, `fadd`, `fsub`, `store` のスカラー形式

---

##  `opt_1.ll` の違い【構文整理のみ】

*  OpenMP 並列なし（`__kmpc_*` 呼び出しなし）
*  SIMD命令も無し（`<4 x double>` など出現なし）
*  `Q`, `R`, `A` 各ステップのメモリアクセスが `getelementptr` で正確に整理されている
*  計算順、命令順序とも base と一致

>  **opt\_1.ll** = LLVM IR レベルでもベースと同等。**命令順・構造維持型**

---

##  `opt_2.ll` の違い【OpenMP 並列化】

*  `__kmpc_fork_call`, `__kmpc_for_static_init` の存在 → OpenMP 並列化（`k`ループベース）
*  `@.omp_outlined.*` によるループ分割処理あり
*  SIMD命令なし（スカラー命令構成のまま）
*  vectorize メタなし

>  **opt\_2.ll** = 並列化された IR だが、**ベクトル化は未対応**

---

##  `opt_3.ll` の違い【OpenMP + SIMD ベクトル命令化】

*  `__kmpc_*` による OpenMP 並列構造を保持（`opt_2`と同等）
*  `!llvm.loop.vectorize.enable = true` メタデータ付きループあり → LLVMベクトル化指示
*  `fmul <4 x double>`, `fadd <4 x double>`, `fsub <4 x double>` などのSIMD命令出現
*  `!llvm.loop.vectorize.width = 4`, `unroll.count = 4` メタ付き → ベクトル長とループ展開数指定
*  ループキャリア依存性回避のための命令順変更が一部確認される

>  **opt\_3.ll** = 並列処理 + SIMDベクトル命令 + 明示的メタによる LLVM 最適化誘導型 IR

---

##  差分まとめ表

| 特徴                      | base.ll | opt\_1.ll | opt\_2.ll                 | opt\_3.ll                                 |
| ----------------------- | ------- | --------- | ------------------------- | ----------------------------------------- |
| OpenMP 並列化 (`__kmpc_*`) | ❌       | ❌         | ✅ `fork_call`, `outlined` | ✅ 同左                                      |
| ベクトル化メタ (`vectorize`)   | ❌       | ❌         | ❌                         | ✅ `vectorize.enable`, `width=4`, `unroll` |
| SIMD命令 (`<4 x double>`) | ❌       | ❌         | ❌                         | ✅ `fadd`, `fmul`, `fsub`                  |
| ループ依存性の最適化              | ❌       | ❌         | 部分対応                      | ✅ `simd` 対応型の演算順序                         |
| 命令スケジューリング変化            | ❌       | ❌         | ❌                         | ✅ LLVM最適化を促進するために順序調整あり                   |

---

##  結論

* **opt\_1.ll**：構造保存型。IR最適化は未適用。
* **opt\_2.ll**：OpenMP による並列実行が可能だが、命令レベルはスカラーのまま
* **opt\_3.ll**：並列 + SIMD命令展開 + 明示ベクトル幅指定の **最終最適化 IR**

---

</details>
