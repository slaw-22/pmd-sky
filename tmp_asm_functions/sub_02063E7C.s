	arm_func_start sub_02063E7C
sub_02063E7C: ; 0x02063E7C
	ldr r1, _02063E90 ; =_020B0B04
	ldr ip, _02063E94 ; =sub_020646E0
	ldr r1, [r1]
	add r0, r1, r0, lsl #5
	bx ip
	.align 2, 0
_02063E90: .word _020B0B04
_02063E94: .word sub_020646E0
	arm_func_end sub_02063E7C
