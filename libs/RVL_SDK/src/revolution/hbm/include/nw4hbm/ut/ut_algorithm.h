#ifndef NW4HBM_UT_ALGORITHM_H
#define NW4HBM_UT_ALGORITHM_H
#include <nw4hbm/types_nw4hbm.h>

namespace nw4hbm {
namespace ut {
namespace {

/**
 * Value operations
 */
template <typename T> inline T Max(T t1, T t2) {
    return (t1 < t2) ? t2 : t1;
}

template <typename T> inline T Min(T t1, T t2) {
    return (t1 > t2) ? t2 : t1;
}

template <typename T> inline T Clamp(T value, T min, T max) {
    return value > max ? max : (value < min ? min : value);
}

template <typename T> inline T Abs(T x) {
    // Static cast needed to break abs optimization during instruction selection
    return x < 0 ? static_cast<T>(-x) : static_cast<T>(x);
}

template <> f32 inline Abs(register f32 x) {
    register f32 ax;

    // clang-format off
    asm {
        fabs ax, x
    }
    // clang-format on

    return ax;
}

/**
 * Bit operations
 */
template <typename T> inline T BitExtract(T bits, int pos, int len) {
    T mask = (1 << len) - 1;
    return (bits >> pos) & mask;
}

template <typename T> inline bool TestBit(T t, int bitIndexLSB) {
    return BitExtract<T>(t, sizeof(T), bitIndexLSB);
}

/**
 * Pointer operations
 */
inline u32 GetIntPtr(const void* ptr) {
    return reinterpret_cast<u32>(ptr);
}

template <typename T>
inline const void* AddOffsetToPtr(const void* ptr, T offset) {
    return reinterpret_cast<const void*>(GetIntPtr(ptr) + offset);
}
template <typename T> inline void* AddOffsetToPtr(void* ptr, T offset) {
    return reinterpret_cast<void*>(GetIntPtr(ptr) + offset);
}

inline s32 GetOffsetFromPtr(const void* start, const void* end) {
    return static_cast<s32>(GetIntPtr(end) - GetIntPtr(start));
}

inline int ComparePtr(const void* p1, const void* p2) {
    return static_cast<int>(GetIntPtr(p1) - GetIntPtr(p2));
}

/**
 * Rounding
 */
template <typename T> inline T RoundUp(T t, unsigned int alignment) {
    return (alignment + t - 1) & ~(alignment - 1);
}

template <typename T> inline void* RoundUp(T* t, unsigned int alignment) {
    u32 value = reinterpret_cast<u32>(t);
    u32 rounded = (alignment + value - 1) & ~(alignment - 1);
    return reinterpret_cast<void*>(rounded);
}

template <typename T> inline T RoundDown(T t, unsigned int alignment) {
    return t & ~(alignment - 1);
}

template <typename T> inline void* RoundDown(T* t, unsigned int alignment) {
    u32 value = reinterpret_cast<u32>(t);
    u32 rounded = value & ~(alignment - 1);
    return reinterpret_cast<void*>(rounded);
}

} // namespace
} // namespace ut
} // namespace nw4hbm

#endif
