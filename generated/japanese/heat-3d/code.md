<details><summary>c</summary>

---

##  **ベース：`heat-3d.c`**

*  `#pragma scop` によりPolyBenchの静的解析に対応
*  OpenMP 並列化なし → 単一スレッド
*  SIMDやベクトル化指示なし
*  ループ順序：`t → i → j → k`
* `B[i][j][k]`, `A[i][j][k]` を時間ステップごとに交互に更新

---

##  `opt_1.c` の違い【OpenMP導入・ループ内並列化】

*  `#pragma omp parallel for collapse(2)` によって **時間ループ外で `t` と `i` を並列化**
*  `B → A` 更新ループに対しては並列化されていない
*  SIMD/vector 指示なし
*  全体構造はベースと同様
*  `#pragma scop` は削除

>  **opt\_1** = 最小限の並列処理導入 → **初歩的なマルチスレッド最適化**

---

##  `opt_2.c` の違い【OpenMP 並列処理 + ループ粒度調整】

*  `#pragma omp parallel` + `#pragma omp for collapse(2)` → `i`, `j` を並列化
*  `A → B` / `B → A` 両方向に並列ループを導入 → **時間ステップ内すべてが並列対象**
*  SIMD/vector 指示なし
*  スレッドごとの局所変数使用によりスレッド安全性確保

>  **opt\_2** = 並列化スコープ拡大 → **すべての更新ステージで OpenMP 適用**

---

##  `opt_3.c` の違い【OpenMP + 多重 collapse + フル並列化】

*  `#pragma omp parallel for collapse(3)` を `init_array`, `A → B`, `B → A` 全部に適用
*  全3ループ (`i`, `j`, `k`) を1ループに潰してスレッド分散 → **粒度最大化**
*  `init_array` にまで並列化導入 → 初期化コストも最適化
*  同一 `schedule(static)` 指定 → 安定したスレッド割当て

>  **opt\_3** = 並列化粒度を最大化し、**全領域を OpenMP 化した高性能形**

---

##  比較まとめ表

| 特徴                          | `heat-3d.c` | `opt_1.c`         | `opt_2.c`               | `opt_3.c`                |
| --------------------------- | ----------- | ----------------- | ----------------------- | ------------------------ |
| OpenMP 並列化                  | ❌           | ✅（`t-i` collapse） | ✅（`i-j` collapse + 各方向） | ✅（`i-j-k` 全部 collapse）   |
| `init_array` 並列化            | ❌           | ❌                 | ❌                       | ✅                        |
| SIMD/vector 指示              | ❌           | ❌                 | ❌                       | ❌（可能だが未明示）               |
| ループ構造変更                     | ❌           | ❌（構造同一）           | ❌                       | ✅（collapse(3) により統一ループ化） |
| PolyBench対応（`#pragma scop`） | ✅           | ❌                 | ❌                       | ❌                        |

---

##  結論

* **opt\_1**：並列処理導入の最小構成。`t-i`粒度並列で簡易スケーリング対応
* **opt\_2**：更新ループ全面に OpenMP 適用 → 実行時間大幅短縮可能
* **opt\_3**：最大粒度でのスレッド分散（collapse(3)）+ 初期化含めた最適化 → **最も高速**

---

</details>

<details><summary>ll</summary>

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
