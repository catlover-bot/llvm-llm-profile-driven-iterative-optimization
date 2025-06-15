(.venv) catlover@LAPTOP-Q9ICF19D:~/mibench-opt/NPB/NPB/NPB3.3.1/NPB3.3-SER/BT$ cd ~/mibench-opt/NPB/NPB/NPB3.3.1/NPB3.3-SER

hyperfine \
  --warmup 2 \
  --runs 10 \
  --export-markdown npb_serial_classA.md \
  "./bin/bt.A.x" \
  "./bin/cg.A.x" \
  "./bin/sp.A.x" \
  "./bin/lu.A.x" \
  "./bin/mg.A.x" \
  "./bin/ft.A.x" \
  "./bin/is.A.x" \
  "./bin/ep.A.x"
Benchmark 1: ./bin/bt.A.x
  Time (mean ± σ):     38.007 s ±  0.984 s    [User: 40.296 s, System: 0.055 s]
  Range (min … max):   36.644 s … 39.742 s    10 runs

Benchmark 2: ./bin/cg.A.x
  Time (mean ± σ):      1.135 s ±  0.067 s    [User: 1.183 s, System: 0.017 s]
  Range (min … max):    1.053 s …  1.222 s    10 runs

Benchmark 3: ./bin/sp.A.x
  Time (mean ± σ):     20.816 s ±  1.140 s    [User: 22.088 s, System: 0.026 s]
  Range (min … max):   19.812 s … 22.791 s    10 runs

Benchmark 4: ./bin/lu.A.x
  Time (mean ± σ):     24.532 s ±  1.600 s    [User: 26.141 s, System: 0.005 s]
  Range (min … max):   23.455 s … 28.931 s    10 runs

  Warning: Statistical outliers were detected. Consider re-running this benchmark on a quiet system without any interferences from other programs. It might help to use the '--warmup' or '--prepare' options.

Benchmark 5: ./bin/mg.A.x
  Time (mean ± σ):      1.571 s ±  0.151 s    [User: 1.641 s, System: 0.037 s]
  Range (min … max):    1.428 s …  1.894 s    10 runs

Benchmark 6: ./bin/ft.A.x
  Time (mean ± σ):      2.539 s ±  0.155 s    [User: 2.667 s, System: 0.032 s]
  Range (min … max):    2.372 s …  2.805 s    10 runs

Benchmark 7: ./bin/is.A.x
  Time (mean ± σ):      1.068 s ±  0.062 s    [User: 1.118 s, System: 0.015 s]
  Range (min … max):    1.008 s …  1.198 s    10 runs

Benchmark 8: ./bin/ep.A.x
  Time (mean ± σ):      3.779 s ±  0.148 s    [User: 4.008 s, System: 0.000 s]
  Range (min … max):    3.614 s …  4.038 s    10 runs

Summary
  ./bin/is.A.x ran
    1.06 ± 0.09 times faster than ./bin/cg.A.x
    1.47 ± 0.16 times faster than ./bin/mg.A.x
    2.38 ± 0.20 times faster than ./bin/ft.A.x
    3.54 ± 0.25 times faster than ./bin/ep.A.x
   19.50 ± 1.56 times faster than ./bin/sp.A.x
   22.98 ± 2.01 times faster than ./bin/lu.A.x
   35.60 ± 2.27 times faster than ./bin/bt.A.x
