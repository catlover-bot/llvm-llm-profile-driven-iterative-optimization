<details><summary>c</summary>

---

##  **ベースライン: `gesummv.c`**

### 構造

```c
for (i)
  tmp[i] = 0.0;
  y[i] = 0.0;
  for (j)
    tmp[i] += A[i][j] * x[j];
    y[i]   += B[i][j] * x[j];
  y[i] = alpha * tmp[i] + beta * y[i];
```

*  `#pragma scop` 使用（PolyBench最適化対象）
*  並列化なし
*  SIMD/vector 最適化なし
*  明示的に `tmp` を使って中間ベクトルを構成

---

##  `opt_1.c` の違い【構造維持 + PolyBench用構文】

*  `#pragma scop` を維持
*  計算ロジックはベースと完全一致
*  並列化なし
*  SIMD 指示なし

>  **opt\_1** = PolyBench用にそのまま再整理された**構造保存型コード**

---

##  `opt_2.c` の違い【OpenMP 並列化導入】

*  `#pragma omp parallel for private(j)` によるループ並列化（`i`方向）
*  ループ内計算式はベースと一致（`t` & `y_val` 使用）
*  `t`, `y_val` は各スレッドローカルに保持 → 安全な並列化
*  SIMD/vector 指示は無し

>  **opt\_2** = **OpenMP導入によるマルチコア高速化を目的とした並列化版**

---

## ⚙️ `opt_3.c` の違い【OpenMP + SIMD誘導】

*  `#pragma omp parallel for private(j)` 継続
*  内ループで `x[j]` を一時変数 `x_j` に格納 → レジスタキャッシュ効率UP
*  `t`, `y_val` に加えて `DATA_TYPE` 型定義のスカラーで構成
*  コード順序・構造を**LLVM SIMD命令生成しやすい形**に再構成

>  **opt\_3** = OpenMP に加え **コンパイラによるベクトル化を促すレジスタ指向構成**

---

##  比較表まとめ

| 最適化項目                    | `gesummv.c` | `opt_1.c` | `opt_2.c`                | `opt_3.c`               |
| ------------------------ | ----------- | --------- | ------------------------ | ----------------------- |
| OpenMP 並列化               | ❌           | ❌         | ✅ `parallel for` (`i`方向) | ✅ 同左                    |
| SIMDベクトル化誘導              | ❌           | ❌         | ❌                        | ✅ 明示変数化（`x_j`）でレジスタ展開誘導 |
| `tmp[]` 明示使用             | ✅           | ✅         | ❌（`t`で代用）                | ❌（`t`で代用）               |
| PolyBench `#pragma scop` | ✅           | ✅         | ❌                        | ❌                       |
| ベクトル化に適したループ構成           | ❌           | ❌         | 一部                       | ✅ 変数再構成済み               |

---

##  結論

* **opt\_1**：PolyBenchのスキャン用に**構造だけ整えた等価コード**
* **opt\_2**：OpenMPを使って**並列実行性能を大きく改善**
* **opt\_3**：OpenMPに加えて**SIMDベクトル化を引き出しやすい構造**へ再編

---

</details>
