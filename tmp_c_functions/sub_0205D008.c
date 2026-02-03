#include "../lib/include/nitro/types.h"
void Debug_Print0(const char *fmt, ...);
s32 GetBaseForm(s32 arg2);
s32 IsMonsterIllegalForMissions(s32 arg2);
s32 GetBodySize(s32 arg2);
s32 IsMonsterMissionAllowed(s32 arg2);

extern const char _020A3A08[];
extern const char _020A3A24[];
extern const char _020A3A44[];
extern const char _020A3A6C[];
extern const char _020A3AA0[];

BOOL sub_0205D008(s32 arg0, s32 arg1, s32 arg2, s32 arg3);

BOOL sub_0205D008(s32 arg0, s32 arg1, s32 arg2, s32 arg3)
{
    if (arg3 != 0 && arg2 == 0) {
        Debug_Print0(_020A3A08);
        return FALSE;
    }

    if (arg2 >= 0x483) {
        Debug_Print0(_020A3A24);
        return FALSE;
    }

    if (arg2 != GetBaseForm(arg2)) {
        Debug_Print0(_020A3A44, arg2);
        return FALSE;
    }

    if (IsMonsterIllegalForMissions(arg2)) {
        Debug_Print0(_020A3A6C, arg2);
        return FALSE;
    }

    if (arg3 != 0) {
        if ((u8)(arg0 - 2) <= 3) {
            if (GetBodySize(arg2) != 1) {
                return FALSE;
            }
        }
    }

    if (arg3 != 0 && arg0 != 10 && arg0 != 14 && arg0 != 11) {
        if (!IsMonsterMissionAllowed(arg2)) {
            Debug_Print0(_020A3AA0, arg2);
            return FALSE;
        }
    }

    return TRUE;
}