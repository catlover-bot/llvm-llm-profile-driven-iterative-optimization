#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout
#include "correlation.h"

static void init_array(int m, int n, DATA_TYPE *float_n, DATA_TYPE POLYBENCH_2D(data,N,M,n,m)) {
  int i, j;
  *float_n = (DATA_TYPE)N;
  for (i = 0; i < N; i++)
    for (j = 0; j < M; j++)
      data[i][j] = (DATA_TYPE)(i*j)/M + i;
}

static void print_array(int m, DATA_TYPE POLYBENCH_2D(corr,M,M,m,m)) {
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

static void kernel_correlation(int m, int n, DATA_TYPE float_n, DATA_TYPE POLYBENCH_2D(data,N,M,n,m), DATA_TYPE POLYBENCH_2D(corr,M,M,m,m), DATA_TYPE POLYBENCH_1D(mean,M,m), DATA_TYPE POLYBENCH_1D(stddev,M,m)) {
  int i, j, k;
  DATA_TYPE eps = SCALAR_VAL(0.1);
  DATA_TYPE inv_sqrt_fn = SCALAR_VAL(1.0) / SQRT_FUN(float_n);

#pragma scop
  for (j = 0; j < _PB_M; j++) {
    DATA_TYPE sum = SCALAR_VAL(0.0);
    for (i = 0; i < _PB_N; i++)
      sum += data[i][j];
    mean[j] = sum / float_n;
  }

  for (j = 0; j < _PB_M; j++) {
    DATA_TYPE sum = SCALAR_VAL(0.0);
    for (i = 0; i < _PB_N; i++) {
      DATA_TYPE diff = data[i][j] - mean[j];
      sum += diff * diff;
    }
    stddev[j] = SQRT_FUN(sum / float_n);
    stddev[j] = stddev[j] <= eps ? SCALAR_VAL(1.0) : stddev[j];
  }

  for (i = 0; i < _PB_N; i++)
    for (j = 0; j < _PB_M; j++)
      data[i][j] = (data[i][j] - mean[j]) * inv_sqrt_fn / stddev[j];

  for (i = 0; i < _PB_M-1; i++) {
    corr[i][i] = SCALAR_VAL(1.0);
    for (j = i+1; j < _PB_M; j++) {
      DATA_TYPE sum = SCALAR_VAL(0.0);
      for (k = 0; k < _PB_N; k++)
        sum += data[k][i] * data[k][j];
      corr[i][j] = sum;
      corr[j][i] = sum;
    }
  }
  corr[_PB_M-1][_PB_M-1] = SCALAR_VAL(1.0);
#pragma endscop
}

int main(int argc, char** argv) {
  int n = N;
  int m = M;
  DATA_TYPE float_n;
  POLYBENCH_2D_ARRAY_DECL(data,DATA_TYPE,N,M,n,m);
  POLYBENCH_2D_ARRAY_DECL(corr,DATA_TYPE,M,M,m,m);
  POLYBENCH_1D_ARRAY_DECL(mean,DATA_TYPE,M,m);
  POLYBENCH_1D_ARRAY_DECL(stddev,DATA_TYPE,M,m);

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