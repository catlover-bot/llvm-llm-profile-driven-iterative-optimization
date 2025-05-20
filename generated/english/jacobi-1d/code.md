<details><summary>c</summary>

---

##  ベースライン：`jacobi-1d.c`【逐次実装】

*  各タイムステップで2回の更新ループ（A→B、B→A）
*  **並列化なし**
*  **SIMD指示なし**
* シンプルで可読性高いが、**パフォーマンス最小限**

---

##  `opt_1`：**ベースライン準拠、最適化なし**

* コード構造はbaseと**完全一致**
*  `#pragma` なし（ベクトル化なし）
* **意図的に最適化を避けたバージョン**

---

##  `opt_2`：**SIMD対応並列化バージョン**

*  `#pragma omp parallel for simd` を使用
  → 各ループで**自動ベクトル化 + スレッド並列化**
* 各ループ独立に並列化可能（data dependency回避済）
* 逐次性は保たれつつも、**並列高速化の基礎**

---

##  `opt_3`：**ループ融合 + 並列化明示化**

*  `#pragma omp parallel` ブロック追加 → **スレッド生成のオーバーヘッド削減**
* 各ループ内で `#pragma omp for simd` → **ループ分割の再利用効率改善**
* スレッド数制御はされていないが、**OpenMP構文が階層的に整理**
*  **opt\_2の並列性 + フュージョンによる効率改善**

---

##  最適化比較サマリ

| 特性                     | base (`jacobi-1d.c`) | `opt_1` | `opt_2`                     | `opt_3`                         |
| ---------------------- | -------------------- | ------- | --------------------------- | ------------------------------- |
| OpenMP並列               | ❌                    | ❌       | ✅ (`omp parallel for simd`) | ✅ (`omp parallel` + `for simd`) |
| SIMD化指示                | ❌                    | ❌       | ✅                           | ✅                               |
| ループ融合 (`omp parallel`) | ❌                    | ❌       | ❌                           | ✅                               |
| 逐次構造保持                 | ✅                    | ✅       | ✅                           | ✅                               |

---

## 結論

*  **機能テスト・デバッグ用途：** `base` / `opt_1`
*  **軽量な高速化：** `opt_2`（即効性あり）
*  **本格マルチスレッド実行：** `opt_3`（ループ分割効率最高）

---

</details>

<details><summary>ll</summary>

---

##  `jacobi-1d_opt_base.ll`

*  `!llvm.loop.vectorize.enable` なし → **ベクトル化不可**
*  `__kmpc_fork_call`, `omp.outlined` 等なし → **OpenMP並列化未使用**
*  演算命令はスカラーベース（`fadd`, `fmul`, `load`, `store`）
*  `for.body` などループ構造も素直なまま

>  まさに“コンパイル直後”そのままの IR構造。最適化ゼロ。

---

##  `jacobi-1d_opt_1.ll`

*  構造は base と同一（**比較ベースライン**）
*  並列構文もベクトル化ヒントも無し
*  命令展開パターンもベースと一致

>  `opt_1` は“形式的な比較用ステージ”。IR的にはbaseと同義。

---

##  `jacobi-1d_opt_2.ll`

*  `!llvm.loop.vectorize.enable = true` 登場 → **ループのSIMD化が許可**
*  `!llvm.loop.interleave.count` & `vectorize.width` → **ベクトル幅指定**
*  並列化構文（OpenMP runtime）無し → **スレッド処理はナシ**
*  LLVMが自動でベクトル展開しやすい `fmul`, `fadd` 配列命令系列に整理

>  **最適な自動SIMD化構成に調整済**
> LLVM `-O3 -march=native` に最適な IRヒント構成

---

##  `jacobi-1d_opt_3.ll`

*  `__kmpc_fork_call`, `__kmpc_for_static_init_4` あり → **OpenMP対応**
*  `omp.outlined.*` 関数構成 → **ループ毎にOpenMPスレッド化済**
*  `!llvm.loop.vectorize.enable = true` 残留あり → **ベクトル化可能性維持**
*  `collapse` 相当の広範囲ループ処理 IR上にも反映済

>  **スレッド分散とSIMDの融合IR構造**
> コンパイラが `omp parallel for simd` に従って IR を自動構築した形跡がある

---

##  総合比較マトリクス

| 機能                         | base.ll | opt\_1.ll | opt\_2.ll | opt\_3.ll |
| -------------------------- | ------- | --------- | --------- | --------- |
| OpenMP対応 (`__kmpc_*`)      | ❌       | ❌         | ❌         | ✅         |
| `omp.outlined` 生成          | ❌       | ❌         | ❌         | ✅         |
| `vectorize.enable = true`  | ❌       | ❌         | ✅         | ✅         |
| ベクトル幅指定 (`width=4` 等)      | ❌       | ❌         | ✅         | ✅         |
| 命令再構成 (`fmul`, `fadd` 最適化) | ✅       | ✅         | ✅         | ✅         |

---

## 🏁 結論

* **opt\_2.ll**：ベクトル化専用。シングルスレッド＋SIMD性能に最適。
* **opt\_3.ll**：ベクトル化＋並列スレッドのフル活用型。マルチコアベンチに最適。

---

</details>
