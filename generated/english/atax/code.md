<details><summary>c</summary>

---

##  **ベース：`atax.c`**

計算内容：

```c
// y = Aᵗ * A * x  のような構造
for (i)
  tmp[i] = Σ_j A[i][j] * x[j];
for (j)
  y[j] += Σ_i A[i][j] * tmp[i];
```

*  `#pragma scop` 構造あり（PolyBench最適化用）
*  OpenMP 無し
*  スケジューリング指定無し
*  メモリ書き込み最適化無し（`y[j] += ...`）

---

##  `opt_1.c` の違い【OpenMP static並列化】

```c
#pragma omp parallel for private(i,j) schedule(static)
```

*  すべてのループ（初期化・tmp計算・y計算）に OpenMP 導入
*  `static`スケジューリング：等分割固定割り当て → スレッドオーバーヘッド少
*  SIMDなどの明示なし
*  PolyBenchスコープ相当のカーネル構造は維持

>  **opt\_1** = 最小限の並列導入による **高速化ベースライン**

---

##  `opt_2.c` の違い【OpenMP + Dynamic scheduling】

```c
#pragma omp parallel for schedule(dynamic, 64)
```

*  `tmp[]`と`y[]`の生成ループに `dynamic, 64` を使用
*  動的スケジューリングにより **負荷不均衡解消を狙う**
*  小ループの場合はオーバーヘッドが増す可能性あり
*  SIMD最適化はなし、命令構造も `opt_1` と類似

>  **opt\_2** = スレッドワークロードのばらつきに適応する構造

---

##  `opt_3.c` の違い【OpenMP + Guided scheduling】

```c
#pragma omp parallel for schedule(guided)
```

*  `tmp[]`と`y[]`に `guided` スケジューリング使用
*  大きいチャンクを優先し、だんだん小さく → **スレッドオーバーヘッドを減らしつつ負荷分散**
*  初期化にも OpenMP 導入（スレッド安全）
*  SIMD命令やメモリ共通化の明示的最適化は無し

>  **opt\_3** = **並列効率を最大化**しようとした現実的最適構造

---

## 🔬 比較表（並列化とスケジューリング）

| 特徴           | `atax.c` | `opt_1.c` | `opt_2.c`      | `opt_3.c`      |
| ------------ | -------- | --------- | -------------- | -------------- |
| OpenMP 対応    | ❌        | ✅（static） | ✅（dynamic, 64） | ✅（guided）      |
| yの初期化並列化     | ❌        | ✅         | ✅              | ✅              |
| スケジューリング種類   | ❌        | `static`  | `dynamic(64)`  | `guided`       |
| SIMD/ベクトル化明示 | ❌        | ❌         | ❌              | ❌              |
| PolyBench構造  | ✅        | ✅         | ✅              | ✅              |
| 負荷分散効率       | ❌        | ⚠️ 一定（固定） | ✅ 適応分散         | ✅ 最適適応（チャンク可変） |

---

##  結論

* **opt\_1.c**：シンプルな `static` 並列化。小規模ループには最適。
* **opt\_2.c**：ループ負荷に応じてスレッドバランスを自動調整。
* **opt\_3.c**：**初期は大きく・後は小さく**分けて、**オーバーヘッド削減 + 負荷分散を両立**。

---

</details>

<details><summary>ll</summary>

---

##  **base.ll（非最適化構造）**

*  `__kmpc_*` 系呼び出し無し → OpenMP 非対応
*  `!llvm.loop.vectorize.*` メタなし → 自動ベクトル化されない
*  SIMD命令（`<N x float>`）無し
*  `i`, `j` ループで `tmp[i] += A[i][j] * x[j]`
*  `j`, `i` ループで `y[j] += A[i][j] * tmp[i]`

---

##  `opt_1.ll` の違い【OpenMP + static scheduling】

*  `__kmpc_fork_call`, `__kmpc_for_static_init` あり → OpenMP 対応
*  `schedule(static)` が `omp_outlined` に反映
*  SIMD命令なし
*  `vectorize.enable` メタなし
*  `load`/`store` パターンは逐次、再利用性も改善なし

>  **opt\_1.ll** = **静的スケジューリングのみ導入された並列IR**

---

##  `opt_2.ll` の違い【OpenMP + dynamic scheduling】

*  `__kmpc_for_dynamic_init` → OpenMP `schedule(dynamic)` の適用
*  各ループに `omp_outlined.*` 関数存在（多スレッド化構造）
*  SIMD命令・vectorメタ未使用
*  IR構造は opt\_1 と似るが、**ランタイムスケジューリングで柔軟性UP**

>  **opt\_2.ll** = **動的スケジューリングによる負荷分散指向のIR構造**

---

##  `opt_3.ll` の違い【OpenMP + guided scheduling】

*  `__kmpc_for_static_init` + `__kmpc_dispatch_init_4` → `schedule(guided)`
*  複数の`omp_outlined`関数により分岐処理されている
*  チャンクサイズが動的に変動し、高効率
*  `vectorize.*` メタ無し、SIMD命令無し
*  `load`/`fadd`/`store` パターンで `tmp` と `y` 更新は明示的に確認できる

>  **opt\_3.ll** = 実行性能最適を狙ったスケジューリング制御重視の IR

---

##  LLVM IR 比較表

| 特徴                        | base.ll | opt\_1.ll     | opt\_2.ll      | opt\_3.ll         |
| ------------------------- | ------- | ------------- | -------------- | ----------------- |
| OpenMP 並列（`__kmpc_*`）     | ❌       | ✅（static）     | ✅（dynamic）     | ✅（guided）         |
| スケジューリング制御 (`init_*`)     | ❌       | `static_init` | `dynamic_init` | `dispatch_init_4` |
| SIMD命令（`<4 x float>` 等）   | ❌       | ❌             | ❌              | ❌                 |
| ベクトル化メタ (`vectorize.*`)   | ❌       | ❌             | ❌              | ❌                 |
| `y[j]`, `tmp[i]` のアクセス数削減 | ❌       | ❌             | ❌              | ❌                 |
| 再利用構造 (`sum`, `temp`) 導入  | ❌       | ❌             | ❌              | ❌                 |

---

##  結論

* **opt\_1.ll**：最も基本的な OpenMP 並列 (`static`)
* **opt\_2.ll**：負荷分散対応の `dynamic`
* **opt\_3.ll**：最もスレッド実行効率を意識した `guided`

ただし、**すべてのIR構造においてベクトル化（SIMD）対応がされていない**

---


</details>
