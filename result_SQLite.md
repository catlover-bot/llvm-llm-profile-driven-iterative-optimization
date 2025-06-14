| Command | Mean [s] | Min [s] | Max [s] | Relative |
|:---|---:|---:|---:|---:|
| `bash -c 'for i in $(seq 1 1000); do ./sqlite3_base_gcc_O0 heavy_test.db "SELECT COUNT(*) FROM items_heavy;" >/dev/null; done'` | 4.380 ± 0.158 | 4.199 | 4.654 | 1.16 ± 0.06 |
| `bash -c 'for i in $(seq 1 1000); do ./sqlite3_base_gcc_O3 heavy_test.db "SELECT COUNT(*) FROM items_heavy;" >/dev/null; done'` | 3.790 ± 0.162 | 3.585 | 4.046 | 1.00 |
| `bash -c 'for i in $(seq 1 1000); do ./sqlite3_base_clang_O0 heavy_test.db "SELECT COUNT(*) FROM items_heavy;" >/dev/null; done'` | 4.413 ± 0.230 | 4.169 | 4.867 | 1.16 ± 0.08 |
| `bash -c 'for i in $(seq 1 1000); do ./sqlite3_base_clang_O3 heavy_test.db "SELECT COUNT(*) FROM items_heavy;" >/dev/null; done'` | 4.161 ± 0.648 | 3.672 | 5.499 | 1.10 ± 0.18 |
