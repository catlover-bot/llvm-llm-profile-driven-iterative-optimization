#include "bitops.h"
#include <stdlib.h>
#include <string.h>

char *alloc_bit_array(size_t bits) {
    size_t array_size = (bits + CHAR_BIT - 1) >> 3;
    char *set = (char*)calloc(array_size, sizeof(char));
    return set;
}

int getbit(char *set, int number) {
    return (set[number >> 3] & (1 << (number & 7))) != 0;
}

void setbit(char *set, int number, int value) {
    char *byte = set + (number >> 3);
    int mask = 1 << (number & 7);
    if (value) {
        *byte |= mask;
    } else {
        *byte &= ~mask;
    }
}

void flipbit(char *set, int number) {
    set[number >> 3] ^= 1 << (number & 7);
}