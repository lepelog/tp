/* c_angle.cpp autogenerated by split.py v0.3 at 2020-12-31 13:27:46.813506 */

#include "SComponent/c_angle.h"
#include "global.h"
#include "msl_c/math.h"

extern "C" {
double sqrt(double);
void __ct__7cSAngleFs(void);
void __dt__7cSAngleFv(void);
void func_80361C24(void);
float cAngle_NS_Adjust(float, float, float);
}

extern u8 lbl_80430F98;  // SComponent::@2401

// __ct__7cSAngleFRC7cSAngle
cSAngle::cSAngle(const cSAngle& angle) {
    this->Val(angle);
}

// __ct__7cSAngleFs
cSAngle::cSAngle(s16 angle) {
    this->Val(angle);
}

// __ct__7cSAngleFf
cSAngle::cSAngle(float angle) {
    this->Val(angle);
}

// Val__7cSAngleFRC7cSAngle
void cSAngle::Val(const cSAngle& other) {
    this->mAngle = other.mAngle;
}

// Val__7cSAngleFs
void cSAngle::Val(s16 val) {
    this->mAngle = val;
}

// Val__7cSAngleFf
void cSAngle::Val(float f) {
    this->mAngle = 182.04445f * f;
}

// Degree__7cSAngleCFv
float cSAngle::Degree(void) const {
    return (360.0f / 65536.0f) * this->mAngle;
}

// Radian__7cSAngleCFv
float cSAngle::Radian(void) const {
    return 9.58738E-5f * this->mAngle;
}

// Norm__7cSAngleCFv
float cSAngle::Norm(void) const {
    return 3.0517578E-5f * this->mAngle;
}

// Abs__7cSAngleCFv
s16 cSAngle::Abs(void) const {
    return mAngle >= 0 ? mAngle : -mAngle;
}

// Inv__7cSAngleCFv
s16 cSAngle::Inv(void) const {
    return mAngle - 0x8000;
}

// Sin__7cSAngleCFv
float cSAngle::Sin(void) const {
    return sin(this->Radian());
}

// Cos__7cSAngleCFv
float cSAngle::Cos(void) const {
    return cos(this->Radian());
}

// __mi__7cSAngleCFv
cSAngle cSAngle::operator-(void) const {
    return cSAngle(static_cast<s16>(-mAngle));
}

// __pl__7cSAngleCFRC7cSAngle
cSAngle cSAngle::operator+(const cSAngle& other) const {
    return cSAngle(static_cast<s16>(mAngle + other.mAngle));
}

// __mi__7cSAngleCFRC7cSAngle
cSAngle cSAngle::operator-(const cSAngle& other) const {
    return cSAngle(static_cast<s16>(mAngle - other.mAngle));
}

// __apl__7cSAngleFRC7cSAngle
void cSAngle::operator+=(const cSAngle& other) {
    mAngle += other.mAngle;
}

// __ami__7cSAngleFRC7cSAngle
void cSAngle::operator-=(const cSAngle& other) {
    mAngle -= other.mAngle;
}

// __pl__7cSAngleCFs
cSAngle cSAngle::operator+(short other) const {
    return cSAngle(static_cast<s16>(mAngle + other));
}

// __mi__7cSAngleCFs
cSAngle cSAngle::operator-(short other) const {
    return cSAngle(static_cast<s16>(mAngle - other));
}

// __apl__7cSAngleFs
void cSAngle::operator+=(short other) {
    mAngle += other;
}

// __ml__7cSAngleCFf
cSAngle cSAngle::operator*(float f1) const {
    return cSAngle(static_cast<s16>(mAngle * f1));
}

// __amu__7cSAngleFf
void cSAngle::operator*=(float f1) {
    this->mAngle *= f1;
}

// __pl__FsRC7cSAngle
cSAngle operator+(short other, const cSAngle& angle) {
    return cSAngle(static_cast<s16>(other + angle.Val()));
}

// __mi__FsRC7cSAngle
cSAngle operator-(short other, const cSAngle& angle) {
    return cSAngle(static_cast<s16>(other - angle.Val()));
}

// __ct__7cDegreeFf
cDegree::cDegree(float f) {
    this->Val(f);
}

// Formal__7cDegreeFv
cDegree& cDegree::Formal(void) {
    mDegree = cAngle_NS_Adjust(mDegree, -180.0f, 180.0f);
    return *this;
}

// Val__7cDegreeFf
void cDegree::Val(float f) {
    mDegree = f;
    this->Formal();
}

// Radian__7cDegreeCFv
float cDegree::Radian(void) const {
    return 0.017453292f * mDegree;
}

// Sin__7cDegreeCFv
float cDegree::Sin(void) const {
    return sin(this->Radian());
}

// Cos__7cDegreeCFv
float cDegree::Cos(void) const {
    return cos(this->Radian());
}

// Tan__7cDegreeCFv
float cDegree::Tan(void) const {
    return tan(this->Radian());
}

// __ct__7cSPolarFRC4cXyz
cSPolar::cSPolar(const cXyz& xyz) {
    this->Val(xyz);
}

// Formal__7cSPolarFv
cSPolar& cSPolar::Formal(void) {
    if (mRadial < 0.0f) {
        mRadial = -mRadial;
        cSAngle tmp(static_cast<s16>(-0x8000));
        mAngle1.Val(tmp - mAngle1);
        mAngle2.Val(mAngle2.Inv());
    }
    if (mAngle1.Val() < 0 && mAngle1.Val() != -0x8000) {
        mAngle1.Val(-mAngle1);
        mAngle2.Val(mAngle2.Inv());
    }
    return *this;
}

