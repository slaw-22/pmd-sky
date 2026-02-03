#include "../lib/include/nitro/types.h"
s32 sub_0205B560(u8 *ptr, s32 val);
extern u8 *_020B0A54;

s32 sub_0205BA0C(s32 a, s32 b);

s32 sub_0205BA0C(s32 a, s32 b) {
    s32 i;
    for (i = 0; i < 32; i++) {
        u8 *ptr = &_020B0A54[i * 176];
        if (ptr[0] == a) {
            if (sub_0205B560(ptr + 20, b)) {
                return i;
            }
        }
    }
    return -1;
}