#include "../lib/include/nitro/types.h"
typedef struct {
    u32 data[44];
} Struct_020B0A54;

extern Struct_020B0A54 *_020B0A54;

void sub_0205B794(Struct_020B0A54 *dest, s32 index);

void sub_0205B794(Struct_020B0A54 *dest, s32 index)
{
    *dest = _020B0A54[index];
}