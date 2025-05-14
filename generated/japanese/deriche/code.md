<details><summary>c</summary>

---

##  **ベースライン: `deriche.c`**

*  構造：6段階のフィルタ処理（y1, y2, 合成）を順次実行
*  並列化なし、全ステップは1スレッドで逐次実行
*  演算式は明示され、PolyBench の `#pragma scop` による最適化スコープあり

---

##  `opt_1.c` の違い【並列化】

*  各ステージのループに `#pragma omp parallel for` を付加
*  `schedule(static)` 明示なし → スレッド分配はランタイム任せ
*  `private()` 宣言はあるが、ベクトル化なし
*  メモリ最適化（プリフェッチ・再利用）は未導入

>  **opt\_1** = 最小限の OpenMP 並列化を導入した**並列化入門バージョン**

---

##  `opt_2.c` の違い【並列+スケジューリング制御】

*  `opt_1` の並列構造に加えて `#pragma omp parallel for schedule(static)` をすべてのループに付与
*  `private(j)` によりループ変数のスレッド局所化
*  SIMD 拡張やレジスタ変数最適化なし
*  `#include <immintrin.h>` はあるが、**ベクトル命令は使用していない**

>  **opt\_2** = 並列性とスケジューリング制御で**性能と再現性を改善**

---

##  `opt_3.c` の違い【並列+静的スケジュール+最終ステージまで展開】

*  `opt_2` と完全に同一の並列+スケジュール制御構造
*  最終出力演算（合成処理 `imgOut = c2 * (y1 + y2)`）も並列化対象に追加
*  すべてのループに `#pragma omp parallel for schedule(static) private(index)` 形式で明示
*  SIMD命令使用なし（将来の `simd` 対応拡張余地あり）

>  **opt\_3** = フィルタ処理すべてに OpenMP を適用した**並列最終形**

---

##  比較まとめ表

| 特徴           | `deriche.c` | `opt_1` | `opt_2`                | `opt_3`            |
| ------------ | ----------- | ------- | ---------------------- | ------------------ |
| 並列化 (`omp`)  | ❌           | ✅ 各ステージ | ✅ + `schedule(static)` | ✅ 全ステージ+静的スケジューリング |
| `private` 指定 | ❌           | 一部あり    | ✅ 明示                   | ✅ 明示               |
| SIMD 拡張（明示）  | ❌           | ❌       | ❌                      | ❌                  |
| スケジューリング制御   | ❌           | ❌       | ✅                      | ✅                  |
| 合成処理の並列化     | ❌           | ❌       | ❌                      | ✅                  |

---

##  結論

* **opt\_1**：並列化導入による**処理時間短縮の第一歩**
* **opt\_2**：OpenMP の粒度・スケジューリングを制御した**実用的並列化**
* **opt\_3**：すべての演算処理を並列化した**Deriche フィルタの完全版**

---
</details>

<details><summary>ll</summary>

---

##  **base.ll（非最適化）特徴**

*  OpenMP ランタイム呼び出しなし → **逐次実行**
*  メタデータ（`!llvm.loop.vectorize`, `!llvm.loop.unroll`）なし
*  各方向に対して for ループが順に処理
*  演算：`load`, `fadd`, `fmul`, `fsub`, `store` によるスカラー命令のみ

---

##  `opt_1.ll` の違い

*  `__kmpc_fork_call`, `__kmpc_for_static_init` あり → **OpenMP 並列化導入**
*  各ループが `@.omp_outlined.*` 関数で**アウトライン化**
*  メタデータ (`loop.vectorize`) や `unroll` は存在せず
*  SIMD命令 (`<4 x double>` 等) は使用されていない
*  すべてスカラー命令ベースでの並列スレッド処理

>  **opt\_1.ll** = OpenMP によるループレベル並列化が導入された基本形

---

##  `opt_2.ll` の違い

*  `opt_1.ll` と同じく OpenMP 並列化あり（IR構造はほぼ同一）
*  `loop.vectorize.enable = true` メタデータが追加されたループあり
*  `!llvm.loop.unroll.enable = true` などのメタ付加 → LLVM による展開可能性あり
*  明示的 SIMD 命令（`<N x double>`）は限定的 or 未展開（環境依存）

>  **opt\_2.ll** = 並列化 + LLVM 向け **ベクトル化とアンローリング指示** を追加した準完成形

---

##  `opt_3.ll` の違い

*  `opt_2.ll` を完全継承 + 最終ステージ（imgOut更新）にも並列処理展開
*  ループ構造に `!llvm.loop.vectorize.width` が加わり、**ベクトルレーン幅のヒント**付き
*  一部ループで `load <4 x double>`, `fadd <4 x double>` など**SIMD命令登場**
*  IR上で `schedule(static)` 相当の並列初期化パラメータ確認可（OpenMP対応ランタイムの整合性向上）

>  **opt\_3.ll** = 並列化 + ベクトル化 + メタ制御 + 命令実体まで備えた**最終フル最適化IR**

---

##  比較まとめ表

| 特徴                      | base.ll | opt\_1.ll    | opt\_2.ll                      | opt\_3.ll                   |
| ----------------------- | ------- | ------------ | ------------------------------ | --------------------------- |
| OpenMP 並列処理             | ❌       | ✅ `__kmpc_*` | ✅                              | ✅                           |
| ループアウトライン関数             | ❌       | ✅            | ✅                              | ✅                           |
| SIMD命令使用（`<N x float>`） | ❌       | ❌            | 一部 or 無し                       | ✅ 一部ループに SIMD命令出現           |
| ベクトル化メタデータ              | ❌       | ❌            | ✅ `vectorize.enable`, `unroll` | ✅ + `vectorize.width` 明示    |
| スケジューリングヒント             | ❌       | ❌            | ❌                              | ✅ `schedule(static)` 相当引数含む |

---

##  結論

* **opt\_1.ll**：並列化導入の基礎形
* **opt\_2.ll**：LLVMへのベクトル化ヒントとループ制御メタデータを追加した中間形
* **opt\_3.ll**：実際にSIMD命令がIR上に出現し、制御まで最適化された完成形

---
</details>
