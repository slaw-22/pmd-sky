#include "../lib/include/nitro/types.h"
u32 sub_0205BD40(u32 val);

u32 sub_0205BD40(u32 val)
{
    if (val & 2) {
        return 0;
    }

    return (val & 1) ? 2 : 1;
}