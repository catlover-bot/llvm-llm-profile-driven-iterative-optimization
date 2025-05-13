#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <immintrin.h>
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout
#include "deriche.h"

static void init_array(int w, int h, DATA_TYPE* alpha, DATA_TYPE POLYBENCH_2D(imgIn,W,H,w,h), DATA_TYPE POLYBENCH_2D(imgOut,W,H,w,h)) {
  int i, j;
  *alpha = 0.25;
  for (i = 0; i < w; i++)
    for (j = 0; j < h; j++)
      imgIn[i][j] = (DATA_TYPE)((313 * i + 991 * j) % 65536) / 65535.0f;
}

static void print_array(int w, int h, DATA_TYPE POLYBENCH_2D(imgOut,W,H,w,h)) {
  int i, j;
  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("imgOut");
  for (i = 0; i < w; i++)
    for (j = 0; j < h; j++) {
      if ((i * h + j) % 20 == 0) fprintf(POLYBENCH_DUMP_TARGET, "\n");
      fprintf(POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, imgOut[i][j]);
    }
  POLYBENCH_DUMP_END("imgOut");
  POLYBENCH_DUMP_FINISH;
}

static void kernel_deriche(int w, int h, DATA_TYPE alpha, DATA_TYPE POLYBENCH_2D(imgIn, W, H, w, h), DATA_TYPE POLYBENCH_2D(imgOut, W, H, w, h), DATA_TYPE POLYBENCH_2D(y1, W, H, w, h), DATA_TYPE POLYBENCH_2D(y2, W, H, w, h)) {
  int i, j;
  DATA_TYPE k, a1, a2, a3, a4, a5, a6, a7, a8, b1, b2, c1, c2;
  k = (1.0 - exp(-alpha)) * (1.0 - exp(-alpha)) / (1.0 + 2.0 * alpha * exp(-alpha) - exp(2.0 * alpha));
  a1 = a5 = k;
  a2 = a6 = k * exp(-alpha) * (alpha - 1.0);
  a3 = a7 = k * exp(-alpha) * (alpha + 1.0);
  a4 = a8 = -k * exp(-2.0 * alpha);
  b1 = pow(2.0, -alpha);
  b2 = -exp(-2.0 * alpha);
  c1 = c2 = 1;

  #pragma omp parallel for schedule(static) private(j)
  for (i = 0; i < w; i++) {
    DATA_TYPE ym1 = 0.0, ym2 = 0.0, xm1 = 0.0;
    for (j = 0; j < h; j++) {
      y1[i][j] = a1 * imgIn[i][j] + a2 * xm1 + b1 * ym1 + b2 * ym2;
      xm1 = imgIn[i][j];
      ym2 = ym1;
      ym1 = y1[i][j];
    }
  }

  #pragma omp parallel for schedule(static) private(j)
  for (i = 0; i < w; i++) {
    DATA_TYPE yp1 = 0.0, yp2 = 0.0, xp1 = 0.0, xp2 = 0.0;
    for (j = h - 1; j >= 0; j--) {
      y2[i][j] = a3 * xp1 + a4 * xp2 + b1 * yp1 + b2 * yp2;
      xp2 = xp1;
      xp1 = imgIn[i][j];
      yp2 = yp1;
      yp1 = y2[i][j];
    }
  }

  #pragma omp parallel for schedule(static) private(j)
  for (i = 0; i < w; i++)
    for (j = 0; j < h; j++)
      imgOut[i][j] = c1 * (y1[i][j] + y2[i][j]);

  #pragma omp parallel for schedule(static) private(i)
  for (j = 0; j < h; j++) {
    DATA_TYPE tm1 = 0.0, ym1 = 0.0, ym2 = 0.0;
    for (i = 0; i < w; i++) {
      y1[i][j] = a5 * imgOut[i][j] + a6 * tm1 + b1 * ym1 + b2 * ym2;
      tm1 = imgOut[i][j];
      ym2 = ym1;
      ym1 = y1[i][j];
    }
  }

  #pragma omp parallel for schedule(static) private(i)
  for (j = 0; j < h; j++) {
    DATA_TYPE tp1 = 0.0, tp2 = 0.0, yp1 = 0.0, yp2 = 0.0;
    for (i = w - 1; i >= 0; i--) {
      y2[i][j] = a7 * tp1 + a8 * tp2 + b1 * yp1 + b2 * yp2;
      tp2 = tp1;
      tp1 = imgOut[i][j];
      yp2 = yp1;
      yp1 = y2[i][j];
    }
  }

  #pragma omp parallel for schedule(static) private(j)
  for (i = 0; i < w; i++)
    for (j = 0; j < h; j++)
      imgOut[i][j] = c2 * (y1[i][j] + y2[i][j]);
}

int main(int argc, char** argv) {
  int w = W;
  int h = H;

  DATA_TYPE alpha;
  POLYBENCH_2D_ARRAY_DECL(imgIn, DATA_TYPE, W, H, w, h);
  POLYBENCH_2D_ARRAY_DECL(imgOut, DATA_TYPE, W, H, w, h);
  POLYBENCH_2D_ARRAY_DECL(y1, DATA_TYPE, W, H, w, h);
  POLYBENCH_2D_ARRAY_DECL(y2, DATA_TYPE, W, H, w, h);

  init_array(w, h, &alpha, POLYBENCH_ARRAY(imgIn), POLYBENCH_ARRAY(imgOut));

  polybench_start_instruments;

  kernel_deriche(w, h, alpha, POLYBENCH_ARRAY(imgIn), POLYBENCH_ARRAY(imgOut), POLYBENCH_ARRAY(y1), POLYBENCH_ARRAY(y2));

  polybench_stop_instruments;
  polybench_print_instruments;

  polybench_prevent_dce(print_array(w, h, POLYBENCH_ARRAY(imgOut)));

  POLYBENCH_FREE_ARRAY(imgIn);
  POLYBENCH_FREE_ARRAY(imgOut);
  POLYBENCH_FREE_ARRAY(y1);
  POLYBENCH_FREE_ARRAY(y2);

  return 0;
}