#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout
#include "fdtd-2d.h"

/* Array initialization. */
static void init_array(int tmax, int nx, int ny,
                       DATA_TYPE POLYBENCH_2D(ex, NX, NY, nx, ny),
                       DATA_TYPE POLYBENCH_2D(ey, NX, NY, nx, ny),
                       DATA_TYPE POLYBENCH_2D(hz, NX, NY, nx, ny),
                       DATA_TYPE POLYBENCH_1D(_fict_, TMAX, tmax)) {
  int i, j;

  for (i = 0; i < tmax; i++)
    _fict_[i] = (DATA_TYPE)i;

  for (i = 0; i < nx; i++)
    for (j = 0; j < ny; j++) {
      ex[i][j] = ((DATA_TYPE)i * (j + 1)) / nx;
      ey[i][j] = ((DATA_TYPE)i * (j + 2)) / ny;
      hz[i][j] = ((DATA_TYPE)i * (j + 3)) / nx;
    }
}

/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static void print_array(int nx, int ny,
                        DATA_TYPE POLYBENCH_2D(ex, NX, NY, nx, ny),
                        DATA_TYPE POLYBENCH_2D(ey, NX, NY, nx, ny),
                        DATA_TYPE POLYBENCH_2D(hz, NX, NY, nx, ny)) {
  int i, j;

  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("ex");
  for (i = 0; i < nx; i++)
    for (j = 0; j < ny; j++) {
      if ((i * nx + j) % 20 == 0) fprintf(POLYBENCH_DUMP_TARGET, "\n");
      fprintf(POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, ex[i][j]);
    }
  POLYBENCH_DUMP_END("ex");
  POLYBENCH_DUMP_FINISH;

  POLYBENCH_DUMP_BEGIN("ey");
  for (i = 0; i < nx; i++)
    for (j = 0; j < ny; j++) {
      if ((i * nx + j) % 20 == 0) fprintf(POLYBENCH_DUMP_TARGET, "\n");
      fprintf(POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, ey[i][j]);
    }
  POLYBENCH_DUMP_END("ey");

  POLYBENCH_DUMP_BEGIN("hz");
  for (i = 0; i < nx; i++)
    for (j = 0; j < ny; j++) {
      if ((i * nx + j) % 20 == 0) fprintf(POLYBENCH_DUMP_TARGET, "\n");
      fprintf(POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, hz[i][j]);
    }
  POLYBENCH_DUMP_END("hz");
}

/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static void kernel_fdtd_2d(int tmax, int nx, int ny,
                           DATA_TYPE POLYBENCH_2D(ex, NX, NY, nx, ny),
                           DATA_TYPE POLYBENCH_2D(ey, NX, NY, nx, ny),
                           DATA_TYPE POLYBENCH_2D(hz, NX, NY, nx, ny),
                           DATA_TYPE POLYBENCH_1D(_fict_, TMAX, tmax)) {
  int t, i, j;

  #pragma scop
  for (t = 0; t < _PB_TMAX; t++) {
    for (j = 0; j < _PB_NY; j++)
      ey[0][j] = _fict_[t];

    for (i = 1; i < _PB_NX; i++) {
      for (j = 0; j < _PB_NY; j += 2) {
        ey[i][j] -= SCALAR_VAL(0.5) * (hz[i][j] - hz[i - 1][j]);
        if (j + 1 < _PB_NY)
          ey[i][j + 1] -= SCALAR_VAL(0.5) * (hz[i][j + 1] - hz[i - 1][j + 1]);
      }
    }

    for (i = 0; i < _PB_NX; i++) {
      for (j = 1; j < _PB_NY; j += 2) {
        ex[i][j] -= SCALAR_VAL(0.5) * (hz[i][j] - hz[i][j - 1]);
        if (j + 1 < _PB_NY)
          ex[i][j + 1] -= SCALAR_VAL(0.5) * (hz[i][j + 1] - hz[i][j]);
      }
    }

    for (i = 0; i < _PB_NX - 1; i++) {
      for (j = 0; j < _PB_NY - 1; j += 2) {
        hz[i][j] -= SCALAR_VAL(0.7) * (ex[i][j + 1] - ex[i][j] + ey[i + 1][j] - ey[i][j]);
        if (j + 1 < _PB_NY - 1)
          hz[i][j + 1] -= SCALAR_VAL(0.7) * (ex[i][j + 2] - ex[i][j + 1] + ey[i + 1][j + 1] - ey[i][j + 1]);
      }
    }
  }
  #pragma endscop
}

int main(int argc, char **argv) {
  int tmax = TMAX;
  int nx = NX;
  int ny = NY;

  POLYBENCH_2D_ARRAY_DECL(ex, DATA_TYPE, NX, NY, nx, ny);
  POLYBENCH_2D_ARRAY_DECL(ey, DATA_TYPE, NX, NY, nx, ny);
  POLYBENCH_2D_ARRAY_DECL(hz, DATA_TYPE, NX, NY, nx, ny);
  POLYBENCH_1D_ARRAY_DECL(_fict_, DATA_TYPE, TMAX, tmax);

  init_array(tmax, nx, ny, POLYBENCH_ARRAY(ex), POLYBENCH_ARRAY(ey), POLYBENCH_ARRAY(hz), POLYBENCH_ARRAY(_fict_));

  polybench_start_instruments;

  kernel_fdtd_2d(tmax, nx, ny, POLYBENCH_ARRAY(ex), POLYBENCH_ARRAY(ey), POLYBENCH_ARRAY(hz), POLYBENCH_ARRAY(_fict_));

  polybench_stop_instruments;
  polybench_print_instruments;

  polybench_prevent_dce(print_array(nx, ny, POLYBENCH_ARRAY(ex), POLYBENCH_ARRAY(ey), POLYBENCH_ARRAY(hz)));

  POLYBENCH_FREE_ARRAY(ex);
  POLYBENCH_FREE_ARRAY(ey);
  POLYBENCH_FREE_ARRAY(hz);
  POLYBENCH_FREE_ARRAY(_fict_);

  return 0;
}