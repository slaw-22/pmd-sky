#include "../lib/include/nitro/types.h"
void StrncpySimple(u8 *dest, const u8 *src, u32 n);
void sub_02055F04(u8 *dest, const u8 *src);
void sub_0204D018(u32 a, u32 b);

extern u8 *TEAM_MEMBER_TABLE_PTR;

void sub_02058FCC(u8 *ptr);

void sub_02058FCC(u8 *ptr)
{
    if (ptr != NULL)
    {
        TEAM_MEMBER_TABLE_PTR[0x9880] = (u8)*(s8 *)ptr;
        TEAM_MEMBER_TABLE_PTR[0x9881] = ptr[1];

        StrncpySimple(TEAM_MEMBER_TABLE_PTR + 0x9882, ptr + 2, 0x14);

        for (int i = 0; i < 4; i++)
        {
            sub_02055F04(TEAM_MEMBER_TABLE_PTR + 0x9898 + (i * 0x44), ptr + 0x18 + (i * 0x4c));
        }

        sub_0204D018(0xbe, 1);
    }
}