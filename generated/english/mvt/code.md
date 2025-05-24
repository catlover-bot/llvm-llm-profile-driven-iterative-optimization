<details><summary>c</summary>

---

##  処理内容（全バージョン共通）

以下2つの**ベクトル×行列**演算を並列・逐次で実行：

```c
x1[i] += A[i][j] * y_1[j];
x2[i] += A[j][i] * y_2[j];
```

---

##  バージョン別の最適化概要

| バージョン     | 並列化       | スケジューリング            | SIMD指令 | 初期化最適化        | 特徴まとめ                           |
| --------- | --------- | ------------------- | ------ | ------------- | ------------------------------- |
| `mvt.c`   | ❌（逐次）     | ❌                   | ❌      | ❌             | 基本実装。1スレッド、ベクトル化なし              |
| `opt_1.c` | ✅（OpenMP） | デフォルト（static相当）     | ❌      | ❌             | 単純な並列化（iループに対して）                |
| `opt_2.c` | ✅（OpenMP） | `schedule(static)`  | ❌      | ❌             | 並列化 + スケジューリング指定（均等分散）          |
| `opt_3.c` | ✅（OpenMP） | `schedule(dynamic)` | ✅      | ✅（collapse使用） | 並列化 + SIMD化 + 初期化最適化（全面的な高速化実装） |

---

##  `opt_3.c` が特に優れている点

* `#pragma omp simd` によって **ループベクトル化（SIMD）** を明示。
* `#pragma omp parallel for schedule(dynamic)` で **柔軟なスレッド負荷分散**。
* `#pragma omp parallel for collapse(2)` により **初期化処理も多重並列化**。
* CPUの**マルチコア + ベクトルユニット**をフルに活用。

---

</details>

<details><summary>ll</summary>

---

###  共通最適化（全バージョン vs base）

* **ループアンロール**：一部の内側ループに `llvm.loop.unroll.enable` 等のヒントが埋め込まれている。
* **関数インライニング**：`kernel_mvt` がインライン展開されている場合あり。
* **デフォルト配列アクセスのGEP（getelementptr）展開**。

---

###  opt\_1.ll の特徴

* `!llvm.loop.parallel_accesses` メタデータ付きループ → **OpenMPの並列化が有効**
* `omp.outlined.*` 関数が生成され、並列ループが `__kmpc_fork_call` 経由で展開。

---

###  opt\_2.ll の追加ポイント

* `llvm.loop.schedule` メタデータに `static` 指定が含まれる：

  ```llvm
  !llvm.loop.schedule = !{!SCHEDULE_STATIC}
  ```
* スケジューリングに関するヒントが明示され、**スレッド割り当て制御**がbaseより強化。

---

###  opt\_3.ll の最適化特異点

* `llvm.loop.vectorize.enable = true` → **SIMD化が有効**
* `llvm.loop.parallel_accesses` + `vectorize.width` 明示：

  ```llvm
  !llvm.loop.vectorize.width = !{i32 4} ; 例
  ```
* `collapse(2)` により `omp.outlined.*` の中の `getelementptr` と `br` がフラット化。
* 動的スケジューリング：

  ```llvm
  call void @__kmpc_for_dynamic_init(...)
  ```

---

##  LLVMレベル要約表

| 最適化レベル | OpenMP (`omp.outlined`) | Schedule指定  | SIMD化 (`vectorize`) | ループcollapse |
| ------ | ----------------------- | ----------- | ------------------- | ----------- |
| base   | ❌                       | ❌           | ❌                   | ❌           |
| opt\_1 | ✅                       | ❌（デフォルト）    | ❌                   | ❌           |
| opt\_2 | ✅                       | ✅ `static`  | ❌                   | ❌           |
| opt\_3 | ✅                       | ✅ `dynamic` | ✅ `simd`            | ✅           |

---

 **結論**：

LLVM IRを通じて、`opt_3.ll` は明確に**SIMD+マルチスレッド融合**が施されており、**ベクトル化＋スレッド並列化の頂点**といえる。

---

details>
