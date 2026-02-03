#include "../lib/include/nitro/types.h"
typedef struct {
    u32 unk[44];
} UNK_STRUCT_020B0A54;

extern UNK_STRUCT_020B0A54 *_020B0A54;

void sub_0205BB7C(u32 *arg0, s32 arg1);

void sub_0205BB7C(u32 *arg0, s32 arg1)
{
    arg0[0] = _020B0A54[arg1].unk[1];
    arg0[1] = _020B0A54[arg1].unk[2];
}