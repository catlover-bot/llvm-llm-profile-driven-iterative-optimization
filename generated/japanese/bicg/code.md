<details><summary>c</summary>

* `s[j] += r[i] * A[i][j]`  ⟵ Aᵗ·r
* `q[i] += A[i][j] * p[j]`  ⟵ A·p

---

##  **ベースライン: `bicg.c`**

*  2重ループ構造（外側 i-loop、内側 j-loop）
*  並列化なし
*  スカラー展開なし
*  `#pragma scop` により Polly 対応あり
* `s[]` と `q[]` の更新が **同一ループ内** に存在

---

##  `opt_1.c` の違い

*  `#pragma omp parallel for` によって `s[i]` 初期化と計算部分を**並列化**
*  `q[i]` のためにローカル変数 `q_i` を使用し、**スカラー代入を強調**
*  `#pragma omp atomic` により `s[j] += ...` を**競合回避**（ただし高頻度アクセスによるオーバーヘッドあり）
*  `schedule(static)` 指定なし

>  `opt_1` = 並列処理初導入版。atomicによる同期がボトルネックになり得る。

---

##  `opt_2.c` の違い

*  `#pragma omp parallel` で全体を囲むことで**スレッド再利用の効率性向上**
*  並列forが `#pragma omp for` で統制され、**OpenMP管理下の実行が安定**
*  `q_i` スカラ変数と `atomic` の併用は継続

>  `opt_2` = 並列セクションの構成を改善し、**スレッド起動/終了のコスト削減**を目指したバージョン。

---

##  `opt_3.c` の違い

*  `#pragma omp parallel for schedule(static)` による **明示的スケジューリング**
*  `s[i] = 0.0` の初期化も並列化されている
*  `q[i]` はローカルスカラー `q_i` に集約
*  `s[j] += r[i] * A[i][j]` には `#pragma omp atomic` による**書き込み同期**

>  `opt_3` = `opt_2` の構造を引き継ぎつつ、**並列スケジューリングポリシー指定で実行の負荷分散を改善**

---

##  比較まとめ表

| 最適化項目             | `bicg.c` | `opt_1`        | `opt_2`          | `opt_3`                           |
| ----------------- | -------- | -------------- | ---------------- | --------------------------------- |
| OpenMP 導入         | ❌        | ✅ parallel for | ✅ parallel + for | ✅ parallel for + schedule(static) |
| `q[i]` ローカル変数化    | ❌        | ✅ `q_i` 使用     | ✅ `q_i` 使用       | ✅ `q_i` 使用                        |
| `s[j]` 書き込み競合対策   | ❌        | ✅ atomic       | ✅ atomic         | ✅ atomic                          |
| スケジューリング制御        | ❌        | ❌              | ❌                | ✅ `schedule(static)`              |
| `#pragma scop` 利用 | ✅        | ❌              | ❌                | ❌                                 |

---

##  結論

* **opt\_1**：単純並列化とatomic導入 → **導入版**
* **opt\_2**：OpenMPスコープ最適化 → **オーバーヘッド削減を狙う**
* **opt\_3**：スケジューリングポリシー追加 → **最大限のスレッド効率性**

---

</details>

<details><summary>ll</summary>

---

##  **base.ll（非最適化版）**

*  **OpenMP呼び出しなし**（`__kmpc_*` 関数不在）
*  **メタデータなし**（`!llvm.loop.vectorize`, `unroll`, など）
* ループ内に `s[j] += r[i] * A[i][j]` と `q[i] += A[i][j] * p[j]` を直列で処理。
* IR上の `load` → `fmul` → `fadd` 構成は最も基本的。

---

##  `opt_1.ll` の違い

*  **OpenMP 並列化**（`__kmpc_fork_call`, `__kmpc_for_static_init_4` など登場）
*  `@.omp_outlined.*` 関数によるループ本体のアウトライン化
*  `s[j]` 更新部分に `atomicrmw fadd` や `cmpxchg` 系命令が導入 → **書き込み競合対策**
*  メタデータ (`!llvm.loop.*`) は未使用
*  SIMD 命令 (`<N x float>` など) 未展開

>  `opt_1.ll` = 並列実行ベースの IR。スレッド分離と atomic 対応ありだが SIMD 最適化は未適用。

---

##  `opt_2.ll` の違い

*  `opt_1` と同じく OpenMP 並列構造
*  `omp parallel` セクションが明示的に囲まれている形に展開
*  `s[j]` に対する atomic 操作は継続
*  `q[i]` のスカラー変数 `q_i` は IR内で `%q_i = fadd ...` の形式で保持され**レジスタ最適化**を誘発
*  SIMD命令展開は確認されず

>  `opt_2.ll` = 並列範囲の明示化 + ローカル変数分離で LLVM レジスタ割当の効率性向上を意図。

---

##  `opt_3.ll` の違い

*  `opt_2`の並列構造を継承
*  **スケジューリングポリシーが `schedule(static)` として反映**される（IR的には `kmpc_for_static_init` 引数の違いで識別）
*  **ループに `!llvm.loop.vectorize.enable = true`** のメタデータ付与あり
*  `load <4 x float>` や `fadd <4 x float>` などの**SIMD命令登場**（環境依存）
*  `q[i]` = スカラー変数 → ベクトル命令とのマージポイントとして機能

>  `opt_3.ll` = 並列処理 + スケジューリング + SIMD最適化を融合した完全強化版。

---

##  差分まとめ表

| 特徴              | base.ll | opt\_1.ll     | opt\_2.ll         | opt\_3.ll                       |
| --------------- | ------- | ------------- | ----------------- | ------------------------------- |
| OpenMP 並列処理     | ❌       | ✅ `__kmpc_*`  | ✅ + 明示的parallel構造 | ✅                               |
| `s[j]` 競合対策     | ❌       | ✅ `atomicrmw` | ✅ `atomicrmw`     | ✅ `atomicrmw`                   |
| スカラー変数化（`q[i]`） | ❌       | ✅（`q_i`）      | ✅（命令数増）           | ✅                               |
| スケジューリング制御      | ❌       | ❌             | ❌                 | ✅ `schedule(static)`            |
| SIMD命令（ベクトル化）   | ❌       | ❌             | ❌                 | ✅ `fadd <4 x float>` 等          |
| ループメタデータ        | ❌       | ❌             | ❌                 | ✅ `!llvm.loop.vectorize.enable` |

---

##  結論

* **`opt_1.ll`**：OpenMP 並列化と atomic による競合回避の最小実装
* **`opt_2.ll`**：スレッド領域と変数管理最適化により、スケーラビリティ向上
* **`opt_3.ll`**：並列 + スケジューリング + SIMD メタデータ → **フル最適化バージョン**

---

  
</details>
