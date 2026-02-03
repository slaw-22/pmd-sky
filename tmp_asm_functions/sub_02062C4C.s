	arm_func_start sub_02062C4C
sub_02062C4C: ; 0x02062C4C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sl, r0
	cmp sl, #0
	mov sb, r1
	mov r8, r2
	str r3, [sp]
	movle r0, #0
	ble _02062D38
	bl RandIntSafe
	mov r6, r0
	mov fp, r6
_02062C7C:
	ldrb r4, [sb, r6]
	mov r0, r4
	bl GetNbFloors
	mov r7, r0
	cmp r4, #0xae
	addne r7, r7, #1
	add r0, r7, r7, lsr #31
	mov r0, r0, asr #1
	mov r1, r7
	str r0, [sp, #8]
	bl RandRangeSafe
	mov r5, r0
	str r5, [sp, #4]
_02062CB0:
	strb r4, [sp, #0x10]
	strb r5, [sp, #0x11]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, sp, #0x10
	bl IsForbiddenFloor
	cmp r0, #0
	movne r0, #0
	strne r0, [sp, #0xc]
	ldr r2, [sp]
	mov r0, r4
	mov r1, r5
	bl sub_0205E090
	cmp r0, #0
	movne r0, #0
	strne r0, [sp, #0xc]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	strneb r4, [r8]
	strneb r5, [r8, #1]
	movne r0, #1
	bne _02062D38
	add r5, r5, #1
	cmp r5, r7
	ldrge r5, [sp, #8]
	ldr r0, [sp, #4]
	cmp r5, r0
	bne _02062CB0
	add r6, r6, #1
	cmp r6, sl
	moveq r6, #0
	cmp r6, fp
	bne _02062C7C
	mov r0, #0
_02062D38:
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_02062C4C
