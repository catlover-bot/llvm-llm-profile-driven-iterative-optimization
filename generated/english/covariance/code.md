<details><summary>c</summary>

---

##  **元実装 `covariance.c`**

### ステージ：

1. 平均 `mean[j]` 計算
2. 中心化 `data[i][j] -= mean[j]`
3. 共分散行列計算 `cov[i][j] += data[k][i] * data[k][j]`

### 特徴：

*  並列化なし（逐次）
*  SIMDやベクトル化なし
*  明確なPolyBench構造（`#pragma scop`）
*  メモリ帯域最適化なし

---

##  `opt_1.c` の違い【OpenMP導入（粒度粗）】

*  各3段階で `#pragma omp parallel for` により並列化
*  スレッド間共有変数の制御なし（安全ではあるが最適でもない）
*  ループ間 `private()` 明示が不足（潜在的なレースの可能性）
*  メモリ局所性・キャッシュ最適化なし

>  **opt\_1 = 並列化導入はしたが、安全性や性能には不完全な実装**

---

##  `opt_2.c` の違い【OpenMPスコープ明示 + 粒度制御】

*  各ループに `private(i,j,k)` を適切に明示
*  `schedule(static)` で均等負荷分散を保証
*  `for(j = i; j < M)` 部の並列に注意している（対称行列更新あり）
*  精度と速度のバランスを考慮した実装

>  **opt\_2 = OpenMP並列化の粒度最適化版。明示的にスレッド安全設計を導入**

---

##  `opt_3.c` の違い【ベスト：並列化 + ループcollapse】

### 特徴：

*  `init_array()` ですら `#pragma omp parallel for` を導入
*  平均計算、中心化、共分散ループすべてを **完全OpenMP化**
*  共分散ループに `collapse(2)` → `(i, j)`の並列で更に高性能
*  `cov[i][j]` を計算後、即時 `cov[j][i] = cov[i][j]` で対称性確保
*  `mean[j]` はスレッドローカルで確保 → 正確性保証

>  **opt\_3 = 高粒度な並列化と共に、全工程において**最大限のスレッドスケーラビリティ\*\*を実現

---

##  比較表

| 最適化観点         | `base` | `opt_1` | `opt_2`             | `opt_3`                  |
| ------------- | ------ | ------- | ------------------- | ------------------------ |
| 並列化           | ❌      | ✅ 3段階   | ✅ + `private()`適切指定 | ✅ + `collapse(2)`        |
| スレッド安全性       | ✅      | ⚠️ 不完全  | ✅ 明示的               | ✅ 完全                     |
| メモリ帯域効率（局所性）  | ❌      | ❌       | ❌                   | ✅ `collapse`によりstride抑制  |
| 処理対象：中心化・内積演算 | ✅      | ✅       | ✅                   | ✅                        |
| 初期化関数への最適化導入  | ❌      | ❌       | ❌                   | ✅ `init_array`にもOpenMP導入 |

---

##  結論

* **opt\_1**：OpenMP導入は良いがスレッド安全性と効率性が欠如
* **opt\_2**：並列実行におけるスレッド管理が適切で安定性あり
* **opt\_3**：並列処理 + ループ粒度制御による最高度のスケーラビリティと性能達成

---

</details>

<details><summary>ll</summary>

---

##  **base.ll（非最適化構造）**

*  `__kmpc_*` 呼び出しなし → OpenMPなし
*  `!llvm.loop.vectorize.enable` メタなし
*  SIMD命令（`<N x float>`など）無し
*  三重ループ構造：

  * 平均：`mean[j] = Σ_i data[i][j]`
  * 中心化：`data[i][j] -= mean[j]`
  * 共分散：`cov[i][j] += data[k][i] * data[k][j]`

---

##  `opt_1.ll` の違い【OpenMP導入の構造化IR】

*  `__kmpc_fork_call`, `__kmpc_for_static_init` → OpenMP対応
* SIMD命令なし
*  `vectorize.enable` メタなし
*  各 `for` ループに並列分割された `omp_outlined` 関数あり
*  `fadd` / `fmul` はループ内逐次

>  **opt\_1.ll = OpenMP化されたが、SIMD化はされていない構造**

---

##  `opt_2.ll` の違い【OpenMP + 明示的private変数】

*  `kmpc_parallel_for` と `private(i, j, k)` を反映する変数スコープの分離あり
*  loopスケジューラが `schedule(static)` に基づく命名
*  SIMD命令、vector化メタ無し
*  `cov[i][j] = cov[j][i]` 更新あり（対称性考慮）
*  `fadd`, `fmul`, `store`明確化あり → 精度保持意識

>  **opt\_2.ll = より堅牢なOpenMP構造を備えたIR。だがベクトル化は未適用**

---

##  `opt_3.ll` の違い【OpenMP + collapse(2)対応 + 最適ループ構造】

*  `__kmpc_for_static_init_4` → `collapse(2)`相当の多次元スケジューリング確認可
*  `i`, `j`ループを同時にスレッドに割当 → スレッド粒度高
*  `cov[i][j]` 計算後に即 `cov[j][i] = cov[i][j]`（対称行列処理明示）
*  `load data[k][i]`, `load data[k][j]`, `fmul`, `fadd`, `store` 明確な構造
*  SIMD命令 / vector化メタは未挿入
*  `mean` 計算と `data` 中心化ループにも OpenMP 適用あり

>  **opt\_3.ll = 多次元並列ループによる高並列IR構造。ベクトル化以外は極めて高性能志向**

---

##  比較表（LLVM IR）

| 特徴                           | base.ll | opt\_1.ll      | opt\_2.ll              | opt\_3.ll            |
| ---------------------------- | ------- | -------------- | ---------------------- | -------------------- |
| OpenMP 並列                    | ❌       | ✅ `__kmpc_*`あり | ✅ `parallel + private` | ✅ `collapse(2)`構造も含む |
| SIMD命令（`<4 x float>` 等）      | ❌       | ❌              | ❌                      | ❌                    |
| ベクトル化メタ (`vectorize.*`)      | ❌       | ❌              | ❌                      | ❌                    |
| `cov[j][i] = cov[i][j]` 対称処理 | ❌       | ❌              | ✅                      | ✅                    |
| ループ統合（collapse, 2D並列）        | ❌       | ❌              | ❌                      | ✅                    |
| `init_array()` にもOpenMP導入    | ❌       | ❌              | ❌                      | ✅                    |

---

##  結論

* **opt\_1.ll**：OpenMP導入されたが粒度粗く、SIMD非対応
* **opt\_2.ll**：スレッドスコープを適切に指定し、より堅牢な並列IR構造
* **opt\_3.ll**：最高度に最適化されたIR：多次元ループ並列+対称処理+ループ整理

---

</details>
