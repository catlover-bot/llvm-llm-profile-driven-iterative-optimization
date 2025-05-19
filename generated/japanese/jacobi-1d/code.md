<details><summary>c</summary>

---

##  **base.ll（非最適化）特徴**

*  `__kmpc_*` 関数なし → OpenMP 並列化なし
*  `!llvm.loop.vectorize` などベクトル化メタデータなし
*  SIMD 命令 (`<N x float>`) 無し
*  3重ループで `A → B` および `B → A` の交互更新をスカラー命令で実行
* 命令：`load`, `fadd`, `fmul`, `store` のみのスカラー構成

---

##  `opt_1.ll` の違い【OpenMP 導入（collapse(2)）】

*  `__kmpc_fork_call`, `__kmpc_for_static_init` → OpenMP 並列化あり
*  `@.omp_outlined.*` 関数：`t-i` を対象とした `collapse(2)` 並列処理
*  `!llvm.loop.vectorize.*` メタなし → ベクトル化誘導無し
*  SIMD命令無し（`<4 x float>` 等未使用）

>  **opt\_1.ll** = 時間ステップと1D空間を OpenMP 並列化 → **マルチスレッド初級構成**

---

##  `opt_2.ll` の違い【OpenMP + 全更新ステージ並列化】

*  `__kmpc_*` 系呼出しあり → 全更新ステージに OpenMP 適用（`A→B`, `B→A`両方）
*  複数の `@omp_outlined.*` により各計算段階が分離され並列適用
*  SIMD命令は未使用
*  vectorize メタなし（`loop.vectorize.enable` 等無し）

>  **opt\_2.ll** = 演算対象全面に OpenMP 並列を適用した **広域並列IR**

---

##  `opt_3.ll` の違い【OpenMP + collapse(3) + 高粒度並列】

*  `__kmpc_*` 関数による並列処理あり（`i`, `j`, `k`の全ループを collapse）
*  `collapse(3)` によりループ粒度を最大化 → `@omp_outlined.*` 関数の中で全領域分散処理
*  `init_array` にも並列化あり → 初期化ステージ含めた OpenMP 適用
*  SIMD命令なし
*  vector メタ (`!llvm.loop.vectorize`) 無し

>  **opt\_3.ll** = 並列化のスコープを最大限まで拡張 → **最高スレッド分散IR**

---

##  LLVM IR 差分まとめ

| 特徴                     | base.ll | opt\_1.ll       | opt\_2.ll         | opt\_3.ll            |
| ---------------------- | ------- | --------------- | ----------------- | -------------------- |
| OpenMP 並列化             | ❌       | ✅（t-i collapse） | ✅（すべてのループで個別に並列化） | ✅（collapse(3)で最大粒度化） |
| SIMD命令 (`<4 x float>`) | ❌       | ❌               | ❌                 | ❌                    |
| ベクトル化メタ (`vectorize`)  | ❌       | ❌               | ❌                 | ❌                    |
| `init_array` 並列処理      | ❌       | ❌               | ❌                 | ✅                    |
| `omp_outlined` の出現数    | 0       | 1               | 2〜3               | 3以上                  |

---

##  結論

* **opt\_1.ll**：最低限の並列化 (`t-i` loop) → **OpenMP並列導入入門**
* **opt\_2.ll**：更新ロジックすべてに `parallel for` → **演算網羅型並列化**
* **opt\_3.ll**：ループ collapse(3) + 初期化まで並列化 → **最大スレッドスケーラビリティ構成**

---

</details>
