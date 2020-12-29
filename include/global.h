#ifndef _global_h_
#define _global_h_

#define ARRAY_SIZE(o) (sizeof((o)) / sizeof(*(o)))

struct Vec {
    float x, y, z;
};

double __frsqrte(double);
float __fabsf(float);
float __fnabsf(float);

inline double fabsf(double d) {
    return __fabsf(d);
}

#include "dolphin/types.h"

#include "functions.h"
#include "os/OS.h"
#include "variables.h"

#endif