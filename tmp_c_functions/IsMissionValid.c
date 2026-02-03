#include "../lib/include/nitro/types.h"
extern const char _020A3728[];
extern const char _020A373C[];
extern const char _020A3764[];
extern const char _020A377C[];
extern const char _020A37A0[];
extern const char _020A37D0[];
extern const char _020A37E8[];
extern const char _020A3808[];
extern const char _020A3830[];
extern const char _020A3854[];
extern const char _020A387C[];
extern const char _020A38B4[];
extern const char _020A38D0[];
extern const char _020A38F0[];
extern const char _020A3918[];
extern const char _020A3954[];
extern const char _020A3984[];

typedef struct Mission {
    u8 field_0;
    u8 type;
    u8 subtype;
    u8 field_3;
    u8 field_4;
    u8 field_5[9];
    s16 field_E;
    s16 field_10;
    s16 field_12;
    s16 field_14;
    u8 field_16;
    u8 field_17;
    s16 field_18;
    u8 field_1A;
    u8 field_1B;
    s16 field_1C;
} Mission;

void Debug_Print0(const char *, ...);
u32 GetMaxItemsAllowed(u8);
u32 sub_0205CF58(u8, u8 *, u8 *);
u32 sub_0205D008(u8, u8 *, s16, s32);
u32 sub_0205D11C(u8, u8 *, s16);
u32 sub_0205E1E8(Mission *);
u32 IsItemValidVeneer(s16);
u32 IsStorableItem(s16);
u32 IsMonsterIllegalForMissions(s16);
u32 IsMonsterMissionAllowed(s16);
u16 GetBaseForm(s16);

BOOL IsMissionValid(Mission *mission);

BOOL IsMissionValid(Mission *mission) {
    u8 type = mission->type;
    u8 subtype = mission->subtype;

    if (type >= 13 && type != 14) {
        Debug_Print0(_020A3728);
        return FALSE;
    }

    if (type == 7) {
        if (GetMaxItemsAllowed(mission->field_4) == 0) {
            Debug_Print0(_020A373C);
            return FALSE;
        }
    }

    if (subtype != 0) {
        int res;
        switch (type) {
            case 1:
                res = (subtype < 4);
                break;
            case 2:
                res = (subtype < 2);
                break;
            case 3:
                res = (subtype < 4);
                break;
            case 4:
                res = (subtype < 1);
                break;
            case 6:
                res = (subtype < 5);
                break;
            case 10:
                res = (subtype < 8);
                break;
            case 11:
                res = (subtype < 6);
                break;
            case 9:
                res = (subtype < 3);
                break;
            case 14:
                if (subtype == 2) {
                    res = 0;
                } else {
                    res = (subtype < 3);
                }
                break;
            default:
                res = (subtype < 1);
                break;
        }

        if (!res) {
            Debug_Print0(_020A3764);
            return FALSE;
        }
    }

    if (sub_0205CF58(type, &mission->subtype, &mission->field_4) == 0) {
        return FALSE;
    }

    if (sub_0205D008(type, &mission->subtype, mission->field_E, 1) == 0) {
        return FALSE;
    }

    if (sub_0205D008(type, &mission->subtype, mission->field_10, 0) == 0) {
        return FALSE;
    }

    if (sub_0205E1E8(mission)) {
        if (mission->field_10 != mission->field_E) {
            Debug_Print0(_020A377C);
            return FALSE;
        }
    }

    if ((type == 11 && subtype == 0) || (type == 10 && subtype == 6)) {
        if (sub_0205D008(type, &mission->subtype, mission->field_12, 0) == 0) {
            return FALSE;
        }
    } else {
        if (mission->field_12 != 0) {
            Debug_Print0(_020A37A0);
            return FALSE;
        }
    }

    if (sub_0205D11C(type, &mission->subtype, mission->field_14) == 0) {
        return FALSE;
    }

    if (mission->field_16 == 7 || mission->field_16 >= 8) {
        Debug_Print0(_020A37D0);
        return FALSE;
    }

    switch (mission->field_16) {
        case 1:
        case 2:
        case 3:
        case 4:
            if (mission->field_18 == 0) {
                Debug_Print0(_020A37E8);
                return FALSE;
            }
            if (!IsItemValidVeneer(mission->field_18)) {
                Debug_Print0(_020A37E8, mission->field_18);
                return FALSE;
            }
            if (!IsStorableItem(mission->field_18)) {
                Debug_Print0(_020A3808, mission->field_18);
                return FALSE;
            }
            break;
        case 6:
            if (mission->field_E == 0) {
                Debug_Print0(_020A3830);
                return FALSE;
            }
            if (mission->field_E >= 1155) {
                Debug_Print0(_020A3854);
                return FALSE;
            }
            if (IsMonsterIllegalForMissions(mission->field_18)) {
                Debug_Print0(_020A387C, mission->field_18);
                return FALSE;
            }
            if (type != 11) {
                if (!IsMonsterMissionAllowed(mission->field_18)) {
                    return FALSE;
                }
            }
            break;
        case 0:
        case 5:
            break;
        default:
            return FALSE;
    }

    if (mission->field_1A >= 2) {
        Debug_Print0(_020A38B4);
        return FALSE;
    }

    if (mission->field_1A == 0) {
        if (*(u16 *)&mission->field_1C >= 18) {
            Debug_Print0(_020A38D0, *(u16 *)&mission->field_1C);
            return FALSE;
        }
    } else if (mission->field_1A == 1) {
        if (mission->field_1C >= 1155) {
            Debug_Print0(_020A38F0);
            return FALSE;
        }
        if (IsMonsterIllegalForMissions(mission->field_1C)) {
            Debug_Print0(_020A3918, mission->field_1C);
            return FALSE;
        }
        if (mission->field_1C != (s16)GetBaseForm(mission->field_1C)) {
            Debug_Print0(_020A3954, mission->field_1C);
            return FALSE;
        }
        if (type != 14) {
            if (!IsMonsterMissionAllowed(mission->field_1C)) {
                Debug_Print0(_020A3984, mission->field_1C);
                return FALSE;
            }
        }
    }

    return TRUE;
}