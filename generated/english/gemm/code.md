<details><summary>c</summary>

---

##  オリジナル：`gemm.c`

構成：

```c
for (i)
  for (j)  C[i][j] *= beta;
  for (k)
    for (j) C[i][j] += alpha * A[i][k] * B[k][j];
```

*  OpenMPなし
*  SIMDなし
*  PolyBench構造 (`#pragma scop`)
*  最適化フラグ（`restrict`, `collapse`, `simd`など）なし

>  **純粋な三重ループ：可読性優先の逐次実装**

---

##  `opt_1.c`：OpenMPによる並列化 + `temp` 導入

```c
#pragma omp parallel for private(temp)
for (int i)
  for (int j) C[i][j] *= beta;
  for (int k)
    temp = alpha * A[i][k];
    for (int j) C[i][j] += temp * B[k][j];
```

*  OpenMP並列化（iループ並列）
*  `temp = alpha * A[i][k]` → 再計算防止＆依存性除去
*  SIMDなし（手動の`#pragma omp simd`未使用）
*  `collapse`なし → ネストが保たれ、負荷不均衡の可能性

>  **opt\_1 = 最小限の並列化とテンポラリ導入による局所性改善**

---

##  `opt_2.c`：OpenMP + SIMDベクトル化ヒント

```c
#pragma omp parallel for private(temp)
for (int i)
  for (int j) C[i][j] *= beta;
  for (int k)
    temp = alpha * A[i][k];
    #pragma omp simd
    for (int j) C[i][j] += temp * B[k][j];
```

*  OpenMPスレッド並列は継続
*  `#pragma omp simd` 追加 → jループを明示的にSIMD化
*  `temp`の再利用で演算削減
*  A・Bへのアクセスはループ不変の順序保持
*  `collapse(2)` なし → 並列粒度は `i` のみ

>  **opt\_2 = 並列+SIMD融合によるループ内ベクトル命令の強化**

---

##  `opt_3.c`：ループ再構成 + 多段並列化 + SIMDフル活用

```c
#pragma omp parallel for
for (int i)
  for (int j) C[i][j] *= beta;

#pragma omp parallel for collapse(2)
for (int i)
  for (int k) {
    temp = alpha * A[i][k];
    #pragma omp simd
    for (int j) C[i][j] += temp * B[k][j];
}
```

*  `collapse(2)` により `(i,k)` ループを一括並列処理 → 粒度UP
*  jループには `#pragma omp simd` → **内ループのSIMD命令化**
*  `temp`の導入も継続で計算効率向上
*  `C[i][j] *= beta;` を別フェーズで並列化 → キャッシュ汚染回避

>  **opt\_3 = マルチレベル並列 + SIMD命令ベースの最終進化形**

---

##  最適化比較まとめ

| 特徴                   | `gemm.c` | `opt_1` | `opt_2`          | `opt_3`              |
| -------------------- | -------- | ------- | ---------------- | -------------------- |
| OpenMP並列             | ❌        | ✅（i）    | ✅（i）             | ✅（i, k）`collapse(2)` |
| `temp`による冗長排除        | ❌        | ✅       | ✅                | ✅                    |
| SIMD化                | ❌        | ❌       | ✅ `#pragma simd` | ✅ `#pragma simd`     |
| `C[i][j] *= beta;`分離 | ❌        | ❌       | ❌                | ✅ 別並列ループで分離          |
| ネスト並列度               | 1重       | 1重      | 1重               | 2重                   |

---

##  総括：

* **opt\_1** = 並列化のみのベース最適化
* **opt\_2** = ベクトル化対応によるSIMD命令化の準備完了
* **opt\_3** = 並列＆ベクトルの融合、さらにループ粒度と局所性まで踏まえたハイレベル最適化！

---

</details>

<details><summary>ll</summary>

---

## `gemm_opt_base.ll`（非最適化版）

*  `!llvm.loop.vectorize.enable` メタなし
*  `__kmpc_*` 関数なし（OpenMP無し）
*  SIMD命令なし（`<N x float>`, `vector.reduce.*` 等）
*  完全な三重ループ構造（`i`, `j`, `k`）

>  **逐次IR構造、最適化前のプレーンIR**

---

##  `opt_1.ll`（OpenMP並列）

*  `__kmpc_fork_call`, `__kmpc_for_static_init_*` などOpenMPループ分割有効化
*  `omp.outlined.*` 関数が追加生成（スレッドごとの処理分割）
*  SIMD命令展開なし（ループ内 `fadd`, `fmul` もスカラー）
*  vectorizeメタも無し（ベクトル化意図がIRに示されていない）

>  **opt\_1 = 並列構造あり（OpenMP）だがベクトル最適化の兆候無し**

---

##  `opt_2.ll`（OpenMP + SIMDメタ）

*  `__kmpc_*` あり → OpenMPスレッド分割を継承
*  `!llvm.loop.vectorize.enable = true` が `j` ループに付与
*  SIMD命令展開は確認できず（`<N x float>` 出現なし）
*  `simdloop` メタ追加により、LLVMベクトル化パスに対応可能な形状

>  **opt\_2 = OpenMP並列＋LLVMベクトル化ヒント付きの中間最適化**

---

##  `opt_3.ll`（ループ分離＋ベクトルヒントフル展開）

*  `collapse(2)` に対応する `(i,k)` ループが `omp.outlined` 内に合成されている
*  すべてのネストループに `vectorize.enable = true` & `vectorize.width = 4` など明示
*  一部 `load`/`store` に `align 32` 出現 → アラインメントを考慮したロード
*  SIMD命令は未展開（`fmul`/`fadd` はスカラーのまま）
*  `temp = alpha * A[i][k]` の再利用がIRにも現れている（レジスタで保持）

>  **opt\_3 = ベクトル化を最大限誘導するIR構造。SIMD展開目前状態**

---

##  比較表（IR要素）

| 特徴                    | base.ll | opt\_1.ll | opt\_2.ll | opt\_3.ll                       |
| --------------------- | ------- | --------- | --------- | ------------------------------- |
| OpenMP (`__kmpc_*`)   | ❌       | ✅         | ✅         | ✅                               |
| `omp.outlined.*` 関数   | ❌       | ✅         | ✅         | ✅（collapseされたループ構造で）            |
| `vectorize.enable` メタ | ❌       | ❌         | ✅（一部）     | ✅（全ループ＋`width`, `interleave`付き） |
| SIMD命令（`<N x float>`） | ❌       | ❌         | ❌         | ❌（ただし`align`とhint付きloadあり）      |
| `load/store` アラインメント  | 通常      | 通常        | 通常        | ✅ `align 32`が出現                 |
| 再利用変数の反映 (`temp`)     | ❌       | ✅         | ✅         | ✅（レジスタ保持されている）                  |

---

##  結論

* **opt\_1.ll**：OpenMPによる並列化実施済みだが、ベクトル化意識は皆無
* **opt\_2.ll**：SIMDヒント（メタ）付きでLLVMの自動ベクトル化が期待される構造
* **opt\_3.ll**：IR的に**完全にベクトル展開の準備が整った状態**（LLVMパイプラインが有効ならSIMD命令になる）

---

</details>
