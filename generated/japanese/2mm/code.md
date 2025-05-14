<details><summary>C</summary>

---

##  **ベースライン（2mm.c）要点**

`2mm.c` は PolyBench ベンチマークにおける **2重行列積（2mm）** の基本実装です。

```c
// D := alpha * A * B * C + beta * D
// tmp = alpha * A * B
// D = beta * D + tmp * C
```

この実装では、OpenMP や SIMD 最適化は使用されておらず、PolyBench の `#pragma scop` を利用してスコープを示しています。

---

##  `opt_1` の違い

*  **処理内容は2mm.cと本質的に同じ**。`SCALAR_VAL(0.0)` や `#pragma scop` をそのまま維持。
*  **違いはコードスタイルのみ**（関数の位置、整形の違いなど）。
*  **最適化なし**：OpenMP も SIMD も使用されていない。

>  `opt_1` = 機能的には`2mm.c`と同等。ただし構造やコメントの扱いをわずかに変更。

---

## ⚙️ `opt_2` の違い

*  **OpenMP による並列化導入**：

  * `#pragma omp parallel for` により外側ループ（`i`）を並列化。
*  `_PB_NI`, `_PB_NJ` など PolyBench 専用マクロ使用。
*  明示的な `tmp_sum` 変数導入で中間結果管理。
*  スケジューリング指定 (`schedule(...)`) はなし。

>  `opt_2` = OpenMP による並列化でマルチスレッド実行を可能にし、実行時間短縮を目指す中程度の最適化。

---

##  `opt_3` の違い

*  `opt_2` と同じく **OpenMP 並列化あり**。
*  **静的スケジューリング**指定：`#pragma omp parallel for schedule(static)`
*  変数スコープ最適化（`private(j,k)`）でスレッド競合回避。
*  `tmp_sum` から `sum` に戻して一貫性を持たせる。
*  外部ライブラリ `<omp.h>` を明示的に導入。
*  `SCALAR_VAL` の使用を省略し、プレーンな `0` や `beta` を使用。

>  `opt_3` = 並列化 + 明示的スケジューリング + 競合回避。**最もパフォーマンスを意識した実装**。

---

##  比較まとめ表

| 項目              | 2mm.c  | opt\_1 | opt\_2 | opt\_3                      |
| --------------- | ------ | ------ | ------ | --------------------------- |
| 並列化             | なし     | なし     | OpenMP | OpenMP + `schedule(static)` |
| PolyBench マクロ使用 | *PB*\* | *PB*\* | *PB*\* | 通常変数                        |
| `SCALAR_VAL` 使用 | あり     | あり     | なし     | なし                          |
| コード構造変更         | なし     | 軽微     | あり     | あり                          |
| 変数スコープ制御        | なし     | なし     | なし     | `private(j,k)`              |

---

 **結論**:

* **opt\_1** = 機能的にはオリジナルと同じ、コードのスタイル整理。
* **opt\_2** = OpenMP による並列化で性能改善。
* **opt\_3** = 並列化 + スケジューリング + スコープ管理で最適な並列性能を狙う最も洗練されたバージョン。
</details>

<details><summary>ll</summary>


---

##  分析方針

LLVM IR (`.ll`) の比較では以下の観点で評価：

*  **ループ構造の変化**
*  **ベクトル化（`llvm.loop.vectorize`）**
*  **スレッド並列化（OpenMPの痕跡）**
*  **関数インラインやループアンローリング**
*  **メモリアクセスパターン（`load`, `store`, `alloca`）**

---

##  **ベースライン（base.ll）特徴**

* シンプルなループ構造。
* `alloca`, `load`, `store`, `mul`, `add` の基本命令構成。
* `pragma scop` によりベクトル化・アンローリング未適用。
* 関数やループに `!llvm.loop.*` メタデータが付加されていない。

---

##  `opt_1.ll` の違い

*  ループ構造・メモリ命令は **base.ll とほぼ同一**。
*  **OpenMP の痕跡なし**。
*  **`!llvm.loop.vectorize.enable` などのメタデータなし**。
*  **最適化フラグなしでClangされたと推定**。

>  `opt_1.ll` = 事実上 base.ll と等価。IRレベルでの差分は最小限。

---

##  `opt_2.ll` の違い

*  **OpenMP による並列化が明確に存在**：

  * 関数名に `__kmpc` 呼び出し（例：`__kmpc_fork_call`）あり。
  * 並列関数 (`@.omp_outlined.`) などが追加。
*  ループごとに outline 化されており、OpenMP ワーカースレッドが処理。
*  `omp parallel for` が反映されている。

>  `opt_2.ll` = OpenMPベースの並列化実装を低レベルで確認。CPU並列処理前提。

---

##  `opt_3.ll` の違い

*  `opt_2.ll` と同様に **OpenMP 並列化対応済み**。
*  **静的スケジューリング**らしきパターンが見受けられる（OpenMPランタイムへの引数変化）。
*  **ループに対して `!llvm.loop.vectorize.enable = true`** のメタデータ追加あり。
*  **アンローリングヒント**（`!llvm.loop.unroll.enable = true`）も登場。

>  `opt_3.ll` = 並列化 + ベクトル化 + アンローリングが導入された **フル最適化バージョン**。

---

##  メタデータ比較表

| メタ情報                       | base.ll | opt\_1.ll | opt\_2.ll | opt\_3.ll |
| -------------------------- | ------- | --------- | --------- | --------- |
| OpenMP runtime (`__kmpc`)  | ❌       | ❌         | ✅         | ✅         |
| Vectorize enable           | ❌       | ❌         | ❌         | ✅         |
| Unroll enable              | ❌       | ❌         | ❌         | ✅         |
| Parallel outlined function | ❌       | ❌         | ✅         | ✅         |
| Loop metadata (`!llvm...`) | ❌       | ❌         | 一部        | ✅         |

---

##  結論

* **opt\_1.ll** = base.ll と同じ構造、最適化無し。
* **opt\_2.ll** = OpenMP 並列化を導入。マルチコアCPUでの性能改善狙い。
* **opt\_3.ll** = 並列化に加え、ループベクトル化＆アンローリングが適用された **高度最適化版**。

 パフォーマンス比較を行いたい場合、IRから直接比較することもできます（命令数やベクトル命令など）。やってみる？
それとも LLVM 最適化パス（例：`-O3`, `-march=native`, `-fopenmp`）の差も見てみる？
</details>
