#include "../lib/include/nitro/types.h"
u32 sub_02063504(void);
u16 Rand16Bit(void);
void sub_020510E8(u32 val);
u32 sub_02051134(void);
void sub_020634F4(void);
u8 GetLanguageType(void);
void GetMainTeamNameWithCheck(u8 *name);
u8 GetMaxRescueAttempts(u8 attempts);
u32 RandInt(u32 max);

typedef struct {
    u8 f0;
    u8 pad1[3];
    u32 f4;
    u32 f8;
    u32 f12;
    u32 f16;
    u32 f20;
    u32 f24;
    u8 f1C;
    u8 f1D[143];
    u8 fAC;
    u8 fAD;
    u8 fAE;
} DataStruct;

extern DataStruct * _020B0A54;
extern u32 _022B57BC;

void sub_0205BAB0(u32 *arg);

void sub_0205BAB0(u32 *arg) {
    _020B0A54->f0 = 1;
    _020B0A54->f4 = arg[0];
    _020B0A54->f8 = arg[1];
    _020B0A54->f12 = 0;
    _020B0A54->f16 = 0;
    
    sub_020510E8(((u32)sub_02063504() << 16) | (u32)Rand16Bit());
    
    _020B0A54->f24 = sub_02051134();
    
    sub_020634F4();
    
    _020B0A54->f20 = _022B57BC;
    
    _020B0A54->f1C = GetLanguageType();
    
    GetMainTeamNameWithCheck(_020B0A54->f1D);
    
    _020B0A54->fAC = GetMaxRescueAttempts((u8)_020B0A54->f4);
    
    _020B0A54->fAE = (u8)RandInt(2) | 2;
}