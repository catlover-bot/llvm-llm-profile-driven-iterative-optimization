<details><summary>c</summary>

---

##  **ベース：`3mm.c`**

```c
E[i][j] = sum over k of A[i][k] * B[k][j];
F[i][j] = sum over k of C[i][k] * D[k][j];
G[i][j] = sum over k of E[i][k] * F[k][j];
```

*  PolyBench `#pragma scop` あり
*  OpenMP並列化無し
*  SIMD化無し
*  メモリアクセス最適化無し
*  キャッシュ局所性も未考慮

---

##  `opt_1.c` の違い【OpenMP基本並列 + 非初期化sum】

```c
#pragma omp parallel for
...
if (k == 0) G[ii][jj] = 0.0;
...
G[ii][jj] += E[ii][kk] * F[kk][jj];
```

*  OpenMPを3段階のループすべてに適用（`#pragma omp parallel for`）
*  `collapse(2)` 無し（並列粒度はルートレベル）
*  `G[ii][jj]` などは逐次初期化（`k == 0` 条件）
*  `sum` 一時変数無し → `+=` による多重メモリアクセス発生

>  **opt\_1** = シンプルな並列化で性能アップ、ただしメモリアクセス効率は改善されていない

---

##  `opt_2.c` の違い【OpenMP + `sum`導入 + 動的スケジューリング】

```c
#pragma omp parallel for schedule(dynamic)
...
DATA_TYPE sum = 0;
for (...) sum += ...;
G[ii][jj] = (k == 0) ? sum : G[ii][jj] + sum;
```

*  `sum` 変数導入 → **一時変数によるメモリアクセス削減**
*  `G[ii][jj]` 等への書き込みを1回に制限（`sum`で中間合算）
*  OpenMP `schedule(dynamic)` によって負荷分散も考慮
*  `collapse(2)` 無し（並列粒度は`i`）

>  **opt\_2** = メモリアクセスと動的分散の両立型。**コア利用とキャッシュ効率のバランスを取る**

---

##  `opt_3.c` の違い【OpenMP collapse(2) + sum + schedule(dynamic)】

```c
#pragma omp parallel for collapse(2) schedule(dynamic)
```

*  `collapse(2)` により `i-j` のループを1ループとして並列化 → **高並列性**
*  `sum` 変数導入 → **メモリアクセス削減**
*  `schedule(dynamic)` → **不均等な負荷分散に対応**
*  キャッシュ局所性を考慮した**ブロッキング最適化（BSIZE = 32）**

>  **opt\_3** = 並列性、メモリアクセス最小化、スケジューリング、すべてを盛り込んだ**ハイパフォーマンス構造**

---

##  比較表

| 特徴                 | `3mm.c` | `opt_1.c` | `opt_2.c`      | `opt_3.c`                 |
| ------------------ | ------- | --------- | -------------- | ------------------------- |
| OpenMP 並列          | ❌       | ✅ 基本並列    | ✅ + dynamic    | ✅ + collapse(2) + dynamic |
| `sum` 一時変数の導入      | ❌       | ❌（+=直接）   | ✅              | ✅                         |
| キャッシュブロッキング（BSIZE） | ❌       | ✅         | ✅              | ✅                         |
| 書き込み最小化            | ❌       | ❌         | ✅（sum→1回write） | ✅                         |
| 並列粒度               | -       | ルート単位     | i単位            | i-j ペア単位（最細粒度）            |

---

##  結論

* **opt\_3.c**：並列粒度・負荷分散・キャッシュ効率すべてを考慮した最適解。**最高性能が期待される**
* **opt\_2.c**：コード複雑度を抑えつつも `sum` による実用的最適化。バランス型
* **opt\_1.c**：OpenMPの導入のみ。並列ベースライン構造

---
 
</details>

<details><summary>ll</summary>

---

##  **base.ll（ベースIR構造）**

*  `__kmpc_*` 呼び出し無し → OpenMP 無効
*  `vectorize.enable` メタ無し → ベクトル化不可
*  `<N x float>` SIMD命令なし（全スカラー命令）
*  3段階ループで `load`, `fmul`, `fadd`, `store` を素朴に実行
*  `sum` 変数なし → メモリアクセス（`+=`）が複数回

---

##  `opt_1.ll` の違い【OpenMP導入 + スカラーループ】

*  `__kmpc_fork_call`, `__kmpc_for_static_init` 出現 → OpenMP 並列化
*  `collapse(2)` 無し（並列粒度は外側ループ）
*  SIMD命令無し、`vectorize` メタ無し
*  `G[i][j] += ...` の逐次加算のまま → 複数回 `load` + `store`

 >  **opt\_1.ll** = 並列構造ありだが、**演算・キャッシュ最適化は未着手**

---

##  `opt_2.ll` の違い【OpenMP + sum一時変数 + 動的スケジューリング】

*  `__kmpc_for_dynamic_init` → `schedule(dynamic)`
*  `%sum = fadd ...` → 中間変数による加算構造あり
*  `store %sum → G[i][j]` → **1回だけの書き込み**
*  SIMD命令無し、`vectorize` メタ無し
*  IR構造は命令順最適で、**パイプライン実行しやすい**

>  **opt\_2.ll** = **演算再利用 + 書き込み削減** を取り入れたIR設計

---

##  `opt_3.ll` の違い【OpenMP collapse(2) + sum + 動的スケジューリング】

*  `collapse(2)` 相当のインデクス変換 + `__kmpc_fork_call`
*  `%sum` に `fmul`, `fadd` を蓄積 → 書き込みは `G[i][j] = sum` で1回
*  最も細かい並列化と、**書き込み最適化**の両立
*  SIMD命令なし（`<N x float>` 無し）
*  `vectorize.*` メタ無し → LLVM SIMD自動化未対応

>  **opt\_3.ll** = **並列 + 再利用 + 動的分散** の最強IR構造、ベクトル化導入可能な理想形

---

##  LLVM IR 比較表

| 特徴                     | base.ll | opt\_1.ll | opt\_2.ll | opt\_3.ll               |
| ---------------------- | ------- | --------- | --------- | ----------------------- |
| OpenMP 並列 (`__kmpc_*`) | ❌       | ✅ static  | ✅ dynamic | ✅ collapse(2) + dynamic |
| SIMD命令（`<N x float>`）  | ❌       | ❌         | ❌         | ❌                       |
| `vectorize.enable` メタ  | ❌       | ❌         | ❌         | ❌                       |
| sum変数による演算再利用          | ❌       | ❌         | ✅         | ✅                       |
| G\[i]\[j]への書き込み回数      | 多回      | 多回        | 1回        | 1回                      |

---

##  結論

* **opt\_1.ll**：並列導入されたが、書き込み最適化やSIMDに非対応 → **基礎強化型**
* **opt\_2.ll**：書き込み削減 + 動的スケジューリング → **実行効率型**
* **opt\_3.ll**：最大並列性・最小アクセス・最適構造 → **最もSIMD化に近い設計**

---

</details>
