#include "../lib/include/nitro/types.h"
BOOL sub_0205E258(u8 *ptr);

BOOL sub_0205E258(u8 *ptr)
{
    u8 v1 = ptr[1];

    if ((u8)(v1 - 2) <= 3 || (v1 == 10 && ptr[2] == 4)) {
        return TRUE;
    }

    return FALSE;
}