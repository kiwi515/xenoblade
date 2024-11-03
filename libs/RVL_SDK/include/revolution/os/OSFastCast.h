#ifndef RVL_SDK_OS_FAST_CAST_H
#define RVL_SDK_OS_FAST_CAST_H
#include <types.h>
#ifdef __cplusplus
extern "C" {
#endif

static inline void OSInitFastCast(){
    asm{
        li r3, 4
        oris r3, r3, 4
        mtgqr2 r3

        li r3, 5
        oris r3, r3, 5
        mtgqr3 r3

        li r3, 6
        oris r3, r3, 6
        mtgqr4 r3
        
        li r3, 7
        oris r3, r3, 7
        mtgqr5 r3
    }
}

static inline void OSSetGQR6(register u32 type, register u32 scale) {
    register u32 val = ((scale << 8 | type) << 16) | ((scale << 8) | type);

    asm {
        mtspr 0x396, val
    }
}

static inline void OSSetGQR7(register u32 type, register u32 scale) {
    register u32 val = ((scale << 8 | type) << 16) | ((scale << 8) | type);

    asm {
        mtspr 0x397, val
    }
}

static inline f32 __OSu16tof32(register const u16* arg) {
    register f32 ret;

    asm {
        psq_l ret, 0(arg), 1, 3
    }
    
    return ret;
}

static inline void OSu16tof32(const u16* in, f32* out) { *out = __OSu16tof32(in); }

static inline u16 __OSf32tou16(register f32 arg) {
    f32 a;
    register f32* ptr = &a;
    u16 r;

        asm {
        psq_st arg, 0(ptr), 1, 3
    }
    
    r = *(u16*)ptr;
    return r;
}

static inline void OSf32tou16(const f32* in, u16* out) { *out = __OSf32tou16(*in); }

static inline f32 __OSs16tof32(register const s16* arg) {
    register f32 ret;

        asm {
        psq_l ret, 0(arg), 1, 5
    }
    
    return ret;
}

static inline void OSs16tof32(const s16* in, f32* out) { *out = __OSs16tof32(in); }

static inline s16 __OSf32tos16(register f32 arg) {
    f32 a;
    register f32* ptr = &a;
    s16 r;

        asm {
        psq_st arg, 0(ptr), 1, 5
    }
    
    r = *(s16*)ptr;
    return r;
}

static inline void OSf32tos16(const f32* in, s16* out) { *out = __OSf32tos16(*in); }

#ifdef __cplusplus
}
#endif
#endif
