#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout
#include "floyd-warshall.h"

static void init_array(int n, DATA_TYPE POLYBENCH_2D(path, N, N, n, n)) {
  int i, j;
  for (i = 0; i < n; i++) {
    for (j = 0; j < n; j++) {
      int sum = i + j;
      path[i][j] = i * j % 7 + 1;
      if (sum % 13 == 0 || sum % 7 == 0 || sum % 11 == 0) {
        path[i][j] = 999;
      }
    }
  }
}

static void print_array(int n, DATA_TYPE POLYBENCH_2D(path, N, N, n, n)) {
  int i, j;
  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("path");
  for (i = 0; i < n; i++) {
    for (j = 0; j < n; j++) {
      if ((i * n + j) % 20 == 0) fprintf(POLYBENCH_DUMP_TARGET, "\n");
      fprintf(POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, path[i][j]);
    }
  }
  POLYBENCH_DUMP_END("path");
  POLYBENCH_DUMP_FINISH;
}

static void kernel_floyd_warshall(int n, DATA_TYPE POLYBENCH_2D(path, N, N, n, n)) {
  int i, j, k;
  #pragma scop
  for (k = 0; k < _PB_N; k++) {
    for (i = 0; i < _PB_N; i++) {
      DATA_TYPE path_ik = path[i][k];
      for (j = 0; j < _PB_N; j+=2) {
        DATA_TYPE path_kj_0 = path[k][j];
        DATA_TYPE sum0 = path_ik + path_kj_0;
        if (path[i][j] > sum0) {
          path[i][j] = sum0;
        }
        if (j + 1 < _PB_N) {
          DATA_TYPE path_kj_1 = path[k][j+1];
          DATA_TYPE sum1 = path_ik + path_kj_1;
          if (path[i][j+1] > sum1) {
            path[i][j+1] = sum1;
          }
        }
      }
    }
  }
  #pragma endscop
}

int main(int argc, char** argv) {
  int n = N;
  POLYBENCH_2D_ARRAY_DECL(path, DATA_TYPE, N, N, n, n);
  init_array(n, POLYBENCH_ARRAY(path));
  polybench_start_instruments;
  kernel_floyd_warshall(n, POLYBENCH_ARRAY(path));
  polybench_stop_instruments;
  polybench_print_instruments;
  polybench_prevent_dce(print_array(n, POLYBENCH_ARRAY(path)));
  POLYBENCH_FREE_ARRAY(path);
  return 0;
}