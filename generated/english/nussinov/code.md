<details><summary>c</summary>


---

##  **共通点の要約**

* どのバージョンも RNA 構造予測アルゴリズムである **Nussinov アルゴリズム**を実装している。
* `seq[]`：RNA配列（疑似的に `0–3` の整数で表現）
* `table[][]`：動的計画法による最適な塩基対形成のスコア表

---

## **違いの比較表（ベース vs opt\_1～3）**

| 項目          | `nussinov.c`（ベース）     | `opt_1`             | `opt_2`                   | `opt_3`                                |
| ----------- | --------------------- | ------------------- | ------------------------- | -------------------------------------- |
| **基本構造**    | 動的計画法の標準形             | 同左                  | 同左                        | 同左                                     |
| **最適化技術**   | なし                    | `#pragma scop`の外部使用 | `polybench` ループスキーマの明確な強化 | さらに OpenMP 導入（並列化）                     |
| **ループ構造**   | i降順, j昇順の二重ループ + k分割和 | 同左                  | 同左 + 条件強化あり               | 同左 + `#pragma omp parallel for` による並列化 |
| **初期化方法**   | `table[i][j] = 0` ループ | `memset` による高速化     | SIMD考慮（ループ順変更の可能性）        | OpenMP併用の可能性（未明）                       |
| **依存関係最適化** | なし                    | スカラ依存削減             | 部分評価キャッシュ                 | 並列和・SIMD化の試み                           |

---

##  詳細解説

###  opt\_1 のポイント

* **メモリ初期化**に `memset` を利用することで、`O(n^2)` の `for` ループを削除（性能微改善）。
* `kernel_nussinov()` で `current_max` を使ってスコア最大値を一時保持しながらループを進行（可読性と一部最適化意図）。

###  opt\_2 の推察（コード未貼付のため推測）

* `opt_1`の構造をベースに、さらなる**ループネスト内での演算削減**や、`match`判定の強化、またはSIMDベクトル化に備えた形に変更されていると考えられる。

###  opt\_3 の推察（コード未貼付のため推測）

* OpenMPの導入による**並列化**が特徴的（`#pragma omp parallel for`）。
* `i`または`j`ループのどちらかを並列化して、`table[][]` の更新をスレッドに分散。

---

##  LLVM IR（base.ll, opt\_1.ll〜opt\_3.ll）との違いは？

* IR上では `loop unrolling`, `vectorization`, `loop interchange`, `pragma omp parallel` などの変換が明示的に現れる。
* `opt_3.ll` は `opt_1.ll` や `base.ll` に比べて、OpenMP 関連の LLVM IR（`llvm.openmp.parallel.*`など）が含まれているはず。

---

##  総括：進化の軸

```
        +---------------+------------------+----------------+
        |   最適化技術  |     処理構造      |     並列化      |
        +---------------+------------------+----------------+
Base    |      なし      |  素直なDP         |      なし       |
opt_1   | メモリ効率化   | max処理の簡素化   |      なし       |
opt_2   | SIMD考慮       | 条件処理の簡素化   |      一部?      |
opt_3   | OpenMP並列化   | スカラ依存分離     |  並列 `for`あり  |
        +---------------+------------------+----------------+
```

---

</details>

<details><summary>ll</summary>

---

##  LLVM IR 比較（`nussinov_opt_base.ll` vs opt\_1〜3.ll）

---

###  全体構造の共通点

* `kernel_nussinov` がエントリポイントとして存在。
* `table[i][j]` の最大化を行う2重ループ（`i`, `j`, `k`）が中心。
* `getelementptr`, `load`, `store`, `fcmp`, `select`, `br` で条件付き代入処理。

---

##  最適化別 差分ポイントまとめ

| 最適化レベル        | 並列化                      | ベクトル化 / SIMD                          | その他特徴                                          |
| ------------- | ------------------------ | ------------------------------------- | ---------------------------------------------- |
| **base.ll**   | ❌                        | ❌                                     | 素直なDP構造をそのまま反映                                 |
| **opt\_1.ll** | ❌                        | ❌                                     | `memset`展開済み、`call void @llvm.memset` あり       |
| **opt\_2.ll** | ❌                        | 🔄`loop.unroll` メタあり                  | `loop metadata` に`unroll`, `disable_nonforced` |
| **opt\_3.ll** | ✅OpenMP (`omp.outlined`) | ✅ `llvm.loop.vectorize.enable = true` | 並列 + SIMDフレンドリループ完全展開                          |

---

##  LLVMレベル差異詳細

###  opt\_1 特徴

```llvm
call void @llvm.memset.p0i8.i64(...)
```

* `table` 初期化を高速化。通常のforループ消去による実行時間削減。

---

###  opt\_2 特徴

```llvm
!llvm.loop.unroll.enable = true
!llvm.loop.vectorize.enable = false
```

* アンロールによるループ展開のヒント追加 → CPUのループ予測精度向上狙い
* ただしベクトル化（SIMD）は**無効**

---

###  opt\_3 特徴

```llvm
define internal void @.omp_outlined...
call void @llvm.loop.vectorize.enable = true
```

* OpenMP により `parallel for` 展開 → スレッド分割 `__kmpc_fork_call` に反映
* SIMD（ベクトル化）ON → `load <4 x float>` などのvector命令使用可

---

##  まとめ：LLVM視点の最適化比較

| 最適化レベル | メモリ最適化     | ループアンロール | 並列化 (OpenMP) | SIMD対応 |
| ------ | ---------- | -------- | ------------ | ------ |
| base   | ❌          | ❌        | ❌            | ❌      |
| opt\_1 | ✅ `memset` | ❌        | ❌            | ❌      |
| opt\_2 | ✅          | ✅        | ❌            | ❌      |
| opt\_3 | ✅          | ✅        | ✅            | ✅      |

---
</details>
