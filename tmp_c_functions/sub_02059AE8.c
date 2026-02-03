#include "../lib/include/nitro/types.h"
void CopyBitsFrom(void *p0, void *p1, u32 p2);

void sub_02059AE8(void *p0, void *p1);

void sub_02059AE8(void *p0, void *p1)
{
    CopyBitsFrom(p0, p1, 7);
}