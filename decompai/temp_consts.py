SET_MONEY_CARRIED_CODE='''
extern u32* BAG_ITEMS_PTR_MIRROR;

#define MAX_MONEY 0x0001869F

void SetMoneyCarried(s32 money)
{
    if (money > MAX_MONEY)
    {
        money = MAX_MONEY;
    }
    else if (money < 0)
    {
        money = 0;
    }

    u32 base_addr = *BAG_ITEMS_PTR_MIRROR;
    u8 offset_byte = *(u8*)(base_addr + 0x388);
    u32 intermediate_base_ptr = base_addr + (offset_byte << 2) + 0x1000;
    *(u32*)(intermediate_base_ptr + 0x394) = money;
}
'''