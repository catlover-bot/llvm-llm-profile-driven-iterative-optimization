#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout
#include "gramschmidt.h"

static void init_array(int m, int n, DATA_TYPE POLYBENCH_2D(A,M,N,m,n), DATA_TYPE POLYBENCH_2D(R,N,N,n,n), DATA_TYPE POLYBENCH_2D(Q,M,N,m,n)) {
  int i, j;
  for (i = 0; i < m; i++) {
    for (j = 0; j < n; j++) {
      A[i][j] = (((DATA_TYPE) ((i*j) % m) / m )*100) + 10;
      Q[i][j] = 0.0;
    }
  }
  for (i = 0; i < n; i++) {
    for (j = 0; j < n; j++) {
      R[i][j] = 0.0;
    }
  }
}

static void print_array(int m, int n, DATA_TYPE POLYBENCH_2D(A,M,N,m,n), DATA_TYPE POLYBENCH_2D(R,N,N,n,n), DATA_TYPE POLYBENCH_2D(Q,M,N,m,n)) {
  int i, j;
  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("R");
  for (i = 0; i < n; i++) {
    for (j = 0; j < n; j++) {
      if ((i*n+j) % 20 == 0) fprintf (POLYBENCH_DUMP_TARGET, "\n");
      fprintf (POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, R[i][j]);
    }
  }
  POLYBENCH_DUMP_END("R");
  POLYBENCH_DUMP_BEGIN("Q");
  for (i = 0; i < m; i++) {
    for (j = 0; j < n; j++) {
      if ((i*n+j) % 20 == 0) fprintf (POLYBENCH_DUMP_TARGET, "\n");
      fprintf (POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, Q[i][j]);
    }
  }
  POLYBENCH_DUMP_END("Q");
  POLYBENCH_DUMP_FINISH;
}

static void kernel_gramschmidt(int m, int n, DATA_TYPE POLYBENCH_2D(A,M,N,m,n), DATA_TYPE POLYBENCH_2D(R,N,N,n,n), DATA_TYPE POLYBENCH_2D(Q,M,N,m,n)) {
  int i, j, k;

  #pragma omp parallel for private(i, j) schedule(static)
  for (k = 0; k < n; k++) {
    DATA_TYPE nrm = SCALAR_VAL(0.0);
    for (i = 0; i < m; i++) {
      nrm += A[i][k] * A[i][k];
    }
    DATA_TYPE Rkk = SQRT_FUN(nrm);
    R[k][k] = Rkk;
    DATA_TYPE invRkk = SCALAR_VAL(1.0) / Rkk;

    for (i = 0; i < m; i++) {
      Q[i][k] = A[i][k] * invRkk;
    }

    for (j = k + 1; j < n; j++) {
      DATA_TYPE Rkj = SCALAR_VAL(0.0);
      for (i = 0; i < m; i++) {
        Rkj += Q[i][k] * A[i][j];
      }
      R[k][j] = Rkj;

      for (i = 0; i < m; i++) {
        A[i][j] -= Q[i][k] * Rkj;
      }
    }
  }
}

int main(int argc, char** argv) {
  int m = M;
  int n = N;

  POLYBENCH_2D_ARRAY_DECL(A,DATA_TYPE,M,N,m,n);
  POLYBENCH_2D_ARRAY_DECL(R,DATA_TYPE,N,N,n,n);
  POLYBENCH_2D_ARRAY_DECL(Q,DATA_TYPE,M,N,m,n);

  init_array(m, n, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(R), POLYBENCH_ARRAY(Q));

  polybench_start_instruments;

  kernel_gramschmidt(m, n, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(R), POLYBENCH_ARRAY(Q));

  polybench_stop_instruments;
  polybench_print_instruments;

  polybench_prevent_dce(print_array(m, n, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(R), POLYBENCH_ARRAY(Q)));

  POLYBENCH_FREE_ARRAY(A);
  POLYBENCH_FREE_ARRAY(R);
  POLYBENCH_FREE_ARRAY(Q);

  return 0;
}