#include "../lib/include/nitro/types.h"
extern const char _020A3AD4[];
extern const char _020A3AF4[];
extern const char _020A3B18[];

void Debug_Print0(const char *, u32);
BOOL IsValidTargetItem(u32);
BOOL IsItemValidVeneer(u32);
BOOL IsThrownItem(u32);
BOOL IsStorableItem(u32);

BOOL sub_0205D11C(u32 r0, u32 r1, u32 r2);

BOOL sub_0205D11C(u32 r0, u32 r1, u32 r2)
{
    if (r2 == 0) {
        Debug_Print0(_020A3AD4, r2);
        return FALSE;
    }

    if (IsValidTargetItem(r2)) {
        Debug_Print0(_020A3AD4, r2);
        return FALSE;
    }

    if (!IsItemValidVeneer(r2)) {
        Debug_Print0(_020A3AD4, r2);
        return FALSE;
    }

    if (IsThrownItem(r2) && r0 == 4 && r2 != 10 && r2 != 9) {
        Debug_Print0(_020A3AF4, r2);
        return FALSE;
    }

    if (IsStorableItem(r2)) {
        return TRUE;
    }

    Debug_Print0(_020A3B18, r2);
    return FALSE;
}