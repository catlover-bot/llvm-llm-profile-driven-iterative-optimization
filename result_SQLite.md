| Command | Mean [s] | Min [s] | Max [s] | Relative |
|:---|---:|---:|---:|---:|
| `bash -c 'for i in $(seq 1 1000); do ./sqlite3_base_gcc_O0 heavy_test.db "SELECT COUNT(*) FROM items_heavy;" >/dev/null; done'` | 4.380 ± 0.158 | 4.199 | 4.654 | 1.16 ± 0.06 |
| `bash -c 'for i in $(seq 1 1000); do ./sqlite3_base_gcc_O3 heavy_test.db "SELECT COUNT(*) FROM items_heavy;" >/dev/null; done'` | 3.790 ± 0.162 | 3.585 | 4.046 | 1.00 |
| `bash -c 'for i in $(seq 1 1000); do ./sqlite3_base_clang_O0 heavy_test.db "SELECT COUNT(*) FROM items_heavy;" >/dev/null; done'` | 4.413 ± 0.230 | 4.169 | 4.867 | 1.16 ± 0.08 |
| `bash -c 'for i in $(seq 1 1000); do ./sqlite3_base_clang_O3 heavy_test.db "SELECT COUNT(*) FROM items_heavy;" >/dev/null; done'` | 4.161 ± 0.648 | 3.672 | 5.499 | 1.10 ± 0.18 |

| Command | Mean [s] | Min [s] | Max [s] | Relative |
|:---|---:|---:|---:|---:|
| `bash -c 'for i in $(seq 1 1000); do ./sqlite3_opt_gcc_O0 heavy_test.db "SELECT COUNT(*) FROM items_heavy;" >/dev/null; done'` | 12.178 ± 0.644 | 11.156 | 13.221 | 1.12 ± 0.09 |
| `bash -c 'for i in $(seq 1 1000); do ./sqlite3_opt_gcc_O3 heavy_test.db "SELECT COUNT(*) FROM items_heavy;" >/dev/null; done'` | 11.228 ± 0.880 | 10.081 | 13.129 | 1.04 ± 0.10 |
| `bash -c 'for i in $(seq 1 1000); do ./sqlite3_opt_clang_O0 heavy_test.db "SELECT COUNT(*) FROM items_heavy;" >/dev/null; done'` | 11.924 ± 1.242 | 10.583 | 14.648 | 1.10 ± 0.13 |
| `bash -c 'for i in $(seq 1 1000); do ./sqlite3_opt_clang_O3 heavy_test.db "SELECT COUNT(*) FROM items_heavy;" >/dev/null; done'` | 10.825 ± 0.684 | 10.021 | 12.174 | 1.00 |
