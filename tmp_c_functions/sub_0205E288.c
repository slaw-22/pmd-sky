#include "../lib/include/nitro/types.h"
BOOL sub_0205E288(const u8 *ptr, u32 val, const u8 *ptr2);

BOOL sub_0205E288(const u8 *ptr, u32 val, const u8 *ptr2)
{
    if (ptr[0] == 0) {
        return FALSE;
    }

    if (ptr[1] == val && ptr[2] == *ptr2) {
        return TRUE;
    }

    return FALSE;
}