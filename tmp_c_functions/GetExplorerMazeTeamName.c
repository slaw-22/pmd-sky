#include "../lib/include/nitro/types.h"
s32 sub_02058FA4(u8 *ptr);
s32 GetLanguageType(void);
void StrncpySimpleNoPadSafe(u16 *dest, u8 *src, u32 n);
void GetStringFromFileVeneer(u16 *dest, u32 id);

extern u8 *TEAM_MEMBER_TABLE_PTR;

void GetExplorerMazeTeamName(u16 *dest);

void GetExplorerMazeTeamName(u16 *dest)
{
    u8 *ptr = TEAM_MEMBER_TABLE_PTR + 0x1880;
    u8 *ptr2 = ptr + 0x8000;

    if (sub_02058FA4(ptr) != 0) {
        if (GetLanguageType() == (s8)ptr2[0]) {
#ifdef JAPAN
            StrncpySimpleNoPadSafe(dest, ptr2 + 2, 5);
#else
            StrncpySimpleNoPadSafe(dest, ptr2 + 2, 0xA);
#endif
            return;
        }
    }

#ifdef JAPAN
    GetStringFromFileVeneer(dest, 0x4C6);
#else
    GetStringFromFileVeneer(dest, 0x235);
#endif
}