<details><summary>c</summary>

---

##  **ベース：`seidel-2d.c`**

### 特徴：

```c
for (t)
  for (i = 1; i < n-1; i++)
    for (j = 1; j < n-1; j++)
      A[i][j] = 平均(周囲8点 + 自身);
```

*  `#pragma scop ... endscop` → PolyBench向けの最適化構造
*  OpenMP 並列化なし
*  SIMD 指示なし
* メモリ依存の制御やスレッド制御なし

---

##  `opt_1.c` の違い【外側からcollapseによる広域並列化】

```c
#pragma omp parallel for private(i,j,t) collapse(2)
for (t)
  for (i)
    for (j)
      A[i][j] = ...;
```

*  `t` と `i` をまとめて並列化（`collapse(2)`）
*  `nowait` なし → 各スレッドは同期が必要
*  `barrier` 不要（デフォルト同期）
*  PolyBench対応構造 (`#pragma scop`) 消失

>  **opt\_1** = 時間方向も含めて**ループ融合型並列化**（効果高いが依存注意）

---

##  `opt_2.c` の違い【空間方向をcollapse(2) + 明示バリア】

```c
#pragma omp parallel
for (t)
  #pragma omp for collapse(2) nowait
  for (i)
    for (j)
      A[i][j] = ...;
  #pragma omp barrier
```

*  空間方向（i,j）を `collapse(2)` → より多くの並列粒度
*  `nowait` によって非同期進行可能にしつつ
*  `#pragma omp barrier` で `t` ごとの同期制御
*  tループ外でスレッド生成は一度きり → 効率良好

>  **opt\_2** = **ステンシル依存を意識した同期付き並列化** → 高信頼・高性能

---

##  `opt_3.c` の違い【動的スケジューリングによるロードバランス】

```c
#pragma omp parallel private(t,i,j)
for (t)
  #pragma omp for schedule(dynamic) nowait
  for (i)
    for (j)
      A[i][j] = ...;
  #pragma omp barrier
```

*  `omp for schedule(dynamic)` → スレッドごとに負荷自動調整
*  `nowait + barrier` → `t` 間の同期を明示的に確保
*  `collapse(2)` なし → 並列粒度は `i` ループ単位

>  **opt\_3** = **動的ロードバランスに重きを置いた設計** → 大規模・不均一問題向け

---

##  比較表

| 特徴                        | `seidel-2d.c` | `opt_1.c`      | `opt_2.c`              | `opt_3.c`            |
| ------------------------- | ------------- | -------------- | ---------------------- | -------------------- |
| PolyBench `#pragma scop`  | ✅             | ❌              | ❌                      | ❌                    |
| OpenMP 並列化                | ❌             | ✅（collapse(2)） | ✅（collapse(2)+barrier） | ✅（dynamic schedule）  |
| collapse 使用範囲             | ❌             | `t, i`         | `i, j`                 | ❌（`i`のみ）             |
| スケジューリング                  | ❌             | default        | default                | `schedule(dynamic)`  |
| `#pragma omp barrier` の有無 | ❌             | ❌（暗黙同期）        | ✅                      | ✅                    |
| スレッド生成の頻度                 | 各回            | 各回             | 1度（並列領域外で回す）           | 1度（並列領域外で回す）         |
| 実装目的                      | ベースライン        | 時空間並列の導入       | 空間方向の並列強化+明示同期         | ロードバランス最適化（動的スケジューラ） |

---

##  結論

* **opt\_1.c**：時間方向の並列まで導入 → 並列性最大だがデータ依存リスクあり
* **opt\_2.c**：空間方向に広げ、時間方向に barrier を設置 → 安全かつ高速
* **opt\_3.c**：動的スケジューリングでロードバランス改善を意識

---

</details>

<details><summary>ll</summary>

---

##  **base.ll（ベース）特徴**

*  `__kmpc_*` 呼び出しなし → OpenMP 無し
*  `!llvm.loop.vectorize` メタなし → ベクトル化誘導無し
*  SIMD命令（`<N x float>`）出現なし
*  3重ループ：`t, i, j` による 2Dステンシル時間展開
* 処理：スカラー `load`, `fadd`, `fmul`, `store`

---

##  `opt_1.ll` の違い【OpenMP `collapse(2)` 対応】

*  `__kmpc_fork_call`, `__kmpc_for_static_init` 出現 → 並列化あり
*  `@omp_outlined.*` 関数あり → `t`×`i` のループをまとめて並列化（`collapse(2)`）
*  SIMD命令なし、ベクトル化メタなし
*  時空間並列により loop fusion 対応

>  **opt\_1.ll** = **時間・空間ループを同時にOpenMP並列**に展開した構造

---

##  `opt_2.ll` の違い【`collapse(2)` + 明示バリア構成】

*  OpenMP 並列 (`__kmpc_*`) は `i, j` 方向（空間）に `collapse(2)` 適用
*  `omp.barrier` 相当が `omp parallel` 内に含まれる
*  `omp.outlined` 関数数が2（for部分とbarrier部分）
*  SIMD命令なし
*  ベクトル化メタ無し

>  **opt\_2.ll** = **空間方向の粒度を高めた安定した並列構造**

---

##  `opt_3.ll` の違い【スケジューリング + `omp barrier`】

*  `__kmpc_fork_call` + `schedule(dynamic)` 対応ループ
*  `omp for` に `nowait`、その後 `barrier` 指示（`t`毎同期）
*  SIMD命令なし
*  ベクトル化メタなし
*  `omp.outlined` 関数が分割されて複数出現（ループとバリア）

>  **opt\_3.ll** = **動的スケジューリングを強調した並列分散型構造**

---

##  LLVM IR 差分まとめ

| 特徴                      | base.ll | opt\_1.ll        | opt\_2.ll                  | opt\_3.ll            |
| ----------------------- | ------- | ---------------- | -------------------------- | -------------------- |
| OpenMP 並列化 (`__kmpc_*`) | ❌       | ✅（`collapse(2)`） | ✅（`collapse(2)` + barrier） | ✅（dynamic + barrier） |
| `omp_outlined` 関数       | ❌       | 1                | 2                          | 2+（ループと同期分割）         |
| SIMD命令（`<N x float>`）   | ❌       | ❌                | ❌                          | ❌                    |
| ベクトル化メタ (`vectorize`)   | ❌       | ❌                | ❌                          | ❌                    |
| ループ融合 / collapse適用範囲    | ❌       | `t,i`            | `i,j`                      | ❌（単独for + dynamic）   |
| バリア挿入                   | ❌       | ❌（暗黙）            | ✅ `omp barrier`            | ✅ `omp barrier`      |

---

##  結論

* **opt\_1.ll**：時間・空間を一括で並列化 → **ループ融合で最大並列性**
* **opt\_2.ll**：空間方向の並列を重視しつつ同期で安全性を確保 → **バランス型**
* **opt\_3.ll**：負荷不均衡への対応を重視 → **動的スケジューリング重視型**

 **全バージョン共通でベクトル化されていない点に注意**

---

</details>
