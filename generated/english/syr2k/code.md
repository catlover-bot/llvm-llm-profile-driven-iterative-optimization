<details><summary>c</summary>

---

##  目的：

**`C = βC + αABᵗ + αBAᵗ` を高速に計算**するための最適化技法の比較。

---

##  各バージョンの違い（概要）

| バージョン      | 並列化           | SIMD最適化              | 冗長計算削減                 | コメント                    |
| ---------- | ------------- | -------------------- | ---------------------- | ----------------------- |
| **base**   | ❌             | ❌                    | ❌                      | 教科書的実装                  |
| **opt\_1** | ✅ OpenMP      | ❌                    | ✅ `temp1/temp2`による演算削減 | 並列化＋演算共通化               |
| **opt\_2** | ✅（静的スケジューリング） | ❌                    | ✅                      | opt\_1と同等、ループスケジューリング明示 |
| **opt\_3** | ✅ OpenMP      | ✅ `#pragma omp simd` | ✅                      | SIMD活用によりvector演算化、最速候補 |

---

##  最適化技術の詳細

###  1. 冗長な演算の削減（opt\_1以降共通）

```c
DATA_TYPE temp1 = alpha * B[i][k];
DATA_TYPE temp2 = alpha * A[i][k];
for (int j = 0; j <= i; j++) {
    C[i][j] += A[j][k] * temp1 + B[j][k] * temp2;
}
```

>  同じ演算をループ内で何度も行わず、一度変数に保存して使いまわすことでパフォーマンス向上。

---

###  2. 並列化（OpenMP）

* `opt_1`〜`opt_3` すべてで `#pragma omp parallel for` による並列化を導入。
* `opt_2` は `schedule(static)` を明示。

---

###  3. SIMD最適化（opt\_3のみ）

```c
#pragma omp simd
for (int j = 0; j <= i; j++) {
    C[i][j] += A[j][k] * temp1 + B[j][k] * temp2;
}
```

>  CPUのベクトル命令（AVXなど）を活用し、ループ内の処理を一括並列実行 → **最大のスループット**

---

##  結論（総まとめ）

| 評価軸      | base | opt\_1 | opt\_2 | opt\_3    |
| -------- | ---- | ------ | ------ | --------- |
| 実装の単純さ   | ⭐⭐⭐  | ⭐⭐     | ⭐⭐     | ⭐         |
| 実行性能     | ⭐    | ⭐⭐⭐    | ⭐⭐⭐    | ⭐⭐⭐⭐（最高）  |
| モダンCPU対応 | ❌    | 部分的    | 部分的    | ✅（SIMD対応） |

 **opt\_3は最も高速かつハードウェア性能を引き出す実装。**

---

</details>

<details><summary>ll</summary>

---

##  比較対象と概要

| ファイル名           | 主な最適化内容                                |
| --------------- | -------------------------------------- |
| `syr2k.c`       | ベースライン（最適化なし）                          |
| `syr2k_opt_1.c` | OpenMP並列化 (`private`, `schedule`) 指定あり |
| `syr2k_opt_2.c` | より簡潔なOpenMP並列化 (`private`除去)           |
| `syr2k_opt_3.c` | OpenMP + SIMDによるループベクトル化               |

---

##  各バージョンの相違点詳細

###  `syr2k.ll`（オリジナル）

* `#pragma scop` によって Polybench のスコープを明示
* シングルスレッド
* `C[i][j] += A[j][k]*alpha*B[i][k] + B[j][k]*alpha*A[i][k];` ← α計算をループ内で都度

---

###  `opt_1.ll`

* `#pragma omp parallel for private(j, k) schedule(static)`：OpenMP並列化でマルチスレッド化
* `alpha * B[i][k]` や `alpha * A[i][k]` を一時変数に分けてループ外で計算

  ```c
  DATA_TYPE temp1 = alpha * B[i][k];
  DATA_TYPE temp2 = alpha * A[i][k];
  ```
* 並列処理の粒度を明示的に制御（`private`, `schedule(static)`）

---

###  `opt_2.ll`

* さらに簡素化：`private(j, k)` を除去し、ループ変数をデフォルトスコープで並列化
* `temp1`, `temp2`の利用は`opt_1`と同様
* コンパイラの最適化に任せた設計（OpenMPの管理をより軽量化）

---

###  `opt_3.ll`

* `opt_2.ll` に加えて以下を追加：

  ```c
  #pragma omp simd
  ```

  SIMD命令を使って内部ループのベクトル化を実現し、データレベル並列性を活用
* `C[i][j] += ...` 部分がSIMD命令で高速化されることを狙っている
* SIMDによるループの高速化に加え、OpenMPのスレッドレベル並列も維持

---

##  最終まとめ

| バージョン     | 並列化      | SIMD   | α演算の分離 | 備考              |
| --------- | -------- | ------ | ------ | --------------- |
| `syr2k.ll` | なし       | なし     | なし     | ベースライン          |
| `opt_1.ll` | OpenMPあり | なし     | あり     | 厳格な並列スケジューリング   |
| `opt_2.ll` | OpenMP簡略 | なし     | あり     | 簡素なOpenMP並列     |
| `opt_3.ll` | OpenMPあり | SIMDあり | あり     | データ+スレッド並列の最適化版 |

---


* `opt_1`：**OpenMPで高速化**
* `opt_2`：**OpenMPを軽くして最適化支援**
* `opt_3`：**OpenMP + SIMD でマルチレベル高速化**


</details>
