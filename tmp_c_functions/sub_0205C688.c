#include "../lib/include/nitro/types.h"
BOOL sub_0205BD40(u32 arg0);
BOOL sub_02054F18(u32 arg1);

BOOL sub_0205C688(u32 arg0, u32 arg1);

BOOL sub_0205C688(u32 arg0, u32 arg1)
{
    if (!sub_0205BD40(arg0)) {
        return TRUE;
    }

    return !sub_02054F18(arg1);
}