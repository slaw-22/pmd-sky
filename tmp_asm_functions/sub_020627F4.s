	arm_func_start sub_020627F4
sub_020627F4: ; 0x020627F4
	ldr r0, _02062800 ; =_020B0AD8
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
_02062800: .word _020B0AD8
	arm_func_end sub_020627F4
