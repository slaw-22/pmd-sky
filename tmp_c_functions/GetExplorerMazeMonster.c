#include "../lib/include/nitro/types.h"
extern u8 *TEAM_MEMBER_TABLE_PTR;

u8 *GetExplorerMazeMonster(s32 index);

u8 *GetExplorerMazeMonster(s32 index)
{
    return TEAM_MEMBER_TABLE_PTR + 0x9898 + (s16)index * 0x44;
}