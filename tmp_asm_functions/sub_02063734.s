	arm_func_start sub_02063734
sub_02063734: ; 0x02063734
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, #0
	mov r4, #0x18
	b _02063764
_02063750:
	ldr r0, [r8, #8]
	ldr r1, [r7, r5, lsl #2]
	mla r0, r5, r4, r0
	bl sub_02063560
	add r5, r5, #1
_02063764:
	cmp r5, r6
	blt _02063750
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_02063734
