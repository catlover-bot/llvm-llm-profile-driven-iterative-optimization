#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout
#include "mvt.h"

static void init_array(int n, DATA_TYPE POLYBENCH_1D(x1,N,n), DATA_TYPE POLYBENCH_1D(x2,N,n), DATA_TYPE POLYBENCH_1D(y_1,N,n), DATA_TYPE POLYBENCH_1D(y_2,N,n), DATA_TYPE POLYBENCH_2D(A,N,N,n,n)) {
  for (int i = 0; i < n; i++) {
    x1[i] = (DATA_TYPE) (i % n) / n;
    x2[i] = (DATA_TYPE) ((i + 1) % n) / n;
    y_1[i] = (DATA_TYPE) ((i + 3) % n) / n;
    y_2[i] = (DATA_TYPE) ((i + 4) % n) / n;
    for (int j = 0; j < n; j++)
      A[i][j] = (DATA_TYPE) (i*j % n) / n;
  }
}

static void print_array(int n, DATA_TYPE POLYBENCH_1D(x1,N,n), DATA_TYPE POLYBENCH_1D(x2,N,n)) {
  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("x1");
  for (int i = 0; i < n; i++) {
    if (i % 20 == 0) fprintf (POLYBENCH_DUMP_TARGET, "\n");
    fprintf (POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, x1[i]);
  }
  POLYBENCH_DUMP_END("x1");

  POLYBENCH_DUMP_BEGIN("x2");
  for (int i = 0; i < n; i++) {
    if (i % 20 == 0) fprintf (POLYBENCH_DUMP_TARGET, "\n");
    fprintf (POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, x2[i]);
  }
  POLYBENCH_DUMP_END("x2");
  POLYBENCH_DUMP_FINISH;
}

static void kernel_mvt(int n, DATA_TYPE POLYBENCH_1D(x1,N,n), DATA_TYPE POLYBENCH_1D(x2,N,n), DATA_TYPE POLYBENCH_1D(y_1,N,n), DATA_TYPE POLYBENCH_1D(y_2,N,n), DATA_TYPE POLYBENCH_2D(A,N,N,n,n)) {
  int i, j;

  #pragma scop
  for (i = 0; i < _PB_N; i++) {
    DATA_TYPE sum1 = x1[i];
    DATA_TYPE sum2 = x2[i];
    for (j = 0; j < _PB_N; j++) {
      sum1 += A[i][j] * y_1[j];
      sum2 += A[j][i] * y_2[j];
    }
    x1[i] = sum1;
    x2[i] = sum2;
  }
  #pragma endscop
}

int main(int argc, char** argv) {
  int n = N;

  POLYBENCH_2D_ARRAY_DECL(A, DATA_TYPE, N, N, n, n);
  POLYBENCH_1D_ARRAY_DECL(x1, DATA_TYPE, N, n);
  POLYBENCH_1D_ARRAY_DECL(x2, DATA_TYPE, N, n);
  POLYBENCH_1D_ARRAY_DECL(y_1, DATA_TYPE, N, n);
  POLYBENCH_1D_ARRAY_DECL(y_2, DATA_TYPE, N, n);

  init_array (n, POLYBENCH_ARRAY(x1), POLYBENCH_ARRAY(x2), POLYBENCH_ARRAY(y_1), POLYBENCH_ARRAY(y_2), POLYBENCH_ARRAY(A));

  polybench_start_instruments;

  kernel_mvt (n, POLYBENCH_ARRAY(x1), POLYBENCH_ARRAY(x2), POLYBENCH_ARRAY(y_1), POLYBENCH_ARRAY(y_2), POLYBENCH_ARRAY(A));

  polybench_stop_instruments;
  polybench_print_instruments;

  polybench_prevent_dce(print_array(n, POLYBENCH_ARRAY(x1), POLYBENCH_ARRAY(x2)));

  POLYBENCH_FREE_ARRAY(A);
  POLYBENCH_FREE_ARRAY(x1);
  POLYBENCH_FREE_ARRAY(x2);
  POLYBENCH_FREE_ARRAY(y_1);
  POLYBENCH_FREE_ARRAY(y_2);

  return 0;
}