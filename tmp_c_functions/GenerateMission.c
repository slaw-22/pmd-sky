#include "../lib/include/nitro/types.h"
s32 GetAllPossibleMonsters(u16 **p_list);
void ClearMissionData(void *mission);
BOOL CanDungeonBeUsedForMission(u8 dungeon_id);
u32 sub_0205E258(void *mission);
BOOL sub_02062C4C(u32 count, u16 *list, u8 *p_out, u32 param4);
BOOL sub_0205CF58(u8 dungeon, u8 *p_floor, u8 *p_dungeon_out);
void sub_02062814(u32 *p_count);
void *MemAlloc(u32 size);
u32 sub_0206282C(void);
void MemFree(void *ptr);
u8 sub_02063424(u8 type, u8 *p_mission_sub, u8 dungeon);
BOOL IsForbiddenFloor(u8 *p_floor);
u8 GetMaxMembersAllowed(u8 dungeon);
u8 GetMaxItemsAllowed(u8 dungeon);
BOOL sub_02062D40(u8 *p_dungeon);
u32 sub_02051134(void);
BOOL sub_0205D008(u8 dungeon, u8 *p_floor, s16 monster_id, u32 flag);
BOOL CanMonsterBeUsedForMission(s16 monster_id, u32 flag);
BOOL CanMonsterBeUsedForMissionWrapper(s16 monster_id);
BOOL sub_02062AD0(s16 monster_id);
s32 sub_0205DFAC(u16 **p_list, u16 *p_in);
u32 RandInt(u32 max);
s16 GetSecondFormIfValid(s16 monster_id);
u16 *sub_020627F4(u16 param1);
u32 RandIntSafe(u32 max);
BOOL sub_0205E1E8(void *mission);
BOOL sub_0205D11C(u8 dungeon, u8 *p_floor, s16 species);
BOOL IsAvailableItem(s16 item_id);
u16 *sub_02062804(u16 param1);
void sub_020630A4(u8 mission_type, u8 *p_dungeon, s16 *p_item);
BOOL IsThrownItem(s16 item_id);
BOOL IsStorableItem(s16 item_id);
void sub_02062900(u32 count, u16 *list, u8 *p_out);
u8 sub_0205FF80();
BOOL sub_0205E090(u8 dungeon, u8 floor, u32 flag);

typedef struct {
    u16 field_0;
    u16 item_logic;
    u16 field_4;
    u16 field_6;
    u16 dungeon_logic;
    u16 field_A;
    u16 dungeon_bits;
    u16 client_monster_logic;
    u16 field_10;
    s16 client_species;
    struct {
        u16 logic;
        u16 field_2;
        s16 species;
    } target_monsters[2];
    u8 mission_type;
    u8 mission_subtype;
} MissionGenerationContext;

typedef struct {
    u8 type;
    u8 mission_type;
    u8 mission_subtype;
    u8 field_3;
    u8 dungeon;
    u8 floor;
    u8 field_6;
    u8 field_7;
    u32 seed;
    u8 field_C;
    u8 field_D;
    s16 client_species;
    s16 target_species[2];
    s16 target_item;
    u16 field_16;
    u16 field_18;
    u8 extra_flag;
    u8 field_1B;
    u16 extra_species;
} MissionData;

struct DeliverList {
    s16 *list;
    u32 count;
    s16 *list2;
    u32 count2;
};

extern struct DeliverList *MISSION_DELIVER_LIST_PTR;

s32 GenerateMission(MissionGenerationContext *input, MissionData *mission);

