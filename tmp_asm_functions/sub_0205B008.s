	arm_func_start sub_0205B008
sub_0205B008: ; 0x0205B008
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	bl sub_02055894
	mov r1, r0
	mov r0, r4
	bl sub_0205B028
	ldmia sp!, {r4, pc}
	arm_func_end sub_0205B008
