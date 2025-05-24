<details><summary>c</summary>


---

##  **最適化比較まとめ：syrk.c vs opt\_1 / opt\_2 / opt\_3**

###  共通点：

* **初期化関数 (`init_array`)** や **出力関数 (`print_array`)** に違いはなし。
* `alpha`, `beta`, `C`, `A` などの配列・変数定義も同一。
* PolyBench のベース構造も全く同じ。
* `kernel_syrk()` が唯一の差分ポイント。

---

##  **差分ポイント：kernel\_syrk**

###  `syrk.c`（ベース実装）：

```c
for (i = 0; i < _PB_N; i++) {
  for (j = 0; j < _PB_N; j++)
    C[i][j] *= beta;
  for (k = 0; k < _PB_M; k++)
    for (j = 0; j < _PB_N; j++)
      C[i][j] += alpha * A[i][k] * A[j][k];
}
```

* **完全な二重ループ**で `C` を更新。
* 対称行列の特性（`C[i][j] == C[j][i]`）を無視してフルサイズで演算。

---

###  `opt_1.c` / `opt_2.c`（同一内容）【参照: 1006†syrk\_opt\_2.c】

```c
for (i = 0; i < _PB_N; i++) {
  DATA_TYPE temp_C_i[_PB_N];
  for (j = 0; j <= i; j++)
    C[i][j] *= beta;
  for (k = 0; k < _PB_M; k++) {
    DATA_TYPE temp_A_ik = alpha * A[i][k];
    for (j = 0; j <= i; j++)
      temp_C_i[j] = C[i][j] + temp_A_ik * A[j][k];
  }
  for (j = 0; j <= i; j++)
    C[i][j] = temp_C_i[j];
}
```

*  **対称行列Cの下三角部分のみ演算**（`j <= i`）。
*  中間計算 `temp_C_i` に一時保存 → メモリアクセス削減。
*  `alpha * A[i][k]` を `temp_A_ik` に保持し、演算を一回に最適化。
* ただし `temp_C_i[j]` に `+=` ではなく `=` 代入 → 計算の一貫性に注意必要。

---

###  `opt_3.c`：

```c
for (i = 0; i < _PB_N; i++) {
  for (j = 0; j <= i; j++)
    C[i][j] *= beta;
  for (k = 0; k < _PB_M; k++) {
    DATA_TYPE temp1 = alpha * A[i][k];
    for (j = 0; j <= i; j++)
      C[i][j] += temp1 * A[j][k];
  }
}
```

*  `temp1 = alpha * A[i][k]` で定数畳み込み。
*  `temp_C_i` を使わず、**直接 `C[i][j]` に加算**。
*  最小限のループネスト＆演算回数。
*  `opt_1/2` に比べて **メモリ使用を削減**。
*  計算結果の逐次更新により、**よりリアルタイムな更新処理**。

---

##  最適化まとめ：

| 項目      | syrk.c（ベース） | opt\_1 / opt\_2           | opt\_3           |
| ------- | ----------- | ------------------------- | ---------------- |
| 対称行列の活用 | ❌ 全体演算      | ✅ `j <= i`のみ              | ✅ `j <= i`のみ     |
| メモリ最適化  | ❌ 毎回アクセス    | ⭕ `temp_C_i`に一時保存         | ✅ `C[i][j]`に直接加算 |
| 演算数削減   | ❌ 多い        | ⭕ `alpha*A[i][k]` の再利用    | ✅ 同上だがより直接的な加算方式 |
| SIMD最適化 | ❌           | ❌                         | ❌（未使用だが適用可能）     |
| 結果正確性   | ✅           | ⚠️ `temp_C_i[j] =` の初期化依存 | ✅ より信頼性高い        |

---


* **opt\_3.c** が最も効率的なアプローチで、無駄のない計算とメモリアクセスを実現している。
* **opt\_1/2** は `temp_C_i` を使うことでバッファリングしてるが、逐次更新型に劣るケースもある。
* **ベース実装**は最も非効率だが、理解しやすく正確性が高い。


</details>

<details><summary>ll</summary>


</details>
