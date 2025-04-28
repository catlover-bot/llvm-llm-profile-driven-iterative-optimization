[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/datamining/covariance/covariance.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - begin: 0 → 1 (Δ 1)
  - br: 27 → 26 (Δ -1)
  - cleanup: 0 → 1 (Δ 1)
  - declare: 4 → 9 (Δ 5)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 3 (Δ 3)
  - end: 0 → 1 (Δ 1)
  - inner: 0 → 1 (Δ 1)
  - loop: 0 → 17 (Δ 17)
  - newline: 0 → 1 (Δ 1)
  - print: 0 → 1 (Δ 1)
  - store: 21 → 17 (Δ -4)
📏 IR line count: 352 → 315 (Δ -37)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - declare: 4 → 9 (Δ 5)
  - define: 0 → 1 (Δ 1)
  - loop: 0 → 27 (Δ 27)
📏 IR line count: 352 → 346 (Δ -6)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - attributes: 1 → 0 (Δ -1)
  - br: 27 → 2 (Δ -25)
  - declare: 4 → 0 (Δ -4)
  - define: 0 → 1 (Δ 1)
  - for: 0 → 2 (Δ 2)
  - ret: 1 → 0 (Δ -1)
  - store: 21 → 0 (Δ -21)
  - tail: 6 → 0 (Δ -6)
📏 IR line count: 352 → 650 (Δ 298)
/tmp/tmpw0pdeoga.ll:650:6: error: expected '=' after instruction id

[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/datamining/correlation/correlation.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - begin: 0 → 1 (Δ 1)
  - br: 30 → 29 (Δ -1)
  - cleanup: 0 → 1 (Δ 1)
  - declare: 4 → 10 (Δ 6)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 3 (Δ 3)
  - end: 0 → 1 (Δ 1)
  - inner: 0 → 2 (Δ 2)
  - loop: 0 → 19 (Δ 19)
  - newline: 0 → 1 (Δ 1)
  - start: 0 → 1 (Δ 1)
📏 IR line count: 400 → 387 (Δ -13)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - attributes: 1 → 0 (Δ -1)
  - br: 30 → 86 (Δ 56)
  - declare: 4 → 0 (Δ -4)
  - define: 0 → 1 (Δ 1)
  - loop: 0 → 86 (Δ 86)
  - ret: 1 → 0 (Δ -1)
  - store: 25 → 0 (Δ -25)
  - tail: 7 → 0 (Δ -7)
📏 IR line count: 400 → 537 (Δ 137)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - attributes: 1 → 0 (Δ -1)
  - br: 30 → 28 (Δ -2)
  - cleanup: 0 → 1 (Δ 1)
  - declare: 4 → 9 (Δ 5)
  - define: 0 → 1 (Δ 1)
  - end: 0 → 1 (Δ 1)
  - loop: 0 → 18 (Δ 18)
  - print: 0 → 8 (Δ 8)
  - store: 25 → 13 (Δ -12)
📏 IR line count: 400 → 252 (Δ -148)
/tmp/tmp8zurdsia.ll:107:41: error: expected ',' after insertelement value

[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/stencils/heat-3d/heat-3d.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - attributes: 1 → 0 (Δ -1)
  - br: 34 → 82 (Δ 48)
  - declare: 4 → 0 (Δ -4)
  - define: 0 → 1 (Δ 1)
  - loop: 0 → 82 (Δ 82)
  - ret: 1 → 0 (Δ -1)
  - store: 12 → 0 (Δ -12)
  - tail: 4 → 0 (Δ -4)
📏 IR line count: 469 → 505 (Δ 36)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - attributes: 1 → 0 (Δ -1)
  - declare: 4 → 9 (Δ 5)
  - define: 0 → 1 (Δ 1)
📏 IR line count: 469 → 403 (Δ -66)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - br: 34 → 12 (Δ -22)
  - call: 0 → 13 (Δ 13)
  - compute: 0 → 1 (Δ 1)
  - declare: 4 → 1 (Δ -3)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 6 (Δ 6)
  - exit: 0 → 1 (Δ 1)
  - init: 0 → 1 (Δ 1)
  - loop: 0 → 3 (Δ 3)
  - store: 12 → 2 (Δ -10)
  - tail: 4 → 0 (Δ -4)
📏 IR line count: 469 → 125 (Δ -344)
/tmp/tmptpq_p97_.ll:78:3: error: instruction expected to be numbered '%28' or greater

[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/stencils/fdtd-2d/fdtd-2d.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - br: 48 → 41 (Δ -7)
  - cleanup: 0 → 1 (Δ 1)
  - declare: 4 → 10 (Δ 6)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 17 (Δ 17)
  - exit: 0 → 11 (Δ 11)
  - loop: 0 → 9 (Δ 9)
  - newline: 0 → 3 (Δ 3)
  - store: 34 → 23 (Δ -11)
📏 IR line count: 649 → 426 (Δ -223)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - attributes: 1 → 0 (Δ -1)
  - br: 48 → 59 (Δ 11)
  - declare: 4 → 0 (Δ -4)
  - define: 0 → 1 (Δ 1)
  - loop: 0 → 59 (Δ 59)
  - ret: 1 → 0 (Δ -1)
  - store: 34 → 58 (Δ 24)
  - tail: 7 → 0 (Δ -7)
📏 IR line count: 649 → 489 (Δ -160)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - br: 48 → 41 (Δ -7)
  - cleanup: 0 → 1 (Δ 1)
  - declare: 4 → 10 (Δ 6)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 14 (Δ 14)
  - exit: 0 → 11 (Δ 11)
  - loop: 0 → 9 (Δ 9)
  - newline: 0 → 3 (Δ 3)
  - print: 0 → 3 (Δ 3)
  - store: 34 → 13 (Δ -21)
📏 IR line count: 649 → 437 (Δ -212)
/tmp/tmpaq3xiyhx.ll:38:17: error: '%5' defined with type 'ptr' but expected 'i64'

[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/stencils/seidel-2d/seidel-2d.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - br: 19 → 13 (Δ -6)
  - cleanup: 0 → 1 (Δ 1)
  - declare: 4 → 8 (Δ 4)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 4 (Δ 4)
  - end: 0 → 4 (Δ 4)
  - loop: 0 → 2 (Δ 2)
  - newline: 0 → 1 (Δ 1)
  - print: 0 → 1 (Δ 1)
  - store: 3 → 1 (Δ -2)
📏 IR line count: 234 → 165 (Δ -69)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - br: 19 → 11 (Δ -8)
  - declare: 4 → 7 (Δ 3)
  - define: 0 → 1 (Δ 1)
  - store: 3 → 1 (Δ -2)
📏 IR line count: 234 → 114 (Δ -120)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - br: 19 → 12 (Δ -7)
  - call: 0 → 1 (Δ 1)
  - cleanup: 0 → 1 (Δ 1)
  - compute: 0 → 1 (Δ 1)
  - declare: 4 → 8 (Δ 4)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 1 (Δ 1)
  - end: 0 → 1 (Δ 1)
  - inner: 0 → 1 (Δ 1)
  - newline: 0 → 1 (Δ 1)
  - outer: 0 → 1 (Δ 1)
  - print: 0 → 5 (Δ 5)
  - store: 3 → 1 (Δ -2)
📏 IR line count: 234 → 140 (Δ -94)
PLEASE submit a bug report to https://github.com/llvm/llvm-project/issues/ and include the crash backtrace, preprocessed source, and associated run script.

[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/stencils/jacobi-2d/jacobi-2d.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - attributes: 1 → 0 (Δ -1)
  - br: 28 → 9 (Δ -19)
  - cleanup: 0 → 1 (Δ 1)
  - declare: 4 → 1 (Δ -3)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 4 (Δ 4)
  - exit: 0 → 1 (Δ 1)
  - loop: 0 → 3 (Δ 3)
  - store: 10 → 1 (Δ -9)
  - tail: 5 → 10 (Δ 5)
📏 IR line count: 404 → 92 (Δ -312)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - alloc: 0 → 1 (Δ 1)
  - br: 28 → 4 (Δ -24)
  - call: 0 → 2 (Δ 2)
  - declare: 4 → 3 (Δ -1)
  - define: 0 → 1 (Δ 1)
  - exit: 0 → 1 (Δ 1)
  - init: 0 → 1 (Δ 1)
  - loop: 0 → 1 (Δ 1)
  - store: 10 → 0 (Δ -10)
  - tail: 5 → 2 (Δ -3)
📏 IR line count: 404 → 53 (Δ -351)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - br: 28 → 14 (Δ -14)
  - declare: 4 → 10 (Δ 6)
  - define: 0 → 1 (Δ 1)
  - ret: 1 → 2 (Δ 1)
  - store: 10 → 0 (Δ -10)
  - tail: 5 → 4 (Δ -1)
📏 IR line count: 404 → 183 (Δ -221)
/tmp/tmpkr7zaf5q.ll:27:1: error: label expected to be numbered '11' or greater

[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/stencils/adi/adi.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - attributes: 1 → 0 (Δ -1)
  - br: 30 → 87 (Δ 57)
  - declare: 4 → 0 (Δ -4)
  - define: 0 → 1 (Δ 1)
  - loop: 0 → 87 (Δ 87)
  - ret: 1 → 0 (Δ -1)
  - store: 22 → 0 (Δ -22)
  - tail: 7 → 0 (Δ -7)
📏 IR line count: 434 → 537 (Δ 103)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - br: 30 → 8 (Δ -22)
  - cleanup: 0 → 1 (Δ 1)
  - declare: 4 → 1 (Δ -3)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 3 (Δ 3)
  - end: 0 → 1 (Δ 1)
  - loop: 0 → 3 (Δ 3)
  - store: 22 → 1 (Δ -21)
  - tail: 7 → 12 (Δ 5)
📏 IR line count: 434 → 120 (Δ -314)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - br: 30 → 11 (Δ -19)
  - declare: 4 → 2 (Δ -2)
  - define: 0 → 1 (Δ 1)
  - exit: 0 → 1 (Δ 1)
  - loop: 0 → 10 (Δ 10)
  - store: 22 → 0 (Δ -22)
  - tail: 7 → 4 (Δ -3)
📏 IR line count: 434 → 96 (Δ -338)

[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/stencils/jacobi-1d/jacobi-1d.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - br: 20 → 14 (Δ -6)
  - cleanup: 0 → 1 (Δ 1)
  - declare: 4 → 8 (Δ 4)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 2 (Δ 2)
  - end: 0 → 1 (Δ 1)
  - finalize: 0 → 1 (Δ 1)
  - loop: 0 → 1 (Δ 1)
  - main: 0 → 2 (Δ 2)
  - newline: 0 → 1 (Δ 1)
  - print: 0 → 1 (Δ 1)
  - scalar: 0 → 2 (Δ 2)
  - store: 16 → 6 (Δ -10)
  - vector: 0 → 2 (Δ 2)
📏 IR line count: 348 → 189 (Δ -159)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - br: 20 → 11 (Δ -9)
  - cleanup: 0 → 1 (Δ 1)
  - compute: 0 → 3 (Δ 3)
  - declare: 4 → 1 (Δ -3)
  - define: 0 → 1 (Δ 1)
  - loop: 0 → 1 (Δ 1)
  - print: 0 → 4 (Δ 4)
  - scalar: 0 → 1 (Δ 1)
  - store: 16 → 6 (Δ -10)
  - vectorized: 0 → 1 (Δ 1)
📏 IR line count: 348 → 132 (Δ -216)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - br: 20 → 11 (Δ -9)
  - cleanup: 0 → 1 (Δ 1)
  - declare: 4 → 1 (Δ -3)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 1 (Δ 1)
  - end: 0 → 2 (Δ 2)
  - print: 0 → 3 (Δ 3)
  - scalar: 0 → 2 (Δ 2)
  - store: 16 → 4 (Δ -12)
  - vectorized: 0 → 2 (Δ 2)
📏 IR line count: 348 → 127 (Δ -221)

[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/linear-algebra/kernels/mvt/mvt.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - cleanup: 0 → 1 (Δ 1)
  - compute: 0 → 1 (Δ 1)
  - declare: 4 → 9 (Δ 5)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 4 (Δ 4)
  - end: 0 → 2 (Δ 2)
  - finalize: 0 → 1 (Δ 1)
  - inner: 0 → 2 (Δ 2)
  - loop: 0 → 4 (Δ 4)
  - newline: 0 → 2 (Δ 2)
  - outer: 0 → 3 (Δ 3)
  - print: 0 → 2 (Δ 2)
  - store: 9 → 6 (Δ -3)
📏 IR line count: 281 → 230 (Δ -51)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - br: 22 → 11 (Δ -11)
  - cleanup: 0 → 1 (Δ 1)
  - compute: 0 → 1 (Δ 1)
  - declare: 4 → 9 (Δ 5)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 4 (Δ 4)
  - finalize: 0 → 1 (Δ 1)
  - inner: 0 → 1 (Δ 1)
  - outer: 0 → 2 (Δ 2)
  - store: 9 → 5 (Δ -4)
  - vector: 0 → 1 (Δ 1)
📏 IR line count: 281 → 149 (Δ -132)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - attributes: 1 → 0 (Δ -1)
  - br: 22 → 38 (Δ 16)
  - declare: 4 → 0 (Δ -4)
  - define: 0 → 1 (Δ 1)
  - loop: 0 → 38 (Δ 38)
  - ret: 1 → 0 (Δ -1)
  - store: 9 → 38 (Δ 29)
  - tail: 8 → 0 (Δ -8)
📏 IR line count: 281 → 437 (Δ 156)

[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/linear-algebra/kernels/3mm/3mm.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - br: 38 → 23 (Δ -15)
  - declare: 4 → 9 (Δ 5)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 5 (Δ 5)
  - exit: 0 → 1 (Δ 1)
  - loop: 0 → 15 (Δ 15)
  - newline: 0 → 1 (Δ 1)
  - print: 0 → 1 (Δ 1)
  - store: 13 → 6 (Δ -7)
  - tail: 10 → 16 (Δ 6)
📏 IR line count: 395 → 222 (Δ -173)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - br: 38 → 32 (Δ -6)
  - cleanup: 0 → 1 (Δ 1)
  - declare: 4 → 9 (Δ 5)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 5 (Δ 5)
  - end: 0 → 1 (Δ 1)
  - loop: 0 → 25 (Δ 25)
  - store: 13 → 10 (Δ -3)
  - tail: 10 → 15 (Δ 5)
📏 IR line count: 395 → 274 (Δ -121)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - attributes: 1 → 0 (Δ -1)
  - br: 38 → 35 (Δ -3)
  - declare: 4 → 0 (Δ -4)
  - define: 0 → 1 (Δ 1)
  - loop: 0 → 35 (Δ 35)
  - ret: 1 → 0 (Δ -1)
  - store: 13 → 31 (Δ 18)
  - tail: 10 → 0 (Δ -10)
📏 IR line count: 395 → 378 (Δ -17)
/tmp/tmpzi9l6tsg.ll:378:22: error: expected comma after load's type

[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/linear-algebra/kernels/bicg/bicg.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - br: 20 → 13 (Δ -7)
  - declare: 4 → 10 (Δ 6)
  - define: 0 → 1 (Δ 1)
  - end: 0 → 1 (Δ 1)
  - loop: 0 → 6 (Δ 6)
  - print: 0 → 6 (Δ 6)
  - tail: 9 → 7 (Δ -2)
📏 IR line count: 253 → 196 (Δ -57)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - br: 20 → 14 (Δ -6)
  - cleanup: 0 → 1 (Δ 1)
  - declare: 4 → 1 (Δ -3)
  - define: 0 → 1 (Δ 1)
  - end: 0 → 1 (Δ 1)
  - loop: 0 → 6 (Δ 6)
  - print: 0 → 6 (Δ 6)
  - store: 7 → 6 (Δ -1)
  - tail: 9 → 17 (Δ 8)
📏 IR line count: 253 → 169 (Δ -84)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - br: 20 → 7 (Δ -13)
  - cleanup: 0 → 1 (Δ 1)
  - compute: 0 → 1 (Δ 1)
  - declare: 4 → 9 (Δ 5)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 1 (Δ 1)
  - finalize: 0 → 1 (Δ 1)
  - init: 0 → 1 (Δ 1)
  - scalar: 0 → 1 (Δ 1)
  - store: 7 → 4 (Δ -3)
  - vector: 0 → 1 (Δ 1)
📏 IR line count: 253 → 139 (Δ -114)


[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/linear-algebra/kernels/doitgen/doitgen.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - attributes: 1 → 0 (Δ -1)
  - br: 49 → 1 (Δ -48)
  - declare: 4 → 0 (Δ -4)
  - define: 0 → 1 (Δ 1)
  - for: 0 → 1 (Δ 1)
  - ret: 2 → 0 (Δ -2)
  - store: 102 → 0 (Δ -102)
  - tail: 6 → 0 (Δ -6)
📏 IR line count: 819 → 265 (Δ -554)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - br: 49 → 7 (Δ -42)
  - call: 0 → 1 (Δ 1)
  - store: 102 → 0 (Δ -102)
  - tail: 6 → 7 (Δ 1)
📏 IR line count: 819 → 154 (Δ -665)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - br: 49 → 10 (Δ -39)
  - declare: 4 → 9 (Δ 5)
  - define: 0 → 2 (Δ 2)
  - for: 0 → 7 (Δ 7)
  - if: 0 → 3 (Δ 3)
  - store: 102 → 1 (Δ -101)
  - tail: 6 → 7 (Δ 1)
📏 IR line count: 819 → 164 (Δ -655)
/tmp/tmpd188c69w.ll:23:5: error: expected '=' after instruction id

[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/linear-algebra/kernels/atax/atax.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - br: 20 → 13 (Δ -7)
  - declare: 4 → 10 (Δ 6)
  - define: 0 → 1 (Δ 1)
  - for: 0 → 9 (Δ 9)
  - if: 0 → 4 (Δ 4)
  - store: 13 → 5 (Δ -8)
  - tail: 8 → 4 (Δ -4)
📏 IR line count: 312 → 182 (Δ -130)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - begin: 0 → 1 (Δ 1)
  - br: 20 → 16 (Δ -4)
  - cleanup: 0 → 1 (Δ 1)
  - computation: 0 → 1 (Δ 1)
  - declare: 4 → 11 (Δ 7)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 2 (Δ 2)
  - end: 0 → 1 (Δ 1)
  - finalize: 0 → 1 (Δ 1)
  - inner: 0 → 1 (Δ 1)
  - matrix: 0 → 3 (Δ 3)
  - newline: 0 → 1 (Δ 1)
  - outer: 0 → 2 (Δ 2)
  - print: 0 → 1 (Δ 1)
  - store: 13 → 9 (Δ -4)
  - vector: 0 → 1 (Δ 1)
📏 IR line count: 312 → 246 (Δ -66)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - br: 20 → 10 (Δ -10)
  - cleanup: 0 → 1 (Δ 1)
  - declare: 4 → 11 (Δ 7)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 3 (Δ 3)
  - end: 0 → 1 (Δ 1)
  - loop: 0 → 5 (Δ 5)
  - store: 13 → 5 (Δ -8)
  - tail: 8 → 11 (Δ 3)
📏 IR line count: 312 → 183 (Δ -129)

[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/linear-algebra/kernels/2mm/2mm.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - br: 33 → 6 (Δ -27)
  - declare: 4 → 5 (Δ 1)
  - define: 0 → 1 (Δ 1)
  - store: 10 → 0 (Δ -10)
  - tail: 8 → 5 (Δ -3)
📏 IR line count: 351 → 82 (Δ -269)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - br: 33 → 19 (Δ -14)
  - cleanup: 0 → 1 (Δ 1)
  - compute: 0 → 4 (Δ 4)
  - declare: 4 → 8 (Δ 4)
  - define: 0 → 1 (Δ 1)
  - finalize: 0 → 1 (Δ 1)
  - inner: 0 → 1 (Δ 1)
  - loop: 0 → 8 (Δ 8)
  - print: 0 → 4 (Δ 4)
  - store: 10 → 6 (Δ -4)
  - tail: 8 → 13 (Δ 5)
📏 IR line count: 351 → 189 (Δ -162)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - br: 33 → 13 (Δ -20)
  - declare: 4 → 9 (Δ 5)
  - define: 0 → 1 (Δ 1)
  - for: 0 → 9 (Δ 9)
  - if: 0 → 4 (Δ 4)
  - store: 10 → 2 (Δ -8)
📏 IR line count: 351 → 168 (Δ -183)
/tmp/tmpytb5tqn3.ll:23:60: error: use of undefined value '%for.inc'

[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/linear-algebra/blas/gesummv/gesummv.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - br: 17 → 14 (Δ -3)
  - cleanup: 0 → 1 (Δ 1)
  - declare: 4 → 9 (Δ 5)
  - define: 0 → 1 (Δ 1)
  - end: 0 → 1 (Δ 1)
  - final: 0 → 1 (Δ 1)
  - loop: 0 → 6 (Δ 6)
  - newline: 0 → 1 (Δ 1)
  - print: 0 → 4 (Δ 4)
  - store: 10 → 8 (Δ -2)
  - tail: 8 → 7 (Δ -1)
📏 IR line count: 238 → 194 (Δ -44)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - begin: 0 → 1 (Δ 1)
  - br: 17 → 15 (Δ -2)
  - declare: 4 → 9 (Δ 5)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 1 (Δ 1)
  - end: 0 → 3 (Δ 3)
  - free: 0 → 1 (Δ 1)
  - loop: 0 → 6 (Δ 6)
  - newline: 0 → 1 (Δ 1)
  - start: 0 → 1 (Δ 1)
  - stop: 0 → 1 (Δ 1)
  - store: 10 → 8 (Δ -2)
📏 IR line count: 238 → 201 (Δ -37)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - br: 17 → 13 (Δ -4)
  - declare: 4 → 9 (Δ 5)
  - define: 0 → 1 (Δ 1)
  - for: 0 → 9 (Δ 9)
  - if: 0 → 4 (Δ 4)
  - store: 10 → 6 (Δ -4)
📏 IR line count: 238 → 166 (Δ -72)
/tmp/tmp2ad15mj_.ll:47:3: error: instruction expected to be numbered '%10' or greater

[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/linear-algebra/blas/trmm/trmm.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - br: 25 → 15 (Δ -10)
  - declare: 4 → 7 (Δ 3)
  - define: 0 → 1 (Δ 1)
  - for: 0 → 12 (Δ 12)
  - i: 2 → 0 (Δ -2)
  - if: 0 → 3 (Δ 3)
  - store: 11 → 3 (Δ -8)
  - switch: 1 → 0 (Δ -1)
📏 IR line count: 291 → 123 (Δ -168)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - br: 25 → 8 (Δ -17)
  - cleanup: 0 → 1 (Δ 1)
  - compute: 0 → 1 (Δ 1)
  - declare: 4 → 9 (Δ 5)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 5 (Δ 5)
  - i: 2 → 0 (Δ -2)
  - init: 0 → 1 (Δ 1)
  - store: 11 → 0 (Δ -11)
  - switch: 1 → 0 (Δ -1)
📏 IR line count: 291 → 136 (Δ -155)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - br: 25 → 9 (Δ -16)
  - declare: 4 → 9 (Δ 5)
  - i: 2 → 0 (Δ -2)
  - store: 11 → 0 (Δ -11)
  - switch: 1 → 0 (Δ -1)
📏 IR line count: 291 → 116 (Δ -175)
/tmp/tmprzyjsv4g.ll:20:3: error: instruction forward referenced with type 'label'

[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/linear-algebra/blas/syrk/syrk.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - attributes: 1 → 0 (Δ -1)
  - br: 34 → 86 (Δ 52)
  - declare: 4 → 0 (Δ -4)
  - define: 0 → 1 (Δ 1)
  - loop: 0 → 86 (Δ 86)
  - ret: 1 → 0 (Δ -1)
  - store: 10 → 0 (Δ -10)
  - tail: 5 → 0 (Δ -5)
📏 IR line count: 381 → 536 (Δ 155)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - declare: 4 → 10 (Δ 6)
  - define: 0 → 1 (Δ 1)
📏 IR line count: 381 → 361 (Δ -20)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - br: 34 → 15 (Δ -19)
  - declare: 4 → 1 (Δ -3)
  - define: 0 → 1 (Δ 1)
  - for: 0 → 12 (Δ 12)
  - if: 0 → 3 (Δ 3)
  - store: 10 → 0 (Δ -10)
📏 IR line count: 381 → 130 (Δ -251)
/tmp/tmpf4_m6p4f.ll:130:26: error: use of undefined metadata '!7'

[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/linear-algebra/blas/syr2k/syr2k.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - body: 0 → 2 (Δ 2)
  - br: 34 → 10 (Δ -24)
  - declare: 4 → 5 (Δ 1)
  - define: 0 → 1 (Δ 1)
  - exit: 0 → 4 (Δ 4)
  - loop: 0 → 4 (Δ 4)
  - store: 10 → 2 (Δ -8)
📏 IR line count: 409 → 106 (Δ -303)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - br: 34 → 8 (Δ -26)
  - declare: 4 → 5 (Δ 1)
  - define: 0 → 1 (Δ 1)
  - store: 10 → 0 (Δ -10)
  - tail: 6 → 3 (Δ -3)
📏 IR line count: 409 → 98 (Δ -311)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - br: 34 → 13 (Δ -21)
  - cleanup: 0 → 1 (Δ 1)
  - declare: 4 → 1 (Δ -3)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 5 (Δ 5)
  - finalize: 0 → 1 (Δ 1)
  - loop: 0 → 6 (Δ 6)
  - store: 10 → 5 (Δ -5)
📏 IR line count: 409 → 149 (Δ -260)

[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/linear-algebra/blas/gemver/gemver.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - attributes: 1 → 0 (Δ -1)
  - br: 27 → 43 (Δ 16)
  - declare: 4 → 0 (Δ -4)
  - define: 0 → 1 (Δ 1)
  - for: 0 → 43 (Δ 43)
  - ret: 1 → 0 (Δ -1)
  - store: 25 → 29 (Δ 4)
  - tail: 12 → 0 (Δ -12)
📏 IR line count: 453 → 424 (Δ -29)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - br: 27 → 11 (Δ -16)
  - declare: 4 → 8 (Δ 4)
  - define: 0 → 1 (Δ 1)
  - for: 0 → 7 (Δ 7)
  - if: 0 → 4 (Δ 4)
  - store: 25 → 9 (Δ -16)
  - tail: 12 → 13 (Δ 1)
📏 IR line count: 453 → 179 (Δ -274)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - attributes: 1 → 0 (Δ -1)
  - br: 27 → 11 (Δ -16)
  - declare: 4 → 0 (Δ -4)
  - for: 0 → 7 (Δ 7)
  - if: 0 → 4 (Δ 4)
  - store: 25 → 9 (Δ -16)
  - tail: 12 → 13 (Δ 1)
📏 IR line count: 453 → 127 (Δ -326)
/tmp/tmpsfnysf6b.ll:82:43: error: use of undefined value '@.str.1'

[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/linear-algebra/blas/symm/symm.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - declare: 4 → 10 (Δ 6)
  - define: 0 → 1 (Δ 1)
📏 IR line count: 442 → 435 (Δ -7)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - br: 39 → 7 (Δ -32)
  - cleanup: 0 → 1 (Δ 1)
  - declare: 4 → 1 (Δ -3)
  - define: 0 → 1 (Δ 1)
  - exit: 0 → 1 (Δ 1)
  - loop: 0 → 2 (Δ 2)
  - print: 0 → 3 (Δ 3)
  - store: 15 → 2 (Δ -13)
  - tail: 6 → 11 (Δ 5)
📏 IR line count: 442 → 89 (Δ -353)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - attributes: 1 → 0 (Δ -1)
  - br: 39 → 9 (Δ -30)
  - declare: 4 → 1 (Δ -3)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 3 (Δ 3)
  - end: 0 → 1 (Δ 1)
  - exit: 0 → 1 (Δ 1)
  - loop: 0 → 2 (Δ 2)
  - scalar: 0 → 1 (Δ 1)
  - store: 15 → 2 (Δ -13)
  - vectorized: 0 → 1 (Δ 1)
📏 IR line count: 442 → 105 (Δ -337)

[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/linear-algebra/blas/gemm/gemm.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - br: 30 → 10 (Δ -20)
  - cleanup: 0 → 1 (Δ 1)
  - compute: 0 → 2 (Δ 2)
  - declare: 4 → 1 (Δ -3)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 2 (Δ 2)
  - end: 0 → 2 (Δ 2)
  - loop: 0 → 3 (Δ 3)
  - store: 11 → 4 (Δ -7)
  - tail: 6 → 11 (Δ 5)
📏 IR line count: 357 → 134 (Δ -223)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - br: 30 → 17 (Δ -13)
  - cleanup: 0 → 1 (Δ 1)
  - compute: 0 → 3 (Δ 3)
  - declare: 4 → 1 (Δ -3)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 3 (Δ 3)
  - finalize: 0 → 1 (Δ 1)
  - loop: 0 → 9 (Δ 9)
  - store: 11 → 4 (Δ -7)
  - tail: 6 → 9 (Δ 3)
📏 IR line count: 357 → 174 (Δ -183)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - br: 30 → 16 (Δ -14)
  - cleanup: 0 → 1 (Δ 1)
  - compute: 0 → 1 (Δ 1)
  - declare: 4 → 10 (Δ 6)
  - define: 0 → 1 (Δ 1)
  - finalize: 0 → 1 (Δ 1)
  - loop: 0 → 3 (Δ 3)
  - next: 0 → 5 (Δ 5)
  - outer: 0 → 1 (Δ 1)
  - print: 0 → 4 (Δ 4)
  - store: 11 → 4 (Δ -7)
  - tail: 6 → 11 (Δ 5)
📏 IR line count: 357 → 184 (Δ -173)

[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/linear-algebra/solvers/lu/lu.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - attributes: 1 → 0 (Δ -1)
  - br: 50 → 17 (Δ -33)
  - call: 0 → 7 (Δ 7)
  - declare: 4 → 1 (Δ -3)
  - define: 0 → 1 (Δ 1)
  - for: 0 → 14 (Δ 14)
  - if: 0 → 3 (Δ 3)
  - store: 22 → 3 (Δ -19)
  - tail: 7 → 5 (Δ -2)
📏 IR line count: 531 → 146 (Δ -385)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - br: 50 → 15 (Δ -35)
  - call: 0 → 15 (Δ 15)
  - declare: 4 → 9 (Δ 5)
  - define: 0 → 1 (Δ 1)
  - for: 0 → 11 (Δ 11)
  - if: 0 → 4 (Δ 4)
  - store: 22 → 0 (Δ -22)
  - tail: 7 → 0 (Δ -7)
📏 IR line count: 531 → 144 (Δ -387)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - declare: 4 → 11 (Δ 7)
  - define: 0 → 1 (Δ 1)
📏 IR line count: 531 → 472 (Δ -59)
/tmp/tmpaac_699v.ll:53:3: error: instruction expected to be numbered '%29' or greater

[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/linear-algebra/solvers/ludcmp/ludcmp.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - attributes: 1 → 0 (Δ -1)
  - br: 62 → 5 (Δ -57)
  - declare: 4 → 1 (Δ -3)
  - define: 0 → 1 (Δ 1)
  - end: 0 → 1 (Δ 1)
  - exit: 0 → 1 (Δ 1)
  - loop: 0 → 1 (Δ 1)
  - scalar: 0 → 1 (Δ 1)
  - store: 28 → 4 (Δ -24)
  - tail: 10 → 4 (Δ -6)
  - vectorized: 0 → 1 (Δ 1)
📏 IR line count: 706 → 73 (Δ -633)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - br: 62 → 2 (Δ -60)
  - declare: 4 → 2 (Δ -2)
  - define: 0 → 1 (Δ 1)
  - end: 0 → 1 (Δ 1)
  - loop: 0 → 1 (Δ 1)
  - store: 28 → 5 (Δ -23)
  - tail: 10 → 5 (Δ -5)
📏 IR line count: 706 → 58 (Δ -648)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - attributes: 1 → 0 (Δ -1)
  - br: 62 → 0 (Δ -62)
  - declare: 4 → 0 (Δ -4)
  - define: 0 → 1 (Δ 1)
  - ret: 1 → 0 (Δ -1)
  - store: 28 → 0 (Δ -28)
  - tail: 10 → 0 (Δ -10)
📏 IR line count: 706 → 650 (Δ -56)
/tmp/tmpq0s2zmb9.ll:650:10: error: expected instruction opcode
  650 |   %637 = bit
      |          ^
1 error generated.

[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/linear-algebra/solvers/trisolv/trisolv.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - cleanup: 0 → 1 (Δ 1)
  - declare: 4 → 9 (Δ 5)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 6 (Δ 6)
  - loop: 0 → 7 (Δ 7)
  - main: 0 → 7 (Δ 7)
  - timer: 0 → 2 (Δ 2)
📏 IR line count: 263 → 257 (Δ -6)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - begin: 0 → 1 (Δ 1)
  - br: 23 → 21 (Δ -2)
  - cleanup: 0 → 1 (Δ 1)
  - declare: 4 → 9 (Δ 5)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 3 (Δ 3)
  - end: 0 → 1 (Δ 1)
  - loop: 0 → 12 (Δ 12)
  - newline: 0 → 1 (Δ 1)
  - timer: 0 → 2 (Δ 2)
📏 IR line count: 263 → 249 (Δ -14)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - br: 23 → 17 (Δ -6)
  - cleanup: 0 → 1 (Δ 1)
  - declare: 4 → 9 (Δ 5)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 4 (Δ 4)
  - exit: 0 → 1 (Δ 1)
  - loop: 0 → 9 (Δ 9)
  - newline: 0 → 1 (Δ 1)
  - next: 0 → 1 (Δ 1)
  - store: 9 → 7 (Δ -2)
  - tail: 6 → 5 (Δ -1)
📏 IR line count: 263 → 193 (Δ -70)
/tmp/tmpfeg21i50.ll:108:43: error: use of undefined metadata '!17'

[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/linear-algebra/solvers/gramschmidt/gramschmidt.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - br: 38 → 15 (Δ -23)
  - declare: 4 → 1 (Δ -3)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 7 (Δ 7)
  - free: 0 → 1 (Δ 1)
  - init: 0 → 1 (Δ 1)
  - main: 0 → 2 (Δ 2)
  - scalar: 0 → 2 (Δ 2)
  - store: 16 → 5 (Δ -11)
  - vectorized: 0 → 2 (Δ 2)
📏 IR line count: 486 → 143 (Δ -343)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - br: 38 → 17 (Δ -21)
  - declare: 4 → 8 (Δ 4)
  - define: 0 → 1 (Δ 1)
  - for: 0 → 12 (Δ 12)
  - if: 0 → 5 (Δ 5)
  - store: 16 → 2 (Δ -14)
  - tail: 7 → 17 (Δ 10)
📏 IR line count: 486 → 162 (Δ -324)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - br: 38 → 11 (Δ -27)
  - cleanup: 0 → 1 (Δ 1)
  - declare: 4 → 12 (Δ 8)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 6 (Δ 6)
  - end: 0 → 1 (Δ 1)
  - for: 0 → 3 (Δ 3)
  - store: 16 → 2 (Δ -14)
📏 IR line count: 486 → 194 (Δ -292)

[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/linear-algebra/solvers/durbin/durbin.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - br: 22 → 9 (Δ -13)
  - call: 3 → 4 (Δ 1)
  - compute: 0 → 2 (Δ 2)
  - declare: 4 → 1 (Δ -3)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 4 (Δ 4)
  - exit: 0 → 1 (Δ 1)
  - loop: 0 → 2 (Δ 2)
  - store: 9 → 1 (Δ -8)
📏 IR line count: 328 → 119 (Δ -209)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - declare: 4 → 13 (Δ 9)
  - define: 0 → 1 (Δ 1)
📏 IR line count: 328 → 317 (Δ -11)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - br: 22 → 15 (Δ -7)
  - call: 3 → 2 (Δ -1)
  - cleanup: 0 → 1 (Δ 1)
  - copy: 0 → 2 (Δ 2)
  - declare: 4 → 13 (Δ 9)
  - define: 0 → 1 (Δ 1)
  - end: 0 → 1 (Δ 1)
  - init: 0 → 1 (Δ 1)
  - inner: 0 → 2 (Δ 2)
  - loop: 0 → 1 (Δ 1)
  - main: 0 → 1 (Δ 1)
  - print: 0 → 6 (Δ 6)
  - store: 9 → 4 (Δ -5)
📏 IR line count: 328 → 220 (Δ -108)

[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/linear-algebra/solvers/cholesky/cholesky.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - attributes: 1 → 0 (Δ -1)
  - br: 50 → 23 (Δ -27)
  - call: 0 → 10 (Δ 10)
  - declare: 4 → 1 (Δ -3)
  - define: 0 → 1 (Δ 1)
  - for: 0 → 20 (Δ 20)
  - if: 0 → 3 (Δ 3)
  - store: 23 → 5 (Δ -18)
  - tail: 7 → 0 (Δ -7)
📏 IR line count: 533 → 146 (Δ -387)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - br: 50 → 23 (Δ -27)
  - declare: 4 → 9 (Δ 5)
  - define: 0 → 1 (Δ 1)
  - for: 0 → 20 (Δ 20)
  - if: 0 → 3 (Δ 3)
  - store: 23 → 4 (Δ -19)
  - tail: 7 → 6 (Δ -1)
📏 IR line count: 533 → 169 (Δ -364)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - br: 50 → 24 (Δ -26)
  - declare: 4 → 9 (Δ 5)
  - define: 0 → 1 (Δ 1)
  - for: 0 → 21 (Δ 21)
  - if: 0 → 3 (Δ 3)
  - store: 23 → 3 (Δ -20)
📏 IR line count: 533 → 191 (Δ -342)
/tmp/tmp7zefegch.ll:78:20: error: use of undefined value '%for.end4'

[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/medley/deriche/deriche.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - begin: 0 → 1 (Δ 1)
  - declare: 4 → 9 (Δ 5)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 3 (Δ 3)
  - end: 0 → 1 (Δ 1)
  - exit: 0 → 1 (Δ 1)
  - inner: 0 → 2 (Δ 2)
  - loop: 0 → 27 (Δ 27)
  - newline: 0 → 1 (Δ 1)
📏 IR line count: 462 → 396 (Δ -66)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - br: 36 → 26 (Δ -10)
  - declare: 4 → 9 (Δ 5)
  - define: 0 → 1 (Δ 1)
  - exit: 0 → 1 (Δ 1)
  - loop: 0 → 25 (Δ 25)
  - store: 19 → 7 (Δ -12)
📏 IR line count: 462 → 298 (Δ -164)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - attributes: 1 → 0 (Δ -1)
  - declare: 4 → 9 (Δ 5)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 6 (Δ 6)
  - exit: 0 → 1 (Δ 1)
  - loop: 0 → 27 (Δ 27)
  - newline: 0 → 1 (Δ 1)
  - print: 0 → 1 (Δ 1)
  - store: 19 → 13 (Δ -6)
  - tail: 7 → 11 (Δ 4)
📏 IR line count: 462 → 360 (Δ -102)
/tmp/tmpjpzm7qdt.ll:305:19: error: '%258' defined with type 'i64' but expected 'i32'

[⚙️] Building LLVM IR for: src/PolyBenchC-4.2.1/medley/nussinov/nussinov.c
[🔧] Building native binary...
[📊] Skipping perf collection (dummy mode)...
[📃] Parsing profile for LLM input...
[🤖] Optimizing via LLM...

🔄 Iteration 1/3 ----------------------
🔁 IR instruction delta at step 1:
  - br: 23 → 7 (Δ -16)
  - cleanup: 0 → 1 (Δ 1)
  - declare: 4 → 10 (Δ 6)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 2 (Δ 2)
  - exit: 0 → 1 (Δ 1)
  - loop: 0 → 3 (Δ 3)
  - store: 7 → 1 (Δ -6)
📏 IR line count: 270 → 123 (Δ -147)

🔄 Iteration 2/3 ----------------------
🔁 IR instruction delta at step 2:
  - br: 23 → 7 (Δ -16)
  - declare: 4 → 10 (Δ 6)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 4 (Δ 4)
  - end: 0 → 1 (Δ 1)
  - exit: 0 → 1 (Δ 1)
  - loop: 0 → 1 (Δ 1)
  - store: 7 → 0 (Δ -7)
📏 IR line count: 270 → 120 (Δ -150)

🔄 Iteration 3/3 ----------------------
🔁 IR instruction delta at step 3:
  - br: 23 → 6 (Δ -17)
  - declare: 4 → 10 (Δ 6)
  - define: 0 → 1 (Δ 1)
  - dump: 0 → 3 (Δ 3)
  - end: 0 → 1 (Δ 1)
  - exit: 0 → 1 (Δ 1)
  - loop: 0 → 1 (Δ 1)
  - store: 7 → 0 (Δ -7)
  - tail: 6 → 9 (Δ 3)
📏 IR line count: 270 → 119 (Δ -151)
/tmp/tmpi6vye07u.ll:54:3: error: instruction expected to be numbered '%15' or greater

