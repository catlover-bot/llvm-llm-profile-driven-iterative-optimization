#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout
#include "syr2k.h"

static void init_array(int n, int m, DATA_TYPE *alpha, DATA_TYPE *beta, DATA_TYPE POLYBENCH_2D(C,N,N,n,n), DATA_TYPE POLYBENCH_2D(A,N,M,n,m), DATA_TYPE POLYBENCH_2D(B,N,M,n,m)) {
  int i, j;
  *alpha = 1.5;
  *beta = 1.2;
  for (i = 0; i < n; i++)
    for (j = 0; j < m; j++) {
      A[i][j] = (DATA_TYPE) ((i*j+1)%n) / n;
      B[i][j] = (DATA_TYPE) ((i*j+2)%m) / m;
    }
  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++) {
      C[i][j] = (DATA_TYPE) ((i*j+3)%n) / m;
    }
}

static void print_array(int n, DATA_TYPE POLYBENCH_2D(C,N,N,n,n)) {
  int i, j;
  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("C");
  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++) {
      if ((i * n + j) % 20 == 0) fprintf (POLYBENCH_DUMP_TARGET, "\n");
      fprintf (POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, C[i][j]);
    }
  POLYBENCH_DUMP_END("C");
  POLYBENCH_DUMP_FINISH;
}

static void kernel_syr2k(int n, int m, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE POLYBENCH_2D(C,N,N,n,n), DATA_TYPE POLYBENCH_2D(A,N,M,n,m), DATA_TYPE POLYBENCH_2D(B,N,M,n,m)) {
  int i, j, k;
  #pragma omp parallel for private(j, k) schedule(dynamic)
  for (i = 0; i < _PB_N; i++) {
    for (j = 0; j <= i; j++)
      C[i][j] *= beta;
    for (k = 0; k < _PB_M; k++) {
      DATA_TYPE tmp_a = alpha * A[i][k];
      DATA_TYPE tmp_b = alpha * B[i][k];
      for (j = 0; j <= i; j++) {
        C[i][j] += A[j][k] * tmp_b + B[j][k] * tmp_a;
      }
    }
  }
}

int main(int argc, char** argv) {
  int n = N;
  int m = M;
  DATA_TYPE alpha;
  DATA_TYPE beta;
  POLYBENCH_2D_ARRAY_DECL(C,DATA_TYPE,N,N,n,n);
  POLYBENCH_2D_ARRAY_DECL(A,DATA_TYPE,N,M,n,m);
  POLYBENCH_2D_ARRAY_DECL(B,DATA_TYPE,N,M,n,m);

  init_array (n, m, &alpha, &beta, POLYBENCH_ARRAY(C), POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(B));

  polybench_start_instruments;

  kernel_syr2k (n, m, alpha, beta, POLYBENCH_ARRAY(C), POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(B));

  polybench_stop_instruments;
  polybench_print_instruments;

  polybench_prevent_dce(print_array(n, POLYBENCH_ARRAY(C)));

  POLYBENCH_FREE_ARRAY(C);
  POLYBENCH_FREE_ARRAY(A);
  POLYBENCH_FREE_ARRAY(B);

  return 0;
}