#include "../lib/include/nitro/types.h"
u32 sub_02048C3C(void);
extern u32 _022B57BC;

void sub_0205B584(u32 *ptr);

void sub_0205B584(u32 *ptr)
{
    ptr[0] = _022B57BC;
    ptr[1] = sub_02048C3C();
}