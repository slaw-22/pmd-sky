#include "../lib/include/nitro/types.h"
u32 sub_0205BD40(u32 a);
u32 IsMovesetValidInTimeDarkness(u32 b);
u32 IsMovesetValid(u32 b);

u32 sub_0205C6CC(u32 a, u32 b);

u32 sub_0205C6CC(u32 a, u32 b)
{
    if (sub_0205BD40(a) == FALSE) {
        return IsMovesetValid(b);
    }

    return IsMovesetValidInTimeDarkness(b);
}