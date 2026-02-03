#include "../lib/include/nitro/types.h"
typedef struct {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s16 unk8;
} StatBoosts;

typedef struct {
    u8 filler[0x39];
    u8 boost1;
    u8 boost2;
    u8 boost3;
    u8 boost4;
} MonsterSummary;

void sub_0205B120(StatBoosts *boosts, u32 p1, u32 p2, u32 p3, u8 p4);

void GetStatBoostsForMonsterSummary(MonsterSummary *ms, u32 p1, u32 p2, u32 p3, u8 p4);

void GetStatBoostsForMonsterSummary(MonsterSummary *ms, u32 p1, u32 p2, u32 p3, u8 p4)
{
    StatBoosts boosts;

    sub_0205B120(&boosts, p1, p2, p3, p4);

    ms->boost1 += boosts.unk2;
    ms->boost2 += boosts.unk4;
    ms->boost3 += boosts.unk6;
    ms->boost4 += boosts.unk8;
}