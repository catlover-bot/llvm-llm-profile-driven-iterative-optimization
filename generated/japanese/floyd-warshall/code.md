<details><summary>c</summary>


---

##  **ベースライン: `floyd-warshall.c`**

*  3重ループ：外側 `k`、中 `i`、内 `j`
* 更新式：`path[i][j] = min(path[i][j], path[i][k] + path[k][j])`
*  並列化なし
*  SIMD/vector 化なし
*  `#pragma scop` による PolyBench 対応あり

---

##  `opt_1.c` の違い【OpenMP 並列化のみ】

*  `#pragma omp parallel for private(j)` → `i` ループに並列化導入
*  `path_i = path[i]`, `path_k = path[k]` のポインタ化でアクセス高速化
*  SIMD/vector 指示なし
*  `ivdep` などの依存除去ヒントなし

>  **opt\_1** = 並列化のみ導入した**マルチスレッド版の入門形**

---

##  `opt_2.c` の違い【並列 + SIMD + ベクトル強制】

*  `#pragma omp parallel for private(i, j)`
*  ループ内に `#pragma ivdep` + `#pragma vector always`
  → LLVM/GCC にベクトル化を**強制**
*  アクセス効率：`path_i = path[i]`, `path_k = path[k]`
*  条件式同等：`if (path_i[j] > path_i[k] + path_k[j])`

>  **opt\_2** = 並列 + ベクトル命令誘導 による**CPU SIMD命令対応を狙う中間形**

---

##  `opt_3.c` の違い【並列 + SIMD + vector aligned】

*  `#pragma omp parallel for simd private(i, j)`
  → OpenMP SIMD clause を導入し、ベクトル化を明示化
*  `#pragma vector aligned` → アクセス整列保証による高速化
*  `new_path = path_i[k] + path_k[j]` を先に代入し、比較・更新に使う構造へ変形（コンパイラ最適化誘導）
*  `const` + `DATA_TYPE*` で再利用効率化

>  **opt\_3** = 並列 + ベクトル + アライメント明示の**最終最適化形**

---

##  比較まとめ表

| 特徴                         | `base` | `opt_1` | `opt_2`                    | `opt_3`                    |
| -------------------------- | ------ | ------- | -------------------------- | -------------------------- |
| OpenMP 並列化 (`i` loop)      | ❌      | ✅       | ✅                          | ✅                          |
| SIMD 指示 (`simd`, `vector`) | ❌      | ❌       | ✅ `vector always`, `ivdep` | ✅ `simd`, `vector aligned` |
| メモリ整列ヒント (`aligned`)       | ❌      | ❌       | ❌                          | ✅                          |
| 演算式分離 (`new_path` 利用)      | ❌      | ❌       | ❌                          | ✅                          |
| ポインタキャッシュ (`path_i/k`)     | ❌      | ✅       | ✅                          | ✅                          |

---

##  結論

* **opt\_1**：並列実行導入によるマルチスレッド実行対応（基本改善）
* **opt\_2**：SIMDベクトル命令の適用誘導によるデータ並列性強化
* **opt\_3**：並列 + SIMD + 整列ヒント + 式再構成による **最大限のコンパイラ最適化誘導**

---

</details>

<details><summary>ll</summary>

---

##  **base.ll（非最適化）特徴**

*  OpenMP 呼び出しなし → 単一スレッド構造
*  メタデータ（`!llvm.loop.vectorize`, `unroll`）なし
*  単純な3重ループ構造：`for k, i, j`
* `path[i][j] = min(path[i][j], path[i][k] + path[k][j])` をスカラー命令で実行
* LLVM 命令：`load`, `fadd`, `fcmp`, `select`, `store` のみ

---

##  `opt_1.ll` の違い【OpenMP並列化（iループ）】

*  `__kmpc_fork_call`, `__kmpc_for_static_init` による OpenMP 並列化あり
*  `@.omp_outlined.*` 関数に `i` ループを分割 → `i` 単位でマルチスレッド化
*  `!llvm.loop.vectorize.*` メタデータなし → ベクトル化未適用
*  SIMD命令無し（スカラー `fadd`, `select`）

>  **opt\_1.ll** = 並列実行のみ導入された**マルチスレッドベースのIR**

---

##  `opt_2.ll` の違い【並列化 + SIMD指示】

*  `__kmpc_*` による OpenMP 並列化は `opt_1.ll` と同様
*  `!llvm.loop.vectorize.enable = true` メタデータが `j` ループに追加
*  条件式 (`fcmp`, `select`) に関しても `vectorize.predicated` により SIMD展開可能
*  `load <4 x float>`, `fadd <4 x float>`, `fcmp <4 x float>` 等の命令が IRに登場（環境により幅変動）

>  **opt\_2.ll** = LLVM による **自動ベクトル化を強制的に誘導**する構成

---

##  `opt_3.ll` の違い【SIMD最大化 + 整列アクセス最適化】

*  OpenMP 並列構造と `vectorize.enable` を継承
*  `vectorize.width = 4` や `unroll.count = 4` など、**明示的な制御メタデータ**
*  ベクトル命令の展開率向上：`fcmp`, `fadd`, `select` に `<4 x float>` を多用
*  `load aligned` アクセス or `llvm.memcpy` により**メモリアクセス効率をさらに向上**

>  **opt\_3.ll** = 並列化 + 明示的ベクトル幅 + メモリ整列の全最適化構成 → **最高効率実装IR**

---

##  差分比較まとめ表

| 特徴                     | base.ll | opt\_1.ll | opt\_2.ll                        | opt\_3.ll                             |
| ---------------------- | ------- | --------- | -------------------------------- | ------------------------------------- |
| OpenMP 並列処理            | ❌       | ✅         | ✅                                | ✅                                     |
| ベクトル化メタ                | ❌       | ❌         | ✅ `vectorize.enable = true`      | ✅ + `vectorize.width`, `unroll.count` |
| SIMD命令 (`<N x float>`) | ❌       | ❌         | ✅ `fadd`, `fcmp`, `select` SIMD化 | ✅ より多くのSIMD命令 + 整列load/store          |
| ループアウトライン化             | ❌       | ✅         | ✅                                | ✅                                     |
| メモリアクセス高速化             | ❌       | ❌         | 一部ベクトル化による効率化                    | ✅ `load aligned` / `memcpy` 使用の可能性    |

---

##  結論

* **opt\_1.ll**：マルチスレッド化（OpenMP）だけ導入した基礎構造
* **opt\_2.ll**：OpenMP + ベクトル化メタ追加による**自動SIMD適用を誘導**
* **opt\_3.ll**：ベクトル幅・アンローリング・整列ロードまで手が届いた**LLVM最適化最大活用版**

---

</details>
