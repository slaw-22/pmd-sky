	arm_func_start sub_02063628
sub_02063628: ; 0x02063628
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r1, #0x18
	mov r7, r0
	mov r5, r2
	bl MemZero
	mov r0, #0x18
	mul r4, r5, r0
	mov r0, r4
	mov r1, #0
	str r5, [r7, #0xc]
	bl MemAlloc
	mov r1, r4
	str r0, [r7, #8]
	bl MemZero
	mov r0, r7
	str r6, [r7, #4]
	bl sub_020636A8
	mov r0, #0x1f
	str r0, [r7, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_02063628
