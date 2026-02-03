#include "../lib/include/nitro/types.h"
void CopyNStringFromId(u32 dest, u32 id, u32 n);
extern u16 TACTIC_NAME_STRING_IDS[];

void CopyTacticString(u32 dest, u32 index);

void CopyTacticString(u32 dest, u32 index)
{
#ifdef JAPAN
    CopyNStringFromId(dest, TACTIC_NAME_STRING_IDS[index], 0x28);
#else
    CopyNStringFromId(dest, TACTIC_NAME_STRING_IDS[index], 0x40);
#endif
}