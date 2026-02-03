#include "../lib/include/nitro/types.h"
s32 sub_0205E448(s32 limit, u8 *ptr);

s32 sub_0205E448(s32 limit, u8 *ptr)
{
    s32 count = 0;
    s32 i;

    for (i = 0; i < limit; i++) {
        BOOL is_zero = (ptr[i * 32] == 0);

        if (is_zero == FALSE) {
            count++;
        }
    }

    return count;
}