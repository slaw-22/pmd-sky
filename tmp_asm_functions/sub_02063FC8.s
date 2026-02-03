	arm_func_start sub_02063FC8
sub_02063FC8: ; 0x02063FC8
	stmdb sp!, {r3, lr}
	ldr r3, _02063FF0 ; =_020B0B04
	mov lr, r1
	ldr ip, [r3]
	mov r3, r2
	mov r1, r0
	mov r2, lr
	add r0, ip, #0x58
	bl sub_02064B0C
	ldmia sp!, {r3, pc}
	.align 2, 0
_02063FF0: .word _020B0B04
	arm_func_end sub_02063FC8
