#include "../lib/include/nitro/types.h"
BOOL sub_0205C688(u32 param0, u32 param1);
BOOL sub_0205C6CC(u32 param0, u32 param1);

BOOL sub_0205C700(u32 param0, u32 param1, u32 param2);

BOOL sub_0205C700(u32 param0, u32 param1, u32 param2)
{
    if (sub_0205C688(param0, param1) && sub_0205C6CC(param0, param2)) {
        return TRUE;
    }

    return FALSE;
}