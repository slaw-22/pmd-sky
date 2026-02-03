#include "../lib/include/nitro/types.h"
void CopyBitsTo(void *param0, const void *param1, u32 param2);
void sub_020515C4(void *param0, void *param1);
void sub_02014B74(void *param0, void *param1);
void sub_0200DF74(void *param0, void *param1);
void sub_020510C0(void *param0, void *param1);

extern u8 *TEAM_MEMBER_TABLE_PTR;
extern u8 _020A3498;
extern u8 _020A3499;

void sub_0205956C(void *param0, u32 param1);

void sub_0205956C(void *param0, u32 param1) {
    CopyBitsTo(param0, TEAM_MEMBER_TABLE_PTR + (0x9874 + param1), 1);
    CopyBitsTo(param0, TEAM_MEMBER_TABLE_PTR + (0x9850 + (param1 << 1)), 16);

    for (int i = 0; i < 4; i++) {
        CopyBitsTo(param0, TEAM_MEMBER_TABLE_PTR + (0x9856 + (param1 << 3) + (i << 1)), 16);
    }

    u32 r8 = param1 * 416;
    for (int j = 0; j < 4; j++) {
        u8 *current = TEAM_MEMBER_TABLE_PTR + (0x936c + r8 + j * 104);

        CopyBitsTo(param0, current, 4);
        CopyBitsTo(param0, (current[1] != 0) ? &_020A3498 : &_020A3499, 1);
        CopyBitsTo(param0, current + 2, 7);
        sub_020515C4(param0, current + 3);
        CopyBitsTo(param0, current + 6, 10);
        CopyBitsTo(param0, current + 8, 16);
        CopyBitsTo(param0, current + 10, 16);
        CopyBitsTo(param0, current + 12, 11);
        CopyBitsTo(param0, current + 14, 10);
        CopyBitsTo(param0, current + 16, 10);
        CopyBitsTo(param0, current + 18, 8);
        CopyBitsTo(param0, current + 19, 8);
        CopyBitsTo(param0, current + 20, 8);
        CopyBitsTo(param0, current + 21, 8);
        CopyBitsTo(param0, current + 24, 24);
        sub_02014B74(param0, current + 28);
        sub_0200DF74(param0, current + 62);
        sub_020510C0(param0, current + 68);
        sub_020510C0(param0, current + 72);
        CopyBitsTo(param0, current + 76, 69);
        CopyBitsTo(param0, current + 88, 4);
        CopyBitsTo(param0, current + 90, 10);
        CopyBitsTo(param0, current + 92, 5);
        CopyBitsTo(param0, current + 94, 80);
    }
}