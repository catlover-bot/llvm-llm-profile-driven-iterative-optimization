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
