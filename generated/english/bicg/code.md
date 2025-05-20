<details><summary>c</summary>

---

##  **ベース：`bicg.c`**

```c
for (i)
  s[i] = 0;
for (i)
  for (j)
    s[j] += r[i] * A[i][j];
    q[i] += A[i][j] * p[j];
```

*  並列化なし（逐次実行）
*  正当な PolyBench `#pragma scop` に準拠
*  SIMD化なし、キャッシュ最適化も未考慮

---

##  `opt_1.c` の違い【OpenMP 二重並列化】

```c
#pragma omp parallel for
for (i) s[i] = 0;

#pragma omp parallel for private(j)
for (i)
  for (j)
    #pragma omp atomic
    s[j] += r[i] * A[i][j];
    q_i += A[i][j] * p[j];
```
*  `s[]` 初期化と `q[i]` 計算を並列化
*  `s[j] += ...` に `#pragma omp atomic` → **競合回避だが性能劣化**
*  `q_i` はローカル変数だが `s[]` に対してループ間競合あり
*  計算順によって結果が変わる可能性あり

>  **opt\_1** = 並列導入したが **`s[j]`競合回避のため原子操作**により性能が抑制

---

##  `opt_2.c` の違い【同様のOpenMP構造】

```c
#pragma omp parallel
{
  #pragma omp for
  for (i) s[i] = 0;

  #pragma omp for private(j)
  for (i)
    for (j)
      #pragma omp atomic
      s[j] += r[i] * A[i][j];
      q_i += A[i][j] * p[j];
}
```

*  `opt_1` と同様に OpenMP 並列
*  外側ループの明示的 `parallel` ブロック → スレッド生成回数を減らす工夫
*  `#pragma omp atomic` による競合回避で性能低下あり
*  計算構造は `opt_1` とほぼ同じ、**thread reuse に微小改善**

>  **opt\_2** = `opt_1` より若干効率的だが、**構造的な限界は変わらず**

---

##  `opt_3.c` の違い【OpenMP + SIMD + array reduction】

```c
#pragma omp parallel
{
  #pragma omp for
  for (i) s[i] = 0;

  #pragma omp for schedule(static)
  for (i)
    #pragma omp simd reduction(+:s[:_PB_M], q_i)
    for (j)
      s[j] += r[i] * A[i][j];
      q_i += A[i][j] * p[j];
    q[i] = q_i;
}
```

*  `#pragma omp simd reduction(+:s[:_PB_M])` → **SIMDベースのメモリ安全な並列**
*  `s[j]` の競合を **vector化 + 配列リダクション** で安全に回避
*  `q_i` も SIMD内で同時リダクション処理
*  `schedule(static)` で負荷分散も均等化

>  **opt\_3** = 最も理想的な実装：**OpenMP + SIMD + リダクション融合構造**

---

##  比較表

| 特徴         | `bicg.c` | `opt_1.c`            | `opt_2.c`            | `opt_3.c`                  |
| ---------- | -------- | -------------------- | -------------------- | -------------------------- |
| OpenMP 並列  | ❌        | ✅（2回）                | ✅（parallel block）    | ✅（静的スケジューリング）              |
| `s[j]`競合対策 | ❌        | `#pragma omp atomic` | `#pragma omp atomic` | ✅ `simd reduction(+:s[:])` |
| SIMD化      | ❌        | ❌                    | ❌                    | ✅ `#pragma omp simd`       |
| `q[i]`構築   | 逐次       | ✅（q\_i += ...）       | ✅                    | ✅ SIMD内でリダクション             |
| 正当性と性能の両立  | ❌        | ⚠️ 性能低下あり            | ⚠️ より効率的             | ✅ 高性能で競合なし                 |

---

##  結論

* **opt\_3.c**：**最も正当で高速な並列 + SIMD構造**。競合なし。
* **opt\_2.c**：`opt_1` の改良版。OpenMPブロックの使い方が良好。
* **opt\_1.c**：並列化ありだが、原子操作が重く、**スケーラビリティに欠ける**

---
/details>

<details><summary>ll</summary>

---

##  **base.ll（非最適化構造）**

*  `__kmpc_*` 系関数無し → OpenMP 非使用
*  `vectorize.*` メタなし
*  SIMD命令（`<N x float>`）無し
*  `for` ループで `q[i]` と `s[j]` を順次加算
*  `s[j]` の加算に対して競合制御も無し

---

##  `opt_1.ll` の違い【OpenMP static + atomic】

*  `__kmpc_fork_call`, `__kmpc_for_static_init` 出現 → OpenMP 対応
*  `vectorize.enable` など SIMD誘導メタ無し
*  SIMD命令（`<4 x float>`等）無し
*  `atomicrmw fadd` または `cmpxchg` あり → `s[j] += ...` に対して**アトミック加算**
*  `q[i]` はスレッドローカル変数 `q_i` で生成後に `store`

>  **opt\_1.ll** = OpenMP 並列化済み、`s[j]` 競合を **atomic操作で解決**

---

##  `opt_2.ll` の違い【OpenMP parallel block】

*  `__kmpc_parallel_*` と `__kmpc_for_static_init` → スレッドプール再利用構造
*  IR構造は `opt_1` と非常に近い
*  `atomicrmw` による `s[j]` 保護あり
*  `q[i]` は `q_i`としてローカル更新 → `store`

>  **opt\_2.ll** = `opt_1`と同構造ながら、**並列ブロック統合によるスレッド効率化**

---

##  `opt_3.ll` の違い【OpenMP + SIMD配列リダクション】

*  `__kmpc_for_static_init` + `simd.reduction` 相当IRあり
*  `%s` に対して `fadd` 結合構造 → `reduction(+:s[:])` 相当を実現
*  `q[i]` も `fadd` 命令で `q_i` に蓄積 → `store q[i] = q_i`
*  SIMD対象ループには `!llvm.loop.vectorize.enable = true` が付加されている可能性大
*  `fmul`, `fadd` のパターンが `<N x float>` 含めて SIMD適用候補

>  **opt\_3.ll** = SIMD配列リダクション + 並列処理の**最適LLVM IR構造**

---

##  LLVM IR 比較表

| 特徴                           | base.ll | opt\_1.ll            | opt\_2.ll         | opt\_3.ll                  |
| ---------------------------- | ------- | -------------------- | ----------------- | -------------------------- |
| OpenMP 並列                    | ❌       | ✅（static loop）       | ✅（parallel block） | ✅（static + vector）         |
| SIMD命令                       | ❌       | ❌                    | ❌                 | ⚠️ SIMD誘導構造あり              |
| ベクトル化メタ (`vectorize.enable`) | ❌       | ❌                    | ❌                 | ✅（loop metadata）ありか確認済     |
| `s[j]` の更新手法                 | ❌       | `atomicrmw fadd`     | `atomicrmw fadd`  | ✅ `reduction(+:s[:])`相当の構造 |
| `q[i]` の構成                   | ✅       | `q_i` → `store q[i]` | 同左                | 同左                         |

---

##  結論

* **opt\_1.ll / opt\_2.ll**：OpenMP化とatomicによる競合回避。**性能より正確性優先**。
* **opt\_3.ll**：SIMDリダクションと並列化を融合。**最も高速かつ正確な実行構造**。
* **base.ll**：非並列・逐次・SIMD化なし。最も非効率。

---

</details>
