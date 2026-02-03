	arm_func_start sub_02063A20
sub_02063A20: ; 0x02063A20
	ldr r0, _02063A30 ; =_020B0B04
	ldr r0, [r0]
	ldrb r0, [r0, #0x664]
	bx lr
	.align 2, 0
_02063A30: .word _020B0B04
	arm_func_end sub_02063A20
