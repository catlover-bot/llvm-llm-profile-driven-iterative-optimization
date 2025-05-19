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
