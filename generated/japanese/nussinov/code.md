<details><summary>c</summary>

---

##  **ベース：`nussinov.c`**

*  三重ループ構造 (`i`, `j`, `k`) による DP テーブル更新
*  `#pragma scop` により **PolyBench自動最適化** 対応
*  OpenMP 並列化なし
*  SIMD化なし
* ロジック構成：

  * `table[i][j] = max(...)` による 3条件分岐
  * `table[i][j] = max(table[i][j], table[i][k] + table[k+1][j])`

---

##  `opt_1.c` の違い【OpenMP 並列導入のみ】

*  `#pragma omp parallel for private(j, k)` による `i` 並列化
*  SIMD化なし（`#pragma omp simd` 無し）
*  スカラー演算構造（`table[i][j] = max(...)` 形式）はそのまま

>  **opt\_1** = 並列化入門構成、ベース構造を保ちながら OpenMP 並列処理を適用

---

##  `opt_2.c` の違い【スコア変数導入でベクトル化準備】

*  `#pragma omp parallel for private(j, k) schedule(static)` による `i` 並列化
*  `score` ローカル変数を導入 → `table[i][j] = score` を最終でまとめて適用
*  SIMD明示なし（自動化任せ）
*  `score = max(..., ...)` に統合することで **依存削減**

>  **opt\_2** = \*\*SIMDを意識した構造（スカラー依存除去）\*\*に再構成された並列コード

---

##  `opt_3.c` の違い【OpenMP 並列 + SIMD化】

*  `#pragma omp simd reduction(max:score)` による `k` ループ SIMD ベクトル化明示
*  外側は `#pragma omp parallel for` によるマルチスレッド対応
*  `score` を使用したスカラー依存排除とベクトル化誘導の両立
*  `schedule(static)` 指定でスケジューリング制御もあり

>  **opt\_3** = **OpenMP並列 + SIMD命令誘導による最適構造**

---

##  最適化比較表

| 特徴                           | `nussinov.c` | `opt_1.c`  | `opt_2.c`            | `opt_3.c`            |
| ---------------------------- | ------------ | ---------- | -------------------- | -------------------- |
| `#pragma scop`（PolyBench対応）  | ✅            | ❌          | ❌                    | ❌                    |
| OpenMP 並列化                   | ❌            | ✅（`i`ループ）  | ✅（`i`ループ）            | ✅（`i`ループ）            |
| `score`変数導入（スカラー依存排除）        | ❌            | ❌          | ✅                    | ✅                    |
| SIMD命令化 (`#pragma omp simd`) | ❌            | ❌          | ❌                    | ✅（`k`ループ）            |
| スケジューリング制御                   | ❌            | ✅（default） | ✅ `schedule(static)` | ✅ `schedule(static)` |
| ベクトル化誘導構造                    | ❌            | ❌          | ⚠️ 構造のみ              | ✅（明示的SIMDあり）         |

---

##  結論

* **opt\_1.c**：並列導入（`i`軸）にとどまり構造変更なし
* **opt\_2.c**：スカラー依存を削りつつベクトル化しやすい構造へ変更（でも明示SIMDなし）
* **opt\_3.c**：OpenMP 並列 + SIMD指示により最大化された計算並列度（**ベストバージョン**）

---

</details>

<details><summary>ll</summary>

---

##  **base.ll（ベース構造）特徴**

*  `__kmpc_*` 呼び出しなし → OpenMP 並列化されていない
*  `!llvm.loop.vectorize` メタなし → SIMD ベクトル化誘導も無
*  SIMD命令なし（`<N x int>` 型命令一切なし）
*  3重ループ：`for (i) for (j) for (k)` による動的計画法テーブル更新
* `max(...)` の組合せを明示的に比較し代入

---

##  `opt_1.ll` の違い【OpenMP 並列化のみ】

*  `__kmpc_fork_call`, `__kmpc_for_static_init` 出現 → **OpenMP 並列化あり**
*  `@.omp_outlined.*` 関数が `i`ループを対象に展開
*  SIMD命令なし、`vectorize` メタなし
*  `reduction` 命令・変数分離構造なし

>  **opt\_1.ll** = OpenMP 並列化のみ適用、**並列処理版ベースライン**

---

##  `opt_2.ll` の違い【構造最適化（スカラー依存排除）】

*  `__kmpc_*` 関数あり → OpenMP 並列化対応
*  `score` ローカル変数の導入確認（`%score = call max(...)`）
*  `vectorize.*` メタ無し → LLVM SIMD最適化非誘導
*  SIMD命令出現なし（ベクトル演算命令無）

>  **opt\_2.ll** = SIMDしやすい構造に変更済み、**しかし自動化任せの未活性IR**

---

##  `opt_3.ll` の違い【OpenMP 並列 + 明示 SIMD ベクトル化】

*  `__kmpc_fork_call` 等 OpenMP 並列あり（i軸）
*  `@llvm.maxnum.v4i32` 相当のベクトル演算出現確認（`icmp`, `select`, `shufflevector`等）
*  `!llvm.loop.vectorize.enable = true`, `vectorize.width = 4`, `unroll.count = 4` 等メタ有効
*  `reduction` 対応のための `score` 分離構造、かつベクトル化許可されている

>  **opt\_3.ll** = OpenMP 並列 + ベクトル化（SIMD）を**LLVM IRレベルで最大限活性化**

---

##  LLVM IR 差分まとめ表

| 特徴                           | base.ll | opt\_1.ll | opt\_2.ll | opt\_3.ll                           |
| ---------------------------- | ------- | --------- | --------- | ----------------------------------- |
| OpenMP 並列化 (`__kmpc_*`)      | ❌       | ✅         | ✅         | ✅                                   |
| ベクトル化メタ (`vectorize.enable`) | ❌       | ❌         | ❌         | ✅ `enable`, `width`, `unroll.count` |
| SIMD命令 (`<4 x int>`等)        | ❌       | ❌         | ❌         | ✅ `shufflevector`, `select`, `icmp` |
| `score`の`reduction`/一時変数化対応  | ❌       | ❌         | ✅（分離構造）   | ✅（+ reduction対応）                    |
| `omp_outlined` 関数            | 無し      | 1～2       | 同上        | 複数ベクトルスコープ含む                        |

---

##  結論

* **opt\_1.ll**：OpenMP並列化による性能向上導入レベル
* **opt\_2.ll**：SIMDを意識したコードだがLLVMが最適化せず
* **opt\_3.ll**：明示的に **SIMD命令 + vectorizeメタ + 並列化** を組み込んだ**フル最適化IR**

---

</details>
