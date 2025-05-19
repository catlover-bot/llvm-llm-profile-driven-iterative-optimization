<details><summary>c</summary>

---

##  **ベース：`jacobi-2d.c`**

### 処理概要：

```c
for (t = 0; t < T; t++) {
  for (i, j) B[i][j] = 0.2 * (A[i][j] + A[i±1][j] + A[i][j±1]);
  for (i, j) A[i][j] = 0.2 * (B[i][j] + B[i±1][j] + B[i][j±1]);
}
```

*  OpenMP なし（すべて逐次）
*  `#pragma scop` によりPolyBench対応
*  SIMD/vector 指示なし

---

##  `opt_1.c` の違い【OpenMP 並列化：反復全体を並列化】

*  `#pragma omp parallel for private(i, j)` を `t` ループ全体にかけている
*  各 `i`, `j` ループにも並列指示（OpenMPの多重並列構成）
*  ループ順序や更新式はベースと同一
*  スレッド間変数干渉を避けるため `private(j)` 設定

>  **opt\_1** = **マルチレベルOpenMP並列化対応。外側の`t`ループも並列対象**

---

##  `opt_2.c` の違い【OpenMP 並列化：内側ループのみ】

*  `#pragma omp parallel for schedule(static) private(i, j)` を `t` ループ内部に2回（A→B, B→A）
*  `t` ループ自体には並列化なし（逐次）
*  演算式や処理順は `opt_1` と同等
*  `A[i][j]` 更新のとき `1+j`, `1+i` の形で境界明示（無害）

>  **opt\_2** = **反復ごとの内部処理を並列化** → 安全性と簡潔性のバランス

---

##  `opt_3.c` の違い【OpenMP 並列化：スコープの再配置】

*  `#pragma omp parallel for private(i, j)` を `t` ループ内に個別で明示（opt\_2と同様）
*  `#pragma scop` の中に `omp` 並列化を組み込み、PolyBench互換を一部保持
*  他のoptと比べるとOpenMPの可搬性やツール対応を意識した構成

>  **opt\_3** = **opt\_2に近いが PolyBench 用途も意識した構造調整**

---

##  比較表まとめ

| 特徴                | `jacobi-2d.c` | `opt_1.c`        | `opt_2.c`      | `opt_3.c`        |
| ----------------- | ------------- | ---------------- | -------------- | ---------------- |
| OpenMP 対象         | ❌             | ✅ `t` & `i,j` 全体 | ✅ `i,j` のみ     | ✅ `i,j` のみ       |
| `#pragma scop` 保持 | ✅             | ✅                | ✅              | ✅（内部に OpenMP 指示） |
| 内部更新順序            | `i→j`         | 同上               | 同上             | 同上               |
| 並列化範囲             | なし            | 外部 `t` ループも含む全体  | 各反復の `i,j` ループ | 各反復の `i,j` ループ   |
| SIMD / ベクトル化誘導    | ❌             | ❌                | ❌              | ❌                |

---

##  結論

* **opt\_1**：最も広いスコープでの並列化（t→i→j）→ **最大並列性の追求**
* **opt\_2**：反復単位ごとの内部のみ並列化 → **構造を保ちつつ並列化を導入**
* **opt\_3**：opt\_2に近いが、**PolyBench互換性を意識してpragma配置を調整**

---

</details>

<details><summary>ll</summary>

---

##  **base.ll（非最適化）特徴**

*  `__kmpc_*` 呼び出しなし → OpenMP なし（シングルスレッド）
*  `!llvm.loop.vectorize` メタデータなし → LLVM SIMD 無効
*  `fadd <4 x float>` / `fmul <4 x float>` など SIMD 命令未使用
*  2段階ループ（`A → B`, `B → A`）を逐次実行
* 構成：スカラー命令のみの `load`, `fmul`, `fadd`, `store`

---

##  `opt_1.ll` の違い【OpenMP 多重並列 + SIMDなし】

*  `__kmpc_fork_call`, `__kmpc_for_static_init` 出現 → OpenMP 並列化あり（外側 `t`, 内側 `i`, `j`）
*  `@.omp_outlined.*` 関数により `t`, `i`, `j` 各ループに分割処理を展開
*  SIMD命令なし（`<4 x float>` 出現なし）
*  ベクトル化メタなし

>  **opt\_1.ll** = 並列スレッドによる**最大粒度の OpenMP 並列実行対応 IR**

---

##  `opt_2.ll` の違い【OpenMP 部分適用 + SIMDなし】

*  `__kmpc_*` による並列化あり → 各反復内の `i,j` ループに適用（`t` ループは逐次）
*  ループ毎に `@omp_outlined.*` が独立定義されている
*  `!llvm.loop.vectorize.*` メタなし
*  SIMD命令未使用

>  **opt\_2.ll** = 逐次反復 + 並列空間 → **保守的な並列処理適用構造**

---

##  `opt_3.ll` の違い【OpenMP + PolyBenchスコープ両立】

*  OpenMP (`__kmpc_*`) 適用あり（opt\_2 と同様）
*  `@omp_outlined.*` に分割 + PolyBenchの `scop` 構造に適合
*  SIMD 命令なし
*  `vectorize.enable = true` メタなし

>  **opt\_3.ll** = OpenMP 並列と PolyBench の `#pragma scop` スコープ両立を意識した構造

---

##  LLVM IR 差分まとめ表

| 特徴                       | base.ll | opt\_1.ll  | opt\_2.ll | opt\_3.ll      |
| ------------------------ | ------- | ---------- | --------- | -------------- |
| OpenMP 並列処理 (`__kmpc_*`) | ❌       | ✅（t, i, j） | ✅（i, j）   | ✅（i, j）        |
| ループ構造展開 (`omp_outlined`) | ❌       | ✅（複数階層）    | ✅（各段階個別）  | ✅ 同左           |
| SIMD命令 (`<4 x float>`)   | ❌       | ❌          | ❌         | ❌              |
| ベクトル化メタ (`vectorize`)    | ❌       | ❌          | ❌         | ❌              |
| PolyBenchスコープ適合          | ✅       | ✅          | ✅         | ✅（明示スコープ内に並列化） |

---

##  結論

* **opt\_1.ll**：最大スレッド粒度（外側からの並列化）。**最速実行狙い**
* **opt\_2.ll**：反復単位で内部ループのみ並列化 → **安定性重視**
* **opt\_3.ll**：`scop` 対応と並列化の**トレードオフバランス重視構成**
* **すべて SIMD 非対応** → ベクトル命令生成はされていない（LLVMに明示すべき）

---

</details>
