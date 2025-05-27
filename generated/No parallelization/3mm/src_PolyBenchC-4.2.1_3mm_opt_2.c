#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout
#include "3mm.h"

static void init_array(int ni, int nj, int nk, int nl, int nm, DATA_TYPE POLYBENCH_2D(A,NI,NK,ni,nk), DATA_TYPE POLYBENCH_2D(B,NK,NJ,nk,nj), DATA_TYPE POLYBENCH_2D(C,NJ,NM,nj,nm), DATA_TYPE POLYBENCH_2D(D,NM,NL,nm,nl)) {
  int i, j;

  for (i = 0; i < ni; i++)
    for (j = 0; j < nk; j++)
      A[i][j] = (DATA_TYPE)((i*j+1) % ni) / (5*ni);
  for (i = 0; i < nk; i++)
    for (j = 0; j < nj; j++)
      B[i][j] = (DATA_TYPE)((i*(j+1)+2) % nj) / (5*nj);
  for (i = 0; i < nj; i++)
    for (j = 0; j < nm; j++)
      C[i][j] = (DATA_TYPE)(i*(j+3) % nl) / (5*nl);
  for (i = 0; i < nm; i++)
    for (j = 0; j < nl; j++)
      D[i][j] = (DATA_TYPE)((i*(j+2)+2) % nk) / (5*nk);
}

static void print_array(int ni, int nl, DATA_TYPE POLYBENCH_2D(G,NI,NL,ni,nl)) {
  int i, j;

  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("G");
  for (i = 0; i < ni; i++)
    for (j = 0; j < nl; j++) {
      if ((i * ni + j) % 20 == 0) fprintf (POLYBENCH_DUMP_TARGET, "\n");
      fprintf (POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, G[i][j]);
    }
  POLYBENCH_DUMP_END("G");
  POLYBENCH_DUMP_FINISH;
}

static void kernel_3mm(int ni, int nj, int nk, int nl, int nm, DATA_TYPE POLYBENCH_2D(E,NI,NJ,ni,nj), DATA_TYPE POLYBENCH_2D(A,NI,NK,ni,nk), DATA_TYPE POLYBENCH_2D(B,NK,NJ,nk,nj), DATA_TYPE POLYBENCH_2D(F,NJ,NL,nj,nl), DATA_TYPE POLYBENCH_2D(C,NJ,NM,nj,nm), DATA_TYPE POLYBENCH_2D(D,NM,NL,nm,nl), DATA_TYPE POLYBENCH_2D(G,NI,NL,ni,nl)) {
  int i, j, k;

  #pragma scop
  for (i = 0; i < _PB_NI; i++) {
    for (j = 0; j < _PB_NJ; j++) {
      DATA_TYPE sum0 = SCALAR_VAL(0.0);
      DATA_TYPE sum1 = SCALAR_VAL(0.0);
      DATA_TYPE sum2 = SCALAR_VAL(0.0);
      DATA_TYPE sum3 = SCALAR_VAL(0.0);
      for (k = 0; k < _PB_NK; k+=4) {
        sum0 += A[i][k] * B[k][j];
        sum1 += A[i][k+1] * B[k+1][j];
        sum2 += A[i][k+2] * B[k+2][j];
        sum3 += A[i][k+3] * B[k+3][j];
      }
      E[i][j] = sum0 + sum1 + sum2 + sum3;
    }
  }

  for (i = 0; i < _PB_NJ; i++) {
    for (j = 0; j < _PB_NL; j++) {
      DATA_TYPE sum0 = SCALAR_VAL(0.0);
      DATA_TYPE sum1 = SCALAR_VAL(0.0);
      DATA_TYPE sum2 = SCALAR_VAL(0.0);
      DATA_TYPE sum3 = SCALAR_VAL(0.0);
      for (k = 0; k < _PB_NM; k+=4) {
        sum0 += C[i][k] * D[k][j];
        sum1 += C[i][k+1] * D[k+1][j];
        sum2 += C[i][k+2] * D[k+2][j];
        sum3 += C[i][k+3] * D[k+3][j];
      }
      F[i][j] = sum0 + sum1 + sum2 + sum3;
    }
  }

  for (i = 0; i < _PB_NI; i++) {
    for (j = 0; j < _PB_NL; j++) {
      DATA_TYPE sum0 = SCALAR_VAL(0.0);
      DATA_TYPE sum1 = SCALAR_VAL(0.0);
      DATA_TYPE sum2 = SCALAR_VAL(0.0);
      DATA_TYPE sum3 = SCALAR_VAL(0.0);
      for (k = 0; k < _PB_NJ; k+=4) {
        sum0 += E[i][k] * F[k][j];
        sum1 += E[i][k+1] * F[k+1][j];
        sum2 += E[i][k+2] * F[k+2][j];
        sum3 += E[i][k+3] * F[k+3][j];
      }
      G[i][j] = sum0 + sum1 + sum2 + sum3;
    }
  }
  #pragma endscop
}

int main(int argc, char** argv) {
  int ni = NI;
  int nj = NJ;
  int nk = NK;
  int nl = NL;
  int nm = NM;

  POLYBENCH_2D_ARRAY_DECL(E, DATA_TYPE, NI, NJ, ni, nj);
  POLYBENCH_2D_ARRAY_DECL(A, DATA_TYPE, NI, NK, ni, nk);
  POLYBENCH_2D_ARRAY_DECL(B, DATA_TYPE, NK, NJ, nk, nj);
  POLYBENCH_2D_ARRAY_DECL(F, DATA_TYPE, NJ, NL, nj, nl);
  POLYBENCH_2D_ARRAY_DECL(C, DATA_TYPE, NJ, NM, nj, nm);
  POLYBENCH_2D_ARRAY_DECL(D, DATA_TYPE, NM, NL, nm, nl);
  POLYBENCH_2D_ARRAY_DECL(G, DATA_TYPE, NI, NL, ni, nl);

  init_array(ni, nj, nk, nl, nm, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(B), POLYBENCH_ARRAY(C), POLYBENCH_ARRAY(D));

  polybench_start_instruments;

  kernel_3mm(ni, nj, nk, nl, nm, POLYBENCH_ARRAY(E), POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(B), POLYBENCH_ARRAY(F), POLYBENCH_ARRAY(C), POLYBENCH_ARRAY(D), POLYBENCH_ARRAY(G));

  polybench_stop_instruments;
  polybench_print_instruments;

  polybench_prevent_dce(print_array(ni, nl, POLYBENCH_ARRAY(G)));

  POLYBENCH_FREE_ARRAY(E);
  POLYBENCH_FREE_ARRAY(A);
  POLYBENCH_FREE_ARRAY(B);
  POLYBENCH_FREE_ARRAY(F);
  POLYBENCH_FREE_ARRAY(C);
  POLYBENCH_FREE_ARRAY(D);
  POLYBENCH_FREE_ARRAY(G);

  return 0;
}