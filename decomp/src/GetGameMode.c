#include "../../lib/include/nitro/types.h"

u8 GetGameMode(void);

u8 GetGameMode(void) {
extern const u8 GAME_MODE;
const u8 *p = &GAME_MODE;
return *p;
}