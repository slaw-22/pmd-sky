#ifndef PMDSKY_MAIN_0204AFF8_H
#define PMDSKY_MAIN_0204AFF8_H

#include "debug.h"
#include "util.h"

// struct prog_pos_infos {
//     struct prog_pos_info ppi1;
//     struct prog_pos_info ppi2;
// };

// extern const struct prog_pos_info ppis[];

extern const struct prog_pos_info EVENT_FLAG_PROG_POS_INFO_CALC_SCRIPT_VARIABLES;
extern const struct prog_pos_info EVENT_FLAG_PROG_POS_INFO_COMPARE_SCRIPT_VARIABLES;

// extern const struct prog_pos_infos ppis;

// extern const u8 EVENT_FLAG_FILE_NAME[];

bool8 IsGameModeRescue();

#endif //PMDSKY_MAIN_0204AFF8_H
