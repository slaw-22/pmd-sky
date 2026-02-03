#include "../lib/include/nitro/types.h"
extern u8 *_020B0A54;

s32 GetSosMailCount(s32 id, s32 flag);

s32 GetSosMailCount(s32 id, s32 flag)
{
    u8 *ptr = _020B0A54;
    s32 count = 0;
    s32 i;

    if (flag != 0) {
        i = 2;
    } else {
        i = 0;
    }

    while (i < 32) {
        if (ptr[i * 176] == id) {
            count++;
        }
        i++;
    }

    return count;
}