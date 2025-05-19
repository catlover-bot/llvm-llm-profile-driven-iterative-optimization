<details><summary>c</summary>

---

##  **ベース：`mvt.c`**

```c
for (i) for (j) x1[i] += A[i][j] * y_1[j];
for (i) for (j) x2[i] += A[j][i] * y_2[j];
```

* `x1`, `x2` は **行列-ベクトル積および転置積**
*  `#pragma scop` 対応 → PolyBench解析に適した形式
*  OpenMP 無し
*  SIMD/ループアンローリング無し
*  二重ループの基本構造

---

##  `opt_1.c` の違い【OpenMP導入】

*  `#pragma omp parallel for private(j)` により外側 `i` ループを並列化
*  内部ループ（`j`）はそのまま → SIMD指示なし
*  ループアンローリング無し
*  `#pragma scop` は削除

>  **opt\_1** = スレッドによる並列性導入（OpenMP入門レベル）

---

##  `opt_2.c` の違い【OpenMP + 手動ループ展開】

*  `#pragma omp parallel for` に加え
*  `j` ループを **+4単位で手動アンローリング**

```c
for (j = 0; j < _PB_N; j+=4) {
  sum1 += A[i][j]   * y_1[j];
  sum1 += A[i][j+1] * y_1[j+1];
  ...
}
```

*  `#pragma omp simd` なし（SIMD命令化はコンパイラ任せ）

>  **opt\_2** = 演算密度向上を目的としたループ展開による**キャッシュと命令効率最適化**

---

##  `opt_3.c` の違い【opt\_2と同等：ループ展開 + OpenMP】

*  `#pragma omp parallel for private(j) schedule(static)`
*  `j+=4` で同様にアンローリング
*  処理構造、順序、展開内容は `opt_2` と**ほぼ一致**
*  SIMD指示なし

>  **opt\_3** = `opt_2` と同一構造（異なるのは `schedule` スケジューリング）

---

##  最適化差分まとめ表

| 特徴                            | `mvt.c` | `opt_1.c`        | `opt_2.c`        | `opt_3.c`                         |
| ----------------------------- | ------- | ---------------- | ---------------- | --------------------------------- |
| OpenMP 並列化（外側ループ）             | ❌       | ✅ `parallel for` | ✅ `parallel for` | ✅ `parallel for schedule(static)` |
| SIMD指示 (`omp simd`, `vector`) | ❌       | ❌                | ❌                | ❌                                 |
| ループアンローリング（手動）                | ❌       | ❌                | ✅ `j+=4` 明示展開    | ✅ 同上                              |
| PolyBench `#pragma scop`      | ✅       | ❌                | ❌                | ❌                                 |
| 実装目的                          | 基本形     | 並列導入             | 並列 + 演算密度改善      | 並列 + スケジューリング明示（opt\_2同等）         |

---

##  結論

* **opt\_1**：並列導入のスタート地点。最小限の OpenMP 適用
* **opt\_2**：演算ループを展開して **キャッシュ・命令効率向上**
* **opt\_3**：opt\_2 に近く、スケジューリング指定による安定化狙い

---

</details>

<details><summary>ll</summary>

---

##  **base.ll（非最適化）特徴**

*  `__kmpc_*` 系 OpenMP 関数なし → 並列化なし
*  `!llvm.loop.vectorize` メタなし → ベクトル化無効
*  SIMD命令 (`<4 x float>` / `<8 x float>`) 出現なし
*  処理構成：スカラー `load`, `fmul`, `fadd`, `store` の基本形
*  2重ループ：`x1[i] += A[i][j] * y1[j]` と `x2[i] += A[j][i] * y2[j]`

---

##  `opt_1.ll` の違い【OpenMP 並列のみ】

*  `__kmpc_fork_call`, `__kmpc_for_static_init` 出現 → OpenMP 並列化あり
*  `@omp_outlined.*` 関数に `i`ループ展開（マルチスレッド）
*  `!llvm.loop.vectorize` メタなし → ベクトル化誘導なし
*  SIMD命令なし（スカラーのまま）

>  **opt\_1.ll** = **マルチスレッド化（i方向）IR**、ただし SIMD 命令無し

---

##  `opt_2.ll` の違い【OpenMP 並列 + アンローリング風構造】

*  OpenMP (`__kmpc_*`) 処理あり（iループ単位で分割）
*  IR中でループ変数 `j` に `j+1`, `j+2`, `j+3` アクセス → ソース由来の **手動アンローリング**
*  SIMD命令なし（コンパイラによる自動化非発生）
*  `vectorize` メタなし

>  **opt\_2.ll** = **命令展開（アンローリング）による並列化誘導構成**

---

##  `opt_3.ll` の違い【opt\_2と構造同一 + 並列スケジューリング指示】

*  `__kmpc_*` による OpenMP 並列化あり（static schedule）
*  `j+1`, `j+2`, `j+3` などアンローリングされた命令構造も同じ
*  SIMD命令・ベクトル化メタなし

>  **opt\_3.ll** = **opt\_2と同様の構造 + 安定スケジューリング追加版**

---

##  LLVM IR 比較まとめ

| 特徴                        | base.ll | opt\_1.ll | opt\_2.ll                   | opt\_3.ll              |
| ------------------------- | ------- | --------- | --------------------------- | ---------------------- |
| OpenMP 並列化 (`__kmpc_*`)   | ❌       | ✅         | ✅                           | ✅（schedule(static) 付き） |
| SIMD命令 (`<4 x float>` など) | ❌       | ❌         | ❌                           | ❌                      |
| ベクトル化メタ (`vectorize.*`)   | ❌       | ❌         | ❌                           | ❌                      |
| ループアンローリング構造              | ❌       | ❌         | ✅（`j`, `j+1`, `j+2`, `j+3`） | ✅ 同上                   |
| `omp_outlined` 関数数        | なし      | 2程度       | 2程度                         | 2程度                    |

---

##  結論

* **opt\_1.ll**：OpenMP による **並列化のみ適用**
* **opt\_2.ll**：ループを展開して命令数を増やし演算密度向上
* **opt\_3.ll**：opt\_2 同等構造でスケジューリングを明示

 **全バージョン共通の非対応**：

* SIMD命令
* LLVM ベクトル化メタ (`!llvm.loop.vectorize`)

---

</details>