// Val__7cSPolarFfss
void cSPolar::Val(float f, short s1, short s2) {
    mRadial = f;
    mAngle1 = cSAngle(s1);
    mAngle2 = cSAngle(s2);
    this->Formal();
}

inline double square(float f) {
    return f * f;
}

// Val__7cSPolarFRC4cXyz
void cSPolar::Val(const cXyz& xyz) {
    float x, y, z, tmp4;
    x = xyz.x;
    y = xyz.y;
    z = xyz.z;
    double tmp = square(z) + square(x);
    double tmp2 = square(y) + tmp;
    tmp4 = (tmp > 0.0) ? (float)sqrt(tmp) : 0.0f;
    mRadial = (tmp2 > 0.0) ? (float)sqrt(tmp2) : 0.0f;
    mAngle1.Val(static_cast<s16>(cM_atan2f(tmp4, y) * 10430.378f));
    mAngle2.Val(static_cast<s16>(cM_atan2f(x, z) * 10430.378f));
    this->Formal();
}

// Xyz__7cSPolarCFv
cXyz cSPolar::Xyz(void) const {
    float ang1Cos;
    float ang2Cos;
    float ang1Sin = mRadial * (float)sin(mAngle1.Radian());
    ang2Cos = (float)cos(mAngle2.Radian());
    ang1Cos = mRadial * (float)cos(mAngle1.Radian());
    float ang2Sin = sin(mAngle2.Radian());
    return cXyz(ang1Sin * ang2Sin, ang1Cos, ang1Sin * ang2Cos);
}

// Globe__7cSPolarCFP7cSGlobe
void cSPolar::Globe(cSGlobe* globe) const {
    globe->Val(mRadial, 0x4000 - mAngle1.Val(), mAngle2.Val());
}

// __ct__7cSGlobeFRC7cSGlobe
cSGlobe::cSGlobe(const cSGlobe& other) {
    this->Val(other);
}

// __ct__7cSGlobeFfss
cSGlobe::cSGlobe(float f, short s1, short s2) {
    this->Val(f, s1, s2);
}

// __ct__7cSGlobeFfRC7cSAngleRC7cSAngle
cSGlobe::cSGlobe(float f, const cSAngle& a1, const cSAngle& a2) {
    this->Val(f, a1, a2);
}

// __ct__7cSGlobeFRC4cXyz
cSGlobe::cSGlobe(const cXyz& xyz) {
    this->Val(xyz);
}

// Formal__7cSGlobeFv
cSGlobe& cSGlobe::Formal(void) {
    if (mRadius < 0.0f) {
        mRadius = -mRadius;
        mAzimuth = -mAzimuth;
        mInclination.Val(mInclination.Inv());
    }
    if (mAzimuth.Val() < -0x4000 || 0x4000 < mAzimuth.Val()) {
        mAzimuth.mirrorAtMaxNeg();
        mInclination.Val(mInclination.Inv());
    }
    return *this;
}

// Val__7cSGlobeFRC7cSGlobe
void cSGlobe::Val(const cSGlobe& other) {
    mRadius = other.mRadius;
    mAzimuth = other.mAzimuth;
    mInclination = other.mInclination;
    this->Formal();
}

// Val__7cSGlobeFfss
void cSGlobe::Val(float f, short s1, short s2) {
    mRadius = f;
    mAzimuth = cSAngle(s1);
    mInclination = cSAngle(s2);
    this->Formal();
}

// Val__7cSGlobeFfRC7cSAngleRC7cSAngle
void cSGlobe::Val(float f, const cSAngle& a1, const cSAngle& a2) {
    mRadius = f;
    mAzimuth = cSAngle(a1.Val());
    mInclination = cSAngle(a2.Val());
    this->Formal();
}

// Val__7cSGlobeFRC4cXyz
void cSGlobe::Val(const cXyz& xyz) {
    cSPolar csp(xyz);
    csp.Globe(this);
    this->Formal();
}

// Xyz__7cSGlobeCFv
cXyz cSGlobe::Xyz(void) const {
    cSPolar csp;
    this->Polar(&csp);
    return csp.Xyz();
}

// Polar__7cSGlobeCFP7cSPolar
// cSGlobe::Polar(cSPolar*) const
void cSGlobe::Polar(cSPolar* csp) const {
    csp->Val(mRadius, 0x4000 - mAzimuth.Val(), mInclination.Val());
}

// Norm__7cSGlobeCFv
cXyz cSGlobe::Norm(void) const {
    cSGlobe glob(1.0f, mAzimuth, mInclination);
    return glob.Xyz();
}

// Invert__7cSGlobeFv
cSGlobe& cSGlobe::Invert(void) {
    mRadius = -mRadius;
    return this->Formal();
}

extern "C" {

// Adjust<f>__6cAngleFfff
float cAngle_NS_Adjust(float f1, float f2, float f3) {
    while (f1 >= f3) {
        f1 -= f3 - f2;
    }
    while (f1 < f2) {
        f1 += f3 - f2;
    }
    return f1;
}

// __sinit_c_angle_cpp
//
asm void func_80271BD4(void) {
    nofralloc
#include "SComponent/c_angle/asm/func_80271BD4.s"
}
};
