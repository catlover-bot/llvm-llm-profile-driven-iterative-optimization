#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

/* Include polybench common header. */
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout

/* Include benchmark-specific header. */
#include "trisolv.h"

/* Array initialization. */
static void init_array(int n,
    DATA_TYPE POLYBENCH_2D(L, N, N, n, n),
    DATA_TYPE POLYBENCH_1D(x, N, n),
    DATA_TYPE POLYBENCH_1D(b, N, n)) {
  int i, j;

  for (i = 0; i < n; i++) {
    x[i] = -999;
    b[i] = i;
    DATA_TYPE in = i + n + 1;
    for (j = 0; j <= i; j++) {
      L[i][j] = (DATA_TYPE)(in - j) * 2 / n;
    }
  }
}

/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static void print_array(int n,
    DATA_TYPE POLYBENCH_1D(x, N, n)) {
  int i;

  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("x");
  for (i = 0; i < n; i++) {
    fprintf(POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, x[i]);
    if (i % 20 == 0) fprintf(POLYBENCH_DUMP_TARGET, "\n");
  }
  POLYBENCH_DUMP_END("x");
  POLYBENCH_DUMP_FINISH;
}

/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static void kernel_trisolv(int n,
    DATA_TYPE POLYBENCH_2D(L, N, N, n, n),
    DATA_TYPE POLYBENCH_1D(x, N, n),
    DATA_TYPE POLYBENCH_1D(b, N, n)) {
  int i, j;

#pragma scop
  for (i = 0; i < _PB_N; i++) {
    DATA_TYPE xi = b[i];
    DATA_TYPE *Li = L[i];
    for (j = 0; j < i; j++) {
      xi -= Li[j] * x[j];
    }
    x[i] = xi / Li[i];
  }
#pragma endscop
}

int main(int argc, char** argv) {
  /* Retrieve problem size. */
  int n = N;

  /* Variable declaration/allocation. */
  POLYBENCH_2D_ARRAY_DECL(L, DATA_TYPE, N, N, n, n);
  POLYBENCH_1D_ARRAY_DECL(x, DATA_TYPE, N, n);
  POLYBENCH_1D_ARRAY_DECL(b, DATA_TYPE, N, n);

  /* Initialize array(s). */
  init_array(n, POLYBENCH_ARRAY(L), POLYBENCH_ARRAY(x), POLYBENCH_ARRAY(b));

  /* Start timer. */
  polybench_start_instruments;

  /* Run kernel. */
  kernel_trisolv(n, POLYBENCH_ARRAY(L), POLYBENCH_ARRAY(x), POLYBENCH_ARRAY(b));

  /* Stop and print timer. */
  polybench_stop_instruments;
  polybench_print_instruments;

  /* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  polybench_prevent_dce(print_array(n, POLYBENCH_ARRAY(x)));

  /* Be clean. */
  POLYBENCH_FREE_ARRAY(L);
  POLYBENCH_FREE_ARRAY(x);
  POLYBENCH_FREE_ARRAY(b);

  return 0;
}