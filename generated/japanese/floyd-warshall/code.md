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
