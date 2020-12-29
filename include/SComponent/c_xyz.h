#include "global.h"

class cXyz : public Vec{
public:
    ~cXyz() {};
    cXyz() {}
    cXyz(float x, float y, float z) {
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
    cXyz operator=(const Vec& vec) {
        cXyz ret;
        ret.x = vec.x;
        ret.y = vec.y;
        ret.z = vec.z;
        return ret;
    }
    cXyz operator+(const Vec& vec) const;
    cXyz operator-(const Vec& vec) const;
    cXyz operator*(float scale) const;
    cXyz operator*(const Vec& vec) const;
    cXyz operator/(float) const;
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

    void baseZ() {
        this->x = lbl_80455080;
        this->y = lbl_80455080;
        this->z = lbl_80455070;
    }

    bool checkEpsilon() const {
        return !(PSVECSquareMag(this) < lbl_80455074);
    }
};