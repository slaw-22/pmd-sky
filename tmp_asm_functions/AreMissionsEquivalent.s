	arm_func_start AreMissionsEquivalent
AreMissionsEquivalent: ; 0x0205C934
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldrb r1, [r5, #1]
	ldrb r0, [r4, #1]
	cmp r1, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r1, [r5, #2]
	ldrb r0, [r4, #2]
	cmp r1, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r1, [r5, #4]
	ldrb r0, [r4, #4]
	cmp r1, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r1, [r5, #5]
	ldrb r0, [r4, #5]
	cmp r1, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #8]
	ldr r0, [r4, #8]
	cmp r1, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldrsh r1, [r5, #0xe]
	ldrsh r0, [r4, #0xe]
	cmp r1, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldrsh r1, [r5, #0x10]
	ldrsh r0, [r4, #0x10]
	cmp r1, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldrsh r1, [r5, #0x12]
	ldrsh r0, [r4, #0x12]
	cmp r1, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldrsh r1, [r5, #0x14]
	ldrsh r0, [r4, #0x14]
	cmp r1, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0x16]
	ldrb r1, [r4, #0x16]
	cmp r0, r1
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	add r1, r5, #0x18
	add r2, r4, #0x18
	bl sub_0205C870
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r5, #0x1a
	add r1, r4, #0x1a
	bl sub_0205C8E0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end AreMissionsEquivalent
