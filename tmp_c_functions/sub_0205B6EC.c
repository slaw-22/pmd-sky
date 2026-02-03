#include "../lib/include/nitro/types.h"
s32 sub_0205B690(const void *src);

typedef struct {
    u32 data[44];
} UnkStruct_0205B6EC;

extern UnkStruct_0205B6EC *_020B0A54;

BOOL sub_0205B6EC(const void *src);

BOOL sub_0205B6EC(const void *src)
{
    s32 res = sub_0205B690(src);

    if (res == -1) {
        return FALSE;
    }

    _020B0A54[res] = *(const UnkStruct_0205B6EC *)src;

    return TRUE;
}