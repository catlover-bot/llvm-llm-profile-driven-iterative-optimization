#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

/* Include polybench common header. */
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout

/* Include benchmark-specific header. */
#include "seidel-2d.h"

/* Array initialization. */
static void init_array(int n, DATA_TYPE POLYBENCH_2D(A,N,N,n,n)) {
  int i, j;
  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++)
      A[i][j] = ((DATA_TYPE) i*(j+2) + 2) / n;
}

/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static void print_array(int n, DATA_TYPE POLYBENCH_2D(A,N,N,n,n)) {
  int i, j;
  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("A");
  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++) {
      if ((i * n + j) % 20 == 0) fprintf(POLYBENCH_DUMP_TARGET, "\n");
      fprintf(POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, A[i][j]);
    }
  POLYBENCH_DUMP_END("A");
  POLYBENCH_DUMP_FINISH;
}

/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static void kernel_seidel_2d(int tsteps, int n, DATA_TYPE POLYBENCH_2D(A,N,N,n,n)) {
  int t, i, j;

  DATA_TYPE tmp1, tmp2, tmp3;

#pragma scop
  for (t = 0; t <= _PB_TSTEPS - 1; t++) {
    for (i = 1; i <= _PB_N - 2; i++) {
      tmp1 = A[i-1][0];
      tmp2 = A[i][0];
      for (j = 1; j <= _PB_N - 2; j+=2) {
        tmp3 = A[i-1][j+1];
        A[i][j] = (tmp1 + A[i-1][j] + tmp3 + tmp2 + A[i][j] + A[i][j+1] + A[i+1][j-1] + A[i+1][j] + A[i+1][j+1]) / SCALAR_VAL(9.0);
        tmp1 = A[i-1][j];
        tmp2 = A[i][j];
        tmp3 = A[i-1][j+2];
        A[i][j+1] = (tmp1 + A[i-1][j+1] + tmp3 + tmp2 + A[i][j+1] + A[i][j+2] + A[i+1][j] + A[i+1][j+1] + A[i+1][j+2]) / SCALAR_VAL(9.0);
        tmp1 = A[i-1][j+1];
        tmp2 = A[i][j+1];
      }
    }
  }
#pragma endscop
}

int main(int argc, char** argv) {
  /* Retrieve problem size. */
  int n = N;
  int tsteps = TSTEPS;

  /* Variable declaration/allocation. */
  POLYBENCH_2D_ARRAY_DECL(A, DATA_TYPE, N, N, n, n);

  /* Initialize array(s). */
  init_array(n, POLYBENCH_ARRAY(A));

  /* Start timer. */
  polybench_start_instruments;

  /* Run kernel. */
  kernel_seidel_2d(tsteps, n, POLYBENCH_ARRAY(A));

  /* Stop and print timer. */
  polybench_stop_instruments;
  polybench_print_instruments;

  /* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  polybench_prevent_dce(print_array(n, POLYBENCH_ARRAY(A)));

  /* Be clean. */
  POLYBENCH_FREE_ARRAY(A);

  return 0;
}