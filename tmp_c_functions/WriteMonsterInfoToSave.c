#include "../lib/include/nitro/types.h"
void sub_02050990(void *ptr, u32 arg1, u32 arg2);
void WriteMonsterToSave(void *ptr, u8 *monster_ptr);
void CopyBitsTo(void *ptr, u8 *src_ptr, u32 size);
void sub_020509BC(void *ptr);

extern u8 *TEAM_MEMBER_TABLE_PTR;

s32 WriteMonsterInfoToSave(u32 arg0, u32 arg1);

s32 WriteMonsterInfoToSave(u32 arg0, u32 arg1)
{
    struct {
        u32 f0;
        u32 f1;
        s32 result;
        u32 f3;
    } local_struct;
    int i;

    sub_02050990(&local_struct, arg0, arg1);

    for (i = 0; i < 0x22B; i++) {
        WriteMonsterToSave(&local_struct, TEAM_MEMBER_TABLE_PTR + (i * 0x44));
    }

    CopyBitsTo(&local_struct, TEAM_MEMBER_TABLE_PTR + 0x9878, 0x40);
    CopyBitsTo(&local_struct, TEAM_MEMBER_TABLE_PTR + 0x9880, 4);
    CopyBitsTo(&local_struct, TEAM_MEMBER_TABLE_PTR + 0x9881, 4);
    CopyBitsTo(&local_struct, TEAM_MEMBER_TABLE_PTR + 0x9882, 0x50);

    for (i = 0; i < 4; i++) {
        WriteMonsterToSave(&local_struct, TEAM_MEMBER_TABLE_PTR + 0x9898 + (i * 0x44));
    }

    sub_020509BC(&local_struct);

    return local_struct.result;
}