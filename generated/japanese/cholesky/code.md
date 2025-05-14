<details><summary>c</summary>

---

##  **ベースライン: `cholesky.c`**

*  **初期化**：

  * 下三角行列 A を作成
  * `A = A·Aᵗ` により対称正定値行列に強制
  * 3重ループ（t, r, s）で行列積実行（非並列）
*  **分解処理**（Cholesky）：

  * `A[i][j] -= Σ A[i][k]*A[j][k]`
  * `A[i][j] /= A[j][j]`（i ≠ j）
  * `A[i][i] = sqrt(...)`（i == j）
*  並列化なし
*  `#pragma scop` によるPolyBench対象スコープ明示

---

##  `opt_1.c` の違い

*  同様の初期化ロジック (`A = A·Aᵗ`) だが `POLYBENCH_ARRAY` マクロ利用
*  並列化なし（全体シリアル）
*  kernel は `#pragma omp parallel for` による行ループの並列化あり
*  `sum` 変数の導入によって中間結果を保持
  
>  `opt_1` = kernel の OpenMP 並列化が初導入されたバージョン

---

##  `opt_2.c` の違い
 **行列初期化の `A = A·Aᵗ` に OpenMP を一部導入**

  * `for (r)` が並列化されている（`#pragma omp parallel for`）
*  kernel (`cholesky`) でも `#pragma omp parallel for` を `i` に適用
*  **メモリ割当を malloc に変更**（PolyBench マクロ不使用）

>  `opt_2` = 初期化部分の並列化導入により、総合的に高速化を狙った中間版。

---

## ⚙ `opt_3.c` の違い

* `opt_2` の全構造を継承
*  **初期化ループに `collapse(2)` を追加**

  * `for(t) + for(r)` → 2重ループの並列展開
*  すべての OpenMP に `schedule(static)` を明示 → スレッド分配の一貫性向上
*  メモリアクセスを `memcpy` で一括置換する点も高速化意図あり
*  malloc + `memset` によるゼロ初期化採用

>  `opt_3` = **並列性 + データ配置 + メモリ操作の全最適化**。Cholesky 高速化の最終形に近い。

---

##  比較まとめ表

| 特徴               | `cholesky.c` | `opt_1`       | `opt_2`                | `opt_3`                                |
| ---------------- | ------------ | ------------- | ---------------------- | -------------------------------------- |
| 初期化 (`A = A·Aᵗ`) | 非並列          | 非並列           | ✅ `omp parallel for r` | ✅✅ `collapse(2)` + `memcpy` + `static` |
| Kernel 並列化       | ❌            | ✅ `omp for i` | ✅ 同上                   | ✅ 同上                                   |
| メモリ最適化           | ❌            | ❌             | ✅ `malloc`, `memset`   | ✅ `malloc`, `memset`, `memcpy`強化       |
| ループスケジューリング      | ❌            | ❌             | ❌                      | ✅ `schedule(static)` 明示化               |
| 中間スカラー使用（sum）    | ❌            | ✅             | ✅                      | ✅                                      |

---

##  結論

* **opt\_1**：OpenMP導入で基本的な並列化を施した初段階
* **opt\_2**：初期化処理も含めた並列化強化
* **opt\_3**：collapse + schedule(static) + 高速メモリ操作の適用で、**最も完成度が高い並列最適化バージョン**

---

</details>

<details><summary>ll</summary>

---

##  **base.ll（非最適化）特徴**

*  OpenMP 関連の呼び出し（`__kmpc_*`）無し → シングルスレッド構造
*  メタデータ（`!llvm.loop.vectorize`, `!llvm.loop.unroll`）無し
*  単純な3重ループ：`i`, `j`, `k`
* `load` → `fmul` → `fsub` → `store` の基本構造
* **SQRT** も通常の `call double @sqrt` 指令で実行

---

##  `opt_1.ll` の違い

*  `__kmpc_fork_call`, `__kmpc_for_static_init` の出現 → **OpenMP 並列化導入**
*  kernel ループ (`i-loop`) が `@.omp_outlined.*` 関数としてアウトライン化
*  各スレッドで `i` を担当し `j`, `k` による内部処理を実施
*  `!llvm.loop.vectorize.*` 等のメタデータは無し
*  SIMD命令なし：すべてスカラ型

>  `opt_1.ll` = **並列化のみ導入**された基本並列IR構成

---

##  `opt_2.ll` の違い

*  `opt_1.ll`と同様の OpenMP ベース構造あり
*  初期化関数の中でも `omp parallel for` 展開されており、IR上に `__kmpc_fork_call` が複数出現
*  配列 `B` のメモリ領域割当が `@malloc` + `memset` 経由で最適化されている（= 初期ゼロ化）
*  `sqrt` 呼び出しに変更はなし（スカラーのまま）
*  SIMD展開なし、`loop.vectorize` メタなし

>  `opt_2.ll` = **初期化段階も含めた並列化強化**がなされた構造

---

##  `opt_3.ll` の違い

*  `opt_2.ll` の構造を完全継承
*  明確にループに `!llvm.loop.vectorize.enable = true` や `!llvm.loop.unroll.*` メタデータ付与あり
*  ループに対して `collapse(2)` を `OpenMP` 構文で指定した結果 → **IR上で loop nesting の flatten**
*  一部ループで `load <4 x double>` 等 SIMD命令が出現する場合もあり（環境依存）
*  `@memcpy`, `@llvm.memset` を使用した効率的な初期化処理あり

>  `opt_3.ll` = **並列化 + ループベクトル化 + メモリ高速化** の全部入り最適化構成

---

##  差分まとめ表

| 最適化内容               | base.ll | opt\_1.ll | opt\_2.ll    | opt\_3.ll                         |
| ------------------- | ------- | --------- | ------------ | --------------------------------- |
| OpenMP (`__kmpc_*`) | ❌       | ✅         | ✅            | ✅                                 |
| 初期化ループ並列化           | ❌       | ❌         | ✅            | ✅                                 |
| ループ collapse 対応     | ❌       | ❌         | ❌            | ✅ flattenされた構造                    |
| メモリ操作の最適化           | ❌       | ❌         | ✅ `memset`使用 | ✅ `memset` + `memcpy`高速置換         |
| ループメタデータ            | ❌       | ❌         | ❌            | ✅ `!llvm.loop.vectorize/unroll.*` |
| SIMD命令の導入           | ❌       | ❌         | ❌            | ✅ `<4 x double>`型等                |

---

##  結論

* **`opt_1.ll`**：単純並列化
* **`opt_2.ll`**：初期化段階の並列も追加 → パフォーマンス改善段階
* **`opt_3.ll`**：並列 + ベクトル化 + メモリレイアウト最適化 → **最高水準の最適化IR構造**

---

</details>
