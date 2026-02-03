#include "../lib/include/nitro/types.h"
void sub_02050974(u32 *param1, u32 param2, u32 param3);
void ReadMonsterFromSave(u32 *param1, u8 *param2);
void CopyBitsFrom(u32 *param1, u8 *param2, u32 param3);
void sub_020509BC(u32 *param1);
void sub_0205523C(void);

extern u8 *TEAM_MEMBER_TABLE_PTR;

u32 ReadMonsterInfoFromSave(u32 param1, u32 param2);

u32 ReadMonsterInfoFromSave(u32 param1, u32 param2)
{
    u32 stack_data[4];
    int i;

    sub_02050974(stack_data, param1, param2);

    for (i = 0; i < 555; i++) {
        ReadMonsterFromSave(stack_data, &TEAM_MEMBER_TABLE_PTR[i * 0x44]);
    }

    CopyBitsFrom(stack_data, &TEAM_MEMBER_TABLE_PTR[0x9878], 0x40);
    CopyBitsFrom(stack_data, &TEAM_MEMBER_TABLE_PTR[0x9880], 4);
    CopyBitsFrom(stack_data, &TEAM_MEMBER_TABLE_PTR[0x9881], 4);
    CopyBitsFrom(stack_data, &TEAM_MEMBER_TABLE_PTR[0x9882], 0x50);

    for (i = 0; i < 4; i++) {
        ReadMonsterFromSave(stack_data, &TEAM_MEMBER_TABLE_PTR[0x9898 + i * 0x44]);
    }

    sub_020509BC(stack_data);
    sub_0205523C();

    return stack_data[2];
}