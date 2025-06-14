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

#pragma scop
  for (t = 0; t < _PB_TSTEPS; t++) {
    for (i = 1; i < _PB_N - 1; i++) {
      for (j = 1; j < _PB_N - 1; j+=2) {
        DATA_TYPE a00 = A[i-1][j-1];
        DATA_TYPE a01 = A[i-1][j];
        DATA_TYPE a02 = A[i-1][j+1];
        DATA_TYPE a10 = A[i][j-1];
        DATA_TYPE a11 = A[i][j];
        DATA_TYPE a12 = A[i][j+1];
        DATA_TYPE a20 = A[i+1][j-1];
        DATA_TYPE a21 = A[i+1][j];
        DATA_TYPE a22 = A[i+1][j+1];

        A[i][j] = (a00 + a01 + a02 + a10 + a11 + a12 + a20 + a21 + a22) / SCALAR_VAL(9.0);

        if (j+1 < _PB_N - 1) {
          a00 = A[i-1][j];
          a01 = A[i-1][j+1];
          a02 = A[i-1][j+2];
          a10 = A[i][j];
          a11 = A[i][j+1];
          a12 = A[i][j+2];
          a20 = A[i+1][j];
          a21 = A[i+1][j+1];
          a22 = A[i+1][j+2];
          
          A[i][j+1] = (a00 + a01 + a02 + a10 + a11 + a12 + a20 + a21 + a22) / SCALAR_VAL(9.0);
        }
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