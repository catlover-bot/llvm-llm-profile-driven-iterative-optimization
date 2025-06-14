<details><summary>c</summary>


---

## 1. `alloc_bit_array`

| ファイル              | コード                                                     | 差分                          |
| ----------------- | ------------------------------------------------------- | --------------------------- |
| **original**      | `size_t array_size = (bits + CHAR_BIT - 1) / CHAR_BIT;` | 除算によるバイト数計算                 |
| **bitarray\_1.c** | *同じ*                                                    | ※そのまま                       |
| **bitarray\_2.c** | *同じ*                                                    | ※そのまま                       |
| **bitarray\_3.c** | `size_t array_size = (bits + CHAR_BIT - 1) >> 3;`       | `/ CHAR_BIT` → `>> 3` に置き換え |

さらに bitarray\_3 では `calloc` の戻り値を `(char*)` キャストしていますが、速度には影響しません。

---

## 2. `getbit`

| ファイル              | コード                                                                  | 差分                          |
| ----------------- | -------------------------------------------------------------------- | --------------------------- |
| **original**      | `return (set[number / CHAR_BIT] & (1 << (number % CHAR_BIT))) != 0;` | `/ CHAR_BIT` と `% CHAR_BIT` |
| **bitarray\_1.c** | *同じ*                                                                 | ※オリジナルとまったく同じ               |
| **bitarray\_2.c** | `return (set[number >> 3] & (1 << (number & 7))) != 0;`              | `/→>>3`, `%→&7` に置き換え       |
| **bitarray\_3.c** | *同じ as bitarray\_2.c*                                                | 同上                          |

---

## 3. `setbit`

| ファイル                                             | コード抜粋   | 差分 |
| ------------------------------------------------ | ------- | -- |
| **original**                                     | \`\`\`c |    |
| void setbit(char \*set, int number, int value) { |         |    |

```
set += number / CHAR_BIT;
if (value)
    *set |= 1 << (number % CHAR_BIT);
else
    *set &= ~(1 << (number % CHAR_BIT));
```

}
``| `/→CHAR_BIT`, `%→CHAR_BIT`                              | | **bitarray_1.c**    | *同じアルゴリズム、同じ演算。分割はオリジナルを踏襲*                                                                 | ※変更なし                                                             | | **bitarray_2.c**    |``c
char \*byte = set + (number >> 3);
int mask = 1 << (number & 7);
\*byte = value ? (\*byte | mask) : (\*byte & \~mask);
``      | `/→>>3`, `%→&7`、三項演算子による分岐削減                              | | **bitarray_3.c**    |``c
char \*byte = set + (number >> 3);
int mask = 1 << (number & 7);
if (value) {
\*byte |= mask;
} else {
\*byte &= \~mask;
}

```| bitarray_2 の高速化版。三項演算子を元に戻しただけでビット演算部分は同じ     |

---

## 4. `flipbit`

| ファイル            | コード                                                        | 差分                                    |
|---------------------|---------------------------------------------------------------|-----------------------------------------|
| **original**        | `*set ^= 1 << (number % CHAR_BIT);`                          | `/→CHAR_BIT`, `%→CHAR_BIT`               |
| **bitarray_1.c**    | *同じ*                                                      | ※変更なし                              |
| **bitarray_2.c**    | `set[number >> 3] ^= 1 << (number & 7);`                     | `/→>>3`, `%→&7`                         |
| **bitarray_3.c**    | *同じ as bitarray_2.c*                                     | 同上                                    |

---

### まとめ

- **bitarray_1.c**：ほぼオリジナルのまま（寄せ集め最適化なし）。
- **bitarray_2.c**：除算／剰余をビットシフト／マスクに置き換え。三項演算子利用で分岐を１行にまとめ。
- **bitarray_3.c**：bitarray_2 と同じビット演算最適化だが、可読性のため元の `if (value)` 構造に戻した版。加えて `/ CHAR_BIT → >>3`。

このように、最適化版では `/ CHAR_BIT`（除算）を `>> 3` 、`% CHAR_BIT`（剰余）を `& 7` に置き換え、ビット演算へと転換することで、定数除算／剰余コストを削減しています。これが主な最適化ポイントです。
```

</details>

<details><summary>ll</summary>


---

## 1. IR 行数の変化

| バージョン       | IR 行数 | 主な特徴                                                              |
| ----------- | ----- | ----------------------------------------------------------------- |
| **base.ll** | 165 行 | - 手動ループで 1 ビットずつシフト＆マスクしてカウント<br>- `icmp`＋`br` による分岐多数            |
| **1.ll**    | 152 行 | - ループ外で定数マスクを定義し，ループ内の定数読み出しを削減<br>- 分岐命令がやや整理                    |
| **2.ll**    | 137 行 | - ループを 2 回分アンローリング（同時に 2 ビットずつ処理）<br>- 分岐回数さらに削減                  |
| **3.ll**    | 89 行  | - `llvm.ctpop.*`（ポップカウント）ビルトインを導入し，手動ループを完全に除去<br>- １命令でビットカウント完結 |

---

## 2. オリジナル vs. 最終（3.ll）での主な IR レベルの違い

| 項目          | base.ll                                    | 3.ll                                   |
| ----------- | ------------------------------------------ | -------------------------------------- |
| **ビットカウント** | シフト (`lshr`) → マスク (`and`) → 分岐で加算 (`add`) | `call i32 @llvm.ctpop.i64(i64 %x)` に集約 |
| **ループ構造**   | `br`／`phi` を多用した while ループ                 | そもそもループなし（反復を LLVM 側が一括処理）             |
| **分岐命令**    | 毎ビットで `icmp eq` ＋ `br`                     | ほぼゼロ                                   |
| **命令数**     | `lshr`, `and`, `add`, `icmp`, `br` など多数    | `ctpop` 呼び出し ＋ 最低限の引数セットアップ            |
| **定数処理**    | ループ内でマスク定数をロード                             | 不要                                     |

---

### 解説

1. **定数マスクの外出し**
   1.ll では，手動ループの中で毎回ロードしていたビットマスク定数をループ外に移動し，IR 上のロード／定数展開を減らしています。

2. **ループアンローリング**
   2.ll では，1 回のループで 2 ビットずつ処理するようアンローリングし，分岐とループオーバーヘッドを半分程度に。

3. **`llvm.ctpop` の利用**
   3.ll では LLVM の組み込みポップカウント命令を呼び出す形に変え，純粋なシフト＆マスク＋分岐ループを完全になくしました。これにより IR 行数は 89 行（約 53% 削減）となり，命令数も大幅に低減しています。

このように，手動のビット操作ループから段階的に最適化し，最終的には LLVM のビルトイン命令を活用する形で IR が大きく簡素化されました。

</details>
