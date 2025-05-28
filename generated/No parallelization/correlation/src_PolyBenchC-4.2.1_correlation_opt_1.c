#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

/* Include polybench common header. */
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout

/* Include benchmark-specific header. */
#include "correlation.h"

/* Array initialization. */
static void init_array(int m, int n, DATA_TYPE *float_n, DATA_TYPE POLYBENCH_2D(data, N, M, n, m)) {
  int i, j;
  *float_n = (DATA_TYPE)N;
  for (i = 0; i < N; i++) {
    DATA_TYPE val_i = (DATA_TYPE)i;
    for (j = 0; j < M; j++) {
      data[i][j] = (val_i * j) / M + val_i;
    }
  }
}

/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static void print_array(int m, DATA_TYPE POLYBENCH_2D(corr, M, M, m, m)) {
  int i, j;
  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("corr");
  for (i = 0; i < m; i++)
    for (j = 0; j < m; j++) {
      if ((i * m + j) % 20 == 0) fprintf(POLYBENCH_DUMP_TARGET, "\n");
      fprintf(POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, corr[i][j]);
    }
  POLYBENCH_DUMP_END("corr");
  POLYBENCH_DUMP_FINISH;
}

/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static void kernel_correlation(int m, int n, DATA_TYPE float_n, DATA_TYPE POLYBENCH_2D(data, N, M, n, m), DATA_TYPE POLYBENCH_2D(corr, M, M, m, m), DATA_TYPE POLYBENCH_1D(mean, M, m), DATA_TYPE POLYBENCH_1D(stddev, M, m)) {
  int i, j, k;
  DATA_TYPE eps = SCALAR_VAL(0.1);

#pragma scop
  DATA_TYPE inv_float_n = SCALAR_VAL(1.0) / float_n;
  DATA_TYPE sqrt_float_n = SQRT_FUN(float_n);

  for (j = 0; j < _PB_M; j++) {
    DATA_TYPE sum = SCALAR_VAL(0.0);
    for (i = 0; i < _PB_N; i++) {
      sum += data[i][j];
    }
    mean[j] = sum * inv_float_n;
  }

  for (j = 0; j < _PB_M; j++) {
    DATA_TYPE sum_sq = SCALAR_VAL(0.0);
    DATA_TYPE mean_j = mean[j];
    for (i = 0; i < _PB_N; i++) {
      DATA_TYPE diff = data[i][j] - mean_j;
      sum_sq += diff * diff;
    }
    stddev[j] = sum_sq * inv_float_n;
    stddev[j] = SQRT_FUN(stddev[j]);
    stddev[j] = stddev[j] <= eps ? SCALAR_VAL(1.0) : stddev[j];
  }

  /* Center and reduce the column vectors. */
  for (i = 0; i < _PB_N; i++) {
    for (j = 0; j < _PB_M; j++) {
      data[i][j] -= mean[j];
      data[i][j] /= (sqrt_float_n * stddev[j]);
    }
  }

  /* Calculate the m * m correlation matrix. */
  for (i = 0; i < _PB_M - 1; i++) {
    corr[i][i] = SCALAR_VAL(1.0);
    for (j = i + 1; j < _PB_M; j++) {
      DATA_TYPE sum = SCALAR_VAL(0.0);
      for (k = 0; k < _PB_N; k++) {
        sum += data[k][i] * data[k][j];
      }
      corr[i][j] = sum;
      corr[j][i] = sum;
    }
  }
  corr[_PB_M - 1][_PB_M - 1] = SCALAR_VAL(1.0);
#pragma endscop
}

int main(int argc, char **argv) {
  /* Retrieve problem size. */
  int n = N;
  int m = M;

  /* Variable declaration/allocation. */
  DATA_TYPE float_n;
  POLYBENCH_2D_ARRAY_DECL(data, DATA_TYPE, N, M, n, m);
  POLYBENCH_2D_ARRAY_DECL(corr, DATA_TYPE, M, M, m, m);
  POLYBENCH_1D_ARRAY_DECL(mean, DATA_TYPE, M, m);
  POLYBENCH_1D_ARRAY_DECL(stddev, DATA_TYPE, M, m);

  /* Initialize array(s). */
  init_array(m, n, &float_n, POLYBENCH_ARRAY(data));

  /* Start timer. */
  polybench_start_instruments;

  /* Run kernel. */
  kernel_correlation(m, n, float_n, POLYBENCH_ARRAY(data), POLYBENCH_ARRAY(corr), POLYBENCH_ARRAY(mean), POLYBENCH_ARRAY(stddev));

  /* Stop and print timer. */
  polybench_stop_instruments;
  polybench_print_instruments;

  /* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  polybench_prevent_dce(print_array(m, POLYBENCH_ARRAY(corr)));

  /* Be clean. */
  POLYBENCH_FREE_ARRAY(data);
  POLYBENCH_FREE_ARRAY(corr);
  POLYBENCH_FREE_ARRAY(mean);
  POLYBENCH_FREE_ARRAY(stddev);

  return 0;
}