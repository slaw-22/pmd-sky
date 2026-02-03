#include "../lib/include/nitro/types.h"
struct Struct_0205B6CC {
    u32 padding[3];
    u32 field_C;
    u32 field_10;
};

u8 sub_0205B6CC(struct Struct_0205B6CC *arg0);

u8 sub_0205B6CC(struct Struct_0205B6CC *arg0)
{
    return (u8)(arg0->field_10 != 0 || arg0->field_C >= 2);
}