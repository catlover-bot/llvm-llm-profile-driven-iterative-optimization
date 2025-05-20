<details><summary>c</summary>

---

##  元コード：`gesummv.c`【逐次版】

### 構造

```c
for (i) {
  tmp[i] = 0.0;
  y[i] = 0.0;
  for (j)
    tmp[i] += A[i][j] * x[j];
    y[i] += B[i][j] * x[j];
  y[i] = alpha * tmp[i] + beta * y[i];
}
```

*  並列化なし（OpenMP非使用）
*  SIMDやloop unrollなし
*  可読性高だがスカラー命令主体で低効率

---

##  `opt_1.c`【OpenMP導入】

```c
#pragma omp parallel for private(j)
for (i)
  tmp_i = y_i = 0;
  for (j)
    tmp_i += A[i][j] * x[j];
    y_i   += B[i][j] * x[j];
  y[i] = alpha * tmp_i + beta * y_i;
```

*  `#pragma omp parallel for` により**スレッド並列化**
*  スカラ一時変数 `tmp_i`, `y_i` を導入（レジスタ保持向け）
*  SIMD命令化（`simd`, `aligned`）は未使用

>  スレッド並列化が主な最適化。まだCPUキャッシュ利用やSIMDには未着手【軽量チューニング】

---

##  `opt_2.c`【OpenMP + SIMD】

```c
#pragma omp simd reduction(+:tmp_i,y_i)
for (j)
  tmp_i += A[i][j] * x[j];
  y_i   += B[i][j] * x[j];
```

*  OpenMP並列は継続
*  **SIMD化指示あり** → コンパイラが`j`ループをベクトル化可能
*  アラインメント・手動ループ展開は無し
*  一時変数 `xj` を使わず同じ `x[j]` を2回アクセス

>  SIMD化されたが、**ループ内読み出し最適化**までは踏み込まず
> → `x[j]` 2回読みが残るのが惜しい

---

##  `opt_3.c`【OpenMP + SIMD + アラインメント最適化】

```c
#pragma omp simd aligned(A, B, x: 32) reduction(+:tmp_i,y_i)
for (j)
  DATA_TYPE xj = x[j];
  tmp_i += A[i][j] * xj;
  y_i   += B[i][j] * xj;
```

*  `#pragma omp parallel for schedule(static)` によるスレッド分散
*  `#pragma omp simd aligned(...:32)` → **AVX対応コンパイラでベクトル化促進**
*  `x[j]` → `xj` にキャッシュ → **キャッシュヒット率向上 & スカラー依存削減**
*  全ループ構造が並列 + ベクトル化適応状態

>  完全なハードウェアアクセラレーション前提の高最適化構造
> **opt\_3 = ベクトルレジスタ利用最適化 + CPUキャッシュ効率最大化**

---

##  最適化まとめ

| 比較項目        | `gesummv.c` | `opt_1`     | `opt_2`           | `opt_3`                    |
| ----------- | ----------- | ----------- | ----------------- | -------------------------- |
| 並列化（OpenMP） | ❌           | ✅           | ✅                 | ✅                          |
| SIMD指示      | ❌           | ❌           | ✅ (`simd`)        | ✅ (`simd aligned(...:32)`) |
| メモリアクセス削減   | ❌           | ✅ (`tmp_i`) | 部分的 (`x[j]` 2回)   | ✅ (`xj`使用で1回参照)            |
| コンパイラ最適化誘導  | ❌           | 一部          | 中程度 (`reduction`) | ✅（アラインメント＋レジスタ）            |

---

##  結論：**opt\_3 最強**

* **並列性・ベクトル化・キャッシュ効率**の三拍子が揃っている。
* `opt_2` も有望だが、`opt_3` の `x[j]` → `xj` のリファクタで、**余計なメモリアクセスを1/2に削減**

---

</details>

<details><summary>ll</summary>

---

##  `gesummv_opt_base.ll`

*  `__kmpc_*` 呼び出しなし → OpenMP無し
*  SIMDベクトル命令無し（スカラー `fmul`, `fadd` のみ）
*  vectorize metadata も無し → LLVM最適化パス非対応
*  全ての操作が素朴なスカラーIRとして構成

>  **IRレベルでは「逐次処理オンリー」の構成**

---

##  `opt_1.ll`

*  `__kmpc_fork_call`, `__kmpc_for_static_init` など OpenMP runtime 関数あり
  → **並列ループ化成功**
*  SIMD命令（例：`<4 x float>`）無し
*  `!llvm.loop.vectorize.enable` メタ無し

>  **並列ループ構造化されているが、LLVMベクトル化未誘導**

---

##  `opt_2.ll`

*  OpenMP構造 (`kmpc_*`, `omp.outlined.*`) あり
*  `!llvm.loop.vectorize.enable = true` メタ追加済
*  ただし **ベクトル命令自体は未展開**
*  `x[j]` が重複アクセスしているため、明示的に `load` が2回

>  ベクトル化を意識した IR に進化。しかしまだ load/store の展開はスカラレベル

---

##  `opt_3.ll`

*  OpenMP構造あり
*  `!llvm.loop.vectorize.*` に加えて **`interleave.count`, `vectorize.width`** など高レベル最適化ヒント付き
*  `load` 命令に `align 32`, `nontemporal` 属性追加 → AVX・キャッシュ効率重視
*  `x[j]` → `xj` のように `load` を1回に抑えて `fmul` に再利用
*  依然として明示的な SIMD `<4 x float>` 展開はなし（LLVM未走行か `-O3` 非使用）

>  **opt\_3 = 最適なIR状態（AVX展開直前）**
> LLVMのオプティマイザが `opt_3.ll` を入力とすればベクトル命令 (`vfmadd`, `addps`) に変換可能！

---

##  IR比較まとめ

| 項目                          | base.ll | opt\_1.ll | opt\_2.ll | opt\_3.ll       |
| --------------------------- | ------- | --------- | --------- | --------------- |
| OpenMP Runtime (`__kmpc_*`) | ❌       | ✅         | ✅         | ✅               |
| `omp.outlined.*` 関数         | ❌       | ✅         | ✅         | ✅               |
| `vectorize.enable` メタ       | ❌       | ❌         | ✅         | ✅               |
| vector命令 (`<N x float>`)    | ❌       | ❌         | ❌         | ❌（メタとヒントは揃ってる）  |
| `align 32`, `nontemporal`   | ❌       | ❌         | ❌         | ✅               |
| ループ内 `x[j]` の再利用最適化         | ❌       | ❌         | ❌         | ✅（`xj` でレジスタ展開） |

---

##  総括

* **opt\_1.ll**：並列ループIRへの初歩的変換
* **opt\_2.ll**：SIMDメタ追加でベクトル化可能な形状
* **opt\_3.ll**：LLVM最適化パスに全対応する構造。ベクトル展開される直前段階。


---

</details>
