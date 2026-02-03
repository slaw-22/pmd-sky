#include "../lib/include/nitro/types.h"
struct TeamMemberTable {
    u8 padding[0x989c];
    s16 value;
};

extern struct TeamMemberTable *TEAM_MEMBER_TABLE_PTR;

u8 sub_02058FA4(void);

u8 sub_02058FA4(void) {
    if (TEAM_MEMBER_TABLE_PTR->value != 0) {
        return TRUE;
    }
    return FALSE;
}