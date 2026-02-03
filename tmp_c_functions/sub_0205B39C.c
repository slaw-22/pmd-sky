#include "../lib/include/nitro/types.h"
u8 *AllocateTemp1024ByteBufferFromPool(void);
char *strcat(char *dest, const char *src);

extern char _020A353C[];
extern char _020A3544[];
extern char _020A354C[];

u8 *sub_0205B39C(s8 *data, s32 threshold);

u8 *sub_0205B39C(s8 *data, s32 threshold) {
    u8 *buffer = AllocateTemp1024ByteBufferFromPool();

    while (*data >= 0) {
        if (threshold >= *data) {
            break;
        }
        data += 2;
    }

    buffer[0] = 0;

    if (data[1] == 0) {
        strcat((char *)buffer, _020A354C);
    } else {
        s32 i;

        for (i = 0; i < (s32)data[1] / 2; i++) {
            strcat((char *)buffer, _020A353C);
        }

        if (data[1] & 1) {
            strcat((char *)buffer, _020A3544);
        }
    }

    return buffer;
}