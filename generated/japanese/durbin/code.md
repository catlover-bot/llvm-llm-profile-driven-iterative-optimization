<details><summary>c</summary>

---

##  **ベースライン: `durbin.c`**

*  アルゴリズム：

  * `y[0] = -r[0]`
  * `for k=1..n` における再帰更新

    * `alpha = -(r[k] + sum) / beta`
    * `z[i] = y[i] + alpha * y[k-i-1]`
    * `y[k] = alpha`

*  並列化なし（完全逐次）

*  `#pragma scop` あり（Polly 用構造化）

*  SIMD/vector pragma なし

*  明示的なループ `i`, `k` による内積・更新計算

---

##  `opt_1.c` の違い【数式変形版】

*  `alpha = - (r[k] + sum) / beta` → `alpha = -(r[k] + sum)/beta` に変形されていた base に対して、

  * `opt_1` では `alpha = -(r[k] + sum)/beta` を維持（構造は同じ）
*  OpenMP 並列化なし
*  SIMD/vector 化なし
*  PolyBench構文維持（`POLYBENCH_ARRAY`, `POLYBENCH_1D_ARRAY_DECL`）

>  **opt\_1** = 元の逐次構造と全く同一の数式形式を保った**等価最適化なし版**

---

##  `opt_2.c` の違い【軽量整理版】

*  `alpha = (sum + r[k]) / -beta` に変形

  * 意味は等価だが、式の構造が変更 → LLVMレベルで計算順が変わる可能性あり
*  並列化なし
*  SIMD/vector pragma なし
*  `alpha_neg = -alpha` を導入し、式展開で再利用：

  * `z[i] = y[i] + alpha_neg * y[k-i-1]`
*  `alpha_neg` を使ったことでコンパイラによる最適化のチャンス増

>  **opt\_2** = 計算式の再構成により**コンパイラ最適化を促進する意識的な改変**

---

##  `opt_3.c` の違い【依存除去＋ベクトル化ヒント】

*  `opt_2` の全構造を継承
*  各ループ（sum計算・z更新・y更新）に `#pragma GCC ivdep` を明示

  * → **依存性を無視してベクトル化せよ**というヒント
*  `alpha_neg` 使用
*  コンパイラによって `loop unrolling` や `SIMD命令` の展開が可能に

>  **opt\_3** = **ループ依存性解除指示により SIMD 処理を可能にした構造化最適化**

---

##  比較まとめ表

| 最適化項目              | `durbin.c` | `opt_1.c` | `opt_2.c`                | `opt_3.c`             |
| ------------------ | ---------- | --------- | ------------------------ | --------------------- |
| 並列化（OpenMP）        | ❌          | ❌         | ❌                        | ❌                     |
| SIMD/vector pragma | ❌          | ❌         | ❌                        | ✅ `#pragma GCC ivdep` |
| `alpha` 式の変形       | ✅          | ✅ 同じ      | ✅ 変形 (`(sum + r[k])/-β`) | ✅ 同上                  |
| `alpha_neg` 使用     | ❌          | ❌         | ✅ 導入                     | ✅ 同上                  |
| 依存性除去（IVDEP）       | ❌          | ❌         | ❌                        | ✅                     |
| コンパイラ最適化への適合性      | 中          | 中         | 高                        | 最高（SIMD 可能）           |

---

##  結論

* **opt\_1.c**：元コードと同じ構造。意図的な変化なし。
* **opt\_2.c**：演算再構成＋一時変数導入で LLVM 最適化パスを狙う構造
* **opt\_3.c**：依存性除去指示により **SIMD 展開・レジスタ並列性強化** が可能となる、**最も最適化しやすいコード形**

---
</details>

<details><summary>ll</summary>

---

##  **base.ll（非最適化）特徴**

*  `__kmpc_*` 系 OpenMP 関数無し → 完全逐次構造
*  `!llvm.loop.vectorize`, `!llvm.loop.unroll` メタデータ無し
*  内部ループ：`i`, `k` ベースのスカラー更新処理
* `alpha`, `beta`, `sum` はすべて順に `load → fadd/fmul → store` の形で実行

---

##  `opt_1.ll` の違い【構文変化なし】

*  base.ll と同様、スカラー命令ベースで構成
*  OpenMP 呼び出し、メタデータ一切無し
*  LLVM IR 上で命令順は `alpha = -(r[k] + sum) / beta` を忠実に反映
*  vector命令（`<4 x double>` など）なし

>  **opt\_1.ll** = ベースとほぼ同一の IR。構文・構造・実行パスも同様。

---

##  `opt_2.ll` の違い【算術順再構成 + 最適化誘導】

*  `alpha = (sum + r[k]) / -beta` に変形 → IR 上では fadd → fdiv に順序が変化
*  `alpha_neg = -alpha` のような式変数再導入により `fneg` 命令が明示
*  `z[i] = y[i] + alpha_neg * y[k-i-1]` の形で `fmul`, `fadd` が再構成
*  メタデータ無し、並列化無し、SIMD命令も未展開

>  **opt\_2.ll** = 同等計算でも**式構造の再整理によりレジスタ再利用や最適化を誘導**した形

---

## ⚙ `opt_3.ll` の違い【SIMD化前提の依存性ヒント】

*  `opt_2` の全構造を継承
*  各ループに `!llvm.loop.vectorize.enable = true` メタデータが追加
*  `!llvm.loop.vectorize.width = 4` などの vector 幅情報が明示
*  `fadd <4 x double>`, `fmul <4 x double>` など**SIMD命令が部分的に登場**
*  `fneg` 命令により `alpha_neg` の再利用最適化が可能
  
>  **opt\_3.ll** = LLVM最適化向けに**ループベクトル化 + メタヒント強化された完全形**

---

##  差分比較まとめ表

| 項目           | base.ll | opt\_1.ll | opt\_2.ll                     | opt\_3.ll                       |
| ------------ | ------- | --------- | ----------------------------- | ------------------------------- |
| OpenMP 並列化   | ❌       | ❌         | ❌                             | ❌                               |
| 演算構造再構成      | ❌       | ❌         | ✅ `sum+r[k]/-β` + `alpha_neg` | ✅ 同上                            |
| LLVM メタデータ   | ❌       | ❌         | ❌                             | ✅ `loop.vectorize.enable/width` |
| SIMD命令展開     | ❌       | ❌         | ❌                             | ✅ `<4 x double>` `fmul`, `fadd` |
| 依存性解除ヒント（IR） | ❌       | ❌         | ❌                             | ✅ メタ + 式展開                      |

---

##  結論

* **opt\_1.ll**：構文構造完全保持。ベースと同じ
* **opt\_2.ll**：式再構成・中間変数追加により LLVM 最適化エンジンの処理効率を意図的に強化
* **opt\_3.ll**：SIMD命令と vectorize メタデータによって **LLVMにベクトル化を誘導する完全形**

---

  
</details>
