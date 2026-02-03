#include "../lib/include/nitro/types.h"
u32 RandInt(u32 n);

u8 sub_0205BD78(void);

u8 sub_0205BD78(void)
{
    return (u8)(RandInt(2) | 2);
}