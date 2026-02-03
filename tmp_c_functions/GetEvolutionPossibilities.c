#include "../lib/include/nitro/types.h"
void GetEvoParameters(s32 index, EvoParams *p);
BOOL CanEvolve(s16 species);
s32 FindItemInInventory(s32 item_id);
s32 _s32_div_f(s32 a, s32 b);
BOOL IsMonsterOnTeam(s32 species, s32 param);

typedef struct {
    s16 species;
    u16 type1;
    s16 param2;
    u16 type2;
} EvoParams;

typedef struct {
    u8 pad[4];
    u8 flags;
    u8 pad2;
    u16 status;
    u16 target;
    u16 list[8];
    u16 items1[8];
    u16 items2[8];
} EvoResult;

typedef struct {
    u8 pad[1];
    u8 level;
    u8 pad2[2];
    s16 id;
    s16 field_8;
    u8 pad3[2];
    u8 stat1;
    u8 pad4;
    u8 stat2;
    u8 pad5[19];
    struct {
        u8 pad[2];
        u8 flag;
        u8 pad2;
        u16 id;
    } moves[4];
} Monster;

void GetEvolutionPossibilities(Monster *pMonster, EvoResult *pEvoResult);

void GetEvolutionPossibilities(Monster *pMonster, EvoResult *pEvoResult) {
    s16 original_id = pMonster->id;
    s16 check_id = original_id;
    int start_search, end_search;
    int i, j;
    int candidate_count = 0;
    EvoParams params;

    pEvoResult->status = 0;

    if (original_id < 600) {
        end_search = 554;
        start_search = 1;
    } else {
        start_search = 601;
        end_search = 1155;
    }

    if (original_id >= 447 && original_id <= 449) {
        check_id = 447;
    }

    if (original_id >= 1047 && original_id <= 1049) {
        end_search = 554;
        check_id = original_id - 600;
        start_search = 1;
    }

    if (original_id == 993) {
        check_id = 993 - 600;
        end_search = 554;
        start_search = 1;
    }

    if (original_id == 1054) {
        check_id = 1054 - 600;
        end_search = 1054 - 500;
        start_search = 1;
    }

    if (original_id >= 462 && original_id <= 463) {
        check_id = 462;
    }

    if (original_id >= 1062 && original_id <= 1063) {
        check_id = 1062;
    }

    for (i = 0; i < 8; i++) {
        pEvoResult->items1[i] = 0;
        pEvoResult->items2[i] = 0;
        pEvoResult->list[i] = 0;
    }
    pEvoResult->target = 0;

    if (original_id == 1054) {
        if (!CanEvolve(original_id)) {
            pEvoResult->status = 4;
            return;
        }
    } else {
        if (!CanEvolve(check_id)) {
            pEvoResult->status = 4;
            return;
        }
    }

    {
        s32 v394 = -450 + 844;
        s32 v393 = 993 - 600;
        s32 v462 = -450 + 912;
        s32 v1062 = 993 + 69;
        s32 v449 = 993 - 544;
        s32 v447 = 1440 - 993;
        s32 v_m1062 = -450 - 612;
        s32 v_m1064 = -1047 - 17;
        s32 v_m462 = -450 - 12;

        for (i = start_search; i < end_search; i++) {
            GetEvoParameters(i, &params);
            if (params.type1 != 0 && params.species == check_id) {
                if (check_id > 462) {
                    if (check_id == v1062) {
                        if (pMonster->id + v_m1062 == i + v_m1064) {
                            pEvoResult->list[candidate_count++] = (u16)i;
                        }
                    } else {
                        pEvoResult->list[candidate_count++] = (u16)i;
                    }
                } else if (check_id > 447) {
                    if (check_id == 462) {
                        if (pMonster->id + v_m462 == i - 464) {
                            pEvoResult->list[candidate_count++] = (u16)i;
                        }
                    } else {
                        pEvoResult->list[candidate_count++] = (u16)i;
                    }
                } else if (check_id >= 447) {
                    if (pMonster->id + (-450) == i + (-1047)) {
                        pEvoResult->list[candidate_count++] = (u16)i;
                    } else {
                        if (pMonster->id >= v447 && pMonster->id <= v449) {
                            pEvoResult->list[candidate_count++] = (u16)i;
                        }
                    }
                } else if (check_id == v393) {
                    if (pMonster->id == 993 && i == v394) {
                        pEvoResult->list[candidate_count++] = (u16)(i + 600);
                    } else {
                        pEvoResult->list[candidate_count++] = (u16)i;
                    }
                } else {
                    pEvoResult->list[candidate_count++] = (u16)i;
                }
            }
        }
    }

    if (candidate_count == 0) {
        pEvoResult->status = 4;
        return;
    }

    for (i = 0; i < candidate_count; i++) {
        u16 evo_id = pEvoResult->list[i];
        GetEvoParameters(evo_id, &params);
        BOOL failed = FALSE;

        switch (params.type1) {
        case 1:
            if (pMonster->level < params.param2) {
                failed = TRUE;
                pEvoResult->status |= 2;
            }
            break;
        case 2:
            if (pMonster->field_8 < params.param2) {
                failed = TRUE;
                pEvoResult->status |= 0x10;
            }
            break;
        case 3:
            if (FindItemInInventory(params.param2) < 0) {
                failed = TRUE;
                pEvoResult->status |= 8;
            } else {
                pEvoResult->items1[i] = (u16)params.param2;
            }
            break;
        case 4:
            {
                s32 team_count = 0;
                if (IsMonsterOnTeam((s16)_s32_div_f(params.param2, 600), 0)) team_count++;
                if (IsMonsterOnTeam((s16)_s32_div_f(params.param2, 600) + 600, 0)) team_count++;
                if (team_count == 0) failed = TRUE;
            }
            break;
        }

        switch (params.type2) {
        case 1:
            if (FindItemInInventory(0x97) < 0) {
                failed = TRUE;
                pEvoResult->status |= 8;
            } else {
                pEvoResult->items2[i] = 0x97;
            }
            break;
        case 2:
            if (pMonster->stat1 <= pMonster->stat2) failed = TRUE;
            break;
        case 3:
            if (pMonster->stat1 >= pMonster->stat2) failed = TRUE;
            break;
        case 4:
            if (pMonster->stat1 != pMonster->stat2) failed = TRUE;
            break;
        case 5:
            if (FindItemInInventory(0x37) < 0) {
                failed = TRUE;
                pEvoResult->status |= 8;
            } else {
                pEvoResult->items2[i] = 0x37;
            }
            break;
        case 6:
            if (FindItemInInventory(0x38) < 0) {
                failed = TRUE;
                pEvoResult->status |= 8;
            } else {
                pEvoResult->items2[i] = 0x38;
            }
            break;
        case 7:
            if (FindItemInInventory(0x36) < 0) {
                failed = TRUE;
            } else {
                pEvoResult->items2[i] = 0x36;
            }
            break;
        case 8:
            if (!(pEvoResult->flags & 1)) failed = TRUE;
            break;
        case 9:
            if (pEvoResult->flags & 1) failed = TRUE;
            break;
        case 10:
            if (pMonster->id < 600) failed = TRUE;
            break;
        case 11:
            if (pMonster->id >= 600) failed = TRUE;
            break;
        case 12:
            failed = TRUE;
            for (j = 0; j < 4; j++) {
                if ((pMonster->moves[j].flag & 1) && (pMonster->moves[j].id == 0x5d)) failed = FALSE;
            }
            break;
        case 13:
            failed = TRUE;
            for (j = 0; j < 4; j++) {
                if ((pMonster->moves[j].flag & 1) && (pMonster->moves[j].id == 0x69)) failed = FALSE;
            }
            break;
        case 14:
            failed = TRUE;
            for (j = 0; j < 4; j++) {
                if ((pMonster->moves[j].flag & 1) && (pMonster->moves[j].id == 0x1E7)) failed = FALSE;
            }
            break;
        case 15:
            failed = TRUE;
            for (j = 0; j < 4; j++) {
                if ((pMonster->moves[j].flag & 1) && (pMonster->moves[j].id == 0x147)) failed = FALSE;
            }
            break;
        }

        if (!failed) {
            pEvoResult->status |= 1;
            pEvoResult->target = evo_id;
        } else {
            pEvoResult->list[i] = 0;
        }
    }
}