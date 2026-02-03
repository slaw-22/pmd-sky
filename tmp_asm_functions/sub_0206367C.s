	arm_func_start sub_0206367C
sub_0206367C: ; 0x0206367C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_02063610
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #8]
	bl MemFree
	mov r0, r4
	mov r1, #0x18
	bl MemZero
	ldmia sp!, {r4, pc}
	arm_func_end sub_0206367C
