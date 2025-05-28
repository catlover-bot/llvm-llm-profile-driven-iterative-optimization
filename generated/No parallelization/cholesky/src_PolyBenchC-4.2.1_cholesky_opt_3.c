#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout
#include "cholesky.h"

static void init_array(int n, DATA_TYPE POLYBENCH_2D(A, N, N, n, n)) {
  int i, j, t, r, s;
  DATA_TYPE B[N][N];

  for (i = 0; i < n; i++) {
    for (j = 0; j <= i; j++)
      A[i][j] = (DATA_TYPE)(-j % n) / n + 1;
    A[i][i] = 1;
  }

  for (r = 0; r < n; ++r)
    for (s = 0; s < n; ++s)
      B[r][s] = 0;

  for (t = 0; t < n; ++t) {
    for (r = 0; r < n; ++r) {
      DATA_TYPE Ar_t = A[r][t];
      for (s = 0; s < n; ++s) {
        B[r][s] += Ar_t * A[s][t];
      }
    }
  }

  for (r = 0; r < n; ++r)
    for (s = 0; s < n; ++s)
      A[r][s] = B[r][s];
}

static void print_array(int n, DATA_TYPE POLYBENCH_2D(A, N, N, n, n)) {
  int i, j;
  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("A");
  for (i = 0; i < n; i++)
    for (j = 0; j <= i; j++) {
      if ((i * n + j) % 20 == 0)
        fprintf(POLYBENCH_DUMP_TARGET, "\n");
      fprintf(POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, A[i][j]);
    }
  POLYBENCH_DUMP_END("A");
  POLYBENCH_DUMP_FINISH;
}

static void kernel_cholesky(int n, DATA_TYPE POLYBENCH_2D(A, N, N, n, n)) {
  int i, j, k;
#pragma scop
  for (i = 0; i < n; i++) {
    for (j = 0; j < i; j++) {
      DATA_TYPE sum = A[i][j];
      for (k = 0; k < j; k += 4) {
        sum -= A[i][k] * A[j][k];
        if (k + 1 < j) sum -= A[i][k + 1] * A[j][k + 1];
        if (k + 2 < j) sum -= A[i][k + 2] * A[j][k + 2];
        if (k + 3 < j) sum -= A[i][k + 3] * A[j][k + 3];
      }
      A[i][j] = sum / A[j][j];
    }
    DATA_TYPE sum = A[i][i];
    for (k = 0; k < i; k += 4) {
      sum -= A[i][k] * A[i][k];
      if (k + 1 < i) sum -= A[i][k + 1] * A[i][k + 1];
      if (k + 2 < i) sum -= A[i][k + 2] * A[i][k + 2];
      if (k + 3 < i) sum -= A[i][k + 3] * A[i][k + 3];
    }
    A[i][i] = SQRT_FUN(sum);
  }
#pragma endscop
}

int main(int argc, char** argv) {
  int n = N;
  POLYBENCH_2D_ARRAY_DECL(A, DATA_TYPE, N, N, n, n);

  init_array(n, POLYBENCH_ARRAY(A));

  polybench_start_instruments;

  kernel_cholesky(n, POLYBENCH_ARRAY(A));

  polybench_stop_instruments;
  polybench_print_instruments;

  polybench_prevent_dce(print_array(n, POLYBENCH_ARRAY(A)));

  POLYBENCH_FREE_ARRAY(A);

  return 0;
}