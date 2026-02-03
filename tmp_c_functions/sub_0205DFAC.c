#include "../lib/include/nitro/types.h"
s16 *sub_020627F4(void);
void *MemAlloc(u32 size, u32 heap_id);
BOOL CanMonsterBeUsedForMissionWrapper(s32 monster_id);

s32 sub_0205DFAC(u16 **pAllocatedBuffer, u16 *params);

s32 sub_0205DFAC(u16 **pAllocatedBuffer, u16 *params)
{
    u16 count = params[1];
    u16 offset = params[2];
    s32 validCount = 0;
    s16 *baseData = sub_020627F4();
    u16 *allocatedBuffer = (u16 *)MemAlloc((u32)count * 2, 15);
    s16 *sourceData = &baseData[offset];
    s32 i;

    for (i = 0; i < (s32)count; i++) {
        s16 monsterId = sourceData[i];

        if (CanMonsterBeUsedForMissionWrapper((s32)monsterId)) {
            allocatedBuffer[validCount] = (u16)monsterId;
            validCount++;
        }
    }

    *pAllocatedBuffer = allocatedBuffer;
    return validCount;
}