#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <omp.h>
#include "polybench.h"
#define POLYBENCH_DUMP_TARGET stdout
#include "cholesky.h"

static void init_array(int n, DATA_TYPE POLYBENCH_2D(A, N, N, n, n)) {
  int i, j;
  DATA_TYPE tmp;

  #pragma omp parallel for private(j) schedule(static)
  for (i = 0; i < n; i++) {
    for (j = 0; j <= i; j++)
      A[i][j] = (DATA_TYPE)(-j % n) / n + 1;
    for (j = i + 1; j < n; j++) {
      A[i][j] = 0;
    }
    A[i][i] = 1;
  }

  DATA_TYPE (*B)[N] = (DATA_TYPE(*)[N])malloc(n * n * sizeof(DATA_TYPE));
  if (B == NULL) {
    fprintf(stderr, "Memory allocation failed\n");
    exit(1);
  }
  memset(B, 0, n * n * sizeof(DATA_TYPE));

  #pragma omp parallel for private(j, tmp) collapse(2) schedule(static)
  for (int t = 0; t < n; ++t) {
    for (int r = 0; r < n; ++r) {
      tmp = A[r][t];
      for (j = 0; j < n; ++j) {
        B[r][j] += tmp * A[j][t];
      }
    }
  }

  memcpy(A, B, n * n * sizeof(DATA_TYPE));
  free(B);
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

  #pragma omp parallel for private(j, k) schedule(static)
  for (i = 0; i < n; i++) {
    for (j = 0; j < i; j++) {
      DATA_TYPE sum = A[i][j];
      for (k = 0; k < j; k++) {
        sum -= A[i][k] * A[j][k];
      }
      A[i][j] = sum / A[j][j];
    }
    DATA_TYPE sum = A[i][i];
    for (k = 0; k < i; k++) {
      sum -= A[i][k] * A[i][k];
    }
    A[i][i] = sqrt(sum);
  }
}

int main(int argc, char **argv) {
  int n = N;

  DATA_TYPE (*A)[N] = (DATA_TYPE(*)[N])malloc(n * n * sizeof(DATA_TYPE));
  if (A == NULL) {
    fprintf(stderr, "Memory allocation failed\n");
    exit(1);
  }

  init_array(n, A);

  polybench_start_instruments;

  kernel_cholesky(n, A);

  polybench_stop_instruments;
  polybench_print_instruments;

  polybench_prevent_dce(print_array(n, A));

  free(A);

  return 0;
}