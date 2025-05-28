#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout
#include "adi.h"

static void init_array(int n, DATA_TYPE POLYBENCH_2D(u, N, N, n, n)) {
  int i, j;
  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++)
      u[i][j] = (DATA_TYPE)(i + n - j) / n;
}

static void print_array(int n, DATA_TYPE POLYBENCH_2D(u, N, N, n, n)) {
  int i, j;
  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("u");
  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++) {
      if ((i * n + j) % 20 == 0) fprintf(POLYBENCH_DUMP_TARGET, "\n");
      fprintf(POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, u[i][j]);
    }
  POLYBENCH_DUMP_END("u");
  POLYBENCH_DUMP_FINISH;
}

static void kernel_adi(int tsteps, int n, DATA_TYPE POLYBENCH_2D(u, N, N, n, n), DATA_TYPE POLYBENCH_2D(v, N, N, n, n), DATA_TYPE POLYBENCH_2D(p, N, N, n, n), DATA_TYPE POLYBENCH_2D(q, N, N, n, n)) {
  int t, i, j;
  DATA_TYPE DX = SCALAR_VAL(1.0) / (DATA_TYPE)_PB_N;
  DATA_TYPE DY = SCALAR_VAL(1.0) / (DATA_TYPE)_PB_N;
  DATA_TYPE DT = SCALAR_VAL(1.0) / (DATA_TYPE)_PB_TSTEPS;
  DATA_TYPE B1 = SCALAR_VAL(2.0);
  DATA_TYPE B2 = SCALAR_VAL(1.0);
  DATA_TYPE mul1 = B1 * DT / (DX * DX);
  DATA_TYPE mul2 = B2 * DT / (DY * DY);
  DATA_TYPE a = -mul1 / SCALAR_VAL(2.0);
  DATA_TYPE b = SCALAR_VAL(1.0) + mul1;
  DATA_TYPE c = a;
  DATA_TYPE d = -mul2 / SCALAR_VAL(2.0);
  DATA_TYPE e = SCALAR_VAL(1.0) + mul2;
  DATA_TYPE f = d;

#pragma scop
  for (t = 1; t <= _PB_TSTEPS; t++) {
    for (i = 1; i < _PB_N - 1; i++) {
      v[0][i] = SCALAR_VAL(1.0);
      p[i][0] = SCALAR_VAL(0.0);
      q[i][0] = v[0][i];
      DATA_TYPE pi_prev = p[i][0];
      DATA_TYPE qi_prev = q[i][0];
      for (j = 1; j < _PB_N - 1; j++) {
        DATA_TYPE denom = a * pi_prev + b;
        pi_prev = p[i][j] = -c / denom;
        qi_prev = q[i][j] = (-d * u[j][i - 1] + (SCALAR_VAL(1.0) + SCALAR_VAL(2.0) * d) * u[j][i] - f * u[j][i + 1] - a * qi_prev) / denom;
      }
      v[_PB_N - 1][i] = SCALAR_VAL(1.0);
      for (j = _PB_N - 2; j >= 1; j--) {
        v[j][i] = p[i][j] * v[j + 1][i] + q[i][j];
      }
    }
    for (i = 1; i < _PB_N - 1; i++) {
      u[i][0] = SCALAR_VAL(1.0);
      p[i][0] = SCALAR_VAL(0.0);
      q[i][0] = u[i][0];
      DATA_TYPE pi_prev = p[i][0];
      DATA_TYPE qi_prev = q[i][0];
      for (j = 1; j < _PB_N - 1; j++) {
        DATA_TYPE denom = d * pi_prev + e;
        pi_prev = p[i][j] = -f / denom;
        qi_prev = q[i][j] = (-a * v[i - 1][j] + (SCALAR_VAL(1.0) + SCALAR_VAL(2.0) * a) * v[i][j] - c * v[i + 1][j] - d * qi_prev) / denom;
      }
      u[i][_PB_N - 1] = SCALAR_VAL(1.0);
      for (j = _PB_N - 2; j >= 1; j--) {
        u[i][j] = p[i][j] * u[i][j + 1] + q[i][j];
      }
    }
  }
#pragma endscop
}

int main(int argc, char** argv) {
  int n = N;
  int tsteps = TSTEPS;
  POLYBENCH_2D_ARRAY_DECL(u, DATA_TYPE, N, N, n, n);
  POLYBENCH_2D_ARRAY_DECL(v, DATA_TYPE, N, N, n, n);
  POLYBENCH_2D_ARRAY_DECL(p, DATA_TYPE, N, N, n, n);
  POLYBENCH_2D_ARRAY_DECL(q, DATA_TYPE, N, N, n, n);
  init_array(n, POLYBENCH_ARRAY(u));
  polybench_start_instruments;
  kernel_adi(tsteps, n, POLYBENCH_ARRAY(u), POLYBENCH_ARRAY(v), POLYBENCH_ARRAY(p), POLYBENCH_ARRAY(q));
  polybench_stop_instruments;
  polybench_print_instruments;
  polybench_prevent_dce(print_array(n, POLYBENCH_ARRAY(u)));
  POLYBENCH_FREE_ARRAY(u);
  POLYBENCH_FREE_ARRAY(v);
  POLYBENCH_FREE_ARRAY(p);
  POLYBENCH_FREE_ARRAY(q);
  return 0;
}