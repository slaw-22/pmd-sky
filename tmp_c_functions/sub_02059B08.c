#include "../lib/include/nitro/types.h"
BOOL GetResolvedPerformanceProgressFlag(u32 flag);

BOOL sub_02059B08(void);

BOOL sub_02059B08(void)
{
    return GetResolvedPerformanceProgressFlag(10);
}