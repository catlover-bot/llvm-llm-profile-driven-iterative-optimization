<details><summary>c</summary>

---

##  **ベース：`2mm.c`**

```c
for (i, j)
  tmp[i][j] = 0;
  for (k)
    tmp[i][j] += alpha * A[i][k] * B[k][j];

for (i, j)
  D[i][j] *= beta;
  for (k)
    D[i][j] += tmp[i][k] * C[k][j];
```

*  PolyBench `#pragma scop` で明示的な最適化領域
*  OpenMP 並列なし
*  SIMD化も無し
*  `alpha * A[i][k] * B[k][j]` を毎ループ再計算

---

##  `opt_1.c` の違い【OpenMP collapse(2)】

```c
#pragma omp parallel for collapse(2)
for (i, j)
  tmp_sum = 0;
  for (k)
    tmp_sum += A[i][k] * B[k][j];
  tmp[i][j] = alpha * tmp_sum;
```

*  `i-j` 二重ループに対して **OpenMP並列化**
*  `alpha` をループ外でかけてるが、SIMD対応は無し
*  同様に D計算ループも `collapse(2)` により並列化

>  **opt\_1**：並列化強化（`collapse(2)`）でキャッシュフレンドリな形へ

---

##  `opt_2.c` の違い【OpenMP（単一ループ並列）】

```c
#pragma omp parallel for
for (i)
  for (j)
    ...
```

*  `i` ループ単位での並列化（`collapse` 無し）
*  同様に Dループも `i` 単位並列
*  より細かい粒度（j含めた collapse）よりは **並列効率劣る**

>  **opt\_2**：より保守的な並列化（`i`ループ単位）での安定実装

---

##  `opt_3.c` の違い【OpenMP + `schedule(dynamic)`】

```c
#pragma omp parallel for schedule(dynamic)
```

*  動的スケジューリングにより **不均一なループ負荷に対応**
*  両ループとも `dynamic` スケジューリング適用
*  `collapse` 無し → ループネスト並列性は `opt_1` より弱い
*  実行効率はデータサイズ次第で `opt_1` より良好なケースも

>  **opt\_3**：負荷分散改善を狙った **実行時動的最適化**

---

##  比較表

| 特徴                       | `2mm.c` | `opt_1.c`       | `opt_2.c` | `opt_3.c`             |
| ------------------------ | ------- | --------------- | --------- | --------------------- |
| OpenMP 並列                | ❌       | ✅ `collapse(2)` | ✅ `i` ループ | ✅ `schedule(dynamic)` |
| スケジューリング                 | ❌       | 静的              | 静的        | ✅ 動的                  |
| SIMD命令対応                 | ❌       | ❌               | ❌         | ❌                     |
| 演算共通化 (`alpha` まとめ)      | ✅       | ✅               | ✅         | ✅                     |
| PolyBench `#pragma scop` | ✅       | ❌               | ❌         | ❌                     |

---

##  結論

* **opt\_1.c**：最も\*\*積極的な並列化（collapse(2)）\*\*で高並列性能を狙う設計
* **opt\_2.c**：保守的な並列（`i`単位）で安定性重視
* **opt\_3.c**：実行時の負荷バランスに適応する **実用的パフォーマンス志向**

---

</details>

<details><summary>ll</summary>

---

##  **base.ll（非最適化構造）**

*  `__kmpc_*` 系なし → 並列化未対応
*  `vectorize.enable` メタなし → SIMDベクトル化無効
*  `<4 x float>` 系のベクトル命令無し
*  2段階行列乗算（`tmp = A*B`, `D = tmp*C`）を純粋スカラー命令で構成
*  `alpha * A[i][k] * B[k][j]` 毎回再計算、再利用性低

---

##  `opt_1.ll` の違い【OpenMP collapse(2) 並列化】

*  `__kmpc_fork_call` + `__kmpc_for_static_init` → OpenMPあり
*  `collapse(2)` 相当：`i-j`ループに並列適用
*  SIMD命令無し（スカラーループベース）
*  `sum` の一時変数導入により `load`→`fadd`→`store`最小限に整理
*  `vectorize` メタ無し → 自動ベクトル化未誘導

>  **opt\_1.ll** = **並列化最大 + 演算整理最小** の構造

---

##  `opt_2.ll` の違い【OpenMP iループ並列】

*  `i` 単位での `__kmpc_for_static_init` 適用
*  `collapse(2)` 無し → 並列粒度が粗く、負荷不均衡の可能性
*  `tmp_sum`（IRでは`%sum`）構造により中間結果の再利用あり
*  `vectorize` メタ無し
*  SIMD命令未出現

>  **opt\_2.ll** = 保守的な並列実装、**整然としたループ処理**

---

##  `opt_3.ll` の違い【OpenMP + schedule(dynamic)】

*  `__kmpc_for_dynamic_init` 登場 → `schedule(dynamic)` 指定あり
*  `i` or `i-j` に対する OpenMP 並列化（loop構造による）
*  ループカウンタなどに `%indvars.iv` 形式出現（LLVM最適化後特徴）
*  SIMD命令は無く、スカラー命令構成のまま
*  演算分離・合算構造に変化あり（IRでの計算順が`opt_2`と微差）

>  **opt\_3.ll** = **実行時負荷に対応するスケジューリング重視構造**

---

##  LLVM IR 差分まとめ

| 特徴                      | base.ll | opt\_1.ll        | opt\_2.ll    | opt\_3.ll             |
| ----------------------- | ------- | ---------------- | ------------ | --------------------- |
| OpenMP 並列化 (`__kmpc_*`) | ❌       | ✅ collapse(2)    | ✅（iのみ）       | ✅ `schedule(dynamic)` |
| SIMD命令（`<N x float>`）   | ❌       | ❌                | ❌            | ❌                     |
| `vectorize` メタ          | ❌       | ❌                | ❌            | ❌                     |
| `sum` / `tmp_sum` 再利用   | ❌       | ✅                | ✅            | ✅                     |
| スケジューリング戦略              | ❌       | static（collapse） | static（単ループ） | ✅ dynamic             |

---

##  結論

* **opt\_1.ll**：最大限の並列化（collapse(2)）＋再利用構造 → **性能重視**
* **opt\_2.ll**：安全な並列化＋中間変数構造で**安定性重視**
* **opt\_3.ll**：負荷分散適応型設計（dynamicスケジューリング）→ **汎用性重視**

---

</details>
