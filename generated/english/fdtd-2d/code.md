<details><summary>c</summary>

---

##  ベース：`fdtd-2d.c`

*  全てのループは逐次 (`for`)
*  `#pragma` なし（OpenMP/ベクトル化未使用）
*  各フィールド更新：`ey`, `ex`, `hz` の計算式は明確な依存性有りだが、並列化可能
*  可読性は高いが、実行性能は最小

---

##  `opt_1.c` の違い【構造維持】

*  ループ構造、計算内容はベースと同一【差分ゼロ】
*  並列処理（OpenMP）無し
*  SIMD命令も無し
*  単なる構文整理やベンチマーク分離用途

>  **opt\_1 = 完全逐次構造そのまま。比較用ベースライン**

---

##  `opt_2.c` の違い【OpenMP並列化】

*  `#pragma omp parallel for` を**各ループに導入**
*  `init_array()` も並列化
*  SIMD化指示なし（`simd` は付いてない）
*  `collapse(2)` 無し → ネストループの並列性はスレッド分割粗い

### 対象ループ：

```c
#pragma omp parallel for
for (j = 0; j < _PB_NY; j++) ...
#pragma omp parallel for
for (i = 1; i < _PB_NX; i++)
  for (j = 0; j < _PB_NY; j++) ...
```

>  **opt\_2 = 共有メモリ並列化（OpenMP）でマルチスレッド化したバージョン**

---

##  `opt_3.c` の違い【OpenMP + SIMD 両立】

*  `#pragma omp parallel for simd` を導入 → スレッド＋ベクトルのハイブリッド化
*  内側ループに `collapse(2)` 指定でベクトルスカラー並列分割
*  `private(j)` でループ変数の競合も回避
*  `init_array()` すら `#pragma omp parallel for` 対応済み

### 例：

```c
#pragma omp parallel for simd collapse(2) private(j)
for (i = 1; i < _PB_NX; i++)
  for (j = 0; j < _PB_NY; j++)
    ey[i][j] -= 0.5 * (hz[i][j] - hz[i - 1][j]);
```

>  **opt\_3 = FDTD全ループにOpenMP+SIMD最適化を導入したハイパフォーマンス実装**

---

##  最適化比較サマリ

| 特徴         | base.c | opt\_1.c | opt\_2.c         | opt\_3.c                           |
| ---------- | ------ | -------- | ---------------- | ---------------------------------- |
| OpenMP並列化  | ❌      | ❌        | ✅ `parallel for` | ✅ `parallel for simd` + `collapse` |
| SIMD命令の有効化 | ❌      | ❌        | ❌                | ✅ `simd`明示                         |
| メモリ初期化の並列化 | ❌      | ❌        | ✅                | ✅                                  |
| ネストループ分割   | ❌      | ❌        | ❌（外側iのみ）         | ✅ `collapse(2)`により深い分割             |
| パフォーマンス期待値 | 低      | 低（同等）    | 中                | 高（マルチコア+SIMDを最大活用）                 |

---

##  結論

* **opt\_1**：ベースと機能同一。性能変化なし。
* **opt\_2**：**マルチスレッド並列化**によりCPUコア全体を活用。
* **opt\_3**：**マルチスレッド + SIMD** 両面最適化により最大パフォーマンス期待可。

---

</details>

<details><summary>ll</summary>

---

##  `fdtd-2d_opt_base.ll`（元コードのIR）

*  `__kmpc_*` シンボルなし → OpenMP未使用
*  SIMD命令なし（すべてスカラー：`fadd`, `fmul`, `load`, `store`）
*  `!llvm.loop.vectorize.enable` メタデータも存在しない
*  完全逐次構造（3ループ：`ex`, `ey`, `hz` の3段階更新）

>  **base = スカラーフロー・並列化／ベクトル化ヒントなし**

---

##  `opt_1.ll` の違い【構文整理のみ】

*  内容は `base.ll` と同一。構文や順序の違い以外、機能的変更なし
*  OpenMP無し
*  SIMD無し
*  `loop` ラベル命名が整理されている（例：`for.body`, `for.end`）

>  **opt\_1 = LLVM構文整備された逐次コード。IRの操作性改善が主**

---

##  `opt_2.ll` の違い【OpenMP並列IR化】

*  `__kmpc_fork_call`, `__kmpc_for_static_init_4` などが存在 → **OpenMP明示**
*  `omp_outlined` 関数が複数生成 → 並列ループ分離確認
*  SIMD命令なし（`vector.reduce.*`や`<N x float>`は無し）
*  `!llvm.loop.vectorize.*` メタデータ未確認

>  **opt\_2 = マルチスレッド化されたOpenMP実装。SIMD化未対応**

---

##  `opt_3.ll` の違い【OpenMP + SIMDヒント付き】

*  `__kmpc_*` 関数あり → OpenMP並列は維持
*  複数のループに `!llvm.loop.vectorize.enable = true` メタ付き
*  `collapse(2)` を受けたループ分解の様子が IR 関数定義構造に反映
*  `aligned` 属性付き `load`/`store` 命令出現（例：`align 32`）
*  ただしベクトル命令（`<N x float>`）や `vector.reduce.*` の明示展開は**無し**

>  **opt\_3 = OpenMP + ベクトル化ヒント完備のIR構成。SIMDコード生成準備済み**

---

##  比較表（IRレベル）

| 特徴                        | base.ll | opt\_1.ll | opt\_2.ll | opt\_3.ll                              |
| ------------------------- | ------- | --------- | --------- | -------------------------------------- |
| OpenMP命令（`__kmpc_*`）      | ❌       | ❌         | ✅         | ✅                                      |
| `omp_outlined` 関数         | ❌       | ❌         | ✅         | ✅                                      |
| SIMDベクトル命令（`<N x float>`） | ❌       | ❌         | ❌         | ❌（未展開）                                 |
| ベクトル化メタ (`vectorize.*`)   | ❌       | ❌         | ❌         | ✅ `vectorize.enable=true`, `width=4` 等 |
| `load`, `store` アラインメント   | 通常      | 通常        | 通常        | ✅ `align 32` など明示                      |
| `collapse(2)` 構造反映        | ❌       | ❌         | ❌         | ✅ 関数構造にネストループ分解反映                      |

---

##  総括

* **opt\_2.ll** = OpenMPによるスレッド並列IRだが、ベクトル化命令は含まない
* **opt\_3.ll** = OpenMP + LLVMベクトル化メタが多数導入されており、**SIMD命令展開の準備が整っているIR**


---

</details>
