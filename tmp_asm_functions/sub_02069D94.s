	arm_func_start sub_02069D94
sub_02069D94: ; 0x02069D94
	stmdb sp!, {r3, lr}
	ldr r0, _02069DBC ; =_020B0B48
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl MemFree
	ldr r0, _02069DBC ; =_020B0B48
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02069DBC: .word _020B0B48
	arm_func_end sub_02069D94
