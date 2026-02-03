	arm_func_start sub_02063A0C
sub_02063A0C: ; 0x02063A0C
	ldr r1, _02063A1C ; =_020B0B04
	ldr r1, [r1]
	strb r0, [r1, #0x664]
	bx lr
	.align 2, 0
_02063A1C: .word _020B0B04
	arm_func_end sub_02063A0C
