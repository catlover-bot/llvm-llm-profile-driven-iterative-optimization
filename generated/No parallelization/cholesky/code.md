<details><summary>c</summary>

以下に、オリジナルの **cholesky.c** と３つの最適化版（**opt1**, **opt2**, **opt3**）の主な相違点をまとめます。コードの該当箇所にはファイル参照を付しています。

| 比較項目                             | cholesky.c                      | opt1 (cholesky\_opt\_1.c)        | opt2 (cholesky\_opt\_2.c) | opt3 (cholesky\_opt\_3.c)     |
| -------------------------------- | ------------------------------- | -------------------------------- | ------------------------- | ----------------------------- |
| **B の領域確保**                      | `POLYBENCH_2D_ARRAY_DECL(B,…)`  | 同左                               | 同左                        | `DATA_TYPE B[N][N];` （スタック上）  |
| **B の初期化（ゼロクリア）**                | 二重ループで `B[r][s]=0`              | 同左                               | `memset(B,0,…)` で一括クリア    | 二重ループで `B[r][s]=0`            |
| **A→B の累積計算におけるロードのホイスティング**     | ループ内で毎回 `A[r][t]*A[s][t]`       | `DATA_TYPE Ar_t = A[r][t];` を導入  | 同左                        | 同左                            |
| **B→A の書き戻し**                    | 二重ループで `A[r][s] = B[r][s]`      | 同左                               | `memcpy(A,B,…)` で一括コピー    | 二重ループで `A[r][s] = B[r][s]`    |
| **オフダイアゴナル計算（kernel\_cholesky）** |                                 |                                  |                           |                               |

````c
A[i][j] -= A[i][k]*A[j][k]; // k++  
A[i][j] /= A[j][j];
``` :contentReference[oaicite:15]{index=15} |  
```c
DATA_TYPE sum = A[i][j];
for(k=0;k<j;k++) sum -= A[i][k]*A[j][k];
A[i][j] = sum/A[j][j];
``` :contentReference[oaicite:16]{index=16} |  
```c
DATA_TYPE sum = A[i][j];
for(k=0;k<j;k+=4) {
  sum -= A[i][k]*A[j][k];
  if(k+1<j) sum -= …; … 
}
A[i][j] = sum/A[j][j];
``` :contentReference[oaicite:17]{index=17} |  
```c
（opt2 と同一のアンローリング実装）  
``` :contentReference[oaicite:18]{index=18}                                             |
| **ダイアゴナル計算（kernel_cholesky）** |  
```c
for(k=0;k<i;k++) A[i][i] -= A[i][k]*A[i][k];
A[i][i] = SQRT_FUN(A[i][i]);
``` :contentReference[oaicite:19]{index=19} |  
```c
DATA_TYPE sum = A[i][i];
for(k=0;k<i;k++) sum -= A[i][k]*A[i][k];
A[i][i] = SQRT_FUN(sum);
``` :contentReference[oaicite:20]{index=20} |  
```c
DATA_TYPE sum = A[i][i];
for(k=0;k<i;k+=4) {
  sum -= A[i][k]*A[i][k];
  if(k+1<i) sum -= …; …
}
A[i][i] = SQRT_FUN(sum);
``` :contentReference[oaicite:21]{index=21} |  
```c
（opt2 と同一のアンローリング実装）  
``` :contentReference[oaicite:22]{index=22}                                             |

---

### 要点まとめ

1. **メモリ初期化の最適化**  
   - **opt2** では `memset`／`memcpy` を使い大量データのクリアとコピーをライブラリ呼び出しで一括化 :contentReference[oaicite:23]{index=23}。  
   - **opt3** は VLA（`DATA_TYPE B[N][N]`）を活用しつつ、クリアとコピーをループで保持。  

2. **乗算・加算のホイスティング**  
   - **opt1/opt2/opt3** 全版で、`A[r][t]` の読み出しをループ外に hoist し、メモリアクセスを削減 。

3. **ローカル変数 `sum` の導入**  
   - **opt1** 以降は、一時変数 `sum` に累積後まとめて書き戻すことでメモリアクセスを低減 :contentReference[oaicite:25]{index=25}。

4. **ループアンローリング**  
   - **opt2/opt3** は内側ループを 4 単位でアンローリングし、分岐ガードをインライン化することでループオーバーヘッドを大幅削減 。  
   - **opt1** はまだアンローリングせず、単純に `sum` を導入したのみ。

これらの改良により、特に大サイズ行列を扱う際に「メモリアクセス回数の削減」「ループ分岐コストの低減」「レジスタ再利用の向上」が期待できます。
````

</details>

<details><summary>ll</summary>


</details>
