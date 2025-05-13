#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout
#include "nussinov.h"

typedef char base;

#define match(b1, b2) (((b1)+(b2)) == 3 ? 1 : 0)
#define max_score(s1, s2) ((s1 >= s2) ? s1 : s2)

static void init_array(int n, base POLYBENCH_1D(seq, N, n), DATA_TYPE POLYBENCH_2D(table, N, N, n, n)) {
  int i;
  for (i = 0; i < n; i++) {
    seq[i] = (base)((i + 1) % 4);
  }

  memset(table, 0, n * n * sizeof(DATA_TYPE));
}

static void print_array(int n, DATA_TYPE POLYBENCH_2D(table, N, N, n, n)) {
  int i, j;
  int t = 0;

  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("table");
  for (i = 0; i < n; i++) {
    for (j = i; j < n; j++) {
      if (t % 20 == 0) fprintf(POLYBENCH_DUMP_TARGET, "\n");
      fprintf(POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, table[i][j]);
      t++;
    }
  }
  POLYBENCH_DUMP_END("table");
  POLYBENCH_DUMP_FINISH;
}

static void kernel_nussinov(int n, base POLYBENCH_1D(seq, N, n), DATA_TYPE POLYBENCH_2D(table, N, N, n, n)) {
  int i, j, k;

#pragma omp parallel for private(j, k) schedule(static)
  for (i = n - 1; i >= 0; i--) {
    for (j = i + 1; j < n; j++) {
      if (j - 1 >= 0)
        table[i][j] = max_score(table[i][j], table[i][j - 1]);
      if (i + 1 < n)
        table[i][j] = max_score(table[i][j], table[i + 1][j]);

      if (j - 1 >= 0 && i + 1 < n) {
        if (i < j - 1)
          table[i][j] = max_score(table[i][j], table[i + 1][j - 1] + match(seq[i], seq[j]));
        else
          table[i][j] = max_score(table[i][j], table[i + 1][j - 1]);
      }

      for (k = i + 1; k < j; k++) {
        table[i][j] = max_score(table[i][j], table[i][k] + table[k + 1][j]);
      }
    }
  }
}

int main(int argc, char** argv) {
  int n = N;

  POLYBENCH_1D_ARRAY_DECL(seq, base, N, n);
  POLYBENCH_2D_ARRAY_DECL(table, DATA_TYPE, N, N, n, n);

  init_array(n, POLYBENCH_ARRAY(seq), POLYBENCH_ARRAY(table));

  polybench_start_instruments;

  kernel_nussinov(n, POLYBENCH_ARRAY(seq), POLYBENCH_ARRAY(table));

  polybench_stop_instruments;
  polybench_print_instruments;

  polybench_prevent_dce(print_array(n, POLYBENCH_ARRAY(table)));

  POLYBENCH_FREE_ARRAY(seq);
  POLYBENCH_FREE_ARRAY(table);

  return 0;
}