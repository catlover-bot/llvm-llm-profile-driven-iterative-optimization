#define POLYBENCH_DUMP_TARGET stdout
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout
#include "lu.h"

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

  DATA_TYPE B[n][n];
  memset(B, 0, n * n * sizeof(DATA_TYPE));

  for (int t = 0; t < n; ++t)
    for (int r = 0; r < n; ++r)
      for (int s = 0; s < n; ++s)
        B[r][s] += A[r][t] * A[s][t];

  memcpy(A, B, n * n * sizeof(DATA_TYPE));
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
  POLYBENCH_2D_ARRAY_DECL(A, DATA_TYPE, N, N, n, n);
  init_array(n, POLYBENCH_ARRAY(A));
  polybench_start_instruments;
  kernel_lu(n, POLYBENCH_ARRAY(A));
  polybench_stop_instruments;
  polybench_print_instruments;
  polybench_prevent_dce(print_array(n, POLYBENCH_ARRAY(A)));
  POLYBENCH_FREE_ARRAY(A);
  return 0;
}