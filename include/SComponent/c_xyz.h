#ifndef C_XYZ_H_
#define C_XYZ_H_

#include "SComponent/c_math.h"
#include "global.h"
#include "mtx_vec.h"

const static f32 /* epsilon */ lbl_80455074 = 8.0E-11f;
// extern f32 lbl_80455074;

extern u8 lbl_80430CE8;

class cXyz : public Vec {
public:
    ~cXyz() {}
    cXyz() {}
    cXyz(f32 x, f32 y, f32 z) {
        this->x = x;
        this->y = y;
        this->z = z;
    }
    cXyz(const cXyz& vec) {
        this->x = vec.x;
        this->y = vec.y;
        this->z = vec.z;
    }
    cXyz(const Vec& vec) {
        this->x = vec.x;
        this->y = vec.y;
        this->z = vec.z;
    }
    void operator=(const Vec& vec) {
        this->x = vec.x;
        this->y = vec.y;
        this->z = vec.z;
    }
    cXyz operator+(const Vec& vec) const;
    cXyz operator-(const Vec& vec) const;
    cXyz operator*(f32 scale) const;
    cXyz operator*(const Vec& vec) const;
    cXyz operator/(f32) const;
    void operator+=(f32 f) {
        x += f;
        y += f;
        z += f;
    }
    void operator-=(f32 f) {
        x -= f;
        y -= f;
        z -= f;
    }
    void operator+=(const Vec& vec) {
        x += vec.x;
        y += vec.y;
        z += vec.z;
    }
    cXyz getCrossProduct(const Vec&) const;
    cXyz outprod(const Vec&) const;
    cXyz norm(void) const;
    cXyz normZP(void) const;
    cXyz normZC(void) const;
    cXyz normalize(void);
    cXyz normalizeZP(void);
    bool normalizeRS(void);
    bool operator==(const Vec&) const;
    bool operator!=(const Vec&) const;
    bool isZero(void) const;
    s16 atan2sX_Z(void) const;
    s16 atan2sY_XZ(void) const;

    void setAll(f32 f) {
        z = f;
        y = f;
        x = f;
    }

    void set(f32 pX, f32 pY, f32 pZ) {
        x = pX;
        y = pY;
        z = pZ;
    }

    void setMin(const cXyz& other) {
        if (x > other.x) {
            x = other.x;
        }
        if (y > other.y) {
            y = other.y;
        }
        if (z > other.z) {
            z = other.z;
        }
    }

    void setMax(const cXyz& other) {
        if (x < other.x) {
            x = other.x;
        }
        if (y < other.y) {
            y = other.y;
        }
        if (z < other.z) {
            z = other.z;
        }
    }

    float getSquareMag() const { return PSVECSquareMag(this); }

    static float getNearZeroValue() { return FLOAT_LABEL(lbl_80455074); }

    bool isNearZeroSquare() const { return (this->getSquareMag() < getNearZeroValue()); }
    f32 abs2() const { return this->getSquareMag(); }
    f32 abs2XZ() const {
        cXyz tmp(this->x, 0, this->z);
        return tmp.abs2();
    }
};

extern cXyz lbl_80430CF4;  // SComponent::cXyz::Zero
extern cXyz lbl_80430D0C;  // SComponent::cXyz::BaseX
extern cXyz lbl_80430D24;  // SComponent::cXyz::BaseY

extern "C" {  // needed for inline asm
void __dt__4cXyzFv(void);
}

#endif
