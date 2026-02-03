#include "../lib/include/nitro/types.h"
s32 GetIqGroup(s32 monster_id);

extern s32 IQ_SKILLS[];
extern u8 IQ_GROUP_SKILLS[][25];

s32 GetNextIqSkill(s32 monster_id, s32 iq_value);

s32 GetNextIqSkill(s32 monster_id, s32 iq_value)
{
    s32 group;
    u8 *group_skills;
    s32 best_skill_id;
    s16 best_iq_needed;
    s32 i;

    group = GetIqGroup(monster_id);
    group_skills = IQ_GROUP_SKILLS[group];
    best_skill_id = 0;
    best_iq_needed = 0;

    for (i = 0; i < 25; i++) {
        u8 skill_id = group_skills[i];

        if (skill_id == 0xFF) {
            return best_skill_id;
        }

        if (skill_id != 0) {
            s32 iq_needed = IQ_SKILLS[skill_id];

            if (iq_needed > iq_value) {
                if (best_iq_needed == 0 || iq_needed < (s32)best_iq_needed) {
                    best_iq_needed = (s16)iq_needed;
                    best_skill_id = skill_id;
                }
            }
        }
    }

    return best_skill_id;
}