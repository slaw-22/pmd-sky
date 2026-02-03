	arm_func_start sub_02062804
sub_02062804: ; 0x02062804
	ldr r0, _02062810 ; =_020B0AD8
	ldr r0, [r0, #0x10]
	bx lr
	.align 2, 0
_02062810: .word _020B0AD8
	arm_func_end sub_02062804
