#include "../lib/include/nitro/types.h"
struct Summary {
    s16 species;
    u8 name[20];
    u8 type[2];
    u8 ability[2];
    u8 field_1A;
    u8 field_1B;
    u16 ivs[3];
    u16 pad22;
    s32 current_hp;
    s32 max_hp;
    u32 level;
    u32 exp;
    u8 field_34[2];
    u8 field_36[2];
    u8 field_38;
    u8 bonus_stats[4];
    s16 level_again;
    u8 pad40[2];
    u8 field_42;
    u8 field_43;
    u8 evo_status;
    u8 field_45;
    u8 pad46[2];
    u32 copy[3];
    u8 field_54;
    u8 pad55[3];
    u8 clear_buf[31];
};

struct TeamMember {
    u8 pad0[2];
    u8 level_u8;
    u8 field_3;
    u8 field_4;
    u8 pad5;
    s16 level_s16;
    s16 team_idx;
    u8 padA[2];
    s16 species;
    s16 hp;
    u8 pad10[2];
    u8 field_12[2];
    u8 field_14[2];
    u8 pad16[2];
    u32 exp;
    u8 pad1C[34];
    u16 ivs[3];
    u8 pad44[8];
    u32 copy[3];
    u8 field_58;
};

struct BlockCopy {
    u32 val[3];
};

void *GetTeamMember(s16 index);
void sub_02056084(u8 *dest, void *member, int param);
u8 GetType(s16 species, int index);
u8 GetAbility(s16 species, int index);
u32 sub_0205B354(struct Summary *sb);
void sub_0205B120(s16 *stats, s16 species, u16 *ivs, s16 level, u32 extra);
int GetResolvedPerformanceProgressFlag(void);
u8 GetMonsterEvoStatus(void *member);

void CreateMonsterSummaryFromTeamMember(struct Summary *sb, struct TeamMember *r8, int r7);

void CreateMonsterSummaryFromTeamMember(struct Summary *sb, struct TeamMember *r8, int r7) {
    void *r4;
    s16 stats[6];
    int i;
    u32 extra;

    r4 = GetTeamMember(r8->team_idx);
    sub_02056084(sb->name, r4, 0x4E);

    sb->species = r8->species;
    sb->current_hp = (s32)r8->hp;
    sb->max_hp = (s32)r8->hp;
    sb->level = (u32)r8->level_u8;
    sb->exp = r8->exp;

    for (i = 0; i < 2; i++) {
        sb->field_34[i] = r8->field_12[i];
        sb->field_36[i] = r8->field_14[i];
        sb->type[i] = GetType(r8->species, i);
        sb->ability[i] = GetAbility(r8->species, i);
    }

    sb->field_38 = (u8)r7;
    sb->bonus_stats[0] = 0;
    sb->bonus_stats[1] = 0;
    sb->bonus_stats[2] = 0;
    sb->bonus_stats[3] = 0;
    sb->field_45 = 0;

    sb->field_54 = r8->field_58;
    sb->ivs[0] = r8->ivs[0];
    sb->ivs[1] = r8->ivs[1];
    sb->ivs[2] = r8->ivs[2];
    sb->level_again = r8->level_s16;
    sb->field_1A = r8->field_3;
    sb->field_1B = r8->field_4;

    *(struct BlockCopy *)sb->copy = *(struct BlockCopy *)r8->copy;

    extra = sub_0205B354(sb);
    sub_0205B120(stats, sb->species, r8->ivs, sb->level_again, extra);

    sb->bonus_stats[0] += (u8)stats[1];
    sb->bonus_stats[1] += (u8)stats[2];
    sb->bonus_stats[2] += (u8)stats[3];
    sb->bonus_stats[3] += (u8)stats[4];

    sb->current_hp += (s32)stats[0];
    if (sb->current_hp > 999) {
        sb->current_hp = 999;
    }
    sb->max_hp = sb->current_hp;

    sb->field_42 = ((u8 *)r4)[6];
    sb->field_43 = ((u8 *)r4)[7];

    if (!GetResolvedPerformanceProgressFlag()) {
        sb->evo_status = 3;
    } else {
        sb->evo_status = GetMonsterEvoStatus(r4);
    }

    for (i = 0; i < 31; i++) {
        sb->clear_buf[i] = 0;
    }
}