#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout
#include "covariance.h"

static void init_array(int m, int n, DATA_TYPE *float_n, DATA_TYPE POLYBENCH_2D(data, N, M, n, m)) {
  *float_n = (DATA_TYPE)n;
  #pragma omp parallel for schedule(static)
  for (int i = 0; i < N; i++) {
    DATA_TYPE val = (DATA_TYPE)i / M;
    for (int j = 0; j < M; j++) {
      data[i][j] = val * j;
    }
  }
}

static void print_array(int m, DATA_TYPE POLYBENCH_2D(cov, M, M, m, m)) {
  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("cov");
  for (int i = 0; i < m; i++) {
    for (int j = 0; j < m; j++) {
      if ((i * m + j) % 20 == 0) fprintf(POLYBENCH_DUMP_TARGET, "\n");
      fprintf(POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, cov[i][j]);
    }
  }
  POLYBENCH_DUMP_END("cov");
  POLYBENCH_DUMP_FINISH;
}

static void kernel_covariance(int m, int n, DATA_TYPE float_n, DATA_TYPE POLYBENCH_2D(data, N, M, n, m), DATA_TYPE POLYBENCH_2D(cov, M, M, m, m), DATA_TYPE POLYBENCH_1D(mean, M, m)) {
  #pragma omp parallel
  {
    #pragma omp for schedule(static)
    for (int j = 0; j < _PB_M; j++) {
      DATA_TYPE sum = SCALAR_VAL(0.0);
      for (int i = 0; i < _PB_N; i++) {
        sum += data[i][j];
      }
      mean[j] = sum / float_n;
    }

    #pragma omp for schedule(static)
    for (int i = 0; i < _PB_N; i++) {
      for (int j = 0; j < _PB_M; j++) {
        data[i][j] -= mean[j];
      }
    }

    #pragma omp for schedule(static) collapse(2)
    for (int i = 0; i < _PB_M; i++) {
      for (int j = i; j < _PB_M; j++) {
        DATA_TYPE sum = SCALAR_VAL(0.0);
        for (int k = 0; k < _PB_N; k++) {
          sum += data[k][i] * data[k][j];
        }
        DATA_TYPE cov_val = sum / (float_n - SCALAR_VAL(1.0));
        cov[i][j] = cov_val;
        cov[j][i] = cov_val;
      }
    }
  }
}

int main(int argc, char **argv) {
  int n = N;
  int m = M;
  DATA_TYPE float_n;
  POLYBENCH_2D_ARRAY_DECL(data, DATA_TYPE, N, M, n, m);
  POLYBENCH_2D_ARRAY_DECL(cov, DATA_TYPE, M, M, m, m);
  POLYBENCH_1D_ARRAY_DECL(mean, DATA_TYPE, M, m);

  init_array(m, n, &float_n, POLYBENCH_ARRAY(data));

  polybench_start_instruments;

  kernel_covariance(m, n, float_n, POLYBENCH_ARRAY(data), POLYBENCH_ARRAY(cov), POLYBENCH_ARRAY(mean));

  polybench_stop_instruments;
  polybench_print_instruments;

  polybench_prevent_dce(print_array(m, POLYBENCH_ARRAY(cov)));

  POLYBENCH_FREE_ARRAY(data);
  POLYBENCH_FREE_ARRAY(cov);
  POLYBENCH_FREE_ARRAY(mean);

  return 0;
}