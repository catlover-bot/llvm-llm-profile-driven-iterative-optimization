#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout
#include "seidel-2d.h"

static void init_array(int n, DATA_TYPE POLYBENCH_2D(A, N, N, n, n)) {
  int i, j;
  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++)
      A[i][j] = ((DATA_TYPE)i * (j + 2) + 2) / n;
}

static void print_array(int n, DATA_TYPE POLYBENCH_2D(A, N, N, n, n)) {
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

static void kernel_seidel_2d(int tsteps, int n, DATA_TYPE POLYBENCH_2D(A, N, N, n, n)) {
  int t, i, j;

#pragma omp parallel
{
  DATA_TYPE prev, new_val;
  for (t = 0; t < tsteps; t++) {
    #pragma omp for schedule(static) nowait
    for (i = 1; i < n - 1; i++) {
      prev = A[i - 1][0];
      for (j = 1; j < n - 1; j++) {
        new_val = (prev + A[i - 1][j] + A[i - 1][j + 1] +
                   A[i][j - 1] + A[i][j] + A[i][j + 1] +
                   A[i + 1][j - 1] + A[i + 1][j] + A[i + 1][j + 1]) * SCALAR_VAL(0.1111111111111111);
        prev = A[i][j];
        A[i][j] = new_val;
      }
    }
  }
}
}

int main(int argc, char** argv) {
  int n = N;
  int tsteps = TSTEPS;
  POLYBENCH_2D_ARRAY_DECL(A, DATA_TYPE, N, N, n, n);

  init_array(n, POLYBENCH_ARRAY(A));
  polybench_start_instruments;
  kernel_seidel_2d(tsteps, n, POLYBENCH_ARRAY(A));
  polybench_stop_instruments;
  polybench_print_instruments;
  polybench_prevent_dce(print_array(n, POLYBENCH_ARRAY(A)));
  POLYBENCH_FREE_ARRAY(A);
  return 0;
}