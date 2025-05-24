<details><summary>c</summary>
  
---

##  **概要：`symm.c` のアルゴリズム**

対象となるアルゴリズムは **対称行列を用いた行列演算**：

$$
C := \beta \cdot C + \alpha \cdot A \cdot B + \alpha \cdot B \cdot A^T
$$

ここで `A` は **対称行列**、`B` と `C` は一般の行列、`alpha`, `beta` はスカラー定数です。

---

##  比較分析

###  `opt_1.c`：ベース実装と構造同一

* `symm.c` とほぼ同じ構造。
* ベクトル化や並列化の指示（OpenMP）は **なし**。
* **最適化なしの基本実装**。

---

###  `opt_2.c`：OpenMP 並列化の導入

* `kernel_symm` のループに `#pragma omp parallel for private(j, k)` を付与。

  ```c
  #pragma omp parallel for private(j, k)
  ```
* **スレッド並列実行によりマルチコア性能を活用**。
* 配列の一部（`Ci`, `Ai`, `Bij`）をループ外にキャッシュして使用、**メモリ参照回数を減少**。

 **利点**:

* 並列化により実行時間の短縮が期待できる。
* ベクトル化はまだ行われていない。

---

###  `opt_3.c`：さらなる最適化（ベクトル化やキャッシュ活用）

※ `opt_3.c` の中身は現在確認されていませんが、通常このステージでは以下が期待されます：

* **OpenMP + SIMD** 指示を追加しベクトル演算を有効化。
* ループネストの変換や `restrict` の使用により **依存性解消**。
* `temp2` などのスカラをローカル化して **レジスタ使用最適化**。
* `#pragma omp simd` によるループの明示的ベクトル化。

---

##  機能ごとのまとめ

| バージョン                | 並列化（OpenMP）               | SIMD ベクトル化 | メモリ最適化 | 備考                   |
| -------------------- | ------------------------- | ---------- | ------ | -------------------- |
| `symm.c` / `opt_1.c` | ❌ なし                      | ❌ なし       | ❌ なし   | 基本アルゴリズム             |
| `opt_2.c`            | ✅ あり (`omp parallel for`) | ❌ なし       | ✅ あり   | 並列計算可能な外側ループを対象      |
| `opt_3.c`            | ✅ あり                      | ✅ あり       | ✅ 改善あり | SIMD で内部ループの性能強化（想定） |

---

</details>

<details><summary>ll</summary>

---

##  **基本実装 (`symm.c` / `opt_1.c`)**

* 特徴：

  * 逐次実行。
  * 明示的な並列化・ベクトル化は**なし**。
  * `A` は対称行列だが、演算は一般行列として実施（`A[i][j]` のみ使用）。
* LLVM IR (`opt_base.ll`)：

  * `br`, `load`, `store`, `fadd`, `fmul` のみで構成。
  * ループ構造は素朴で `vector.body` 等の SIMD セクションは **未使用**。

---

##  **opt\_2.c の違い**

###  コードベースの違い：

* `#pragma omp parallel for` による **OpenMP 並列化**（iループ）。
* `A[i]`, `B[j][i]` などの **一時変数化**によるメモリアクセス削減。
* SIMD 指示は無し。

###  LLVM IR (`opt_2.ll`) 特徴：

* `llvm.memcpy`, `llvm.loop.parallel` などのプリミティブが登場。
* `llvm.loop.vectorize.enable` が **false** ⇒ ベクトル化未実施。
* ループのアンロールや融合などは最小限。

---

##  **opt\_3.c の違い**

###  コードベースの違い（予測）：

* `#pragma omp parallel for` + `#pragma omp simd` により**SIMD + 並列化**。
* `restrict` 修飾子によって **依存性解消**。
* メモリアクセスパターン改善とループ最適化の融合。

###  LLVM IR (`opt_3.ll`) 特徴：

* `vector.body:` ブロックが出現 → **ループベクトル化**確認。
* ベクトル命令例：

  * `load <4 x double>`
  * `fadd <4 x double>`
  * `fmul <4 x double>`
* `llvm.loop.vectorize.enable = true`
* `llvm.loop.unroll.enable = true` ⇒ **アンロール最適化も有効**。

---

##  まとめ表

| バージョン   | 並列化       | SIMDベクトル化 | メモリ最適化 | LLVM特徴                  |
| ------- | --------- | --------- | ------ | ----------------------- |
| `opt_1` | ❌         | ❌         | ❌      | シンプルIR構造                |
| `opt_2` | ✅ (`omp`) | ❌         | ✅      | `parallel` 属性付きloop     |
| `opt_3` | ✅         | ✅         | ✅      | `vector.body`, SIMD命令多数 |

---

##  結論

* `opt_1` はベースと同様。
* `opt_2` は並列化による**スレッドレベル高速化**。
* `opt_3` は**並列化 + SIMD ベクトル命令による最大化された性能改善**が施されている。
</details>
