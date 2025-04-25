# llvm-llm-profile-driven-iterative-optimization

「–O3 後の LLVM IR を LLM が動的プロファイル情報を取り込みつつ反復的に最適化し、最終バイナリをビルド・デバッグまで自動化する」システム

---

## システム構成

1. **VSCode タスク群 (`.vscode/tasks.json`)**  
   - 1 → 5 のステップを自動実行するビルドタスクを定義  
     1. `clang -O3` で IR 出力  
     2. `perf stat` によるベンチマーク実行＆プロファイル取得  
     3. プロファイル結果を自然言語に整形  
     4. LLM 呼び出しスクリプトで IR 最適化（プロファイル統合＋反復ループ）  
     5. 最適化済 IR からバイナリを生成  

2. **プロファイル整形スクリプト (`profile_and_parse.py`)**  
   - `perf stat` の出力（cycles, instructions, cache-misses など）をパース  
   - 「プログラムの実行プロファイル」としてマークダウン形式に変換  

3. **LLM 最適化スクリプト (`optimize_ir_llm.py`)**  
   - 入力：元の IR テキスト ＋ プロファイルテキスト  
   - プロンプトに「–O3 以上に最適化してください。特にホットスポットに注目して…」と指示  
   - `--iterations` 回だけ（例：3 サイクル）呼び出し→逐次 IR を更新  
   - 最終的に最適化 IR をファイル出力  

4. **ビルド＆デバッグ設定 (`.vscode/launch.json`)**  
   - 最終バイナリのステップ実行やブレークポイントによる動作検証を VSCode 内で完結  

この一連を “`Ctrl+Shift+B`” の一発操作で動かせるのが最大の特徴

---

## 新規性

1. **反復フィードバックループの自動化**  
   - ただ一度 LLM を呼ぶのではなく、性能評価→結果フィードバック→再最適化を複数サイクルで自動実行  
   - サイクルごとの性能推移を定量的に取得でき、LLM の最適化収束特性を初めて可視化・分析可能

2. **動的プロファイル統合**  
   - 静的 IR だけでなく、実行時のホットスポット情報（perf 統計）をプロンプトに組み込み  
   - 「実行プロファイル×プログラム構造」のクロスモーダル最適化を LLM に学習させることで、従来の静的最適化手法や単一プロンプト最適化を上回るポテンシャルを実現

3. **VSCode とのシームレス統合**  
   - 開発者が馴染み深い IDE 上で、最適化フロー全体をワンクリック自動化  
   - 学術実験環境としてだけでなく、エンジニアの実開発ワークフローにも自然に組み込める汎用性を兼備


<img width="190" alt="image" src="https://github.com/user-attachments/assets/0e859c14-fef4-4adf-b499-564b46d5f58a" />



[Cソース]   
   ↓  
[clang -O3 -emit-llvm]  
   ↓  
[LLVM IR (.ll)]  
   ↓  
[perf stat 実行]  
   ↓  
[プロファイル出力 (.prof.txt)]  
   ↓  
[profile_and_parse.py → .prof.md]  
   ↓  
[optimize_ir_llm.py × N回反復]  
   ↓  
[最終IR (.opt.ll)]  
   ↓  
[clang → .opt.final]  
   ↓  
[再度 perf stat]  
   ↓  
[diff_stats.py → .csv]  
   ↓  
[グラフ出力 → .png]  


---

## 🟩 **STEP 1: CファイルをLLVM IRに変換する**

### 🔧 処理内容
- `clang` を使って `.c` → `.ll` に変換（`-emit-llvm -S`）
- `-O3` で既に高レベル最適化を適用済

### 🛠️ コマンド例
```bash
clang -O3 -DPOLYBENCH_TIME -emit-llvm -S gemm.c -o gemm.ll
```

### 📄 出力ファイル
- `gemm.ll`：人間が読める中間コード（LLVM IR）

---

## 🟩 **STEP 2: LLVM IR をネイティブにビルド & 実行してプロファイル収集**