s32 GenerateMission(MissionGenerationContext *input, MissionData *mission) {
    u16 *monster_list;
    u16 monster_count;
    u8 dungeon_tmp;
    u8 floor_tmp;
    u8 stack_4;
    u32 stack_0c;
    u16 *temp_list;
    s32 err;
    s32 i;
    s32 limit;
    s32 count;

    monster_count = GetAllPossibleMonsters(&monster_list);
    if (monster_list == NULL) {
        ClearMissionData(mission);
        return 2;
    }

    mission->type = 4;
    mission->mission_type = input->mission_type;
    mission->mission_subtype = input->mission_subtype;

    err = 0;
    if (input->dungeon_logic <= 5) {
        switch (input->dungeon_logic) {
            case 0:
            case 1:
                stack_4 = (u8)input->dungeon_bits;
                dungeon_tmp = (u8)input->dungeon_bits;
                if (input->dungeon_logic == 0) {
                    if (!CanDungeonBeUsedForMission(dungeon_tmp)) {
                        err = 1;
                        goto dungeon_fail;
                    }
                }
                if (!sub_02062C4C(1, (u16 *)&stack_4, &dungeon_tmp, sub_0205E258(mission))) {
                    err = (sub_0205E258(mission) != 0) ? 1 : 2;
                    goto dungeon_fail;
                }
                if (!sub_0205CF58(input->mission_type, &input->mission_subtype, &dungeon_tmp)) {
                    err = 1;
                    goto dungeon_fail;
                }
                mission->dungeon = dungeon_tmp;
                mission->floor = floor_tmp; // stack_6
                break;
            case 5:
                sub_02062814(&stack_0c);
                if (input->mission_type == 3 && input->mission_subtype == 3) {
                    void *ptr = MemAlloc(15);
                    count = sub_0206282C();
                    if (count == 0) {
                        MemFree(ptr);
                        err = 1;
                    } else {
                        BOOL res = sub_02062C4C(count, ptr, &dungeon_tmp, sub_0205E258(mission));
                        floor_tmp = sub_02063424(mission->mission_type, &mission->mission_subtype, dungeon_tmp);
                        while (floor_tmp != 0) {
                            if (!IsForbiddenFloor(&dungeon_tmp)) break;
                            floor_tmp--;
                        }
                        MemFree(ptr);
                        if (res && floor_tmp != 0) {
                            mission->dungeon = dungeon_tmp;
                            mission->floor = floor_tmp;
                        } else {
                            err = 1;
                        }
                    }
                } else {
                    err = 1;
                }
                break;
            default:
                goto dungeon_default;
        }
    } else {
    dungeon_default:
        if (MISSION_DELIVER_LIST_PTR->count2 == 0) {
            err = 2;
        } else {
            if (sub_02062C4C(MISSION_DELIVER_LIST_PTR->count2, MISSION_DELIVER_LIST_PTR->list2, &dungeon_tmp, sub_0205E258(mission))) {
                switch (mission->mission_type) {
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                        if (GetMaxMembersAllowed(dungeon_tmp) < 4) err = 0;
                        break;
                    case 7:
                        if (GetMaxItemsAllowed(dungeon_tmp) == 0) err = 0;
                        /* fallthrough */
                    case 6:
                        if (!sub_02062D40(&dungeon_tmp)) err = 0;
                        break;
                    case 10:
                        if (mission->mission_subtype == 4) {
                            if (GetMaxMembersAllowed(dungeon_tmp) < 4) err = 0;
                        }
                        break;
                }
            } else {
                err = (sub_0205E258(mission) == 0) ? 2 : 1;
            }
        }
        if (err == 0) {
            mission->dungeon = dungeon_tmp;
            mission->floor = floor_tmp;
        } else {
            err = 1;
        }
    }

dungeon_fail:
    if (err != 0) {
        ClearMissionData(mission);
        return err;
    }

    mission->seed = sub_02051134() & 0xFFFFFF;
    temp_list = NULL;

    if (input->client_monster_logic <= 4) {
        switch (input->client_monster_logic) {
            case 0:
            case 1:
                if (input->mission_type == 11 && input->mission_subtype == 0) {
                    u32 flag = (input->client_species != 490 && input->client_species != 1090);
                    if (!CanMonsterBeUsedForMission(input->client_species, flag)) {
                        err = 1;
                    } else {
                        mission->client_species = input->client_species;
                        mission->target_species[0] = input->target_monsters[0].species;
                        mission->target_species[1] = input->target_monsters[1].species;
                    }
                } else {
                    if (input->client_monster_logic == 0) {
                        if (!CanMonsterBeUsedForMissionWrapper(input->client_species)) {
                            err = 1;
                        } else {
                            mission->client_species = input->client_species;
                        }
                    } else {
                        if (!sub_02062AD0(input->client_species)) {
                            err = 1;
                        } else {
                            mission->client_species = input->client_species;
                        }
                    }
                }
                break;
            case 2:
                count = sub_0205DFAC(&temp_list, &input->client_monster_logic);
                if (count == 0) {
                    MemFree(temp_list);
                    temp_list = NULL;
                    err = 1;
                } else {
                    s16 species = temp_list[RandInt(count)];
                    if (!sub_0205D008(input->mission_type, &input->mission_subtype, species, 1)) {
                        MemFree(temp_list);
                        temp_list = NULL;
                        err = 1;
                    } else {
                        if (input->client_monster_logic == input->target_monsters[0].logic && 
                            input->field_10 == input->target_monsters[0].field_2 && 
                            input->client_species == input->target_monsters[0].species) {
                            // nothing
                        } else {
                            MemFree(temp_list);
                            temp_list = NULL;
                        }
                        mission->client_species = species;
                        if (!(mission->floor & 1)) {
                            mission->client_species = GetSecondFormIfValid(mission->client_species);
                        }
                    }
                }
                break;
            case 3:
                temp_list = sub_020627F4(input->field_10);
                temp_list = &temp_list[input->field_12];
                {
                    s16 species = temp_list[RandInt(input->field_10)];
                    if (!sub_0205D008(input->mission_type, &input->mission_subtype, species, 1) || !sub_02062AD0(species)) {
                        err = 1;
                    } else {
                        mission->client_species = species;
                        if (!(mission->floor & 1)) {
                            mission->client_species = GetSecondFormIfValid(mission->client_species);
                        }
                    }
                }
                temp_list = NULL;
                break;
            case 4:
                count = GetAllPossibleMonsters(&temp_list);
                if (count == 0) {
                    err = 2;
                } else {
                    s16 species = temp_list[RandIntSafe(count)];
                    if (!sub_0205D008(input->mission_type, &input->mission_subtype, species, 1)) {
                        err = 1;
                    } else {
                        mission->client_species = species;
                        if (!(mission->floor & 1)) {
                            mission->client_species = GetSecondFormIfValid(mission->client_species);
                        }
                    }
                }
                temp_list = NULL;
                break;
        }
    }

    if (err == 0) {
        if (sub_0205E1E8(mission)) {
            if (temp_list != NULL) {
                MemFree(temp_list);
                temp_list = NULL;
            }
            mission->target_species[0] = mission->client_species;
            mission->target_species[1] = 0;
        } else {
            limit = ((mission->mission_type == 10 && mission->mission_subtype == 6) || (mission->mission_type == 11 && mission->mission_subtype == 0)) ? 2 : 1;
            for (i = 0; i < limit; i++) {
                if (input->target_monsters[i].logic <= 6) {
                    switch (input->target_monsters[i].logic) {
                        case 0:
                        case 1:
                            {
                                s16 species = input->target_monsters[i].species;
                                if (!sub_0205D008(input->mission_type, &input->mission_subtype, species, 0)) {
                                    err = 1;
                                } else if (mission->mission_type == 10 && mission->mission_subtype == 6) {
                                    if (CanMonsterBeUsedForMissionWrapper(species)) {
                                        mission->target_species[0] = species;
                                        mission->target_species[1] = input->target_monsters[1].species;
                                        err = 0;
                                    } else {
                                        err = 1;
                                    }
                                } else {
                                    if (input->target_monsters[i].logic == 0) {
                                        if (!CanMonsterBeUsedForMissionWrapper(species)) {
                                            err = 1;
                                        }
                                    } else {
                                        if (!sub_02062AD0(species)) {
                                            err = 1;
                                        }
                                    }
                                    if (err == 0) mission->target_species[i] = species;
                                }
                            }
                            break;
                        case 2:
                            if (temp_list == NULL) {
                                count = sub_0205DFAC(&temp_list, &input->target_monsters[i].logic);
                                if (count == 0) {
                                    MemFree(temp_list);
                                    temp_list = NULL;
                                    err = 1;
                                    break;
                                }
                            }
                            {
                                s16 species = temp_list[RandInt(count)];
                                if (!sub_0205D008(input->mission_type, &input->mission_subtype, species, 0)) {
                                    MemFree(temp_list);
                                    temp_list = NULL;
                                    err = 1;
                                } else {
                                    if (i + 1 < limit) {
                                        if (input->target_monsters[i].logic == input->target_monsters[i].field_2 && 
                                            input->target_monsters[i].species == input->target_monsters[i+1].species) {
                                            // equal
                                        } else {
                                            MemFree(temp_list);
                                            temp_list = NULL;
                                        }
                                    } else {
                                        MemFree(temp_list);
                                        temp_list = NULL;
                                    }
                                    mission->target_species[i] = species;
                                    if (!(mission->floor & 1)) {
                                        mission->target_species[i] = GetSecondFormIfValid(mission->target_species[i]);
                                    }
                                }
                            }
                            break;
                        case 3:
                            {
                                u16 *lst = sub_020627F4(input->target_monsters[i].field_2);
                                temp_list = &lst[input->target_monsters[i].species];
                                count = RandInt(input->target_monsters[i].field_2);
                                s16 species = temp_list[count];
                                if (!sub_0205D008(input->mission_type, &input->mission_subtype, species, 0) || !sub_02062AD0(species)) {
                                    err = 1;
                                } else {
                                    mission->target_species[i] = species;
                                    if (!(mission->floor & 1)) {
                                        mission->target_species[i] = GetSecondFormIfValid(mission->target_species[i]);
                                    }
                                    temp_list = NULL;
                                    err = 0;
                                }
                            }
                            break;
                        case 4:
                        case 6:
                            count = GetAllPossibleMonsters(&temp_list);
                            if (count == 0) {
                                err = 2;
                            } else {
                                s16 species = temp_list[RandIntSafe(count)];
                                if (!sub_0205D008(input->mission_type, &input->mission_subtype, species, 0)) {
                                    err = 1;
                                } else {
                                    mission->target_species[i] = species;
                                    if (!(mission->floor & 1)) {
                                        mission->target_species[i] = GetSecondFormIfValid(mission->target_species[i]);
                                    }
                                    temp_list = NULL;
                                }
                            }
                            break;
                    }
                }
                if (err != 0) break;
            }
        }
    }

    if (err != 0) {
        ClearMissionData(mission);
        return err;
    }

    if (input->item_logic <= 4) {
        switch (input->item_logic) {
            case 0:
            case 1:
                {
                    s16 item = input->field_6;
                    if (!sub_0205D11C(input->mission_type, &input->mission_subtype, item)) {
                        err = 1;
                    } else if (input->item_logic == 0 && !IsAvailableItem(item)) {
                        err = 1;
                    } else {
                        mission->target_item = item;
                    }
                }
                break;
            case 2:
                {
                    s16 *base = sub_02062804(input->field_6);
                    s16 *flt = MemAlloc(input->field_4 * 2);
                    count = 0;
                    for (i = 0; i < input->field_4; i++) {
                        s16 item = base[i + (u32)base];
                        if (IsAvailableItem(item)) {
                            flt[count++] = item;
                        }
                    }
                    if (count == 0) {
                        MemFree(flt);
                        err = 1;
                    } else {
                        s16 item = flt[RandIntSafe(count)];
                        MemFree(flt);
                        if (!sub_0205D11C(input->mission_type, &input->mission_subtype, item)) {
                            err = 1;
                        } else {
                            mission->target_item = item;
                        }
                    }
                }
                break;
            case 3:
                {
                    s16 *base = sub_02062804(input->field_6);
                    s16 item = base[RandIntSafe(input->field_4)];
                    if (!sub_0205D11C(input->mission_type, &input->mission_subtype, item)) {
                        err = 1;
                    } else {
                        mission->target_item = item;
                    }
                }
                break;
            case 4:
                {
                    s16 item;
                    if (MISSION_DELIVER_LIST_PTR->count == 0) {
                        item = 0x46;
                    } else {
                        item = MISSION_DELIVER_LIST_PTR->list[RandIntSafe(MISSION_DELIVER_LIST_PTR->count)];
                    }
                    mission->target_item = item;
                    if (mission->target_item == 0) {
                        if (mission->mission_type - 6 <= 1) err = 1;
                    }
                    if (err == 0) {
                        do {
                            sub_020630A4(mission->mission_type, &mission->dungeon, &mission->target_item);
                        } while (IsThrownItem(mission->target_item) || !IsStorableItem(mission->target_item));
                    }
                }
                break;
        }
    }

    if (err != 0) {
        ClearMissionData(mission);
        return err;
    }

    if (mission->dungeon != 38 && mission->dungeon != 41) {
        mission->extra_flag = 0;
        mission->extra_species = 0;
    } else if (GetMaxMembersAllowed(mission->dungeon) < 4) {
        mission->extra_flag = 0;
        mission->extra_species = 0;
    } else {
        sub_02062900((u16)monster_count, monster_list, &mission->extra_flag);
    }

    mission->field_C = 0;
    if (mission->mission_type <= 14) {
        switch (mission->mission_type) {
            case 3:
                if (mission->mission_subtype == 1 || mission->mission_subtype == 2) {
                    mission->field_C = sub_0205FF80();
                }
                break;
            case 6:
                if (mission->mission_subtype == 4) {
                    u8 f = sub_02063424(mission->mission_type, &mission->mission_subtype, mission->dungeon);
                    if (sub_0205E090(mission->dungeon, f, 1)) {
                        err = 1;
                    } else {
                        mission->floor = f;
                    }
                }
                break;
            case 9:
                if (mission->target_item == 0x49 && mission->client_species != mission->target_species[0]) {
                    err = 1;
                }
                break;
            case 10:
                if (mission->mission_subtype == 6) {
                    mission->field_C = sub_0205FF80();
                }
                break;
            case 11:
                if (mission->mission_subtype == 5) {
                    u8 f = sub_02063424(mission->mission_type, &mission->mission_subtype, mission->dungeon);
                    if (sub_0205E090(mission->dungeon, f, 1)) {
                        err = 1;
                    } else {
                        mission->floor = f;
                    }
                }
                if (err == 0) {
                    mission->field_C = sub_0205FF80(mission->mission_type, mission->mission_subtype);
                }
                break;
            case 12:
                mission->field_C = sub_0205FF80(mission->mission_subtype);
                mission->extra_flag = 0;
                mission->extra_species = 0;
                break;
            case 14:
                if (mission->mission_subtype == 2) {
                    err = 1;
                } else if (mission->mission_subtype == 1) {
                    mission->extra_flag = 0;
                    mission->extra_species = 0;
                }
                break;
        }
    }

    if (err != 0) {
        ClearMissionData(mission);
        return err;
    }
    return 0;
}