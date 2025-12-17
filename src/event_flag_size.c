#include "debug.h"
#include "event_flag_size.h"

extern s16 _0209DF70[18];

const u8 EVENT_FLAG_SIZE_DEBUG_MSG[] = "EventFlagSize %04x/%04x\n\0\0\0";
const u8 EVENT_FLAG_EXPANSION_ERROR[] =  "event flag expansion error %d";

void sub_0204B028() {
    // TODO Convert _0209CF0C to a C string.
    Debug_Print0(EVENT_FLAG_SIZE_DEBUG_MSG, _0209DF70[18], 0x400);
}
