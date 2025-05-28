#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

/* Include polybench common header. */
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout

/* Include benchmark-specific header. */
#include "covariance.h"

/* Array initialization. */
static
void init_array (int m, int n,
                 DATA_TYPE *float_n,
                 DATA_TYPE POLYBENCH_2D(data,N,M,n,m))
{
  int i, j;

  *float_n = (DATA_TYPE)n;

  for (i = 0; i < N; i++) {
    DATA_TYPE temp = (DATA_TYPE)i / M;
    for (j = 0; j < M; j++)
      data[i][j] = temp * j;
  }
}

/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static
void print_array(int m,
                 DATA_TYPE POLYBENCH_2D(cov,M,M,m,m))
{
  int i, j;

  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("cov");
  for (i = 0; i < m; i++)
    for (j = 0; j < m; j++) {
      if ((i * m + j) % 20 == 0) fprintf(POLYBENCH_DUMP_TARGET, "\n");
      fprintf(POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, cov[i][j]);
    }
  POLYBENCH_DUMP_END("cov");
  POLYBENCH_DUMP_FINISH;
}

/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static
void kernel_covariance(int m, int n,
                       DATA_TYPE float_n,
                       DATA_TYPE POLYBENCH_2D(data,N,M,n,m),
                       DATA_TYPE POLYBENCH_2D(cov,M,M,m,m),
                       DATA_TYPE POLYBENCH_1D(mean,M,m))
{
  int i, j, k;

#pragma scop
  // Compute mean
  for (j = 0; j < _PB_M; j++)
  {
    DATA_TYPE sum = SCALAR_VAL(0.0);
    for (i = 0; i < _PB_N; i++)
      sum += data[i][j];
    mean[j] = sum / float_n;
  }

  // Subtract mean from data and Compute covariance matrix
  for (i = 0; i < _PB_M; i++)
  {
    for (j = 0; j < _PB_N; j++)
      data[j][i] -= mean[i];

    for (j = i; j < _PB_M; j++)
    {
      DATA_TYPE sum1 = SCALAR_VAL(0.0);
      DATA_TYPE sum2 = SCALAR_VAL(0.0);
      for (k = 0; k < _PB_N; k += 2) {
        sum1 += data[k][i] * data[k][j];
        if (k+1 < _PB_N) sum2 += data[k+1][i] * data[k+1][j];
      }
      DATA_TYPE sum = (sum1 + sum2) / (float_n - SCALAR_VAL(1.0));
      cov[i][j] = sum;
      cov[j][i] = sum;
    }
  }
#pragma endscop
}

int main(int argc, char** argv)
{
  /* Retrieve problem size. */
  int n = N;
  int m = M;

  /* Variable declaration/allocation. */
  DATA_TYPE float_n;
  POLYBENCH_2D_ARRAY_DECL(data,DATA_TYPE,N,M,n,m);
  POLYBENCH_2D_ARRAY_DECL(cov,DATA_TYPE,M,M,m,m);
  POLYBENCH_1D_ARRAY_DECL(mean,DATA_TYPE,M,m);

  /* Initialize array(s). */
  init_array (m, n, &float_n, POLYBENCH_ARRAY(data));

  /* Start timer. */
  polybench_start_instruments;

  /* Run kernel. */
  kernel_covariance (m, n, float_n,
                     POLYBENCH_ARRAY(data),
                     POLYBENCH_ARRAY(cov),
                     POLYBENCH_ARRAY(mean));

  /* Stop and print timer. */
  polybench_stop_instruments;
  polybench_print_instruments;

  /* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  polybench_prevent_dce(print_array(m, POLYBENCH_ARRAY(cov)));

  /* Be clean. */
  POLYBENCH_FREE_ARRAY(data);
  POLYBENCH_FREE_ARRAY(cov);
  POLYBENCH_FREE_ARRAY(mean);

  return 0;
}