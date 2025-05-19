<details><summary>c</summary>

---

##  **ベース：`syr2k.c`**

```c
for (i)
  for (j ≤ i)
    C[i][j] *= beta;
  for (k)
    for (j ≤ i)
      C[i][j] += A[j][k] * alpha * B[i][k] + B[j][k] * alpha * A[i][k];
```

*  OpenMP 無し
*  ループ不変式展開なし
*  `alpha * A[i][k]`, `alpha * B[i][k]` 毎ループ再計算
*  データ再利用性低、キャッシュ非効率

---

##  `opt_1.c` の違い【OpenMP並列導入】

```c
#pragma omp parallel for private(j, k)
```

*  `i` ループに対して OpenMP 並列化
*  ループ内演算はベースと同様（無駄な再計算あり）
*  `tmp_a = alpha * A[i][k]` と `tmp_b = alpha * B[i][k]` の再利用は導入済みだが、
*  `A[j][k]`, `B[j][k]` の読み出しはそのまま

>  **opt\_1** = 並列性の導入のみ、**演算再利用なし**

---

##  `opt_2.c` の違い【OpenMP + スケジューリング】

```c
#pragma omp parallel for private(j, k) schedule(dynamic)
```

*  並列構造は `opt_1` と同じ
*  スケジューラを `dynamic` に変更 → 不均一負荷対応
*  計算・メモリアクセス構造は同様（最適化されていない）

>  **opt\_2** = OpenMP + ロードバランスを意識した**分散スケジューリング型**

---

##  `opt_3.c` の違い【OpenMP + 計算共通化 + 静的スケジューリング】

```c
#pragma omp parallel for private(j, k) schedule(static)
tmp_a = alpha * A[i][k];
tmp_b = alpha * B[i][k];
```

*  `tmp_a`, `tmp_b` 事前計算 → 各ループ `j` に渡して再利用
*  `C[i][j] += A[j][k] * tmp_b + B[j][k] * tmp_a;` → 計算を整理・再利用
*  `schedule(static)` → 最小オーバーヘッドな分割

>  **opt\_3** = 並列 + スケジュール安定 + 再利用性向上 → **性能と安定性のベストバランス構成**

---

##  比較表

| 特徴                        | `syr2k.c`（ベース） | `opt_1.c` | `opt_2.c`   | `opt_3.c`       |
| ------------------------- | -------------- | --------- | ----------- | --------------- |
| OpenMP 並列                 | ❌              | ✅         | ✅           | ✅               |
| `tmp_a` / `tmp_b` の導入     | ❌              | ✅（あり）     | ✅（あり）       | ✅（あり）           |
| `A[j][k]`, `B[j][k]` 再利用化 | ❌              | ❌         | ❌           | ❌（構造改善のみ）       |
| スケジューリング制御                | ❌              | default   | ✅ `dynamic` | ✅ `static`      |
| 計算再構成                     | ❌              | ❌         | ❌           | ✅（構造整理 + 演算順修正） |
| ループ順・依存制御                 | ✅              | ✅         | ✅           | ✅               |

---

##  結論

* **opt\_1**：最小限の並列化（ループ構造変更なし）
* **opt\_2**：スケジューリング制御付き並列化（不均衡問題対応）
* **opt\_3**：並列性＋式の共通化による再利用性の最大化（最適解）

---

</details>

<details><summary>ll</summary>

---

##  **base.ll（ベース構造）**

*  `__kmpc_*` 呼び出しなし → OpenMP 未使用
*  `!llvm.loop.vectorize` メタなし → ベクトル化非対応
*  SIMD命令（`<N x float>`）出現なし
*  3重ループ (`i-j-k`) によるスカラー `load`, `fadd`, `fmul`, `store`
*  `alpha * A[i][k]`, `alpha * B[i][k]` 計算はループ内で毎回発生

---

##  `opt_1.ll` の違い【OpenMP並列導入のみ】

*  `__kmpc_fork_call`, `__kmpc_for_static_init` → OpenMPあり
*  `@omp_outlined.*` 関数で `i` ループが並列化
*  `vectorize.*` メタ無し
*  SIMD命令出現なし
*  `alpha_Bik = alpha * B[i][k]` などの式展開はされているが `A[j][k]`, `B[j][k]` 毎回 load

>  **opt\_1.ll** = 並列化のみ適用、**演算最適化は不十分**

---

##  `opt_2.ll` の違い【OpenMP + Dynamicスケジューリング】

*  `__kmpc_for_dynamic_init` による `schedule(dynamic)`
*  並列化範囲は opt\_1 と同様（`i` ループ）
*  SIMD命令なし、ベクトル化メタなし
*  `tmp_a`, `tmp_b` の事前 `fmul` 出現あり → 部分的に式展開

>  **opt\_2.ll** = スケジューリング指示が IR に反映されたバージョン

---

## ⚙️ `opt_3.ll` の違い【OpenMP + 式展開 + アクセス最適化】

*  OpenMP (`__kmpc_*`) + `schedule(static)`
*  `alpha * A[i][k]`, `alpha * B[i][k]` → 事前 `fmul` → `%tmp_a`, `%tmp_b`
*  `%tmp_a` / `%tmp_b` を用いて `C[i][j] += A[j][k] * tmp_b + B[j][k] * tmp_a`
*  SIMD命令は出現していない（LLVM auto-vectorizer 未発動）
*  `vectorize.enable`, `vectorize.width` メタなし

>  **opt\_3.ll** = 演算構造を整理し、**計算再利用の最大化をIR上で実現**

---

##  比較表

| 特徴                         | base.ll | opt\_1.ll | opt\_2.ll    | opt\_3.ll       |
| -------------------------- | ------- | --------- | ------------ | --------------- |
| OpenMP 並列化 (`__kmpc_*`)    | ❌       | ✅         | ✅（+ dynamic） | ✅（+ static）     |
| SIMD命令（`<N x float>` 等）    | ❌       | ❌         | ❌            | ❌               |
| `vectorize` メタデータ          | ❌       | ❌         | ❌            | ❌               |
| 式展開：`tmp_a`, `tmp_b`       | ❌       | ✅（一部展開）   | ✅（同上）        | ✅（最適構造）         |
| 再利用対象：`A[j][k]`, `B[j][k]` | ❌       | ❌         | ❌            | ❌               |
| IR最適構造                     | ❌       | ⚠️ 一部改善   | ⚠️ 一部改善      | ✅（再利用 + 命令順最適化） |

---

##  結論

* **opt\_1.ll**：OpenMP 並列化に留まる（並列構造の導入のみ）
* **opt\_2.ll**：負荷分散のための `dynamic` スケジューリング付き
* **opt\_3.ll**：**IR命令レベルで計算式の再利用性を最大化した構造**、ただし SIMD化は未発動

---

</details>
