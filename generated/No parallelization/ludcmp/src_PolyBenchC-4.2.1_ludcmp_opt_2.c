#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

/* Include polybench common header. */
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout

/* Include benchmark-specific header. */
#include "ludcmp.h"

/* Array initialization. */
static void init_array(int n,
                       DATA_TYPE POLYBENCH_2D(A, N, N, n, n),
                       DATA_TYPE POLYBENCH_1D(b, N, n),
                       DATA_TYPE POLYBENCH_1D(x, N, n),
                       DATA_TYPE POLYBENCH_1D(y, N, n)) {
  int i, j;
  DATA_TYPE fn = (DATA_TYPE)n;
  DATA_TYPE fn_half = 0.5 / fn;

  for (i = 0; i < n; i++) {
    x[i] = 0;
    y[i] = 0;
    b[i] = (i + 1) * fn_half + 4;
  }

  for (i = 0; i < n; i++) {
    for (j = 0; j <= i; j++)
      A[i][j] = (DATA_TYPE)(-j % n) / n + 1;
    for (j = i + 1; j < n; j++) {
      A[i][j] = 0;
    }
    A[i][i] = 1;
  }

  /* Make the matrix positive semi-definite. */
  int r, s, t;
  POLYBENCH_2D_ARRAY_DECL(B, DATA_TYPE, N, N, n, n);
  for (r = 0; r < n; ++r) {
    for (s = 0; s < n; ++s)
      B[r][s] = 0;
    for (t = 0; t < n; ++t) {
      DATA_TYPE Ar = A[r][t];
      for (s = 0; s < n; ++s)
        B[r][s] += Ar * A[s][t];
    }
    for (s = 0; s < n; ++s)
      A[r][s] = B[r][s];
  }
  POLYBENCH_FREE_ARRAY(B);
}

/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static void print_array(int n,
                        DATA_TYPE POLYBENCH_1D(x, N, n)) {
  int i;

  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("x");
  for (i = 0; i < n; i++) {
    if (i % 20 == 0)
      fprintf(POLYBENCH_DUMP_TARGET, "\n");
    fprintf(POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, x[i]);
  }
  POLYBENCH_DUMP_END("x");
  POLYBENCH_DUMP_FINISH;
}

/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static void kernel_ludcmp(int n,
                          DATA_TYPE POLYBENCH_2D(A, N, N, n, n),
                          DATA_TYPE POLYBENCH_1D(b, N, n),
                          DATA_TYPE POLYBENCH_1D(x, N, n),
                          DATA_TYPE POLYBENCH_1D(y, N, n)) {
  int i, j, k;
  DATA_TYPE w;

#pragma scop
  for (i = 0; i < n; i++) {
    for (j = 0; j < i; j++) {
      w = A[i][j];
      for (k = 0; k < j; k++) {
        w -= A[i][k] * A[k][j];
      }
      A[i][j] = w / A[j][j];
    }
    for (j = i; j < n; j++) {
      w = A[i][j];
      for (k = 0; k < i; k++) {
        w -= A[i][k] * A[k][j];
      }
      A[i][j] = w;
    }
  }

  for (i = 0; i < n; i++) {
    w = b[i];
    for (j = 0; j < i; j++)
      w -= A[i][j] * y[j];
    y[i] = w;
  }

  for (i = n - 1; i >= 0; i--) {
    w = y[i];
    for (j = i + 1; j < n; j++)
      w -= A[i][j] * x[j];
    x[i] = w / A[i][i];
  }
#pragma endscop
}

int main(int argc, char **argv) {
  /* Retrieve problem size. */
  int n = N;

  /* Variable declaration/allocation. */
  POLYBENCH_2D_ARRAY_DECL(A, DATA_TYPE, N, N, n, n);
  POLYBENCH_1D_ARRAY_DECL(b, DATA_TYPE, N, n);
  POLYBENCH_1D_ARRAY_DECL(x, DATA_TYPE, N, n);
  POLYBENCH_1D_ARRAY_DECL(y, DATA_TYPE, N, n);

  /* Initialize array(s). */
  init_array(n,
             POLYBENCH_ARRAY(A),
             POLYBENCH_ARRAY(b),
             POLYBENCH_ARRAY(x),
             POLYBENCH_ARRAY(y));

  /* Start timer. */
  polybench_start_instruments;

  /* Run kernel. */
  kernel_ludcmp(n,
                POLYBENCH_ARRAY(A),
                POLYBENCH_ARRAY(b),
                POLYBENCH_ARRAY(x),
                POLYBENCH_ARRAY(y));

  /* Stop and print timer. */
  polybench_stop_instruments;
  polybench_print_instruments;

  /* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  polybench_prevent_dce(print_array(n, POLYBENCH_ARRAY(x)));

  /* Be clean. */
  POLYBENCH_FREE_ARRAY(A);
  POLYBENCH_FREE_ARRAY(b);
  POLYBENCH_FREE_ARRAY(x);
  POLYBENCH_FREE_ARRAY(y);

  return 0;
}