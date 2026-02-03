#include "../lib/include/nitro/types.h"
typedef struct {
    u32 data[44];
} Data;

extern u8 *_020B0A54;

BOOL sub_0205B738(const Data *src);

BOOL sub_0205B738(const Data *src) {
    u8 *base = _020B0A54;
    BOOL ret = (base[0xb0] != 0);
    *(Data *)(base + 0xb0) = *src;
    return ret;
}