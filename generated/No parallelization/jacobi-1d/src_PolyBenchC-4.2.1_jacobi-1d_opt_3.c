#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

/* Include polybench common header. */
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout

/* Include benchmark-specific header. */
#include "jacobi-1d.h"

/* Array initialization. */
static void init_array(int n,
                       DATA_TYPE POLYBENCH_1D(A, N, n),
                       DATA_TYPE POLYBENCH_1D(B, N, n)) {
  int i;
  DATA_TYPE inv_n = 1.0 / n;

  for (i = 0; i < n; i++) {
    A[i] = ((DATA_TYPE)i + 2) * inv_n;
    B[i] = ((DATA_TYPE)i + 3) * inv_n;
  }
}

/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static void print_array(int n,
                        DATA_TYPE POLYBENCH_1D(A, N, n)) {
  int i;

  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("A");
  for (i = 0; i < n; i++) {
    if (i % 20 == 0) fprintf(POLYBENCH_DUMP_TARGET, "\n");
    fprintf(POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, A[i]);
  }
  POLYBENCH_DUMP_END("A");
  POLYBENCH_DUMP_FINISH;
}

/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static void kernel_jacobi_1d(int tsteps,
                             int n,
                             DATA_TYPE POLYBENCH_1D(A, N, n),
                             DATA_TYPE POLYBENCH_1D(B, N, n)) {
  int t, i;
  DATA_TYPE c0 = 0.33333;

#pragma scop
  for (t = 0; t < _PB_TSTEPS; t++) {
    DATA_TYPE prevA = A[0];
    DATA_TYPE prevB = B[0];
    DATA_TYPE nextA, nextB;

    for (i = 1; i < _PB_N - 1; i++) {
      nextA = A[i + 1];
      B[i] = c0 * (prevA + A[i] + nextA);
      prevA = A[i];
    }

    for (i = 1; i < _PB_N - 1; i++) {
      nextB = B[i + 1];
      A[i] = c0 * (prevB + B[i] + nextB);
      prevB = B[i];
    }
  }
#pragma endscop
}

int main(int argc, char **argv) {
  /* Retrieve problem size. */
  int n = N;
  int tsteps = TSTEPS;

  /* Variable declaration/allocation. */
  POLYBENCH_1D_ARRAY_DECL(A, DATA_TYPE, N, n);
  POLYBENCH_1D_ARRAY_DECL(B, DATA_TYPE, N, n);

  /* Initialize array(s). */
  init_array(n, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(B));

  /* Start timer. */
  polybench_start_instruments;

  /* Run kernel. */
  kernel_jacobi_1d(tsteps, n, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(B));

  /* Stop and print timer. */
  polybench_stop_instruments;
  polybench_print_instruments;

  /* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  polybench_prevent_dce(print_array(n, POLYBENCH_ARRAY(A)));

  /* Be clean. */
  POLYBENCH_FREE_ARRAY(A);
  POLYBENCH_FREE_ARRAY(B);

  return 0;
}