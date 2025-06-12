<details><summary>c</summary>

以下、`dijkstra.c`（オリジナル実装）と `dijkstra_1.c`（改善版）の主な相違点を日本語でまとめました。

| 比較項目                    | オリジナル (`dijkstra.c`)                                                    | 改善版 (`dijkstra_1.c`)                                                                           |
| :---------------------- | :---------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------- |
| **キューへの追加 (`enqueue`)** | - `qHead` から末尾までポインタをたどって最後に追加<br/>- 新ノード用に一時 `qLast` ポインタを用意           | - ポインタ・トゥ・ポインタ (`QITEM **qLast = &qHead;`) を使い、一度のループで末尾ポインタに直接書き込む<br/>- コードが簡潔に              |
| **隣接行列の参照**             | `AdjMatrix[iNode][i]` を毎回評価                                             | ループ内で<br>`int *adjRow = AdjMatrix[iNode];` とキャッシュし、`adjRow[i]` でアクセス                           |
| **ノード情報の参照**            | `rgnNodes[i]` を繰り返しアクセス                                                 | `NODE *nextNode = &rgnNodes[i];` などとポインタ化して可読性向上                                               |
| **距離計算**                | `rgnNodes[i].iDist > (iCost + iDist)` と直接比較・代入                          | `int newDist = iDist + iCost;` と一時変数に入れてから比較・代入                                                |
| **ファイル入出力の堅牢性**         | - `fopen` の戻り値チェックなし<br/>- ファイルクローズ (`fclose`) がない                      | - `fopen` の失敗を検出しエラーメッセージ＆`return 1;`<br/>- 読み込み後に `fclose(fp);` を追加                           |
| **メインループ（ショートパス検索）**    | `for (i=0,j=num_nodes/2;i<20;i++,j++)`<br/>手動で `j%=num_nodes;` をループ内で実装 | `for (i=0, j=num_nodes/2; i<20; i++, j++)`<br/>呼び出し側で `dijkstra(i, j % num_nodes);` としてラップを簡潔化 |
| **エラーハンドリング**           | `fprintf` → `exit(1);`                                                  | `fprintf` → `return 1;` と、`main` の戻り値を利用する標準的なスタイルに                                            |
| **コードスタイル**             | - ブレース `{}` の配置は K\&R 風<br/>- インデント幅や空行の使い方がやや不統一                       | - オールマン風や深いネストの省略など、全体的にインデント／空行を統一<br/>- 変数宣言位置をまとめて見通し良く                                     |
| **メモリ解放**               | `free(rgnNodes);` → 各行列要素を `free` → `free(AdjMatrix);`                  | 同じ（ただしファイルクローズが追加された点を除く）                                                                      |

### パフォーマンス／可読性の改善ポイント

* **ポインタ・トゥ・ポインタ** を使ったキュー操作で分岐を減らし、コードも短く。
* 隣接行列の行ポインタをローカル変数にキャッシュすることで、2 重ポインディングのオーバーヘッドを削減。
* 距離計算やノード情報アクセスに一時変数／ポインタを使い、同じ配列アクセスを繰り返さない。
* ファイル操作でのエラー処理とリソース解放 (`fclose`) の追加により、信頼性が向上。

どちらも機能は同等ですが、`dijkstra_1.c` のほうが **可読性**、**保守性**、そして小さな **パフォーマンス向上** を意識した実装になっています。

</details>

<details><summary>ll</summary>

IR ファイル同士の主な違いをまとめます。

1. **メトリクスの比較**

   * 行数が 630 → 622 行に減少
   * 命令数が 290 → 276 命令に削減
   * 関数数や基本ブロック数（47）は変わらず
     （詳細は上の表をご参照ください）

2. **主な変更点（diff の抜粋）**

   ```diff
   --- dijkstra_base.ll
   +++ dijkstra_1.ll
   @@ -1,4 +1,4 @@
   -; ModuleID = 'mibench/network/dijkstra/dijkstra.c'
   -source_filename = "mibench/network/dijkstra/dijkstra.c"
   +; ModuleID = 'outputs/network/dijstra/dijkstra_1.c'
   +source_filename = "outputs/network/dijstra/dijkstra_1.c"
   @@ -50,7 +50,6 @@
    @num_nodes = global i32 6, align 4
   -@i = global i32 0, align 4
    @AdjMatrix = global [6 x [6 x i32]] [ ... ], align 16
   @@ -120,8 +119,8 @@
    ; <label>:loop_body
        %idx = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* @AdjMatrix, i64 0, i64 %row, i64 %col
   -    %val = load i32, i32* %idx, align 4
   +    %val = load volatile i32, i32* %idx, align 4       ; volatile 指定が追加
        %sum = add i32 %prev_sum, %val
        store i32 %sum, i32* %acc, align 4
   ```

   * `@i` グローバル変数が削除され、`AdjMatrix` の定義位置が前面へ移動
   * `load` 命令に `volatile` 属性が追加され、安全性（メモリ順序）を強化
   * 不要な変数／定義の整理により、命令数が約5% 削減

3. **まとめ**

   * IR レベルでのリファクタリング（不要定義の削除、属性追加）により、コードが若干簡潔化
   * 基本ブロック構造はそのまま維持しつつ、命令数と行数が削減されている

</details>
