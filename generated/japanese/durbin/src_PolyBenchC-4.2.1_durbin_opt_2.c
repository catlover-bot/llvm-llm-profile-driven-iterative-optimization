#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout
#include "durbin.h"

static void init_array(int n, DATA_TYPE POLYBENCH_1D(r, N, n)) {
  for (int i = 0; i < n; i++) {
    r[i] = (n + 1 - i);
  }
}

static void print_array(int n, DATA_TYPE POLYBENCH_1D(y, N, n)) {
  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("y");
  for (int i = 0; i < n; i++) {
    if (i % 20 == 0) fprintf(POLYBENCH_DUMP_TARGET, "\n");
    fprintf(POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, y[i]);
  }
  POLYBENCH_DUMP_END("y");
  POLYBENCH_DUMP_FINISH;
}

static void kernel_durbin(int n, DATA_TYPE POLYBENCH_1D(r, N, n), DATA_TYPE POLYBENCH_1D(y, N, n)) {
  DATA_TYPE z[N];
  DATA_TYPE alpha, beta, sum;
  y[0] = -r[0];
  beta = SCALAR_VAL(1.0);
  alpha = -r[0];

  for (int k = 1; k < _PB_N; k++) {
    beta *= (1 - alpha * alpha);
    sum = SCALAR_VAL(0.0);
    DATA_TYPE alpha_neg = -alpha;

    for (int i = 0; i < k; i++) {
      sum += r[k - i - 1] * y[i];
    }
    alpha = (sum + r[k]) / -beta;

    for (int i = 0; i < k; i++) {
      z[i] = y[i] + alpha_neg * y[k - i - 1];
    }
    for (int i = 0; i < k; i++) {
      y[i] = z[i];
    }
    y[k] = alpha;
  }
}

int main(int argc, char** argv) {
  int n = N;
  POLYBENCH_1D_ARRAY_DECL(r, DATA_TYPE, N, n);
  POLYBENCH_1D_ARRAY_DECL(y, DATA_TYPE, N, n);

  init_array(n, POLYBENCH_ARRAY(r));
  polybench_start_instruments;
  kernel_durbin(n, POLYBENCH_ARRAY(r), POLYBENCH_ARRAY(y));
  polybench_stop_instruments;
  polybench_print_instruments;
  polybench_prevent_dce(print_array(n, POLYBENCH_ARRAY(y)));

  POLYBENCH_FREE_ARRAY(r);
  POLYBENCH_FREE_ARRAY(y);

  return 0;
}