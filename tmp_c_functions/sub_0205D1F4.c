#include "../lib/include/nitro/types.h"
BOOL IsMissionValid(u8 *ptr);

BOOL sub_0205D1F4(u8 *ptr);

BOOL sub_0205D1F4(u8 *ptr)
{
    if (IsMissionValid(ptr) && *ptr < 9) {
        return TRUE;
    }

    return FALSE;
}