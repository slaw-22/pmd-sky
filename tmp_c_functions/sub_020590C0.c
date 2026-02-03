#include "../lib/include/nitro/types.h"
extern void *TEAM_MEMBER_TABLE_PTR;

u64 sub_020590C0(void);

u64 sub_020590C0(void)
{
    return *(u64 *)((u8 *)TEAM_MEMBER_TABLE_PTR + 0x9878);
}