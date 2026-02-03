#include "../lib/include/nitro/types.h"
extern u8 *TEAM_MEMBER_TABLE_PTR;

void sub_020590DC(u32 param0, u32 param1);

void sub_020590DC(u32 param0, u32 param1)
{
    u8 *base = TEAM_MEMBER_TABLE_PTR + 0x9000;
    *(u32 *)(base + 0x878) = param0;
    *(u32 *)(base + 0x87C) = param1;
}