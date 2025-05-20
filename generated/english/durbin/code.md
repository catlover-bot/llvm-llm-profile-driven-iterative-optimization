<details><summary>c</summary>

---

##  元実装：`durbin.c`

### 特徴：

*  並列処理なし（逐次）
*  SIMD非対応
*  `sum += r[k-i-1] * y[i]` により `sum` を逐次加算
*  `z[i] = y[i] + alpha * y[k-i-1]` → `y[i] = z[i]` という2パス更新
*  理論上のO(n²)構造（ベクトル的には独立性アリ）

---

##  `opt_1.c` の違い【逐次構造を維持】

*  完全に元コードと同じ構造
*  OpenMP無し
*  SIMD無し
*  ただし `polybench_prevent_dce()` などが整備され読みやすくなっている

>  **opt\_1 = ベースコードと等価、構文整理型**

---

##  `opt_2.c` の違い【SIMD命令導入（OpenMP SIMD）】

*  `#pragma omp simd reduction(+:sum)` → `sum += r[k-i-1] * y[i]` をベクトル加算に
*  `z[i]` および `y[i]` の代入も `#pragma omp simd` で並列
*  `aligned()` や `private()` 指定なし（標準的SIMD）
*  逐次性のないループに対して正確にSIMDが適用されている

>  **opt\_2 = ベクトル化優先。OpenMP SIMD によりループを高速化**

---

##  `opt_3.c` の違い【SIMD + メモリアラインメント明示】

*  `#pragma omp simd aligned(r, y : 32) reduction(+:sum)` → 明示的なアライメント指定
*  `z`, `y` への代入にも `aligned(y, z : 32)` 指定あり
*  `init_array()` にも `#pragma omp simd` → ループ全般にベクトル化方針徹底
*  ループ本体は `opt_2` と同一構造だが、IR生成時のヒント精度が高い

>  **opt\_3 = ベクトル化 + 明示的アライメントで実行効率をさらに向上させた構造**

---

##  最適化比較表

| 特徴                                   | base / opt\_1 | opt\_2                 | opt\_3               |
| ------------------------------------ | ------------- | ---------------------- | -------------------- |
| OpenMP                               | ❌             | ✅ (`#pragma omp simd`) | ✅（同左＋`aligned`指定）    |
| SIMD命令                               | ❌             | ✅                      | ✅ 明示的`aligned`で最適化誘導 |
| `sum`のベクトル加算                         | ❌             | ✅ `reduction(+:sum)`   | ✅ 同左                 |
| `z[i] = y[i] + alpha*y[k-i-1]` SIMD化 | ❌             | ✅                      | ✅                    |
| `y[i] = z[i]` SIMD化                  | ❌             | ✅                      | ✅                    |
| 配列初期化のSIMD (`init_array`)            | ❌             | ❌                      | ✅                    |
| 実装の簡潔さ・可読性                           | 高             | 中（pragma追加）            | やや低（アラインメント指定追加）     |

---

##  総括

* **opt\_1**：ベースと同等（検証やベンチマーク再現用に有用）
* **opt\_2**：計算ループすべてに **OpenMP SIMD** を追加しベクトル化達成、実効速度の改善期待大
* **opt\_3**：SIMDに加えて **データアライメント指定によりハードウェア効率向上**、最も実行性能が高いと予測される構成

---

</details>

<details><summary>ll</summary>

---

##  `durbin_opt_base.ll`

*  `__kmpc_*`：無し → OpenMP未使用
*  SIMD命令（e.g. `<N x float>`, `vector.reduce.*`）：無し
*  各ループ内で `fadd`, `fmul` によるスカラー演算
*  `!llvm.loop.vectorize.enable` メタデータ無し
*  二重ループ構造をスカラーで計算し、`z[i]` → `y[i]` 更新パターン

>  **base.ll = 完全逐次・ベクトル化ヒント無しのプレーンIR**

---

##  `durbin_opt_1.ll`

*  OpenMP未使用（IR構造は `base.ll` 同様）
*  ループ構造そのものの変更は無し
*  `memset`, `memcpy` 等の標準関数最適化無し
*  `llvm.memcpy` や `vector.reduce` 系命令無し

>  **opt\_1.ll = baseと機能的にほぼ同じ。ループ構造明示のみの違い**

---

##  `durbin_opt_2.ll`

*  `!llvm.loop.vectorize.enable = true` メタが複数ループに追加
*  `sum` 加算ループに `reduction` 対応命令確認可能（`fadd` with `reduction` hint）
*  `__kmpc_*` 無し → OpenMP SIMD構文はCで指定されてもIRでは展開されていない可能性あり（ただしメタは存在）
*  SIMD命令 (`<N x float>`) 明示はされていない（ベクトル展開は未コンパイル？）

>  **opt\_2.ll = CレベルではSIMD指定されていたが、IRには `vectorize.enable` メタのみで実際のベクトル命令は無し**

---

##  `durbin_opt_3.ll`

*  `!llvm.loop.vectorize.enable = true` + `llvm.loop.vectorize.width = 4` 等のメタがより明確
*  `aligned` 属性付きの `load`, `store` 命令が出現（例：`load float, align 32`）
*  `fadd`, `fmul` に `fast` や `reassoc` 属性付き → 高速化前提のIR構造
*  `llvm.memset`、`llvm.memcpy` は依然使われていない（ループベース）
*  依然として明示的な `<4 x float>` 型 SIMD命令には変換されていない（vectorizeメタ止まり）

>  **opt\_3.ll = ベクトル化指示とアラインメント指定によりベクトル化に向けた最適IRだが、命令変換までは進んでいない**

---

##  比較まとめ

| 項目                        | base.ll | opt\_1.ll | opt\_2.ll         | opt\_3.ll                    |
| ------------------------- | ------- | --------- | ----------------- | ---------------------------- |
| OpenMP構造 (`__kmpc_*`)     | ❌       | ❌         | ❌                 | ❌                            |
| vectorize メタデータ           | ❌       | ❌         | ✅ `enable = true` | ✅ + `width=4`                |
| SIMD命令 (`<N x float>`)    | ❌       | ❌         | ❌                 | ❌（誘導されてるが未展開）                |
| アラインメント指定 (`align`)       | ❌       | ❌         | ❌                 | ✅ `align 32` on `load/store` |
| 再構成演算（z/y更新）              | ✅       | ✅         | ✅                 | ✅                            |
| 高速化属性 (`fast`, `reassoc`) | ❌       | ❌         | ❌                 | ✅                            |

---

##  結論

* **opt\_2.ll** はベクトル化ヒントを持つが命令展開には至らず
* **opt\_3.ll** は **アラインメントと高速化属性**により、最適な**ベクトル化候補**IRになっている
* 現状、**SIMD命令への変換（e.g., `vector.reduce.fadd`, `fmul <4 x float>`）は未展開**

---
希望があれば：「ClangベクトルIR見たい」「mca解析やりたい」など送ってくれ🔥📡💻

</details>
