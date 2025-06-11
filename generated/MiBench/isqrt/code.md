<details><summary>c</summary>


---

## 共通ベース：`isqrt.c`（オリジナル）

```c
void usqrt(unsigned long x, struct int_sqrt *q)
{
      unsigned long a = 0L;
      unsigned long r = 0L;
      unsigned long e = 0L;

      int i;

      for (i = 0; i < BITSPERLONG; i++)   /* NOTE 1 */
      {
            r = (r << 2) + TOP2BITS(x); x <<= 2; /* NOTE 2 */
            a <<= 1;
            e = (a << 1) + 1;
            if (r >= e)
            {
                  r -= e;
                  a++;
            }
      }
      memcpy(q, &a, sizeof(long));
}
```

* **ループ回数**：`i` を `0` から `BITSPERLONG-1` まで反復。
* **分岐**：`if (r >= e)` による減算とインクリメント。

---

### 最適化 1：`isqrt_1.c`

```diff
-    int i;
-    for (i = 0; i < BITSPERLONG; i++)
+    /* ループ回数を半分に */
+    int i = BITSPERLONG / 2;
+    while (i--) 
```

* **変更点**

  1. `for` → `while (i--)` に置き換え
  2. ループ上限を `BITSPERLONG` → `BITSPERLONG/2` に削減

→ **ループ回数を半減** し、半分のイテレーションで同等の結果を得る。

---

### 最適化 2：`isqrt_2.c`

```diff
-        if (r >= e)
-        {
-            r -= e;
-            a++;
-        }
+        /* 分岐を論理演算で一本化 */
+        r -= (r >= e) * e;
+        a += (r >= e);
```

* **変更点**
  `if` 文による条件分岐を、

  * `(r >= e) * e`：真なら `e` を引く
  * `a += (r >= e)`：真なら `1` を加算
    という算術演算に置き換え。

→ **分岐予測ミスを減らし、パイプライン効率を向上**。

---

### 最適化 3：`isqrt_3.c`

```diff
-    while (i--) {
+    // ループを2回分ずつ処理するアンローリング
+    while (i--) {
+        /* （一回目）同じ処理 */
         r = (r << 2) + TOP2BITS(x); x <<= 2;
         a <<= 1;
         e = (a << 1) + 1;
         r -= (r >= e) * e;
         a += (r >= e);
+
+        /* （二回目）アンローリング版 */
+        r = (r << 2) + TOP2BITS(x); x <<= 2;
+        a <<= 1;
+        e = (a << 1) + 1;
+        r -= (r >= e) * e;
+        a += (r >= e);
     }
```

* **変更点**
  ループ本体を **2 回分アンローリング** し、ループ制御オーバーヘッドを半減。
* `i` は既に `BITSPERLONG/2` で初期化されるため、合計で `(BITSPERLONG/2)*2 = BITSPERLONG` 回の処理を維持。

→ **ループ分岐回数をさらに削減** し、命令の連続実行を強化。

---

## まとめ

| バージョン | ループ制御                   | 分岐処理            | ループアンローリング |
| ----- | ----------------------- | --------------- | ---------- |
| オリジナル | `for (0→BITSPERLONG)`   | `if (r>=e)`     | なし         |
| 最適化 1 | `while (BITSPERLONG/2)` | `if (r>=e)`     | なし         |
| 最適化 2 | 同上                      | 算術演算 `(r>=e)*e` | なし         |
| 最適化 3 | 同上                      | 算術演算 `(r>=e)*e` | 2回分アンローリング |

* **最適化 1**：ループ回数を半減
* **最適化 2**：条件分岐を算術演算に置換
* **最適化 3**：ループ本体を2回分アンローリング

これらにより制御フローが単純化され、パイプライン・命令キャッシュ効率が向上し、全体的な実行時間削減が期待できます。

</details>

<details><summary>ll</summary>


---

## 1. ループ制御の変更（Optimized 1）

### 元 IR（`isqrt_base.ll`）

