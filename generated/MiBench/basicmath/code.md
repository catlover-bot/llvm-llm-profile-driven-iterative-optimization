<details><summary>c</summary>


---

## 1. `basicmath.c` （オリジナル）

* **入力データ**：コマンドライン引数で `RUNS` を受け取り、ループごとに都度乱数を生成。
* **構造**：

  1. `SolveCubic` の呼び出しループ
  2. `isqrt` の呼び出しループ
  3. `rad2deg` の呼び出しループ
* **ループ**：各カーネルで `for (i=0; i<runs; ++i)`。
* **データ**：乱数を都度計算 `(rand()/RAND_MAX)`。

---

## 2. `basicmath_1.c`（Iteration 1）

* **ランタイム例外処理**：コマンドライン引数未指定時のチェックを削除し、代わりにマクロ `#define RUNS 100` を導入。
* **データ準備**：

  ```c
  double a[RUNS];
  for (int i = 0; i < RUNS; ++i)
      a[i] = rand()/(double)RAND_MAX;
  ```

  → 先に乱数配列を作ってループ中の `rand()` コストを削減。
* **ループ呼び出し**：

  ```c
  for (int i = 0; i < RUNS; ++i)
      SolveCubic(..., a[i], …);
  for (int i = 0; i < RUNS; ++i)
      n = isqrt((int)(a[i]*1000));
  for (int i = 0; i < RUNS; ++i)
      res = rad2deg(deg2rad(a[i]));
  ```

  それぞれのカーネル呼び出しを分離して、配列アクセスに統一。
* **メリット**：乱数生成をループ外に移動し、`rand()` の分岐・計算オーバーヘッドを削減。

---

## 3. `basicmath_2.c`（Iteration 2）

* **テストデータの固定化**：

  * **Cubic**：配列 `static double x[3] = { … }` にサンプル値を列挙し、`SolveCubic(x, …)` で再利用。
  * **Isqrt**：`for (l = 0x3fed0169; l < 0x3fed4169; l += 2)` のビットパターンで `usqrt` を呼び出し。
  * **Rad2deg**：二重ループ

    ```c
    for (X = 0.0; X <= 360.0; X += .001)
      for (Y = 0.0; Y <= 2*PI; Y += (PI/5760.0))
          printf(...);
    ```

    → 度→ラジアン、ラジアン→度の相互テストを全組み合わせで実施。
* **構造の大幅変更**：

  * ループの粒度を非常に細かくし、データセットをあらかじめ組んでテストを網羅。
  * `printf` の出力件数が大幅増加（ベンチワークではなく検証重視）。
* **狙い**：`rand()` まわりを排して完全決定論的ループへ、メモリアクセスをより規則的に。

---

## 4. `basicmath_3.c`（Iteration 3 → 最終版）

* **コマンドライン引数再導入**：引数 `runs` のチェックと使用を復活。

  ```c
  if (argc<2) { fprintf(stderr,"…"); return 1; }
  int runs = atoi(argv[1]);
  ```
* **Cubic**：

  ```c
  for (int j = 0; j < runs; ++j) {
    SolveCubic(...);
    printf("…\n");
  }
  ```

  → １回ごとに結果を出力し、逐次確認できるように。
* **Isqrt**：

  ```c
  for (unsigned long l = 0x3fed0169L; l < 0x3fed4169L; l += 2) {
    usqrt(l, &q); printf("…\n");
    usqrt(l+1, &q); printf("…\n");
  }
  ```

  → `bitarray_2.c` での２回呼び出しパターンを踏襲。
* **Rad2deg**：

  ```c
  for (X = 0.0; X <= 360.0; X += .002)
    printf("%3.0f degrees = %.12f radians\n", X, deg2rad(X));
  ```

  → ループ幅を `.002` に調整し、ネストを排除。
* **統合と整理**：

  * `snipmath.h` をインクルードしてマクロ・関数定義はそのまま。
  * 各セクション（Cubic / Isqrt / Rad2deg）を明確に分け、入出力フォーマットを統一。
  * ループ粒度は `basicmath_2.c` の細かなテストから適度な幅へ戻し、出力量を制御。

---

### 全体を通しての傾向

1. **データ生成の外だし**（Iteration 1） →
2. **テストデータの網羅化**（Iteration 2） →
3. **実用性とのバランスを取った整理**（Iteration 3）

各バージョンで

* 乱数→静的データ→引数制御
* 単一ループ→二重ループ→再び単一ループ
* `rand()`／`printf` の呼び出し回数やループ幅をチューニング

といった形で、性能計測／検証の目的に合わせたコード変遷が見られます。

</details>

<details><summary>ll</summary>

上記で、`basicmath_base.ll` と各イテレーション後の `basicmath_1.ll`～`basicmath_3.ll` の差分を示しました。主な変更点をまとめると：

1. **ループの分岐最適化**

   * 元版では `%256 = phi` 命令でループカウンタを更新していましたが、最適化版ではこの `phi` が削除され、代わりに明示的な `add` と分岐制御に置き換えられています。
2. **メモリアクセスの再順序化**

   * `getelementptr` → `load` → `printf` の順で並んでいたメモリアクセスが、`printf` 呼び出しを減らしつつ連続的に `load` → 計算 → 出力、という流れに再配置され、メモリアクセスの局所性が改善されています。
3. **デバッグメタデータの整理**

   * `!26`～`!32` といったメタデータ定義がまとめられ、重複が削除されている箇所が見られます。これにより IR の行数も削減されています。


</details>
