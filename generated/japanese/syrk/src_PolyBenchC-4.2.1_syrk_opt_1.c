#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout
#include "syrk.h"

static void init_array(int n, int m, DATA_TYPE *alpha, DATA_TYPE *beta, DATA_TYPE POLYBENCH_2D(C,N,N,n,n), DATA_TYPE POLYBENCH_2D(A,N,M,n,m)) {
  *alpha = 1.5;
  *beta = 1.2;
  for (int i = 0; i < n; i++)
    for (int j = 0; j < m; j++)
      A[i][j] = (DATA_TYPE)((i*j+1)%n) / n;
  for (int i = 0; i < n; i++)
    for (int j = 0; j < n; j++)
      C[i][j] = (DATA_TYPE)((i*j+2)%m) / m;
}

static void print_array(int n, DATA_TYPE POLYBENCH_2D(C,N,N,n,n)) {
  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("C");
  for (int i = 0; i < n; i++)
    for (int j = 0; j < n; j++) {
      if ((i * n + j) % 20 == 0) fprintf (POLYBENCH_DUMP_TARGET, "\n");
      fprintf (POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, C[i][j]);
    }
  POLYBENCH_DUMP_END("C");
  POLYBENCH_DUMP_FINISH;
}

static void kernel_syrk(int n, int m, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE POLYBENCH_2D(C,N,N,n,n), DATA_TYPE POLYBENCH_2D(A,N,M,n,m)) {
  #pragma omp parallel for collapse(2)
  for (int i = 0; i < n; i++) {
    for (int j = 0; j <= i; j++) {
      C[i][j] *= beta;
    }
    for (int k = 0; k < m; k++) {
      for (int j = 0; j <= i; j++) {
        C[i][j] += alpha * A[i][k] * A[j][k];
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

  init_array(n, m, &alpha, &beta, POLYBENCH_ARRAY(C), POLYBENCH_ARRAY(A));

  polybench_start_instruments;

  kernel_syrk(n, m, alpha, beta, POLYBENCH_ARRAY(C), POLYBENCH_ARRAY(A));

  polybench_stop_instruments;
  polybench_print_instruments;

  polybench_prevent_dce(print_array(n, POLYBENCH_ARRAY(C)));

  POLYBENCH_FREE_ARRAY(C);
  POLYBENCH_FREE_ARRAY(A);

  return 0;
}