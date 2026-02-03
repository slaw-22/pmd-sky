#include "../lib/include/nitro/types.h"
s32 GetActiveRosterIndex(void *arg1);
void sub_02053224(void *buffer, void *arg1, s32 arg2);
s32 sub_020564B0(void *arg1);
void *GetActiveTeamMember(s32 index);
void CreateMonsterSummaryFromTeamMember(void *arg0, void *member, s32 val);

void sub_0205B028(void *arg0, void *arg1);

void sub_0205B028(void *arg0, void *arg1)
{
    u8 buffer[0x68];
    s32 index = GetActiveRosterIndex(arg1);

    if (index == -1) {
        sub_02053224(buffer, arg1, 0);
        CreateMonsterSummaryFromTeamMember(arg0, buffer, sub_020564B0(arg1));
    } else {
        void *member = GetActiveTeamMember(index);
        CreateMonsterSummaryFromTeamMember(arg0, member, sub_020564B0(arg1));
    }
}