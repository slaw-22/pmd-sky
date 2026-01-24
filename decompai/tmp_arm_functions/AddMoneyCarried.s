	arm_func_start AddMoneyCarried
AddMoneyCarried: ; 0x0200ED58
	ldr r1, _0200ED7C ; =BAG_ITEMS_PTR_MIRROR
	ldr ip, _0200ED80 ; =SetMoneyCarried
	ldr r2, [r1]
	ldrb r1, [r2, #0x388]
	add r1, r2, r1, lsl #2
	add r1, r1, #0x1000
	ldr r1, [r1, #0x394]
	add r0, r0, r1
	bx ip
	.align 2, 0
_0200ED7C: .word BAG_ITEMS_PTR_MIRROR
_0200ED80: .word SetMoneyCarried
	arm_func_end AddMoneyCarried
