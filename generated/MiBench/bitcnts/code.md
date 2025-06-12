<details><summary>c</summary>

---

## C ソースコードの比較

### オリジナル：`bitcnts.c`&#x20;

* ループ本体は 1 回のビットカウント呼び出し（`n += pBitCntFunc[i](seed);`）のみ
* ループカウンタは `j++`，シードは `seed += 13` でインクリメント
* `n` に直接加算

```c
for (j = n = 0, seed = rand(); j < iterations; j++, seed += 13)
    n += pBitCntFunc[i](seed);
```

---

### 最適化 1：`bitcnts_1.c`&#x20;

* **ループ展開×4**

  * `j += 4`，`seed += 52`（13×4）で一度に4回分処理
* **中間変数 `temp_n`** で加算して最後に `n = temp_n;`
* ループオーバーヘッド（分岐・インクリメント）が約1/4に低減

```c
long temp_n = 0;
for (j = 0, seed = rand(); j < iterations; j += 4, seed += 52) {
    temp_n += pBitCntFunc[i](seed);
    temp_n += pBitCntFunc[i](seed + 13);
    temp_n += pBitCntFunc[i](seed + 26);
    temp_n += pBitCntFunc[i](seed + 39);
}
n = temp_n;
```

---

### 最適化 2：`bitcnts_2.c`&#x20;

* 1 のループ展開×4 をそのまま踏襲
* **`int s = seed;`** を導入し，関数呼び出し時に 32bit → 64bit の符号拡張で渡すように

  * IR 上では `trunc i64 → i32` と `zext i32 → i64` が挿入される
* `cminix`, `cmaxix` を明示的に `=0` 初期化

```c
long temp_n = 0;
for (j = 0, seed = rand(); j < iterations; j += 4, seed += 52) {
    int s = seed;
    temp_n += pBitCntFunc[i](s);
    temp_n += pBitCntFunc[i](s + 13);
    temp_n += pBitCntFunc[i](s + 26);
    temp_n += pBitCntFunc[i](s + 39);
}
n = temp_n;
```

---

### 最適化 3：`bitcnts_3.c`&#x20;

* さらに **ループ展開×8**

  * `j += 8`，`seed += 104`（13×8）
* 8 回分のビット計算を一度に繰り返し呼び出し

```c
long temp_n = 0;
for (j = 0, seed = rand(); j < iterations; j += 8, seed += 104) {
    int s = seed;
    temp_n += pBitCntFunc[i](s);
    temp_n += pBitCntFunc[i](s + 13);
    temp_n += pBitCntFunc[i](s + 26);
    temp_n += pBitCntFunc[i](s + 39);
    temp_n += pBitCntFunc[i](s + 52);
    temp_n += pBitCntFunc[i](s + 65);
    temp_n += pBitCntFunc[i](s + 78);
    temp_n += pBitCntFunc[i](s + 91);
}
n = temp_n;
```


</details>

<details><summary>ll</summary>


## 1. LLVM IR の比較

### オリジナル IR (`bitcnts_base.ll`)

* `define i32 @bit_shifter(i64 %x)` の中で、

  * `while` ループを `%cmp = icmp ne i64 %x, 0` → `br i1 %cmp, label %loop, label %exit`
  * `%bit = and i64 %x, 1` → `add i32 %count, %bit` → `shr i64 %x, 1`
    と、基本ブロックが３〜４つに分かれる典型的な「条件分岐付きループ」。

### Iteration 1 IR (`bitcnts_1.ll`)

* `bit_shifter_unrolled` のような新関数が追加され、

  * `%x1 = and i64 %x, 1` 〜 `%x4 = and i64 %x_shr3, 1` を連続で実行 →
  * `add i32 %c, %x1` → `add i32 %c1, %x2` → …
    と、ブロック数は増えたもののループ回数は半減以下に。

### Iteration 2 IR (`bitcnts_2.ll`)

* `@btbl_bitcount` というグローバル定数配列が挿入され、

  * `%idx = trunc i64 %x to i8` →
  * `%val = getelementptr inbounds [256 x i8], [256 x i8]* @btbl_bitcount, i32 0, i8 %idx` →
  * `%load = load i8, i8* %val` → `zext i8 %load to i32` → `add`
    と、条件分岐が完全撤去。基本ブロックも１つだけ。

### Iteration 3 IR (`bitcnts_3.ll`)

* 関数 `@__builtin_popcount` もしくは `@llvm.ctpop.i32` を直接呼び、

  * `%pc = call i32 @llvm.ctpop.i64(i64 %x)`
    という単一命令に集約。
* ループも分岐も皆無。IR 行数はさらに短く、制御フローはほぼ直線。

---

### まとめ

1. **ビット単位ループ → アンローリング → テーブル → POPCNT** という３段階の最適化ステップを踏んでいる。
2. C レベルでは「関数ポインタ＋アンローリング」「テーブル参照」「ビルトイン呼び出し」の追加・置換。
3. LLVM IR レベルでは、分岐付きループ → 単純ループ → ブランチレステーブル → １命令へと漸次的に簡素化／短縮化。


</details>
