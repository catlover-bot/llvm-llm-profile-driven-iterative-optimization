#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

/* Include polybench common header. */
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout

/* Include benchmark-specific header. */
#include "gramschmidt.h"

/* Array initialization. */
static void init_array(int m, int n,
                       DATA_TYPE POLYBENCH_2D(A, M, N, m, n),
                       DATA_TYPE POLYBENCH_2D(R, N, N, n, n),
                       DATA_TYPE POLYBENCH_2D(Q, M, N, m, n)) {
  int i, j;

  for (i = 0; i < m; i++) {
    for (j = 0; j < n; j++) {
      A[i][j] = (((DATA_TYPE) ((i * j) % m) / m) * 100) + 10;
      Q[i][j] = 0.0;
    }
  }
  for (i = 0; i < n; i++) {
    for (j = 0; j < n; j++) {
      R[i][j] = 0.0;
    }
  }
}

/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static void print_array(int m, int n,
                        DATA_TYPE POLYBENCH_2D(A, M, N, m, n),
                        DATA_TYPE POLYBENCH_2D(R, N, N, n, n),
                        DATA_TYPE POLYBENCH_2D(Q, M, N, m, n)) {
  int i, j;

  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("R");
  for (i = 0; i < n; i++) {
    for (j = 0; j < n; j++) {
      if ((i * n + j) % 20 == 0) fprintf(POLYBENCH_DUMP_TARGET, "\n");
      fprintf(POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, R[i][j]);
    }
  }
  POLYBENCH_DUMP_END("R");

  POLYBENCH_DUMP_BEGIN("Q");
  for (i = 0; i < m; i++) {
    for (j = 0; j < n; j++) {
      if ((i * n + j) % 20 == 0) fprintf(POLYBENCH_DUMP_TARGET, "\n");
      fprintf(POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, Q[i][j]);
    }
  }
  POLYBENCH_DUMP_END("Q");
  POLYBENCH_DUMP_FINISH;
}

/* Main computational kernel. The whole function will be timed,
   including the call and return. */
/* QR Decomposition with Modified Gram Schmidt:
 http://www.inf.ethz.ch/personal/gander/ */
static void kernel_gramschmidt(int m, int n,
                               DATA_TYPE POLYBENCH_2D(A, M, N, m, n),
                               DATA_TYPE POLYBENCH_2D(R, N, N, n, n),
                               DATA_TYPE POLYBENCH_2D(Q, M, N, m, n)) {
  int i, j, k;

  DATA_TYPE nrm;

#pragma scop
  for (k = 0; k < _PB_N; k++) {
    nrm = SCALAR_VAL(0.0);
    for (i = 0; i < _PB_M; i++) {
      nrm += A[i][k] * A[i][k];
    }
    nrm = SQRT_FUN(nrm);
    R[k][k] = nrm;
    nrm = SCALAR_VAL(1.0) / nrm;
    
    DATA_TYPE *q_k = &Q[0][k];
    for (i = 0; i < _PB_M; i++) {
      q_k[i * N] = A[i][k] * nrm;
    }

    for (j = k + 1; j < _PB_N; j++) {
      DATA_TYPE rkj = SCALAR_VAL(0.0);
      for (i = 0; i < _PB_M; i++) {
        rkj += q_k[i * N] * A[i][j];
      }
      R[k][j] = rkj;
      for (i = 0; i < _PB_M; i++) {
        A[i][j] -= q_k[i * N] * rkj;
      }
    }
  }
#pragma endscop
}

int main(int argc, char** argv) {
  /* Retrieve problem size. */
  int m = M;
  int n = N;

  /* Variable declaration/allocation. */
  POLYBENCH_2D_ARRAY_DECL(A, DATA_TYPE, M, N, m, n);
  POLYBENCH_2D_ARRAY_DECL(R, DATA_TYPE, N, N, n, n);
  POLYBENCH_2D_ARRAY_DECL(Q, DATA_TYPE, M, N, m, n);

  /* Initialize array(s). */
  init_array(m, n, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(R), POLYBENCH_ARRAY(Q));

  /* Start timer. */
  polybench_start_instruments;

  /* Run kernel. */
  kernel_gramschmidt(m, n, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(R), POLYBENCH_ARRAY(Q));

  /* Stop and print timer. */
  polybench_stop_instruments;
  polybench_print_instruments;

  /* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  polybench_prevent_dce(print_array(m, n, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(R), POLYBENCH_ARRAY(Q)));

  /* Be clean. */
  POLYBENCH_FREE_ARRAY(A);
  POLYBENCH_FREE_ARRAY(R);
  POLYBENCH_FREE_ARRAY(Q);

  return 0;
}