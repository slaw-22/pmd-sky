#include "../lib/include/nitro/types.h"
u32 sub_0205EB28(const u8 *a, const u8 *b);

u32 sub_0205EB28(const u8 *a, const u8 *b)
{
    return a[4] > b[4] || (a[4] == b[4] && a[5] > b[5]);
}