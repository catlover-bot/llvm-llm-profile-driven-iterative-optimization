<details><summary>c</summary>

---

##  **base.ll（非最適化）特徴**

*  `__kmpc_*` 関数なし → OpenMP 並列化なし
*  `!llvm.loop.vectorize` などベクトル化メタデータなし
*  SIMD 命令 (`<N x float>`) 無し
*  3重ループで `A → B` および `B → A` の交互更新をスカラー命令で実行
* 命令：`load`, `fadd`, `fmul`, `store` のみのスカラー構成

---

##  `opt_1.ll` の違い【OpenMP 導入（collapse(2)）】

*  `__kmpc_fork_call`, `__kmpc_for_static_init` → OpenMP 並列化あり
*  `@.omp_outlined.*` 関数：`t-i` を対象とした `collapse(2)` 並列処理
*  `!llvm.loop.vectorize.*` メタなし → ベクトル化誘導無し
*  SIMD命令無し（`<4 x float>` 等未使用）

>  **opt\_1.ll** = 時間ステップと1D空間を OpenMP 並列化 → **マルチスレッド初級構成**

---

##  `opt_2.ll` の違い【OpenMP + 全更新ステージ並列化】

*  `__kmpc_*` 系呼出しあり → 全更新ステージに OpenMP 適用（`A→B`, `B→A`両方）
*  複数の `@omp_outlined.*` により各計算段階が分離され並列適用
*  SIMD命令は未使用
*  vectorize メタなし（`loop.vectorize.enable` 等無し）

>  **opt\_2.ll** = 演算対象全面に OpenMP 並列を適用した **広域並列IR**

---

##  `opt_3.ll` の違い【OpenMP + collapse(3) + 高粒度並列】

*  `__kmpc_*` 関数による並列処理あり（`i`, `j`, `k`の全ループを collapse）
*  `collapse(3)` によりループ粒度を最大化 → `@omp_outlined.*` 関数の中で全領域分散処理
*  `init_array` にも並列化あり → 初期化ステージ含めた OpenMP 適用
*  SIMD命令なし
*  vector メタ (`!llvm.loop.vectorize`) 無し

>  **opt\_3.ll** = 並列化のスコープを最大限まで拡張 → **最高スレッド分散IR**

---

##  LLVM IR 差分まとめ

| 特徴                     | base.ll | opt\_1.ll       | opt\_2.ll         | opt\_3.ll            |
| ---------------------- | ------- | --------------- | ----------------- | -------------------- |
| OpenMP 並列化             | ❌       | ✅（t-i collapse） | ✅（すべてのループで個別に並列化） | ✅（collapse(3)で最大粒度化） |
| SIMD命令 (`<4 x float>`) | ❌       | ❌               | ❌                 | ❌                    |
| ベクトル化メタ (`vectorize`)  | ❌       | ❌               | ❌                 | ❌                    |
| `init_array` 並列処理      | ❌       | ❌               | ❌                 | ✅                    |
| `omp_outlined` の出現数    | 0       | 1               | 2〜3               | 3以上                  |

---

##  結論

* **opt\_1.ll**：最低限の並列化 (`t-i` loop) → **OpenMP並列導入入門**
* **opt\_2.ll**：更新ロジックすべてに `parallel for` → **演算網羅型並列化**
* **opt\_3.ll**：ループ collapse(3) + 初期化まで並列化 → **最大スレッドスケーラビリティ構成**

---

</details>

<details><summary>ll</summary>

---

## **base.ll（非最適化）特徴**

*  `__kmpc_*` 系のOpenMP関数無し → 完全逐次実行
*  `!llvm.loop.vectorize` メタデータ無し → ベクトル化なし
*  SIMD 命令（例：`fadd <4 x float>`）無し
*  2段階反復（`B[i] = avg(A[i-1], A[i], A[i+1])` → `A[i] = avg(B[i-1], B[i], B[i+1])`）
* 命令：`load`, `fadd`, `fmul`, `store` → すべてスカラー処理

---

##  `opt_1.ll` の違い【OpenMP SIMD 指示対応】

*  `!llvm.loop.vectorize.enable = true` メタ付きループあり → LLVMにベクトル化を明示
*  `fadd <4 x float>` / `fmul <4 x float>` などSIMD命令が登場
*  `loop.vectorize.width = 4` や `unroll.count = 4` などループヒントあり
*  `__kmpc_*` 関数は無し（OpenMPマルチスレッド処理は未導入）

>  **opt\_1.ll** = ベクトル命令最適化を LLVM に誘導した **SIMD 強化型 IR**

---

##  `opt_2.ll` の違い【ループアンローリング構成】

*  `__kmpc_*` なし → OpenMP 未使用
*  SIMD命令無し（スカラー命令のみ）
*  `loop unroll full` 相当の構造あり：ループ展開された形跡（命令が4つずつ並ぶ）
*  `i+=4` に対応するパターンの `getelementptr` が連続出現

>  **opt\_2.ll** = LLVMベースの**手動アンローリング対応IR**。ベクトル命令は無しだが命令密度増加で高速化志向

---

##  `opt_3.ll` の違い【opt\_1と同等構成】

*  `vectorize.enable = true`, `vectorize.width`, `unroll.count` あり
*  SIMD命令（`<4 x float>`）出現
*  `loop.unroll.enable = true` により LLVM に明示展開許可

>  **opt\_3.ll** = **opt\_1.llと実質的に同等**。ベクトル命令活用型 IR

---

##  IRレベル差分まとめ表

| 特徴                       | base.ll | opt\_1.ll                   | opt\_2.ll  | opt\_3.ll |
| ------------------------ | ------- | --------------------------- | ---------- | --------- |
| OpenMP 並列化 (`__kmpc_*`)  | ❌       | ❌                           | ❌          | ❌         |
| SIMD命令 (`<4 x float>`など) | ❌       | ✅ `fadd`, `fmul`, `load`等   | ❌          | ✅ 同上      |
| ベクトル化メタ (`vectorize`)    | ❌       | ✅ `vectorize.enable = true` | ❌          | ✅ 同上      |
| ループアンローリング構造             | ❌       | ✅ `unroll.count = 4`        | ✅（手動展開風）   | ✅ 同上      |
| 演算形式                     | スカラー    | SIMD                        | スカラー（手動展開） | SIMD      |

---

##  結論

* **opt\_1.ll / opt\_3.ll**：LLVMベクトル化メタ + SIMD命令展開あり → **最適なSIMD向けIR**
* **opt\_2.ll**：手動でアンローリングされた構造。**高命令密度だがSIMDは無し**
* **base.ll**：逐次スカラー処理のみ → 最適化余地大

---

</details>
