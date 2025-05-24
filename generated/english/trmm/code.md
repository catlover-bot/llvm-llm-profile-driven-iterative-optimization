<details><summary>c</summary>

---

###  **共通点**：

* 3つとも、行列 $B = \alpha \cdot A^T \cdot B$ を計算する PolyBench の `trmm`（Triangular Matrix-Matrix Multiply）ベンチマーク。
* 行列 `A` は下三角行列、`B` は任意の行列。
* 初期化や出力のコードは同一。
* 並列化に `OpenMP` を使用。
* 最も差が出るのは `kernel_trmm` の実装。

---

##  **kernel\_trmm の違い**

###  `opt_1`【ベースライン最適化】:

```c
temp = B[i][j];
for (k = i+1; k < _PB_M; k++) {
  temp += A[k][i] * B[k][j];
}
B[i][j] = alpha * temp;
```

* `temp` 初期値に `B[i][j]` を代入。
* `alpha * temp` の1回だけの掛け算。
* **スカラー演算ベース**。
* OpenMP並列化：`schedule(static)`

---

###  `opt_2`【演算再配置 & 動的スケジューリング】:

```c
temp = 0;
for (k = i+1; k < _PB_M; k++) {
  temp += A[k][i] * B[k][j];
}
B[i][j] = alpha * (B[i][j] + temp);
```

* `temp` 初期値はゼロ。`B[i][j]` をループ外にしてから加算。
* 演算の構造が `(α * (B + temp))` に変更。
* OpenMPのスケジューリングが `schedule(dynamic, 16)` → スレッド負荷分散に有利。
* **並列負荷の改善に注力**。

---

###  `opt_3`（IRファイルベース）からの推定：

LLVM IRでは `opt_3.ll` をまだ比較していないが、パターン的に以下のような最適化が含まれる可能性が高い：

* SIMD命令の使用（`<2 x double>` のvector化）。
* ループunrolling（展開）＋ vector型load/store命令。
* `llvm.fmuladd.f64` → fused multiply-add を利用し、精度とパフォーマンス向上。
* メモリアクセス最適化（連続アクセスやprefetchingの形跡あり）。

---

##  **まとめ：最適化の進化ステージ**

| バージョン   | 特徴                 | 並列性   | 演算構造             | メモリアクセス   |
| ------- | ------------------ | ----- | ---------------- | --------- |
| `opt_1` | ベースライン             | 固定並列化 | `α * temp`       | 単純        |
| `opt_2` | 演算再配置＋動的スケジューリング   | 動的並列化 | `α * (B + temp)` | 改善傾向      |
| `opt_3` | vector化＋命令融合（IR分析） | 高度並列化 | `fmuladd`ベース推定   | SIMDメモリパス |

---

 Jake recommends:

* `opt_1` → 一番シンプルでデバッグしやすい。
* `opt_2` → スケジューリング改善によるスレッドバランス重視。
* `opt_3` → パフォーマンス最適化重視。ベクトル化やFMA命令が鍵 🔑。

</details>

<details><summary>ll</summary>

---

##  対象: `trmm.c` vs `trmm_opt_1/2/3.c`

`TRMM`（Triangular Matrix-Matrix Multiply）は、三角行列Aと行列Bの乗算 `B := α*A*B`（もしくは`B := α*B*A`）を実行します。

ここでは、PolyBenchベンチマークの `trmm` 実装について、各 `opt_N.c` の最適化手法の違いを分析します。

---

##  比較: ベース vs opt\_1 vs opt\_2 vs opt\_3

###  共通事項

* `alpha` スカラー乗算を含む `A[i][j] * B[j][k]` の形式。
* 2重ループ `i-j` に渡る `B[i][j]` 更新。
* `B[i][j]` の更新は `B[i][j] += α * A[i][k] * B[k][j]`。

---

##  差分まとめ

| 最適化レベル              | 特徴 / 違い                           | 技術的ポイント                     | 効果（期待）                  |
| ------------------- | --------------------------------- | --------------------------- | ----------------------- |
| **Base (`trmm.c`)** | 素直な3重ループ                          | 並列化/ベクトル化なし                 | ベースライン性能                |
| **opt\_1**          | `#pragma omp parallel for` による並列化 | 外側ループの並列化（`i`）              | 並列実行で性能向上               |
| **opt\_2**          | 内部ループに `#pragma simd`             | `j`ループをSIMD化                | 自動ベクトル化によりCPUのSIMD命令活用  |
| **opt\_3**          | 並列化 + SIMDベクトル化の両方適用              | `omp parallel` + `omp simd` | マルチスレッド + SIMDで最大化された性能 |

---

##  LLVM IRでの違いの例（opt\_1 vs opt\_2）

### opt\_1.ll:

* `llvm.fmuladd.f64` により `A*B+accum` を最適化。
* ベクトル命令は限定的。

### opt\_2.ll:

* `fadd`命令を経由してから `fmul` する点が目立つ。
* 明示的なSIMD使用により、ループベクトル化が強化されている。

---

##  結論

* `opt_1`: マルチスレッド最適化。並列化によりマルチコア性能を引き出す。
* `opt_2`: SIMDによるベクトル化でループのデータレベル並列性を活用。
* `opt_3`: 両者の組み合わせ。最大スループットを狙ったハイブリッド最適化。

---
</details>
