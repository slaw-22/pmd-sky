	arm_func_start sub_020634F4
sub_020634F4: ; 0x020634F4
	ldr r1, _02063500 ; =_020B0AD8
	str r0, [r1]
	bx lr
	.align 2, 0
_02063500: .word _020B0AD8
	arm_func_end sub_020634F4
