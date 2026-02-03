#include "../lib/include/nitro/types.h"
extern u8 *_020B0A54;

s32 sub_0205B690(void);

s32 sub_0205B690(void)
{
    s32 i;

    for (i = 2; i < 32; i++) {
        if (_020B0A54[i * 176] == 0) {
            return i;
        }
    }

    return -1;
}