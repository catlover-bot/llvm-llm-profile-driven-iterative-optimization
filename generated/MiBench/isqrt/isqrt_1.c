#include <string.h>
#include "snipmath.h"

#define BITSPERLONG 32
#define TOP2BITS(x) ((x & (3L << (BITSPERLONG-2))) >> (BITSPERLONG-2))

void usqrt(unsigned long x, struct int_sqrt *q) {
    unsigned long a = 0L;
    unsigned long r = 0L;
    unsigned long e = 0L;

    int i = BITSPERLONG / 2;
    while (i--) {
        r = (r << 2) + TOP2BITS(x); x <<= 2;
        a <<= 1;
        e = (a << 1) + 1;
        if (r >= e) {
            r -= e;
            a++;
        }
    }
    memcpy(q, &a, sizeof(long));
}

#ifdef TEST

#include <stdio.h>

int main(void) {
    int i;
    unsigned long l = 0x3fed0169L;
    struct int_sqrt q;

    for (i = 0; i < 101; ++i) {
        usqrt(i, &q);
        printf("sqrt(%3d) = %2d, remainder = %2d\n", i, q.sqrt, q.frac);
    }
    usqrt(l, &q);
    printf("\nsqrt(%lX) = %X, remainder = %X\n", l, q.sqrt, q.frac);
    return 0;
}

#endif /* TEST */