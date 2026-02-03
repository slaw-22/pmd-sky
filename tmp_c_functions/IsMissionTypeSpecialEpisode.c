#include "../lib/include/nitro/types.h"
BOOL IsMissionTypeSpecialEpisode(u8 *p);

BOOL IsMissionTypeSpecialEpisode(u8 *p)
{
    return p[1] == 0xE && p[2] == 2;
}