### 🔧 処理内容
- `gemm.ll` を実行可能なバイナリに変換
- `perf stat` で性能データ取得（実行時間・命令数・キャッシュミスなど）

### 🛠️ コマンド例
```bash
clang gemm.ll -o gemm.opt
perf stat -d ./gemm.opt > gemm.prof.txt
```

### 📄 出力ファイル
- `gemm.opt`：実行用バイナリ
- `gemm.prof.txt`：実行性能プロファイル（cycles, instructions, cache-misses など）

---

## 🟩 **STEP 3: プロファイルをLLM向け自然言語に整形**

### 🔧 処理内容
- `profile_and_parse.py` が `gemm.prof.txt` を読み取り
- 数値プロファイルを人間（LLM）が読める自然言語に変換

### 🛠️ コマンド例
```bash
python3 scripts/profile_and_parse.py \
  --input gemm.prof.txt \
  --output gemm.prof.md
```

### 📄 出力ファイル
- `gemm.prof.md`（例）:
  ```markdown
  プログラムの実行プロファイル:
  - cycles: 134567
  - instructions: 204023
  - cache-misses: 343
  ```

---

## 🟩 **STEP 4: LLMによるIR最適化（反復実行）**

### 🔧 処理内容
- `optimize_ir_llm.py` が `.ll` と `.prof.md` を LLM に渡す
- N回（例: 3回）最適化を繰り返す（前回の出力が次の入力に）

### 🛠️ コマンド例
```bash
python3 scripts/optimize_ir_llm.py \
  --input gemm.ll \
  --profile gemm.prof.md \
  --iterations 3 \
  --output gemm.opt.ll
```

### 📄 出力ファイル（自動生成される）
- `gemm.opt.ll`：最終的な最適化IR
- `metrics_log.json`：各iterationの `cycles`, `cache-miss`, `IR行数`
- `ir_instr_log.json`：命令種類の出現数

---

## 🟩 **STEP 5: LLM最適化済IR → 実行バイナリにビルド**

### 🔧 処理内容
- `.opt.ll` を `clang` でバイナリ化

### 🛠️ コマンド例
```bash
clang gemm.opt.ll -o gemm.opt.final
```

### 📄 出力ファイル
- `gemm.opt.final`：最終最適化済みバイナリ

---

## 🟩 **STEP 6: 最適化後バイナリの性能測定**

### 🔧 処理内容
- `perf stat` で最適化後の性能を再測定

### 🛠️ コマンド例
```bash
perf stat -d ./gemm.opt.final > gemm.opt.prof.txt
```

### 📄 出力ファイル
- `gemm.opt.prof.txt`：最適化後のプロファイル

---

## 🟩 **STEP 7: 最適化効果の定量評価（差分比較）**

### 🔧 処理内容
- `diff_stats.py` により before / after の差分を `CSV` に出力

### 🛠️ コマンド例
```bash
python3 scripts/diff_stats.py \
  --original_perf gemm.prof.txt \
  --optimized_perf gemm.opt.prof.txt \
  --original_ir gemm.ll \
  --optimized_ir gemm.opt.ll \
  --kernel gemm \
  --output_csv optimization_report.csv
```

### 📄 出力ファイル
- `optimization_report.csv`：
  ```csv
  kernel,orig_cycles,opt_cycles,Δcycles(%),...,ΔIR_lines(%)
  gemm,134567,112345,-16.5,...,-23.1
  ```

---

## 🟩 **STEP 8: グラフとヒートマップによる可視化**

### ✅ グラフ（全カーネル比較）

```bash
make plot
```

- `report_cycles.png`
- `report_cache.png`
- `report_ir_lines.png`

### ✅ ヒートマップ（命令種類の変化）

```bash
make heatmap
```

- `ir_instr_heatmap.png`

---

## ✅ ワークフローを一言で言うと？

> 🔁 **CコードをLLVM IRにして → 実行して → プロファイルをLLMに渡して → IRを再生成 → 再ビルド → 結果を比較し → 可視化する完全自動システム**
---
