#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout
#include "ludcmp.h"

static void init_array(int n, DATA_TYPE POLYBENCH_2D(A,N,N,n,n), DATA_TYPE POLYBENCH_1D(b,N,n), DATA_TYPE POLYBENCH_1D(x,N,n), DATA_TYPE POLYBENCH_1D(y,N,n)) {
  int i, j;
  DATA_TYPE fn = (DATA_TYPE)n;

  for (i = 0; i < n; i++) {
    x[i] = 0;
    y[i] = 0;
    b[i] = (i+1)/fn/2.0 + 4;
  }

  for (i = 0; i < n; i++) {
    for (j = 0; j <= i; j++)
      A[i][j] = (DATA_TYPE)(-j % n) / n + 1;
    for (j = i+1; j < n; j++)
      A[i][j] = 0;
    A[i][i] = 1;
  }

  DATA_TYPE POLYBENCH_2D(B,N,N,n,n) = {0};
  for (int t = 0; t < n; ++t)
    for (int r = 0; r < n; ++r)
      for (int s = 0; s < n; ++s)
        B[r][s] += A[r][t] * A[s][t];
  for (int r = 0; r < n; ++r)
    for (int s = 0; s < n; ++s)
      A[r][s] = B[r][s];
}

static void print_array(int n, DATA_TYPE POLYBENCH_1D(x,N,n)) {
  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("x");
  for (int i = 0; i < n; i++) {
    if (i % 20 == 0) fprintf(POLYBENCH_DUMP_TARGET, "\n");
    fprintf(POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, x[i]);
  }
  POLYBENCH_DUMP_END("x");
  POLYBENCH_DUMP_FINISH;
}

static void kernel_ludcmp(int n, DATA_TYPE POLYBENCH_2D(A,N,N,n,n), DATA_TYPE POLYBENCH_1D(b,N,n), DATA_TYPE POLYBENCH_1D(x,N,n), DATA_TYPE POLYBENCH_1D(y,N,n)) {
  int i, j, k;
  DATA_TYPE w;

  #pragma omp parallel for private(j, k, w)
  for (i = 0; i < _PB_N; i++) {
    for (j = 0; j < i; j++) {
      w = A[i][j];
      for (k = 0; k < j; k++) {
        w -= A[i][k] * A[k][j];
      }
      A[i][j] = w / A[j][j];
    }
    for (j = i; j < _PB_N; j++) {
      w = A[i][j];
      for (k = 0; k < i; k++) {
        w -= A[i][k] * A[k][j];
      }
      A[i][j] = w;
    }
  }

  #pragma omp parallel for private(j, w)
  for (i = 0; i < _PB_N; i++) {
    w = b[i];
    for (j = 0; j < i; j++)
      w -= A[i][j] * y[j];
    y[i] = w;
  }

  #pragma omp parallel for private(j, w)
  for (i = _PB_N-1; i >= 0; i--) {
    w = y[i];
    for (j = i+1; j < _PB_N; j++)
      w -= A[i][j] * x[j];
    x[i] = w / A[i][i];
  }
}

int main(int argc, char** argv) {
  int n = N;
  POLYBENCH_2D_ARRAY_DECL(A, DATA_TYPE, N, N, n, n);
  POLYBENCH_1D_ARRAY_DECL(b, DATA_TYPE, N, n);
  POLYBENCH_1D_ARRAY_DECL(x, DATA_TYPE, N, n);
  POLYBENCH_1D_ARRAY_DECL(y, DATA_TYPE, N, n);

  init_array(n, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(b), POLYBENCH_ARRAY(x), POLYBENCH_ARRAY(y));

  polybench_start_instruments;

  kernel_ludcmp(n, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(b), POLYBENCH_ARRAY(x), POLYBENCH_ARRAY(y));

  polybench_stop_instruments;
  polybench_print_instruments;

  polybench_prevent_dce(print_array(n, POLYBENCH_ARRAY(x)));

  POLYBENCH_FREE_ARRAY(A);
  POLYBENCH_FREE_ARRAY(b);
  POLYBENCH_FREE_ARRAY(x);
  POLYBENCH_FREE_ARRAY(y);

  return 0;
}