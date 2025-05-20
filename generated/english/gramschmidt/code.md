<details><summary>c</summary>

---

##  比較ポイント

| バージョン   | 並列化        | `#pragma scop` | 初期化方式            | 数式の違い           |
| ------- | ---------- | -------------- | ---------------- | --------------- |
| 元コード    | ❌ 無し       | ✅ あり           | `R[i][j]=0.0` 明示 | `/` による除算       |
| `opt_1` | ❌ 無し       | ✅ あり           | 同上               | `/` による除算       |
| `opt_2` | ✅ OpenMP導入 | ❌ 無し           | 同上               | 除算を逆数×乗算に変換     |
| `opt_3` | ✅ OpenMP導入 | ❌ 無し           | `memset`使用       | 除算 → 逆数変換＋変数再利用 |

---

##  詳細解説

###  1. **元コードと `opt_1` の違い**

* **本質的な違い無し**。どちらも `#pragma scop` あり（PolyOptなどの自動最適化支援用）
* 数式は `Q[i][k] = A[i][k] / R[k][k];` のまま。
* ループは逐次実行、並列化なし。

---

###  2. **`opt_2` の改善ポイント**

* **OpenMP並列化**：

  ```c
  #pragma omp parallel for private(i, j, nrm) schedule(static)
  ```

  → 外側ループ (`k`) を並列化。マルチスレッド化で並列性能UP。

* **除算最適化**：

  ```c
  DATA_TYPE Rkk_inv = SCALAR_VAL(1.0) / R[k][k];
  Q[i][k] = A[i][k] * Rkk_inv;
  ```

  → 除算を逆数に変えて**乗算に置換**。除算よりも**浮動小数点乗算の方が高速**なため、性能向上。

---

###  3. **`opt_3` のさらなる最適化**

* **`memset`による初期化**：

  ```c
  memset(R, 0, sizeof(DATA_TYPE) * n * n);
  ```

  → 二重ループ初期化を**高速なC標準関数に置換**。SIMDなどの展開に有利。

* **ループ内の変数再利用**：

  ```c
  DATA_TYPE Rkj = SCALAR_VAL(0.0);
  for (i = 0; i < _PB_M; i++)
    Rkj += Q[i][k] * A[i][j];
  R[k][j] = Rkj;
  ```

  → 一時変数の導入により**メモリアクセス回数の削減**と**最適化しやすさの向上**。

---

##  最適化まとめ

| 最適化技法                    | opt\_1 | opt\_2 | opt\_3 |
| ------------------------ | ------ | ------ | ------ |
| OpenMP (`#pragma omp`)   | ❌      | ✅      | ✅      |
| 除算 → 逆数×乗算               | ❌      | ✅      | ✅      |
| `memset` による初期化          | ❌      | ❌      | ✅      |
| 一時変数による再利用               | ❌      | ❌      | ✅      |
| PolyOpt `#pragma scop`保持 | ✅      | ❌      | ❌      |

---

## 🏁 結論

*  **opt\_1**：構造変化無し（ベースライン比較用）
*  **opt\_2**：並列化＋計算コスト削減で性能アップ
*  **opt\_3**：並列＋メモリ初期化＋除算削減＋ローカル変数最適化 ⇒ 最速実行を目指す形に進化！

---

</details>

<details><summary>ll</summary>

---

##  `gramschmidt_opt_base.ll`

*  `__kmpc_*` 関数 → 無し（OpenMP非対応）
*  `!llvm.loop.vectorize.enable` メタ → 無し（ベクトル化不可）
*  変数のローカルキャッシュ・演算変形なし（除算多数）
*  完全にスカラー命令（逐次 `fdiv`, `fmul`, `fadd` 等）

>  プレーンなスカラーIR構造。PolyBenchの元のCをそのままClangでLLVM化したもの。

---

##  `gramschmidt_opt_1.ll`

*  ループ構造や変数展開は **`opt_base`と同一**
*  並列構文なし（OpenMP無し）
*  SIMDやvector metadataも無し

>  **opt\_1.ll はベースと変わらず**。構文整理前のベースライン比較用。

---

##  `gramschmidt_opt_2.ll`

*  `__kmpc_fork_call`, `__kmpc_for_static_init*` → OpenMP導入済！
*  `omp.outlined.*` 関数が生成 → ループ分割のための並列領域明示
*  SIMD用メタ (`!llvm.loop.vectorize.*`) なし
*  除算演算 (`fdiv`) が逆数 + 乗算 (`fmul`) に一部変換されている箇所あり
  → e.g. `1.0 / R[k][k]` → `invRkk` 使用

>  **並列化＋除算削減** により、OpenMP実行環境下で大きく性能向上見込み。

---

##  `gramschmidt_opt_3.ll`

*  OpenMP構造あり（`kmpc_*`, `omp.outlined.*` 完備）
*  `!llvm.loop.vectorize.enable = true` → LLVM SIMD最適化許可あり
*  `align 32` のロード命令＋ `nontemporal` アクセス属性 → AVX誘導
*  除算を乗算へ置換し、変数は `load` → `fmul` → `store` の効率順序

>  **opt\_3.ll = ベクトル化対応＆メモリアクセス最適化済みIR構造**
> コンパイラによる自動 `vdivps`, `vmulps` 展開を最大限誘導する形。

---

##  比較まとめ

| 特徴                    | base.ll | opt\_1.ll | opt\_2.ll | opt\_3.ll |
| --------------------- | ------- | --------- | --------- | --------- |
| OpenMP (`__kmpc_*`)   | ❌       | ❌         | ✅         | ✅         |
| `omp.outlined` 関数     | ❌       | ❌         | ✅         | ✅         |
| `vectorize.enable` メタ | ❌       | ❌         | ❌         | ✅         |
| ベクトル命令 `<N x float>`  | ❌       | ❌         | ❌         | ❌（hintあり） |
| 除算→逆数×乗算変換            | ❌       | ❌         | ✅（一部）     | ✅（全面）     |
| `load` アラインメント指定      | ❌       | ❌         | ❌         | ✅         |

---

##  結論：opt\_3.ll が最適化完全体

* LLVMの**SIMD変換パスが走る前段階**として、IRに必要な全ヒントが揃っている。
* OpenMP + Loop Vectorization + Memory Alignment を全実装！

---

</details>
