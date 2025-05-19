<details><summary>c</summary>

---

##  **ベースライン: `fdtd-2d.c`**

* 処理内容：

  * 3段階ループ（`ey` 更新 → `ex` 更新 → `hz` 更新）を `tmax` 回繰り返し
*  並列化なし（すべて単一スレッド）
*  SIMD/vector pragma なし
*  PolyBenchの`#pragma scop` 使用 → Pollyなどでの最適化を意図

---

##  `opt_1.c` の違い【依存除去（IVDEP）のみ】

*  各ネストループ（j方向）に `#pragma GCC ivdep` を付加
  → LLVM や GCC に対し「依存関係は無視して良い＝SIMD化の可能性あり」
*  OpenMP 並列化なし
*  `#pragma scop` 構造維持

>  **opt\_1** = ポインタ依存性除去を明示し **ベクトル化の余地**を与えた軽量最適化版

---

##  `opt_2.c` の違い【OpenMP並列化 + IVDEP】

*  `#pragma omp parallel for private(t,i,j)` により最外ループ（`t`）を並列化
*  各内部ループに `#pragma GCC ivdep` → スレッド毎にベクトル化適用が可能
*  スケジューリングポリシー (`schedule(static)`) は未指定（デフォルト）

>  **opt\_2** = 時間ループ（t方向）の並列化を実現しつつ **SIMDによるスレッド内高速化も可能**

---

##  `opt_3.c` の違い【OpenMP 最適化 + nowait】

*  各 `omp for` に `nowait` 指定追加
  → 複数のループを **バリア無しで並列処理**
*  各ステップ（`ey`, `ex`, `hz`）に別々の `omp for` → **パイプライン型並列化**
*  依然として `#pragma GCC ivdep` 維持

>  **opt\_3** = nowait によりバリアコスト削減 + ベクトル化対応 ⇒ **並列+SIMD 両立の最終形**

---

##  最適化比較まとめ

| 特徴                   | `base` | `opt_1`       | `opt_2`              | `opt_3`                           |
| -------------------- | ------ | ------------- | -------------------- | --------------------------------- |
| OpenMP 並列化           | ❌      | ❌             | ✅ `parallel for (t)` | ✅ 各ループに `parallel for` + `nowait` |
| SIMD 依存除去 (`ivdep`)  | ❌      | ✅ `GCC ivdep` | ✅ 全ループ               | ✅ 全ループ                            |
| バリア最適化 (`nowait`)    | ❌      | ❌             | ❌                    | ✅ 各 `omp for` に nowait 指定         |
| スケジューリング指定           | ❌      | ❌             | ❌                    | ❌（全てデフォルト）                        |
| PolyBench構文 (`scop`) | ✅      | ✅             | ❌（スコープ外）             | ❌                                 |

---

##  結論

* **opt\_1**：ポインタ依存除去によるベクトル化可能化（低コスト改善）
* **opt\_2**：時間方向にスレッド並列化 → マルチコア活用に寄与
* **opt\_3**：OpenMPのバリア最小化 (`nowait`) + SIMD対応で**最も並列・高速化が進んだバージョン**

---
</details>

<details><summary>ll</summary>


---

##  **base.ll（非最適化）特徴**

*  `__kmpc_*` や `omp_outlined` 関数無し → 完全逐次構造
* `!llvm.loop.*` メタデータ無し → LLVM による自動最適化対象外
*  処理構造：時間ステップループ `t` の中に `ey`, `ex`, `hz` の計算ループ
*  命令構成：基本的な `load`, `fadd`, `fsub`, `store`

---

##  `opt_1.ll` の違い【依存性除去ヒント（ベクトル化指示）】

*  OpenMP ランタイム呼出し無し → シングルスレッドのまま
*  `!llvm.loop.vectorize.enable = true` メタデータが追加
*  SIMD 命令 (`<4 x float>`) は確認されず（ただしヒントは有効）
*  `ivdep` 相当のベクトル化許可が IR に反映 → `loop.vectorize` メタあり

>  **opt\_1.ll** = ベクトル化許可の最小最適化 → LLVM に SIMD 化を促す構成

---

##  `opt_2.ll` の違い【並列化 + SIMD ヒント】

*  `__kmpc_fork_call`, `__kmpc_for_static_init` あり → OpenMP 並列化有効
*  `@.omp_outlined.*` 関数による各ループ分割
*  `!llvm.loop.vectorize.enable = true` 付きメタデータを保持
*  `fadd <4 x float>`, `fsub <4 x float>` 等の **SIMD命令出現あり**
*  `schedule(static/dynamic)` の制御は確認されず（IR的にはデフォルト）

>  **opt\_2.ll** = **マルチスレッド + ベクトル命令対応**の並列化中間段階

---

##  `opt_3.ll` の違い【最終形：バリア最小化＋最適ヒント】

*  `opt_2` 構造をすべて継承
*  各 `__kmpc_for_static_init` によるループ分割に `nowait` 相当（IRでは複数 `fork_call` 分離）を導入
*  `loop.vectorize.width = 4` などベクトル幅ヒントが一部ループに追加
*  ベクトル命令の出現率が向上、ループ分離によるスケジューラオーバーヘッド減少
*  `memcpy` 最適化による一部配列初期化処理の高速化も確認される場合あり（環境依存）

>  **opt\_3.ll** = ベクトル化幅・ループ制御・並列分離の全てを適用した**最終フル最適化形**

---

##  差分まとめ表

| 最適化内容                 | base.ll | opt\_1.ll | opt\_2.ll         | opt\_3.ll                 |
| --------------------- | ------- | --------- | ----------------- | ------------------------- |
| OpenMP 並列処理           | ❌       | ❌         | ✅ `__kmpc_*`      | ✅ `__kmpc_*` + `nowait`相当 |
| SIMD メタ (`vectorize`) | ❌       | ✅         | ✅                 | ✅ + `vectorize.width`     |
| SIMD 命令展開（IRレベル）      | ❌       | ❌         | ✅ `<4 x float>`   | ✅ 拡張 SIMD命令（+可能な展開数増加）    |
| ループ分離（hz, ex, ey）     | ❌       | ❌         | ❌（時間的には一体）        | ✅ 各処理が別 `omp_outlined` 関数 |
| メモリ操作最適化              | ❌       | ❌         | 一部 load/store 最適化 | ✅ `memcpy`, `memset` の可能性 |

---

##  結論

* **opt\_1.ll**：逐次処理のまま LLVM ベクトル化だけを誘導する構造
* **opt\_2.ll**：OpenMP 並列化 + SIMD展開により大幅な実行時間短縮が期待できる構造
* **opt\_3.ll**：バリア最小化 + vector width ヒントで LLVM の最大限最適化を引き出す設計

---
</details>
