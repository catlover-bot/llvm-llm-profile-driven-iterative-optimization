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

<details><summary>ll</summary>

---

##  **base.ll（非最適化）特徴**

*  `__kmpc_*`（OpenMP）関数なし → 完全逐次処理
*  `!llvm.loop.vectorize` などのメタデータなし → LLVM SIMD展開なし
*  2重ループ（`i`, `j`）をスカラー命令で逐次実行
* 演算構成：`load`, `fmul`, `fadd`, `store` のみ（スカラー）

---

##  `opt_1.ll` の違い【構造そのまま・並列化なし】

*  OpenMP 呼び出しなし
*  ベクトル化メタデータなし
* `t` と `y_val` を使って `tmp` と `y[i]` をローカル変数化（再利用可能性の向上）
*  スカラー命令のみの構成（`fmul`, `fadd`）

>  **opt\_1.ll** = ソース構造の整理に留まり、IR的には base と**実質同等**

---

##  `opt_2.ll` の違い【OpenMP 並列化導入】

*  `__kmpc_fork_call`, `__kmpc_for_static_init` 出現 → OpenMP 並列処理導入
*  `@.omp_outlined.*` 関数で `i` ループをスレッドに分割
*  SIMD命令なし（`<4 x float>` など未展開）
*  `!llvm.loop.vectorize` メタデータなし
*  変数 `t`, `y_val` の使用でスレッドローカル演算を実現

>  **opt\_2.ll** = 並列処理のみに着手した**マルチスレッド実行対応 IR**

---

##  `opt_3.ll` の違い【OpenMP + SIMD誘導構成】

*  `__kmpc_*` 並列処理構造は `opt_2.ll` と同様
*  `!llvm.loop.vectorize.enable = true` メタデータあり → LLVM にベクトル化を明示
*  `load <4 x float>`, `fadd <4 x float>`, `fmul <4 x float>` など **SIMD命令出現**
*  一時変数 `x_j`, `t`, `y_val` の導入によりレジスタ再利用・キャッシュヒントを強化

>  **opt\_3.ll** = 並列化 + ベクトル化を両立した LLVM 最適化対応の完成 IR

---

##  比較まとめ表

| 最適化項目                        | base.ll          | opt\_1.ll    | opt\_2.ll                    | opt\_3.ll                      |
| ---------------------------- | ---------------- | ------------ | ---------------------------- | ------------------------------ |
| OpenMP 並列処理                  | ❌                | ❌            | ✅ `__kmpc_*`, `omp_outlined` | ✅ 同左                           |
| ベクトル化メタ (`vectorize`)        | ❌                | ❌            | ❌                            | ✅ `vectorize.enable = true`    |
| SIMD命令 (`<4 x float>`)       | ❌                | ❌            | ❌                            | ✅ `fadd`, `fmul`, `load/store` |
| 一時変数 (`x_j`, `t`, `y_val`)使用 | ❌                | ✅            | ✅                            | ✅（さらに SIMD に親和性高い構造）           |
| 演算・書き戻し形式                    | `tmp[i]`, `y[i]` | `t`, `y_val` | `t`, `y_val`                 | `t`, `y_val`, `x_j` で分離最適化     |

---

##  結論

* **opt\_1.ll**：構造整理のみ。IR的には base と同一。**逐次+読みやすさ重視**
* **opt\_2.ll**：OpenMP 並列化でマルチスレッド処理を可能に。**並列処理導入**
* **opt\_3.ll**：OpenMP + SIMD命令 + LLVM最適化ヒントのフル適用。**最高効率化構造**

---

</details>
