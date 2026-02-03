#include "../lib/include/nitro/types.h"
extern u8 *_020B0A54;

s32 sub_0205BA70(s32 a);

s32 sub_0205BA70(s32 a)
{
    u8 *ptr = _020B0A54;
    s32 i;

    for (i = 0; i < 0x20; i++)
    {
        if (ptr[i * 0xb0] == a)
        {
            return i;
        }
    }

    return -1;
}