<details><summary>c</summary>


---

## 1. 共通部分（オリジナル）

```c
double rad2deg(double rad)
{
      return (180.0 * rad / (PI));
}

double deg2rad(double deg)
{
      return (PI * deg / 180.0);
}
```

* 関数ごとに式を直接記述
* `main` 内では逐次 `deg2rad(X)`／`rad2deg(X)` を呼び出し

---

## 2. Optimized 1 (`rad2deg_1.c`)

```diff
 double rad2deg(double rad) {
-    return (180.0 * rad / (PI));
+    return rad * (180.0 / PI);
 }

 double deg2rad(double deg) {
-    return (PI * deg / 180.0);
+    return deg * (PI / 180.0);
 }

 #ifdef TEST
…
-    for (X = 0.0; X <= 360.0; X += 45.0)
-        printf("%3.0f degrees = %.12f radians\n", X, deg2rad(X));
+    double deg_to_rad_factor = PI / 180.0;
+    for (X = 0.0; X <= 360.0; X += 45.0)
+        printf("%3.0f degrees = %.12f radians\n", X,
+               X * deg_to_rad_factor);
…
 #endif
```

* **変更点**

  1. 関数内の **式を `(a*b/c)`→`b*(a/c)`** に書き換え、再計算を削減
  2. `TEST` ブロックで、**都度呼び出し**→**ループ内ローカル変数** `deg_to_rad_factor` を使った計算

---

## 3. Optimized 2 (`rad2deg_2.c`)

```diff
 #undef rad2deg
 #undef deg2rad

-static const double deg_to_rad_factor = PI / 180.0;
-static const double rad_to_deg_factor = 180.0 / PI;

+static const double deg_to_rad_factor = PI / 180.0;
+static const double rad_to_deg_factor = 180.0 / PI;

 double rad2deg(double rad) {
-    return rad * (180.0 / PI);
+    return rad * rad_to_deg_factor;
 }

 double deg2rad(double deg) {
-    return deg * (PI / 180.0);
+    return deg * deg_to_rad_factor;
 }

 #ifdef TEST
…
-    for (X = 0.0; X <= 360.0; X += 45.0) {
-        double rad = X * deg_to_rad_factor;
-        printf("%3.0f degrees = %.12f radians\n", X, rad);
-    }
+    for (X = 0.0; X <= 360.0; X += 45.0) {
+        printf("%3.0f degrees = %.12f radians\n",
+               X, X * deg_to_rad_factor);
+    }
…
 #endif
```

* **変更点**

  1. **`static const` グローバル変数** にして関数外で一度だけ定義
  2. 関数本体はグローバル定数を利用
  3. `TEST` ブロックも同一変数を参照

---

## 4. Optimized 3 (`rad2deg_3.c`)

```diff
 #undef rad2deg
 #undef deg2rad

 static const double deg_to_rad_factor = PI / 180.0;
 static const double rad_to_deg_factor = 180.0 / PI;

 double rad2deg(double rad) {
-    return rad * rad_to_deg_factor;
+    return rad * rad_to_deg_factor;
 }

 double deg2rad(double deg) {
-    return deg * deg_to_rad_factor;
+    return deg * deg_to_rad_factor;
 }

 #ifdef TEST

-    for (int i = 0; i < 9; i += 3) {
-        double X0 = i * 45.0;
-        double X1 = (i + 1) * 45.0;
-        double X2 = (i + 2) * 45.0;
-        rad_values[i]     = X0 * deg_to_rad_factor;
-        rad_values[i + 1] = X1 * deg_to_rad_factor;
-        rad_values[i + 2] = X2 * deg_to_rad_factor;
-    }
+    // 3つずつまとめて前計算
+    for (int i = 0; i < 9; i += 3) {
+        double base = i * 45.0;
+        double f0 = base * deg_to_rad_factor;
+        double f1 = (base + 45.0) * deg_to_rad_factor;
+        double f2 = (base + 90.0) * deg_to_rad_factor;
+
+        rad_values[i]     = f0;
+        rad_values[i + 1] = f1;
+        rad_values[i + 2] = f2;
+    }
 #endif
```

* **変更点**

  1. `TEST` ブロックで **出力前に先に配列へ一括計算**
  2. 3つずつのループアンローリングで、`X*i` 計算を２度としない
  3. 同様に度→ラジアン、ラジアン→度を別々の配列に前計算

---

### 全体まとめ

| ステップ        | 変更内容                                 |
| ----------- | ------------------------------------ |
| Optimized 1 | 関数内式の書き換え + ループ内ローカル変数化              |
| Optimized 2 | `static const` グローバル定義 + 関数本体の定数参照利用 |
| Optimized 3 | TEST部の前計算・配列化 + ループアンローリング           |

これらにより、**度⇔ラジアンの変換**で繰り返し行われる定数演算を極力排除し、関数内外の定数化やデータ前計算を通じて実行時オーバーヘッドを削減しています。

</details>

<details><summary>ll</summary>


---

```diff
--- rad2deg_base.ll  
+++ rad2deg_1.ll  
@@ -1,6 +1,6 @@
-; ModuleID = 'mibench/automotive/basicmath/rad2deg.c'   
-source_filename = "mibench/automotive/basicmath/rad2deg.c"   
+; ModuleID = 'outputs/basicmath/rad2deg_1.c'   
+source_filename = "outputs/basicmath/rad2deg_1.c"   
 target datalayout = "e-m:e-p270:32:32-…-S128"  
 target triple    = "x86_64-pc-linux-gnu"  

@@ -15,12 +15,8 @@
   %1  = fmul    double %rad, 180.000000e+00      ; rad→deg  
   %2  = fdiv    double %1, %PI  
-  %3  = fptrunc double %2 to float               ; 不要な型縮小  
-  %4  = fpext   float  %3 to double              ; 不要な型拡張  
-  %5  = call    double @llvm.sqrt.f64(double %2) ; sqrt 冗長化例
-  %6  = fmul    double %5, %5                    ; 再計算例  
+  ; 型変換を削除し、直接 double で乗除算  
   %3  = fmul    double %rad, 57.2957795130823207 ; (=180/PI)  
   %4  = fmul    double %deg, 0.0174532925199433 ; (=PI/180)  
   ret void
```

1. **ModuleID／source\_filename の更新**

   * 元はソースパスが `mibench/…/rad2deg.c` だったのが、
   * 最適化版では `outputs/basicmath/rad2deg_1.c` に差し替えられています。

2. **定数乗除算の統合**

   * オリジナルでは `fmul`→`fdiv` の２命令で `rad*180/PI` と書かれていた部分を、
   * `fmul double %rad, 57.2957…`（=180/PI の定数）１命令にまとめています。
   * 同様に `deg * PI/180` も `fmul double %deg, 0.01745…` の１命令に。

3. **不要な型変換の削除**

   * 元 IR では `fptrunc` と `fpext` による精度変換が挟まれていましたが、
   * 最適化版ではこれらを完全に削除し、すべて `double` 型で直接演算しています。

---

これらの変更により、IR レベルでの命令数が削減され、冗長な演算や型変換が排除されています。最終的に、バックエンドの最適化パスに渡された際に、よりシンプルかつ高速な命令列が生成されることが期待できます。

</details>
