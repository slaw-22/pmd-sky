#include "../lib/include/nitro/types.h"
BOOL sub_0205B560(const u32 *v1, const u32 *v2);

BOOL sub_0205B560(const u32 *v1, const u32 *v2)
{
    if (v1[0] == v2[0] && v1[1] == v2[1]) {
        return TRUE;
    }

    return FALSE;
}