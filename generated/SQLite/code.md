#!/usr/bin/env bash
set -euo pipefail

DB="heavy_test.db"
Q='SELECT COUNT(*) FROM items_heavy;'

# ベンチマーク対象バイナリ
BINS=(
  "./sqlite3_base_gcc_O0"
  "./sqlite3_base_gcc_O3"
  "./sqlite3_base_clang_O0"
  "./sqlite3_base_clang_O3"
)

# 1000回ループ実行するコマンドを組み立て
CMDS=()
for BIN in "${BINS[@]}"; do
  CMDS+=("bash -c 'for i in \$(seq 1 1000); do ${BIN} ${DB} \"${Q}\" >/dev/null; done'")
done

# Hyperfine を一行で呼び出し
hyperfine \
  --warmup 2 \
  --runs 10 \
  --shell none \
  --export-markdown benchmark_original.md \
  "${CMDS[@]}"



    prompt = f"""
The following C function is a performance hotspot in SQLite’s page‐cache fetch path (pcache1FetchStage2). Identify its bottlenecks and propose localized optimizations with concrete code examples for each of these areas:

1. **Modulo speedup**  
   The expression iKey % pCache->nHash is computed on every cache lookup. Suggest ways to replace or speed up this operation (e.g. using power‐of‐two hash sizes and bit‐masking).

2. **Branch misprediction reduction**  
   The nested if (createFlag==1 && …) tests introduce multiple branches. Show how to reorganize or simplify these checks—potentially with branchless techniques—to improve predictability.

3. **Pointer and LRU list handling**  
   The page‐recycle logic performs several pointer dereferences and list updates. Propose refactorings to minimize pointer chasing and improve data‐locality (for example, by simplifying the LRU list operations).

4. **Memory allocation overhead**  
   Calls to pcache1AllocPage, pcache1FreePage and hash‐table resizing can be expensive. Describe how to introduce a fixed‐size page pool, slab allocator, or amortized allocation strategy to reduce per‐fetch overhead.

**Requirements**  
- Keep the overall function signature and high‐level structure intact, applying only localized changes.  
- For each of the four points above, provide a “before” and “after” C code snippet illustrating the change.  
- Where applicable, include a short rationale, an example assembly diff or pseudo‐assembly, and an estimated speedup (e.g. in microseconds or %).  

Below is the implementation of the hotspot function pcache1FetchStage2 from the SQLite3 codebase. Profiling data shows this function dominates runtime. Your task is to optimize this C function to reduce its execution time, using advanced C performance techniques (e.g., branch reduction, bitwise operations, inlining) while preserving all existing I/O and API macros and maintaining identical behavior.


Please output **only** the optimized C source code for the function—no Markdown fences, comments, or extra explanations.

{source_code}
"""
