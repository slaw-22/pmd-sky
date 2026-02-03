	arm_func_start sub_02063E20
sub_02063E20: ; 0x02063E20
	ldr r2, _02063E3C ; =_020B0B04
	mov r3, r0
	ldr r0, [r2]
	ldr ip, _02063E40 ; =sub_02064664
	add r0, r0, r1, lsl #5
	mov r1, r3
	bx ip
	.align 2, 0
_02063E3C: .word _020B0B04
_02063E40: .word sub_02064664
	arm_func_end sub_02063E20
