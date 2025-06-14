#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

/* Include polybench common header. */
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout

/* Include benchmark-specific header. */
#include "durbin.h"

/* Array initialization. */
static void init_array(int n, DATA_TYPE POLYBENCH_1D(r, N, n)) {
  int i;
  for (i = 0; i < n; i++)
    r[i] = (n + 1 - i);
}

/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static void print_array(int n, DATA_TYPE POLYBENCH_1D(y, N, n)) {
  int i;

  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("y");
  for (i = 0; i < n; i++) {
    if (i % 20 == 0)
      fprintf(POLYBENCH_DUMP_TARGET, "\n");
    fprintf(POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, y[i]);
  }
  POLYBENCH_DUMP_END("y");
  POLYBENCH_DUMP_FINISH;
}

/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static void kernel_durbin(int n, DATA_TYPE POLYBENCH_1D(r, N, n),
                          DATA_TYPE POLYBENCH_1D(y, N, n)) {
  DATA_TYPE z[N];
  DATA_TYPE alpha;
  DATA_TYPE beta;
  DATA_TYPE sum;

  int i, k;

#pragma scop
  y[0] = -r[0];
  beta = SCALAR_VAL(1.0);
  alpha = -r[0];

  for (k = 1; k < _PB_N; k++) {
    beta = (1 - alpha * alpha) * beta;
    sum = SCALAR_VAL(0.0);

    // Unroll loop by factor of 4 for improved performance
    for (i = 0; i < k - 3; i += 4) {
      sum += r[k - i - 1] * y[i] + r[k - i - 2] * y[i + 1] +
             r[k - i - 3] * y[i + 2] + r[k - i - 4] * y[i + 3];
    }
    // Handle remaining iterations
    for (; i < k; i++) {
      sum += r[k - i - 1] * y[i];
    }

    alpha = -(r[k] + sum) / beta;

    // Combine the two loops into one to reduce memory access latency
    for (i = 0; i < k; i++) {
      DATA_TYPE temp = y[i] + alpha * y[k - i - 1];
      y[i] = temp;
      z[i] = temp;
    }
    y[k] = alpha;
  }
#pragma endscop
}

int main(int argc, char **argv) {
  /* Retrieve problem size. */
  int n = N;

  /* Variable declaration/allocation. */
  POLYBENCH_1D_ARRAY_DECL(r, DATA_TYPE, N, n);
  POLYBENCH_1D_ARRAY_DECL(y, DATA_TYPE, N, n);

  /* Initialize array(s). */
  init_array(n, POLYBENCH_ARRAY(r));

  /* Start timer. */
  polybench_start_instruments;

  /* Run kernel. */
  kernel_durbin(n, POLYBENCH_ARRAY(r), POLYBENCH_ARRAY(y));

  /* Stop and print timer. */
  polybench_stop_instruments;
  polybench_print_instruments;

  /* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  polybench_prevent_dce(print_array(n, POLYBENCH_ARRAY(y)));

  /* Be clean. */
  POLYBENCH_FREE_ARRAY(r);
  POLYBENCH_FREE_ARRAY(y);

  return 0;
}