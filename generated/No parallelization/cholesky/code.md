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

以下では、オリジナルの LLVM IR（`base.ll`）と、アンローリング＋メタデータ付きの最適化版（`opt3.ll`）の差異をピックアップして比較します。

| 比較項目                  | base.ll                    | opt3.ll                                                |
| --------------------- | -------------------------- | ------------------------------------------------------ |
| **ループインクリメント**        | `k = k + 1`                | `k = k + 4`                                            |
| **アンローリング**           | なし                         | 4 反復分の `fmul`＋`fsub` 命令が同一 BasicBlock 内に直列化            |
| **残余ガード**             | ループ条件判断のみ（`icmp ult k, j`） | 各アンローリングステップに `icmp ult k+1<j`, `k+2<j`… の分岐が挿入        |
| **累積用ローカル変数**         | なし（直接 `A[i][j]` を更新）       | `sum` を導入し、最後に一度だけ `store sum → A[i][j]`               |
| **ストア命令（`store`）**    | 各反復ごとに `store A[i][j]`     | ループ後に一度だけ `store`                                      |
| **ロード命令（`load`）**     | 各反復ごとに `load A[i][k]` ×2   | 同様に `load`×2 が連続するが、ガード分岐内ではレジスタ参照                     |
| **除算命令（`fdiv`）**      | 対角要素更新時に 1 回               | 同じく 1 回                                                |
| **φノード（ループ制御）**       | `k` の増分を +1 で制御            | `k` の増分を +4 で制御                                        |
| **`llvm.loop` メタデータ** | デフォルトの `!llvm.loop`        | `!llvm.loop.unroll.count = 4` および `unroll.enable` 属性付き |

---

### 解説

1. **アンローリングによる分岐オーバーヘッド削減**
   `opt3.ll` では内側ループを 4 要素ずつ (`k += 4`) まとめて処理し、分岐命令の発生回数を約 ¼ に削減しています。同時に、各ステップごとに「残余要素用」の `icmp`＋`br` を挿入し、安全に余り処理を行っています。

2. **メモリ書き戻しの集約**
   `base.ll` は毎回 `store A[i][j]` しているのに対し、`opt3.ll` では一時変数 `sum` に累積して最後に１度だけ書き戻します。これによりストア命令が大幅に減り、メモリ帯域の節約につながります。

3. **メタデータによる最適化制御**
   `opt3.ll` は `!llvm.loop.unroll.count = 4` や `!llvm.loop.unroll.enable` をループヘッダに付与し、LLVM の自動アンローリングパスと競合しないように手動アンローリング済みであることを明示しています。

4. **パイプライン効率化**
   4 回分の `fmul`＋`fsub` を連続実行することで、命令パイプラインのスループットを最大化し、分岐予測ミスやループ制御のペナルティを抑えています。

以上のように、`opt3.ll` はアンローリング幅の拡大とそれに伴うガード、ストア集約、メタデータ付与が IR レベルで明確に反映されている。

</details>