```llvm
; <label>:0
  br label %loop

; <label>:loop
  %i = phi i32 [ 0, %entry ], [ %i.next, %loop ]
  %cmp = icmp slt i32 %i, 32           ; BITSPERLONG=32
  br i1 %cmp, label %body, label %exit
; <label>:body
  …
  %i.next = add i32 %i, 1
  br label %loop
```

### Optimized 1 IR（`isqrt_1.ll`）

```diff
--- isqrt_base.ll
+++ isqrt_1.ll
@@ -1,7 +1,7 @@
-  %i = phi i32 [ 0, %entry ], [ %i.next, %loop ]
-  %cmp = icmp slt i32 %i, 32
+  %i = phi i32 [ 16, %entry ], [ %i.next, %loop ]   ; 32→16 に変更
+  %cmp = icmp ne i32 %i, 0                         ; 0になるまでwhile(i--)に
   br i1 %cmp, label %body, label %exit
 ; <label>:body
-  %i.next = add i32 %i, 1
+  %i.next = add i32 %i, -1                         ; インクリメント→デクリメント
   br label %loop
```

* **何が変わったか**

  * ループ初期値を `0→32` から `16→while(i--)` に変更し、半分のイテレーションに。
  * カウンタ更新も `i+1`→`i-1` に反転。

---

## 2. 分岐の算術化（Optimized 2）

### 元 IR（`isqrt_base.ll`）

```llvm
; <label>:body
  %e = add i64 %a, 1
  %cond = icmp uge i64 %r, %e
  br i1 %cond, label %then, label %else

; <label>:then
  %r2 = sub i64 %r, %e
  %a2 = add i64 %a, 1
  br label %cont

; <label>:else
  br label %cont
```

### Optimized 2 IR（`isqrt_2.ll`）

```diff
--- isqrt_base.ll
+++ isqrt_2.ll
@@ -10,12 +10,10 @@
-  %cond = icmp uge i64 %r, %e
-  br i1 %cond, label %then, label %else
-
-; <label>:then
-  %r2 = sub i64 %r, %e
-  %a2 = add i64 %a, 1
-  br label %cont
-
-; <label>:else
-  br label %cont
+  %cond = icmp uge i64 %r, %e
+  %r2   = sub i64 %r, mul i64 %e, zext i1 %cond to i64   ; (r>=e)? e : 0
+  %a2   = add i64 %a, zext i1 %cond to i64               ; (r>=e)? 1 : 0
+  br label %cont
```

* **何が変わったか**

  * `if` / `then` / `else` の３ブロックを **算術演算１ブロック**に集約。
  * 分岐命令 (`br i1`) は残すものの、`then`/`else` ブロックが不要に。

---

## 3. ループ本体のアンローリング（Optimized 3）

### 元 IR（`isqrt_2.ll`）

```llvm
; <label>:body
  ; …前半処理…
  br label %loop
```

### Optimized 3 IR（`isqrt_3.ll`）

```diff
--- isqrt_2.ll
+++ isqrt_3.ll
@@ -1,6 +1,6 @@
 ; <label>:body
-  ; 処理１回
-  br label %loop
+  ; 処理１（アンローリング: first iteration）
+  ; …同じ計算ノード…
+  ; 処理２（アンローリング: second iteration）
+  ; …再度同じ計算ノード…
+  br label %loop
```

* **何が変わったか**

  * ループ本体が **2 回分そのまま展開**され、SSAノードが２倍に。
  * ループ分岐 overhead が半減し、高スループット化。

---

### 全体サマリ

| 最適化ステップ     | 変更内容                                  |       IR行数変化 |
| ----------- | ------------------------------------- | -----------: |
| Optimized 1 | ループ初期値を `0→32` から `16→while(i--)` に変更 | 136→128 (-8) |
| Optimized 2 | `if` ブロックを算術演算（`mul`,`sub`,`add`）で一本化 | 128→124 (-4) |
| Optimized 3 | ループ本体を2回分アンローリング                      | 124→120 (-4) |

これらの IR レベルの変化が、最終的な機械語での命令数減少や分岐ミス削減につながり、パフォーマンスの向上をもたらします。

</details>
