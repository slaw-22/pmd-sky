#include "../lib/include/nitro/types.h"
BOOL sub_0205B354(u8 *ptr);

BOOL sub_0205B354(u8 *ptr)
{
    if (ptr[0x45] != 0)
    {
        return FALSE;
    }

    for (s16 i = 0; i < 2; i++)
    {
        if (ptr[i + 0x18] == 0x6f)
        {
            return TRUE;
        }
    }

    return FALSE;
}