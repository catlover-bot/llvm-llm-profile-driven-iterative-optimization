#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout
#include "correlation.h"

static void init_array(int m, int n, DATA_TYPE *float_n, DATA_TYPE POLYBENCH_2D(data,N,M,n,m)) {
  *float_n = (DATA_TYPE)N;
  for (int i = 0; i < N; i++)
    for (int j = 0; j < M; j++)
      data[i][j] = (DATA_TYPE)(i * j) / M + i;
}

static void print_array(int m, DATA_TYPE POLYBENCH_2D(corr,M,M,m,m)) {
  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("corr");
  for (int i = 0; i < m; i++)
    for (int j = 0; j < m; j++) {
      if ((i * m + j) % 20 == 0) fprintf(POLYBENCH_DUMP_TARGET, "\n");
      fprintf(POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, corr[i][j]);
    }
  POLYBENCH_DUMP_END("corr");
  POLYBENCH_DUMP_FINISH;
}

static void kernel_correlation(int m, int n, DATA_TYPE float_n, DATA_TYPE POLYBENCH_2D(data,N,M,n,m), DATA_TYPE POLYBENCH_2D(corr,M,M,m,m), DATA_TYPE POLYBENCH_1D(mean,M,m), DATA_TYPE POLYBENCH_1D(stddev,M,m)) {
  DATA_TYPE eps = SCALAR_VAL(0.1);

  #pragma omp parallel
  {
    DATA_TYPE mean_local[M];
    DATA_TYPE stddev_local[M];

    #pragma omp for nowait
    for (int j = 0; j < _PB_M; j++) {
      DATA_TYPE mean_j = SCALAR_VAL(0.0);
      for (int i = 0; i < _PB_N; i++)
        mean_j += data[i][j];
      mean_j /= float_n;
      mean_local[j] = mean_j;
    }

    #pragma omp for
    for (int j = 0; j < _PB_M; j++) {
      DATA_TYPE stddev_j = SCALAR_VAL(0.0);
      for (int i = 0; i < _PB_N; i++)
        stddev_j += (data[i][j] - mean_local[j]) * (data[i][j] - mean_local[j]);
      stddev_j /= float_n;
      stddev_j = SQRT_FUN(stddev_j);
      stddev_local[j] = (stddev_j <= eps) ? SCALAR_VAL(1.0) : stddev_j;
    }

    #pragma omp for collapse(2)
    for (int i = 0; i < _PB_N; i++)
      for (int j = 0; j < _PB_M; j++)
        data[i][j] = (data[i][j] - mean_local[j]) / (SQRT_FUN(float_n) * stddev_local[j]);

    #pragma omp for
    for (int i = 0; i < _PB_M - 1; i++) {
      corr[i][i] = SCALAR_VAL(1.0);
      for (int j = i + 1; j < _PB_M; j++) {
        DATA_TYPE sum = SCALAR_VAL(0.0);
        for (int k = 0; k < _PB_N; k++)
          sum += data[k][i] * data[k][j];
        corr[i][j] = sum;
        corr[j][i] = sum;
      }
    }
  }
  corr[_PB_M - 1][_PB_M - 1] = SCALAR_VAL(1.0);
}

int main(int argc, char** argv) {
  int n = N;
  int m = M;

  DATA_TYPE float_n;
  POLYBENCH_2D_ARRAY_DECL(data, DATA_TYPE, N, M, n, m);
  POLYBENCH_2D_ARRAY_DECL(corr, DATA_TYPE, M, M, m, m);
  POLYBENCH_1D_ARRAY_DECL(mean, DATA_TYPE, M, m);
  POLYBENCH_1D_ARRAY_DECL(stddev, DATA_TYPE, M, m);

  init_array(m, n, &float_n, POLYBENCH_ARRAY(data));

  polybench_start_instruments;

  kernel_correlation(m, n, float_n, POLYBENCH_ARRAY(data), POLYBENCH_ARRAY(corr), POLYBENCH_ARRAY(mean), POLYBENCH_ARRAY(stddev));

  polybench_stop_instruments;
  polybench_print_instruments;

  polybench_prevent_dce(print_array(m, POLYBENCH_ARRAY(corr)));

  POLYBENCH_FREE_ARRAY(data);
  POLYBENCH_FREE_ARRAY(corr);
  POLYBENCH_FREE_ARRAY(mean);
  POLYBENCH_FREE_ARRAY(stddev);

  return 0;
}