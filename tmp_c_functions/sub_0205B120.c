#include "../lib/include/nitro/types.h"
typedef struct Stats {
    s16 hp;
    s16 atk;
    s16 spa;
    s16 def;
    s16 spd;
} Stats;

typedef struct Item {
    u8 flags;
    u8 filler[3];
    s16 id;
} Item;

void EnableAllLearnableIqSkills(u32 *iqSkills, int species, int iqValue);
int GetType(int species, int typeIndex);
void sub_02011220(u8 *boosts, int species, int type1, int type2);
int GetHpBoostFromExclusiveItems(u8 *boosts);
BOOL IsAuraBow(s16 id);
BOOL IqSkillFlagTest(u32 *iqSkills, int skillId);

extern s16 POWER_BAND_STAT_BOOST;
extern s16 MUNCH_BELT_STAT_BOOST;
extern s16 SPECIAL_BAND_STAT_BOOST;
extern s16 DEF_SCARF_STAT_BOOST;
extern s16 ZINC_BAND_STAT_BOOST;
extern s16 AURA_BOW_STAT_BOOST;
extern s16 _020A1870;

void sub_0205B120(Stats *stats, int species, Item *item, int iqValue, BOOL param5);

void sub_0205B120(Stats *stats, int species, Item *item, int iqValue, BOOL param5) {
    u32 iqSkills[3];
    u8 boosts[4];

    stats->hp = 0;
    stats->atk = 0;
    stats->spa = 0;
    stats->def = 0;
    stats->spd = 0;

    EnableAllLearnableIqSkills(iqSkills, species, iqValue);

    int type1 = GetType(species, 0);
    int type2 = GetType(species, 1);

    sub_02011220(boosts, species, type1, type2);

    stats->hp += (s16)GetHpBoostFromExclusiveItems(boosts);
    stats->atk += (s16)boosts[0];
    stats->spa += (s16)boosts[1];
    stats->def += (s16)boosts[2];
    stats->spd += (s16)boosts[3];

    if (param5 == FALSE) {
        if (item != NULL) {
            BOOL flag1 = (item->flags & 1) != 0;
            if (flag1) {
                BOOL flag8 = (item->flags & 8) != 0;
                if (!flag8) {
                    if (item->id == 0x1A) {
                        stats->atk += POWER_BAND_STAT_BOOST;
                    }
                    if (item->id == 0x32) {
                        stats->atk += MUNCH_BELT_STAT_BOOST;
                    }
                    if (item->id == 0x28) {
                        stats->spa += SPECIAL_BAND_STAT_BOOST;
                    }
                    if (item->id == 0x32) {
                        stats->spa += MUNCH_BELT_STAT_BOOST;
                    }
                    if (item->id == 0x25) {
                        stats->def += DEF_SCARF_STAT_BOOST;
                    }
                    if (item->id == 0x29) {
                        stats->spd += ZINC_BAND_STAT_BOOST;
                    }

                    if (IsAuraBow(item->id)) {
                        s16 auraBoost = AURA_BOW_STAT_BOOST;
                        stats->atk += auraBoost;
                        stats->spa += auraBoost;
                        stats->def += auraBoost;
                        stats->spd += auraBoost;
                    }
                }
            }
        }
    }

    if (IqSkillFlagTest(iqSkills, 56)) {
        stats->hp += _020A1870;
    }
}