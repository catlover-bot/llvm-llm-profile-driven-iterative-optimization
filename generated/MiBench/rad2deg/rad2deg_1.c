#include <math.h>
#include "snipmath.h"

#undef rad2deg
#undef deg2rad

double rad2deg(double rad) {
    return rad * (180.0 / PI);
}

double deg2rad(double deg) {
    return deg * (PI / 180.0);
}

#ifdef TEST

#include <stdio.h>

int main() {
    double X;
    double deg_to_rad_factor = PI / 180.0;
    double rad_to_deg_factor = 180.0 / PI;
    
    for (X = 0.0; X <= 360.0; X += 45.0)
        printf("%3.0f degrees = %.12f radians\n", X, X * deg_to_rad_factor);
    puts("");
    for (X = 0.0; X <= (2 * PI + 1e-6); X += (PI / 6))
        printf("%.12f radians = %3.0f degrees\n", X, X * rad_to_deg_factor);
    return 0;
}

#endif /* TEST */