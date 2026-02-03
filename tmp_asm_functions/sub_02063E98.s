	arm_func_start sub_02063E98
sub_02063E98: ; 0x02063E98
	ldr r1, _02063EAC ; =_020B0B04
	ldr ip, _02063EB0 ; =sub_020646E8
	ldr r1, [r1]
	add r0, r1, r0, lsl #5
	bx ip
	.align 2, 0
_02063EAC: .word _020B0B04
_02063EB0: .word sub_020646E8
	arm_func_end sub_02063E98
