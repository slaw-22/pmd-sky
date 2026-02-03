#include "../lib/include/nitro/types.h"
void CopyBitsTo(void *dest, void *src, u32 count);

void sub_02059AF8(void *dest, void *src);

void sub_02059AF8(void *dest, void *src)
{
    CopyBitsTo(dest, src, 7);
}