<details><summary>c</summary>

---

##  **ベース：`syrk.c`**

```c
for (i)
  for (j <= i)
    C[i][j] *= beta;
  for (k)
    for (j <= i)
      C[i][j] += alpha * A[i][k] * A[j][k];
```

*  `#pragma scop` による PolyBench 最適化対象構造
*  OpenMP 無し（シングルスレッド）
*  式展開無し：`alpha * A[i][k]` 毎ループ再計算
*  SIMD 明示も無し

---

##  `opt_1.c` の違い【OpenMP collapse】

```c
#pragma omp parallel for collapse(2)
for (i)
  for (j <= i)
    ...
```

*  OpenMP による `i,j` 2重ループの並列化
*  依然として `A[i][k]`, `A[j][k]` を毎回 load
*  SIMD 明示なし
*  PolyBench構造から独立（`#pragma scop`無し）

>  **opt\_1** = 並列性を導入した**ベース拡張**

---

##  `opt_2.c` の違い【OpenMP + schedule(dynamic)】

```c
#pragma omp parallel for schedule(dynamic)
for (i)
  for (j <= i)
    ...
```

*  スケジューリングに `dynamic` を指定しロードバランス向上を狙う
*  依然としてスカラーループ構造（ベクトル化なし）
*  式展開せず、ベース構造と同等（ただし scheduleあり）

>  **opt\_2** = 並列性強化 + スケジューリング調整による**実行効率改善狙い**

---

##  `opt_3.c` の違い【OpenMP + collapse(2) + SIMD】

```c
#pragma omp parallel for collapse(2) schedule(dynamic)
  for (i)
    for (j <= i) {
      DATA_TYPE temp = C[i][j] * beta;
      #pragma omp simd reduction(+:temp)
      for (k)
        temp += alpha * A[i][k] * A[j][k];
      C[i][j] = temp;
    }
```

*  `i,j` に対する OpenMP 並列 (`collapse(2)`)
*  `k` に対して SIMD 化 (`#pragma omp simd reduction(+:temp)`)
*  `temp` ローカル変数化でループ間依存を明確排除
*  `A[i][k]`, `A[j][k]` はそのままだが、SIMD 効率は向上

>  **opt\_3** = **並列 + SIMD** 両立の最適解構造

---

##  比較表

| 特徴                       | `syrk.c` | `opt_1.c`       | `opt_2.c`             | `opt_3.c`                 |
| ------------------------ | -------- | --------------- | --------------------- | ------------------------- |
| OpenMP 並列化               | ❌        | ✅ `collapse(2)` | ✅ `schedule(dynamic)` | ✅ `collapse(2) + dynamic` |
| SIMD 命令明示                | ❌        | ❌               | ❌                     | ✅ `#pragma omp simd`      |
| 計算共通化 (`temp`導入)         | ❌        | ❌               | ❌                     | ✅                         |
| 再利用最適化（キャッシュ効率）          | ❌        | ❌               | ❌                     | ⚠️ 一部改善（`temp`あり）         |
| PolyBench `#pragma scop` | ✅        | ❌               | ❌                     | ❌                         |

---

##  結論

* **opt\_1.c**：基本的な並列化（collapse(2)）での拡張
* **opt\_2.c**：負荷分散を意識した `schedule(dynamic)`
* **opt\_3.c**：**並列性 + SIMD ベクトル化 + 演算独立性確保** → ベストパフォーマンス設計

---

</details>

<details><summary>ll</summary>

---

## ✅ **base.ll（非最適化）特徴**

*  `__kmpc_*` 呼び出し無し → OpenMP 無し
*  SIMD命令（`<N x float>`）出現なし
*  `!llvm.loop.vectorize` 等のメタ無し → 自動ベクトル化も期待できない
*  3重ループ：スカラー `load`, `fmul`, `fadd`, `store`
*  `A[i][k]`, `A[j][k]` は再利用せず毎回 load

---

##  `opt_1.ll` の違い【OpenMP collapse】

*  `__kmpc_fork_call`, `__kmpc_for_static_init` 出現 → OpenMP 並列あり
*  `collapse(2)` に対応：`i` と `j` を対象に並列化
*  SIMD命令なし、ベクトル化メタも無し
*  `%A_ik`, `%A_jk` は `load` で毎回取得 → メモリアクセス非効率

>  **opt\_1.ll** = 並列処理構造は存在するが、演算・データ再利用には未着手

---

##  `opt_2.ll` の違い【OpenMP + Dynamicスケジューリング】

*  `__kmpc_for_dynamic_init` 使用 → OpenMP dynamic scheduling 対応
*  `omp_outlined.*` 関数で `i,j` に対して並列領域
*  SIMD命令出現なし
*  `vectorize.enable` メタ無し
*  式再利用も無い

>  **opt\_2.ll** = スケジューリング強化された並列構造、依然として**スカラー中心**

---

##  `opt_3.ll` の違い【OpenMP + SIMD対応 + 式分離】

*  `__kmpc_fork_call`, `static` scheduling 指定あり
*  `%temp` 変数導入（= `C[i][j] * beta`）→ ループ外でスカラー化
*  `reduction(+:temp)` に相当するIR構造（ループカウンタ付き加算）
*  `%temp += alpha * A[i][k] * A[j][k]` 形式に変換
*  ループは `k` を対象に最適化され、**SIMD命令誘導構造**
*  ただし LLVM により SIMD命令（`<4 x float>` 等）はまだ生成されていない
*  `vectorize.enable`, `vectorize.width` メタがあれば生成可能性大

>  **opt\_3.ll** = **SIMD誘導構造 + 並列化 + 式展開**が合体した**ベストIR構成**

---

##  LLVM IR 比較表

| 特徴                      | base.ll | opt\_1.ll       | opt\_2.ll             | opt\_3.ll                            |
| ----------------------- | ------- | --------------- | --------------------- | ------------------------------------ |
| OpenMP 並列化 (`__kmpc_*`) | ❌       | ✅ `collapse(2)` | ✅ `schedule(dynamic)` | ✅ `collapse(2)` + `schedule(static)` |
| SIMD命令（`<4 x float>`）   | ❌       | ❌               | ❌                     | ❌（誘導構造は存在）                           |
| ベクトル化メタ (`vectorize`)   | ❌       | ❌               | ❌                     | ❌（必要）                                |
| 計算再構成（`temp`導入）         | ❌       | ❌               | ❌                     | ✅                                    |
| 式の分離・再利用構造              | ❌       | ❌               | ❌                     | ✅                                    |

---

##  結論

* **opt\_1.ll**：最小限の並列構造、スカラー演算のまま
* **opt\_2.ll**：動的スケジューリングを加えた OpenMP 構造
* **opt\_3.ll**：**IR再構成 + ベクトル化誘導構造 + 式再利用** → LLVM SIMD命令出力直前の理想形

---

</details>
