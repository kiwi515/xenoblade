#ifndef NW4R_MATH_TRIANGULAR_H
#define NW4R_MATH_TRIANGULAR_H
#include <nw4r/types_nw4r.h>
#include <nw4r/db/db_assert.h>

#include <nw4r/math/math_arithmetic.h>

#include <cmath>

#define NW4R_MATH_PI M_PI
#define NW4R_MATH_LN_2 0.69314718056f

// [0, 65535] -> [0.0, 256.0f]
#define NW4R_MATH_IDX_TO_FIDX(x) ((x) * (1.0f / 256.0f))

// Convert degrees <-> lookup-table index
#define NW4R_MATH_DEG_TO_FIDX(x) ((x) * (256.0f / 360.0f))
#define NW4R_MATH_FIDX_TO_DEG(x) ((x) * (360.0f / 256.0f))

// Convert radians <-> lookup-table index
#define NW4R_MATH_RAD_TO_FIDX(x) ((x) * (128.0f / NW4R_MATH_PI))
#define NW4R_MATH_FIDX_TO_RAD(x) ((x) * (NW4R_MATH_PI / 128.0f))

//For warnings
#undef __FILE__
#define __FILE__ "triangular.h"

namespace nw4r {
namespace math {

namespace detail {

struct SinCosSample {
    f32 sin_val;   // at 0x0
    f32 cos_val;   // at 0x4
    f32 sin_delta; // at 0x8
    f32 cos_delta; // at 0xC
};

extern const SinCosSample gSinCosTbl[];
}

/**
 * sin
 */
f32 SinFIdx(f32 fidx);

inline f32 SinIdx(u16 idx) {
    return SinFIdx(NW4R_MATH_IDX_TO_FIDX(U16ToF32(idx)));
}
inline f32 SinDeg(f32 deg) {
    return SinFIdx(NW4R_MATH_DEG_TO_FIDX(deg));
}
inline f32 SinRad(f32 rad) {
    return SinFIdx(NW4R_MATH_RAD_TO_FIDX(rad));
}

/**
 * cos
 */
f32 CosFIdx(f32 fidx);

inline f32 CosDeg(f32 deg) {
    return CosFIdx(NW4R_MATH_DEG_TO_FIDX(deg));
}
inline f32 CosRad(f32 rad) {
    return CosFIdx(NW4R_MATH_RAD_TO_FIDX(rad));
}

/**
 * tan
 */
inline f32 TanFIdx(f32 fidx) {
    return std::tanf(NW4R_MATH_FIDX_TO_RAD(fidx));
}
inline f32 TanDeg(f32 deg) {
    return TanFIdx(NW4R_MATH_DEG_TO_FIDX(deg));
}
inline f32 TanRad(f32 rad) {
    return TanFIdx(NW4R_MATH_RAD_TO_FIDX(rad));
}

/**
 * sin/cos
 */
void SinCosFIdx(f32* pSin, f32* pCos, f32 fidx);

inline void SinCosDeg(f32* s, f32* c, f32 deg) {
    return SinCosFIdx(s, c, NW4R_MATH_DEG_TO_FIDX(deg));
}
inline void SinCosRad(f32* pSin, f32* pCos, f32 rad) {
    return SinCosFIdx(pSin, pCos, NW4R_MATH_RAD_TO_FIDX(rad));
}

/**
 * atan
 */
f32 AtanFIdx(f32 x);

inline f32 AtanDeg(f32 x) {
    return NW4R_MATH_FIDX_TO_DEG(AtanFIdx(x));
}
inline f32 AtanRad(f32 x) {
    return NW4R_MATH_FIDX_TO_RAD(AtanFIdx(x));
}

/**
 * atan2
 */
f32 Atan2FIdx(f32 y, f32 x);

inline f32 Atan2Deg(f32 y, f32 x) {
    return NW4R_MATH_FIDX_TO_DEG(Atan2FIdx(y, x));
}
inline f32 Atan2Rad(f32 y, f32 x) {
    return NW4R_MATH_FIDX_TO_RAD(Atan2FIdx(y, x));
}

/**
 * asin
 */
inline f32 AsinRad(f32 x){
    bool inRange = x <= 1.0f && x >= -1.0f;

    if(!inRange){
    #line 228
        NW4R_WARNING("AsinRad: Input is out of the domain.");
    }

    return std::asin(x);
}

/**
 * acos
 */
inline f32 AcosRad(f32 x){
    bool inRange = x <= 1.0f && x >= -1.0f;

    if(!inRange){
    #line 239
        NW4R_WARNING("AcosRad: Input is out of the domain.");
    }

    return std::acos(x);
}

} // namespace math
} // namespace nw4r

#endif
