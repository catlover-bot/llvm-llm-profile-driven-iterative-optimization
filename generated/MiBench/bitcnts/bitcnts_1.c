#include <stdio.h>
#include <stdlib.h>
#include "conio.h"
#include <limits.h>
#include <time.h>
#include <float.h>
#include "bitops.h"

#define FUNCS  7

static int CDECL bit_shifter(long int x);

int main(int argc, char *argv[])
{
  clock_t start, stop;
  double ct, cmin = DBL_MAX, cmax = 0;
  int i, cminix, cmaxix;
  long j, n, seed;
  int iterations;
  static int (* CDECL pBitCntFunc[FUNCS])(long) = {
    bit_count,
    bitcount,
    ntbl_bitcnt,
    ntbl_bitcount,
    BW_btbl_bitcount,
    AR_btbl_bitcount,
    bit_shifter
  };
  static char *text[FUNCS] = {
    "Optimized 1 bit/loop counter",
    "Ratko's mystery algorithm",
    "Recursive bit count by nybbles",
    "Non-recursive bit count by nybbles",
    "Non-recursive bit count by bytes (BW)",
    "Non-recursive bit count by bytes (AR)",
    "Shift and count bits"
  };
  if (argc < 2) {
    fprintf(stderr, "Usage: bitcnts <iterations>\n");
    exit(-1);
  }
  iterations = atoi(argv[1]);
  
  puts("Bit counter algorithm benchmark\n");
  
  for (i = 0; i < FUNCS; i++) {
    start = clock();
    
    long temp_n = 0;
    for (j = 0, seed = rand(); j < iterations; j += 4, seed += 52) {
      temp_n += pBitCntFunc[i](seed);
      temp_n += pBitCntFunc[i](seed + 13);
      temp_n += pBitCntFunc[i](seed + 26);
      temp_n += pBitCntFunc[i](seed + 39);
    }
    n = temp_n;
    
    stop = clock();
    ct = (stop - start) / (double)CLOCKS_PER_SEC;
    if (ct < cmin) {
      cmin = ct;
      cminix = i;
    }
    if (ct > cmax) {
      cmax = ct;
      cmaxix = i;
    }
    
    printf("%-38s> Time: %7.3f sec.; Bits: %ld\n", text[i], ct, n);
  }
  printf("\nBest  > %s\n", text[cminix]);
  printf("Worst > %s\n", text[cmaxix]);
  return 0;
}

static int CDECL bit_shifter(long int x)
{
  int n = 0;
  while (x) {
    n += (int)(x & 1L);
    x >>= 1;
  }
  return n;
}