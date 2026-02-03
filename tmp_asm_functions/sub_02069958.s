	arm_func_start sub_02069958
sub_02069958: ; 0x02069958
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	mov r5, #0
	b _02069AD0
_02069974:
	mov r0, r5, lsl #0x18
	mov r0, r0, asr #0x18
	bl GetAcceptedMission
	mov r4, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _02069ACC
	ldrb r1, [sb, #1]
	ldrb r0, [r4, #1]
	cmp r1, r0
	ldreqb r1, [sb, #2]
	ldreqb r0, [r4, #2]
	cmpeq r1, r0
	ldreqb r1, [sb, #4]
	ldreqb r0, [r4, #4]
	cmpeq r1, r0
	ldreqb r1, [sb, #5]
	ldreqb r0, [r4, #5]
	cmpeq r1, r0
	ldreq r1, [sb, #8]
	ldreq r0, [r4, #8]
	cmpeq r1, r0
	ldreqsh r1, [sb, #0xe]
	ldreqsh r0, [r4, #0xe]
	cmpeq r1, r0
	ldreqsh r1, [sb, #0x10]
	ldreqsh r0, [r4, #0x10]
	cmpeq r1, r0
	ldreqsh r1, [sb, #0x12]
	ldreqsh r0, [r4, #0x12]
	cmpeq r1, r0
	ldreqsh r1, [sb, #0x14]
	ldreqsh r0, [r4, #0x14]
	cmpeq r1, r0
	ldreqb r0, [sb, #0x16]
	ldreqb r1, [r4, #0x16]
	cmpeq r0, r1
	bne _02069ACC
	add r1, sb, #0x18
	add r2, r4, #0x18
	bl sub_0205C870
	cmp r0, #0
	beq _02069ACC
	add r0, sb, #0x1a
	add r1, r4, #0x1a
	bl sub_0205C8E0
	cmp r0, #0
	beq _02069ACC
	ldrb r0, [r4]
	sub r0, r0, #4
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02069AA4
_02069A48: ; jump table
	b _02069A5C ; case 0
	b _02069A6C ; case 1
	b _02069A88 ; case 2
	b _02069A6C ; case 3
	b _02069A6C ; case 4
_02069A5C:
	mov r0, #1
	strb r0, [r8]
	strb r0, [r7]
	b _02069ABC
_02069A6C:
	cmp r6, #0
	movne r0, #3
	moveq r0, #1
	strb r0, [r8]
	mov r0, #2
	strb r0, [r7]
	b _02069ABC
_02069A88:
	cmp r6, #0
	movne r0, #0
	moveq r0, #1
	strb r0, [r8]
	mov r0, #3
	strb r0, [r7]
	b _02069ABC
_02069AA4:
	cmp r6, #0
	movne r0, #0
	moveq r0, #1
	strb r0, [r8]
	mov r0, #0
	strb r0, [r7]
_02069ABC:
	cmp r6, #0
	moveq r0, #0
	streqb r0, [r7]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02069ACC:
	add r5, r5, #1
_02069AD0:
	cmp r5, #8
	blt _02069974
	mov r0, #2
	strb r0, [r8]
	mov r0, #0
	strb r0, [r7]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_02069958
