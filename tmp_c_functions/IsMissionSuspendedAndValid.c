#include "../lib/include/nitro/types.h"
BOOL IsMissionValid(u8 *mission);

BOOL IsMissionSuspendedAndValid(u8 *mission);

BOOL IsMissionSuspendedAndValid(u8 *mission)
{
    if (*mission != 4)
    {
        return FALSE;
    }

    return IsMissionValid(mission);
}