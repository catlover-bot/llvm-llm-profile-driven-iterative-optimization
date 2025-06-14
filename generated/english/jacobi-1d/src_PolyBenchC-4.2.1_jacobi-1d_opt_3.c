#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout
#include "jacobi-1d.h"

static void init_array(int n, DATA_TYPE POLYBENCH_1D(A, N, n), DATA_TYPE POLYBENCH_1D(B, N, n)) {
  #pragma omp parallel for simd
  for (int i = 0; i < n; i++) {
    A[i] = ((DATA_TYPE)i + 2) / n;
    B[i] = ((DATA_TYPE)i + 3) / n;
  }
}

static void print_array(int n, DATA_TYPE POLYBENCH_1D(A, N, n)) {
  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("A");
  for (int i = 0; i < n; i++) {
    if (i % 20 == 0) fprintf(POLYBENCH_DUMP_TARGET, "\n");
    fprintf(POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, A[i]);
  }
  POLYBENCH_DUMP_END("A");
  POLYBENCH_DUMP_FINISH;
}

static void kernel_jacobi_1d(int tsteps, int n, DATA_TYPE POLYBENCH_1D(A, N, n), DATA_TYPE POLYBENCH_1D(B, N, n)) {
  for (int t = 0; t < _PB_TSTEPS; t++) {
    #pragma omp parallel
    {
      #pragma omp for simd
      for (int i = 1; i < _PB_N - 1; i++) {
        B[i] = 0.33333 * (A[i - 1] + A[i] + A[i + 1]);
      }
      #pragma omp for simd
      for (int i = 1; i < _PB_N - 1; i++) {
        A[i] = 0.33333 * (B[i - 1] + B[i] + B[i + 1]);
      }
    }
  }
}

int main(int argc, char** argv) {
  int n = N;
  int tsteps = TSTEPS;

  POLYBENCH_1D_ARRAY_DECL(A, DATA_TYPE, N, n);
  POLYBENCH_1D_ARRAY_DECL(B, DATA_TYPE, N, n);

  init_array(n, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(B));

  polybench_start_instruments;

  kernel_jacobi_1d(tsteps, n, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(B));

  polybench_stop_instruments;
  polybench_print_instruments;

  polybench_prevent_dce(print_array(n, POLYBENCH_ARRAY(A)));

  POLYBENCH_FREE_ARRAY(A);
  POLYBENCH_FREE_ARRAY(B);

  return 0;
}