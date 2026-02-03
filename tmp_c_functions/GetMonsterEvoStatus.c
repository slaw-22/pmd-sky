#include "../lib/include/nitro/types.h"
typedef struct EvolutionResult {
    u16 padding[3];
    u16 status;
    u8 padding2[52];
} EvolutionResult;

typedef struct MonsterData {
    u8 padding[2];
    u8 species;
} MonsterData;

void GetEvolutionPossibilities(MonsterData *pMonster, EvolutionResult *pResult);
BOOL JoinedAtRangeCheck2(MonsterData *pMonster);
BOOL GetResolvedPerformanceProgressFlag(u32 flag);

u32 GetMonsterEvoStatus(MonsterData *pMonster);

u32 GetMonsterEvoStatus(MonsterData *pMonster)
{
    EvolutionResult res;

    GetEvolutionPossibilities(pMonster, &res);

    if (res.status & 0x1) {
        if (pMonster->species == 0xd6 || JoinedAtRangeCheck2(pMonster)) {
            if (GetResolvedPerformanceProgressFlag(10)) {
                return 1;
            } else {
                return 0;
            }
        }
        return 1;
    }

    if (res.status & 0x4) {
        return 2;
    }

    return 0;
}