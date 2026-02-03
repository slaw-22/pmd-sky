	arm_func_start sub_02064B0C
sub_02064B0C: ; 0x02064B0C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r5, r0
	add r0, r5, #0x600
	mov r8, r1
	ldrsh r4, [r0]
	mov r7, r2
	mov r6, r3
	mov r0, #1
	mov r1, #0x60
	b _02064B64
_02064B38:
	smlabb r3, r0, r1, r5
	ldrb r2, [r3, #0x41]
	cmp r2, #2
	ldreq r2, [r3, #0x44]
	cmpeq r8, r2
	ldreq r2, [r3, #0x48]
	cmpeq r7, r2
	beq _02064B70
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
_02064B64:
	cmp r0, r4
	blt _02064B38
	mvn r0, #0
_02064B70:
	mvn r1, #0
	cmp r0, r1
	beq _02064B94
	mov r1, #0x60
	smlabb r2, r0, r1, r5
	ldrsh r1, [r2, #0x4c]
	add r1, r1, #1
	strh r1, [r2, #0x4c]
	b _02064C04
_02064B94:
	mov r0, r5
	bl sub_020649F4
	mov r4, r0
	mov r0, #0x60
	smlabb r5, r4, r0, r5
	mov r0, #2
	strb r0, [r5, #0x41]
	str r8, [r5, #0x44]
	mov r0, r8
	mov r1, r7
	mov r3, r6
	str r7, [r5, #0x48]
	add r2, r5, #0x50
	bl DirectoryFileMngr_OpenDirectoryFile
	ldrsh r2, [r5, #0x4c]
	add r1, sp, #0
	mov r0, r5
	add r2, r2, #1
	strh r2, [r5, #0x4c]
	bl sub_02064A7C
	ldrb r1, [sp]
	cmp r1, #0
	movne r1, #0
	strne r1, [r5, #0x58]
	streq r0, [r5, #0x58]
	moveq r0, #0
	str r0, [r5, #0x5c]
	mov r0, r4
_02064C04:
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end sub_02064B0C
