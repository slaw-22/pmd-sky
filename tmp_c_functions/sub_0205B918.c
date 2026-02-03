#include "../lib/include/nitro/types.h"
BOOL sub_0205B560(u8 *ptr, u32 val);
extern u8 *_020B0A54;

BOOL sub_0205B918(u32 a, u32 b);

BOOL sub_0205B918(u32 a, u32 b)
{
    int i;

    for (i = 0; i < 32; i++) {
        u8 *ptr = &_020B0A54[i * 0xb0];

        if (*ptr == a) {
            if (sub_0205B560(ptr + 0x14, b)) {
                return TRUE;
            }
        }
    }

    return FALSE;
}