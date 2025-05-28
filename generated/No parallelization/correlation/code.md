<details><summary>c</summary>

下表は、PolyBench/C の **correlation** カーネルについて、オリジナル実装（`correlation.c`）と３つの最適化版（`opt1`～`opt3`）の主な違いをまとめたものです。

| 比較ポイント              | correlation.c（ベース）                                                                       | opt1（correlation\_opt\_1.c）                                                                                                        | opt2（correlation\_opt\_2.c）  | opt3（correlation\_opt\_3.c）  |
| ------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- | ---------------------------- | ---------------------------- |
| **出力マクロ定義**         | `POLYBENCH_DUMP_TARGET` はヘッダー側既定値を使用                                                     | `#define POLYBENCH_DUMP_TARGET stdout` を追加し，明示的に `stdout` へ出力                                                                      | 同上                           | 同上                           |
| **`float_n` 周りの演算** | 平均計算後に `mean[j] /= float_n;`，分散計算後に `stddev[j] /= float_n;`→`stddev[j]=sqrt(stddev[j]);` | ループ外で `inv_float_n = 1.0/float_n;` を計算し，`mean[j] = sum * inv_float_n;`，`stddev[j] = sqrt(sum_sq * inv_float_n);` として除算を乗算＋平方根１回に集約 | 同上                           | 同上                           |
| **平方根／条件分岐**        | `stddev[j] = SQRT_FUN(stddev[j]); stddev[j] = stddev[j] <= eps ? 1.0 : stddev[j];`       | 同じく `SQRT_FUN(sum_sq * inv_float_n)`→三項演算子で分岐                                                                                      | 同上                           | 同上                           |
| **データ正規化**          | 各要素ごとに                                                                                   |                                                                                                                                    |                              |                              |

````c
data[i][j] -= mean[j];
data[i][j] /= SQRT_FUN(float_n) * stddev[j];
```                                                                                           | 一行で  
```c
data[i][j] = (data[i][j] - mean[j]) / (sqrt_float_n * stddev[j]);
````

と演算回数・メモリアクセスを最小化                                          | 同上                                                                                                                                                                              | 同上                                                                                                                                                                              |
\| **相関行列計算**                      |

````c
for (i=0; i<M-1; i++) {
  corr[i][i] = 1;
  for (j=i+1; j<M; j++) {
    corr[i][j] = corr[j][i] = sum_{k}(data[k][i]*data[k][j]);
  }
}
corr[M-1][M-1] = 1;
```                                                                                         | 同様の二重ループ＋対称代入（手法変更なし） :contentReference[oaicite:5]{index=5}                                                                                                           | 同上                                                                                                                                                                              | 同上                                                                                                                                                                              |
| **内部ループのアンローリング**       | なし                                                                                                                                            | なし                                                                                                                                                                              | なし                                                                                                                                                                              | なし                                                                                                                                                                              |
| **その他の最適化**                    | —                                                                                                                                              | —                                                                                                                                                                             | —                                                                                                                                                                             | —                                                                                                                                                                             |

---

### 考察

1. **演算集約と除算削減**  
   - **opt1** 以降では，`1/float_n` や `sqrt(float_n)` をループ外で一度だけ計算し，ループ内の除算を乗算＋平方根１回にまとめています。これにより浮動小数点の除算コストが大幅に削減されます。

2. **メモリアクセスと算術式の簡素化**  
   - データの正規化を一文にまとめることで，メモリアクセスと演算ステップを最小化しています。

3. **opt2／opt3 の位置づけ**  
   - **opt2** および **opt3** は，opt1 の改良版としてリポジトリ上で別名付けされていますが，ソースレベルの実装は opt1 と同一です。  
   - したがって，実際には「opt1 の最適化を評価する」段階が correlation カーネル向けの唯一の大きな変更点です。

---

以上のように、correlation カーネルでは主に「除算→乗算＋平方根」「演算／メモリアクセスの集約」による最適化が施されており、opt1 がその代表例、opt2／opt3 は同実装のバリエーションという位置づけになります。
````

</details>

<details><summary>ll</summary>


以下は、**correlation** カーネルの LLVM IR 版で、オリジナル実装（`base.ll`）と最適化版（`opt1.ll`～`opt3.ll`）の「差分」に絞った比較です。実際には **opt1.ll**, **opt2.ll**, **opt3.ll** の IR はほぼ同一（ソースレベルの小差分のみで、IR には反映されない）ため、ここでは代表として **opt1.ll** と比較します。

| 比較項目                     | base.ll                                                | opt1.ll / opt2.ll / opt3.ll                            |
| ------------------------ | ------------------------------------------------------ | ------------------------------------------------------ |
| **ダンプ出力先グローバル変数**        | `@stderr = external global ptr`                        | `@stdout = external global ptr`                        |
| **ダンプ時の `fprintf` 呼び出し** | `call i32 (ptr, ptr, ...) @fprintf(i8* @stderr, ... )` | `call i32 (ptr, ptr, ...) @fprintf(i8* @stdout, ... )` |
| **行列確保／解放**              | `tail call ptr @polybench_alloc_data(...)`             | 同左                                                     |
| **正規化ループ本体の命令**          |                                                        |                                                        |

````llvm
%136 = fsub double %orig, %mean  
%139 = fmul double %stddev, 0x4042B5524AE1278E  
%140 = fdiv double %136, %139  
store double %140, ptr …  
``` | 同一のシーケンス (`fsub`→`fmul` by immediate constant→`fdiv`→`store`) |
| **ベクトル化／メタデータ**     | ループヘッダに `!llvm.loop.vectorize.width = 2` 等           | 同上                                                             |
| **ループ制御メタデータ**       | `!llvm.loop !X`（自動ベクトル化／ランタイムアンローリング制御） | 同上                                                             |

---

### ポイント解説

1. **出力先の切り替え**  
   - **base.ll** では `POLYBENCH_DUMP_TARGET` のデフォルトである `stderr` を参照するため、グローバルシンボル `@stderr` が宣言され、`fprintf` でも `@stderr` が渡されています。  
   - **opt1/opt2/opt3.ll** では `#define POLYBENCH_DUMP_TARGET stdout` を有効にしたため、グローバルシンボルが `@stdout` に変わり、同様に `fprintf(..., @stdout, ...)` となっています。

2. **コアの数値演算は不変**  
   最適化版では C レベルで「定数乗算や除算の集約」を入れましたが、LLVM IR 上はいずれも  
````

fsub → fmul (定数) → fdiv → store

```
のまま変わっておらず、コンパイラの自動最適化が同じ最適化を自動で拾ってしまっているため、IR には特段の差異が現れていません。

3. **opt2.ll / opt3.ll も同一**  
C ソースでの「冗長な `#define` の振り分け」と「バージョン名の切り替え」以外に中身のロジック差分がないため、opt1.ll とまったく同じ IR が生成されています。

---

**まとめ**  
- **唯一の IR レベル差分** はダンプ出力のターゲットが `stderr` → `stdout` に切り替わったことだけ。  
- 数値計算・メモリアロケーション周りの命令列・ベクトル化メタデータは base と最適化版で一致しており、C 側で入れた定数ホイスティングなどは LLVM の自動パスが元々適用しているため、IR 上は見かけ上同じ最適化結果になっています。  
- opt2 / opt3 は opt1 と IR が同一ですので、性能差を測る場合はダンプ先以外の部分――たとえばプロファイリングによる演算コストの比較や、C レベルでの定数ホイスティング効果を確認する必要があります。
```
  
</details>
