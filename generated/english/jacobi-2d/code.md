<details><summary>c</summary>

---

## 1. ベース (`jacobi-2d.c`) vs `opt_1`

###  共通点：

* PolyBench の `#pragma scop` 指定あり → **ポリヒューリスティック最適化対象**
* ループ構造：`for (j = 1; j < _PB_N - 1; j++)` → **スカラーループ**
* 双方向ステンシル：中心と周囲4要素の加重平均（5点）

###  違いなし：

* `opt_1` は単なる**ベースコピー**で、変形も並列化もなし。

---

## 2. `opt_2`: **ループ合体＋2ループ内インターリーブ**

###  違い：

* `for (j += 2)` → **インデックス2刻み**（ループ展開風）
* `if (j+1 < ...)` 条件 → **ペア演算で2ループ内処理を1ループに集約**
* `#pragma scop` のまま → **ポリヒューリスティック最適化維持**

###  効果：

* **キャッシュ局所性向上**：連続した `j` の隣接データを同一ループで更新
* **ベクトル化しやすい構造へ変換**（`j` に依存のない形）



---

## 3. `opt_3`: **OpenMP 並列化＋opt\_2の構造**

###  違い：

* `#pragma omp parallel` により**マルチスレッド並列**
* `#pragma omp for schedule(static)` による**ループ分散**
* `j += 2` のペア演算形式は `opt_2` と同一 → **SIMD最適化継承**

###  効果：

* **CPUコア全体を活用する並列化**
* `opt_2` のベクトル化＋`opt_3` のスレッド並列化 → **ハイブリッド高速化**



---

##  最終まとめ（比較マトリクス）

| 特徴                       | base / opt\_1 | opt\_2 | opt\_3                   |
| ------------------------ | ------------- | ------ | ------------------------ |
| OpenMP 並列                | ❌             | ❌      | ✅ `#pragma omp parallel` |
| ループ分割 (j+=2)             | ❌             | ✅      | ✅                        |
| `j` 連続演算のペア化             | ❌             | ✅      | ✅                        |
| PolyBench `#pragma scop` | ✅             | ✅      | ❌ (明示的にはなし)              |
| 実行速度期待値                  | 🐢            | 🐇     | 🐇💨 (最高速)               |

---

</details>

<details><summary>ll</summary>

---

###  比較対象：

* `jacobi-2d_opt_base.ll`（素直な逐次構文）
* `opt_1.ll`（baseと同一）
* `opt_2.ll`（ループ分割＋インターリーブ）
* `opt_3.ll`（OpenMP並列化＋opt\_2構造）

---

##  IR上の違いハイライト

###  `opt_base.ll` ＆ `opt_1.ll`

*  `!llvm.loop.vectorize.enable` → **SIMD不可**
*  `__kmpc_fork_call` など OpenMP関数呼び出しなし
*  `load`, `store` 命令がスカラー配列アクセスに直結
*  単一ループ構造で完全逐次処理

>  **何も最適化されていない状態**をIR上でも確認できる。

---

###  `opt_2.ll`

*  `!llvm.loop.vectorize.enable = true` → **明示的ベクトル化許可**
*  `!llvm.loop.interleave.count = 4` → **ループ間の命令再配置を許容**
*  IR内で `load %a[i][j]` → `%tmp1`, `%tmp2`, `%sum` → `store`
  → **中間レジスタ展開あり** → SIMD展開に最適
*  OpenMP関連IRは未挿入

>  IRでは**演算再配置＋ループ展開指示**が出ている
> → `clang -O3` や `polly` のベクトル化が最も効果的な構造

---

###  `opt_3.ll`

*  `__kmpc_fork_call` 登場 → **OpenMPスレッド起動**
*  `omp.outlined.*` 関数 → 各スレッドで実行される `for` を分離
*  `!llvm.loop.vectorize.enable = true` 維持 → **スレッド内でもSIMD可**
*  IR上で `collapse(2)` 相当ループが `preheader -> body -> latch` 分解済

>  **IRでもスレッド展開 + ベクトル展開構造が融合済み！**

---

##  IR比較マトリクス

| 特性                      | base.ll | opt\_1.ll | opt\_2.ll | opt\_3.ll |
| ----------------------- | ------- | --------- | --------- | --------- |
| OpenMP構文 (`__kmpc_*`)   | ❌       | ❌         | ❌         | ✅         |
| ループベクトル化ヒント             | ❌       | ❌         | ✅         | ✅         |
| Interleave（命令再配置）       | ❌       | ❌         | ✅         | ✅         |
| 中間変数展開 (`%tmp`, `%sum`) | ❌       | ❌         | ✅         | ✅         |
| `omp.outlined` 関数構成     | ❌       | ❌         | ❌         | ✅         |

---

##  結論

*  `opt_2.ll` → **単体SIMD最適化用**
*  `opt_3.ll` → **スレッド + SIMDのハイブリッドIR構成**
*  `base` / `opt_1` → 最適化を一切含まないリファレンス構造

---

</details>
