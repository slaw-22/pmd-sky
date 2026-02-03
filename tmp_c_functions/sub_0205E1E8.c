#include "../lib/include/nitro/types.h"
u8 sub_0205E1E8(u8 *ptr);

u8 sub_0205E1E8(u8 *ptr)
{
    u8 type = ptr[1];
    u32 result = 0;
    u32 flag = 1;
    u8 idx = (u8)(type - 1);

    if (idx <= 13) {
        if (0x00002383 & (1 << idx)) {
            flag = 0;
        }
    }

    if (flag != 0) {
        if (type != 11 || ptr[2] != 0) {
            result = 1;
        }
    }

    return (u8)result;
}