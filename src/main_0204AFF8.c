#include "debug.h"
#include "enums.h"
#include "main_0204AFF8.h"

extern enum game_mode GAME_MODE;

const u8 EVENT_FLAG_FILE_NAME[] = "event_flag.c";
const struct prog_pos_info EVENT_FLAG_PROG_POS_INFO_CALC_SCRIPT_VARIABLES = {
    (u8*) EVENT_FLAG_FILE_NAME,
    1001
};
const struct prog_pos_info EVENT_FLAG_PROG_POS_INFO_COMPARE_SCRIPT_VARIABLES = {
    (u8*) EVENT_FLAG_FILE_NAME,
    1044
};
// const struct prog_pos_infos ppis = {
//     { // EVENT_FLAG_PROG_POS_INFO_CALC_SCRIPT_VARIABLES
//         (u8*) EVENT_FLAG_FILE_NAME,
//         1001
//     },
//     { // EVENT_FLAG_PROG_POS_INFO_COMPARE_SCRIPT_VARIABLES
//         (u8*) EVENT_FLAG_FILE_NAME,
//         1044
//     }
// };

// const struct prog_pos_info ppis[] = {
//     { // EVENT_FLAG_PROG_POS_INFO_CALC_SCRIPT_VARIABLES
//         (u8*) EVENT_FLAG_FILE_NAME,
//         1001
//     },
//     { // EVENT_FLAG_PROG_POS_INFO_COMPARE_SCRIPT_VARIABLES
//         (u8*) EVENT_FLAG_FILE_NAME,
//         1044
//     }
// };

bool8 IsGameModeRescue()
{
    return GAME_MODE == GAME_MODE_RESCUE;
}
