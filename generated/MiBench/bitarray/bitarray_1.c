#include "bitops.h"
#include <stdlib.h>

char *alloc_bit_array(size_t bits) {
    size_t array_size = (bits + CHAR_BIT - 1) / CHAR_BIT;
    char *set = calloc(array_size, sizeof(char));
    return set;
}

int getbit(char *set, int number) {
    return (set[number / CHAR_BIT] & (1 << (number % CHAR_BIT))) != 0;
}

void setbit(char *set, int number, int value) {
    char *byte = set + number / CHAR_BIT;
    int mask = 1 << (number % CHAR_BIT);
    *byte = value ? (*byte | mask) : (*byte & ~mask);
}

void flipbit(char *set, int number) {
    set[number / CHAR_BIT] ^= 1 << (number % CHAR_BIT);
}