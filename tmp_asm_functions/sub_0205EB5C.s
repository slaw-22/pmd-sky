	arm_func_start sub_0205EB5C
sub_0205EB5C: ; 0x0205EB5C
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrb r0, [r4, #1]
	cmp r0, #0xb
	cmpne r0, #0xe
	bne _0205EBCC
	mov r1, #0
	add r0, sp, #0
	str r1, [sp]
	bl GetAllPossibleMonsters
	mov r5, r0
	cmp r5, #0
	ldmleia sp!, {r3, r4, r5, pc}
_0205EB90:
	mov r0, r5
	bl RandInt
	ldrb r1, [r4, #1]
	ldr r2, [sp]
	mov r0, r0, lsl #1
	cmp r1, #0xb
	ldrsh r0, [r2, r0]
	ldreqsh r1, [r4, #0xe]
	cmpeq r1, r0
	bne _0205EBC4
	cmp r5, #1
	ldmleia sp!, {r3, r4, r5, pc}
	b _0205EB90
_0205EBC4:
	bl sub_02065B94
	ldmia sp!, {r3, r4, r5, pc}
_0205EBCC:
	ldrsh r0, [r4, #0xe]
	bl sub_02065B94
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0205EB5C
