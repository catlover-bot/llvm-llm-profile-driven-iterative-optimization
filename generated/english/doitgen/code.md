<details><summary>c</summary>

---

##  **元実装：`doitgen.c` の構造（PolyBench/C Base）**

```c
for (r = 0; r < NR)
  for (q = 0; q < NQ) {
    for (p = 0; p < NP)
      sum[p] = 0;
      for (s = 0; s < NP)
        sum[p] += A[r][q][s] * C4[s][p];
    for (p = 0; p < NP)
      A[r][q][p] = sum[p];
  }
```

### 特徴：

*  並列化なし
*  SIMD・キャッシュ最適化なし
*  演算正確性は明示的
*  メモリアクセス効率は未考慮

---

##  `opt_1.c` の違い【OpenMP 導入（rループ並列）】

*  `#pragma omp parallel for schedule(static)`
*  `sum` 配列のクリア：`memset(sum, 0, sizeof(DATA_TYPE) * NP);`
*  最内ループ：2重ループによる明示的積和
*  `sum` のスレッド安全性には `shared`/`private` 指定なし（スタック配置仮定）
*  SIMD 無し

>  **opt\_1 = 並列化導入によって高速化したベース実装**

---

##  `opt_2.c` の違い【メモリアクセス効率改善】

*  `C4[s]` を `const DATA_TYPE *C4_s = C4[s];` によりキャッシュヒット向上
*  `A[r][q][s]` は1回の `a_rqs` ローカル変数に保持 → 再アクセス回避
*  `sum[p] += a_rqs * C4_s[p];` によって **積和演算の最短パス化**
*  書き戻しも `memcpy` ではなくループで `A[r][q][p] = sum[p];`（SIMD拡張しやすい）
*  `private(q,p,s)` 指定でスレッド安全化

>  **opt\_2 = キャッシュフレンドリーなメモリアクセスを意識した実装**

---

##  `opt_3.c` の違い【API活用と最小命令設計】

*  `memset(sum, 0, size)` によるゼロ初期化
*  `memcpy(A[r][q], sum, size)` による書き戻し最短化（`loop`より速い場合あり）
*  `a_rqs` で `A[r][q][s]` を1回読み → 再利用
*  `OpenMP` 対応は `opt_1` と同様だが、**APIで関数を統一しており、記述が簡潔**
*  SIMD ループ化や明示的 `#pragma omp simd` は無し

>  **opt\_3 = 処理記述の簡潔化とAPI利用による最短実装構成**

---

##  比較表

| 項目                    | `base` | `opt_1`    | `opt_2`                | `opt_3`             |
| --------------------- | ------ | ---------- | ---------------------- | ------------------- |
| OpenMP導入              | ❌      | ✅ (`r` 並列) | ✅ (`r` 並列 + private指定) | ✅ (`r` 並列 + API簡潔化) |
| `sum`初期化              | ループ    | `memset`   | `memset`               | `memset`            |
| 書き戻し                  | ループ    | `memcpy`   | ループ                    | `memcpy`            |
| 再利用変数 `a_rqs`, `C4_s` | ❌      | ✅（`a_rqs`） | ✅（両方）                  | ✅（`a_rqs`）          |
| キャッシュ最適化              | ❌      | ❌          | ✅ `C4[s]` → `C4_s[p]`  | 部分的                 |
| SIMD最適化               | ❌      | ❌          | ❌（展開しやすい構造）            | ❌                   |

---

##  結論

* **opt\_1**：最もベーシックな並列化導入版。性能改善は限定的
* **opt\_2**：キャッシュ効率とループ内演算最適化が最も優秀。**高速化と簡潔性のバランス◎**
* **opt\_3**：API (`memset`, `memcpy`) を活用した**記述の簡潔化重視**構成

---

</details>

<details><summary>ll</summary>

---

##  **base.ll（オリジナル構造）**

*  `__kmpc_*` 無し → OpenMP非使用
*  SIMD命令（`<N x float>`等）無し
*  `vectorize.*` メタ無し
*  `for (r,q,p,s)` 構造にてテンソル A × 行列 C4 を計算
*  `sum[p]` に `fadd`, `fmul` を使用し `A[r][q][p]` へ格納

---

##  `opt_1.ll` の違い【OpenMP導入 + memcpy】

*  `__kmpc_fork_call` / `__kmpc_for_static_init_4` → **OpenMPあり**
*  `sum` の初期化：`memset` 相当 → `llvm.memset` IR確認
*  結果格納：`memcpy` により `sum → A[r][q]` へ転送
*  SIMD命令なし
*  並列ループは `r` に限定されている（問題なし）

>  **opt\_1.ll = OpenMP導入により並列性向上。ただしSIMD無し、memset/memcpyを明示的に使用**

---

##  `opt_2.ll` の違い【キャッシュ効率重視】

*  OpenMP構造は `opt_1` 同様（`__kmpc_*` 系）
*  `C4[s] → C4_s`、`A[r][q][s] → a_rqs` の中間値化 → `load` 回数削減
*  `sum[p] += a_rqs * C4_s[p]` 明確に展開され、演算パス短縮
*  `store` 結果は `memcpy` ではなく `store` ベースループ（ループ展開しやすい）

>  **opt\_2.ll = メモリ再利用とループ構造の再構成による効率最適化。IR上でload/store数が明確に減少**

---

##  `opt_3.ll` の違い【最小命令+memcpy構成】

*  OpenMPあり（IR構造同様）
*  `sum[p] += a_rqs * C4[s][p]` の後、`memcpy` による `A[r][q][p]` 書き戻し
*  初期化は `memset`（`llvm.memset.p0i8`）
*  SIMD命令なし、`vector.reduce.fadd` 等無し
*  `a_rqs` を `load` → `fmul` で再利用（再利用率高）

>  **opt\_3.ll = 演算最少化 + APIベースの記述で最短経路をIRでも反映した構成**

---

##  LLVM IR 比較表

| 特徴                           | base.ll | opt\_1.ll                 | opt\_2.ll  | opt\_3.ll   |
| ---------------------------- | ------- | ------------------------- | ---------- | ----------- |
| OpenMP並列化                    | ❌       | ✅ `__kmpc_*`あり            | ✅          | ✅           |
| SIMD命令（`<N x float>`）        | ❌       | ❌                         | ❌          | ❌           |
| `memset` / `memcpy` 使用       | ❌       | ✅ `llvm.memset`, `memcpy` | ❌（明示ループ）   | ✅（APIベース）   |
| 中間値再利用（`a_rqs`, `C4_s`）      | ❌       | 部分的                       | ✅（再利用構成確認） | ✅（短命変数に集約）  |
| ループ内命令最小化                    | ❌       | ❌                         | ✅          | ✅（API化で明示的） |
| ベクトル化メタ (`vectorize.enable`) | ❌       | ❌                         | ❌          | ❌           |

---

##  結論

* **opt\_1.ll**：OpenMP導入とAPI (`memset`/`memcpy`) 利用でベースより高速だが構造は変わらず
* **opt\_2.ll**：ループ構造の簡略化とキャッシュ効率の向上がIRにも反映された**中間性能最適**
* **opt\_3.ll**：最小限の命令数と再利用効率に注力した**最高効率構造**（ただしAPI依存）

---

</details>
