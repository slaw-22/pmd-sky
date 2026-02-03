#include "../lib/include/nitro/types.h"
extern u8 *_020B0A54;

s32 sub_0205B9C8(s32 a);

s32 sub_0205B9C8(s32 a)
{
    u8 *ptr = _020B0A54;
    s32 count = 0;
    s32 i = (a != 0) ? 2 : 0;

    for (; i < 32; i++) {
        if (ptr[i * 176] != 0) {
            count++;
        }
    }

    return count;
}