#include "../lib/include/nitro/types.h"
typedef struct {
    u32 val[17];
} Struct_0205BBFC;

extern Struct_0205BBFC *_020B0A54[];

void sub_0205BBFC(Struct_0205BBFC *dest);

void sub_0205BBFC(Struct_0205BBFC *dest)
{
    *dest = *_020B0A54[2];
}