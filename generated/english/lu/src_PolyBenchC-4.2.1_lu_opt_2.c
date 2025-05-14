#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

/* Include polybench common header. */
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout

/* Include benchmark-specific header. */
#include "lu.h"

/* Array initialization. */
static void init_array(int n, DATA_TYPE POLYBENCH_2D(A, N, N, n, n)) {
  int i, j;
  for (i = 0; i < n; i++) {
    for (j = 0; j <= i; j++)
      A[i][j] = (DATA_TYPE)(-j % n) / n + 1;
    for (j = i + 1; j < n; j++) {
      A[i][j] = 0;
    }
    A[i][i] = 1;
  }

  int r, t;
  DATA_TYPE B[N][N] = {0}; // Initialize B with zeroes
  for (t = 0; t < n; ++t)
    for (r = 0; r < n; ++r) {
      DATA_TYPE At = A[t][r];
      for (j = 0; j < n; ++j)
        B[r][j] += At * A[t][j];
    }
  memcpy(A, B, sizeof(DATA_TYPE) * n * n);
}

/* DCE code. Must scan the entire live-out data. Can be used also to check the correctness of the output. */
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

/* Main computational kernel. The whole function will be timed, including the call and return. */
static void kernel_lu(int n, DATA_TYPE POLYBENCH_2D(A, N, N, n, n)) {
  int i, j, k;

#pragma scop
  for (i = 0; i < n; i++) {
    for (j = 0; j < i; j++) {
      DATA_TYPE sum = A[i][j];
      for (k = 0; k < j; k++) {
        sum -= A[i][k] * A[k][j];
      }
      A[i][j] = sum / A[j][j];
    }
    for (j = i; j < n; j++) {
      DATA_TYPE sum = A[i][j];
      for (k = 0; k < i; k++) {
        sum -= A[i][k] * A[k][j];
      }
      A[i][j] = sum;
    }
  }
#pragma endscop
}

int main(int argc, char** argv) {
  int n = N;
  DATA_TYPE A[N][N];

  init_array(n, A);

  polybench_start_instruments;

  kernel_lu(n, A);

  polybench_stop_instruments;
  polybench_print_instruments;

  polybench_prevent_dce(print_array(n, A));

  return 0;
}