#include "../lib/include/nitro/types.h"
BOOL IsInvalidForMission(u8);
void Debug_Print0(const char *, ...);
s32 sub_02063424(u32, u8 *, u8);
BOOL IsForbiddenFloor(u8 *);

extern const char _020A39C0[];
extern const char _020A39D4[];
extern const char _020A39F0[];

BOOL sub_0205CF58(u32 arg0, u8 *arg1, u8 *arg2);

BOOL sub_0205CF58(u32 arg0, u8 *arg1, u8 *arg2)
{
    if ((arg0 == 6 && *arg1 == 4) || arg0 == 14) {
        return TRUE;
    }

    if (IsInvalidForMission(arg2[0])) {
        Debug_Print0(_020A39C0, arg2[0]);
        return FALSE;
    }

    u8 limit = arg2[1];
    if (limit > sub_02063424(arg0, arg1, arg2[0])) {
        Debug_Print0(_020A39D4, limit);
        return FALSE;
    }

    if (IsForbiddenFloor(arg2)) {
        Debug_Print0(_020A39F0);
        return FALSE;
    }

    return TRUE;
}