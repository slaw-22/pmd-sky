	arm_func_start sub_020640DC
sub_020640DC: ; 0x020640DC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	str r5, [r6, #0xc]
	mov r0, #1
	strb r0, [r6, #0x3d]
	mov r0, #0
	strb r0, [r6, #0x3e]
	str r0, [r6, #0x10]
	ldrsh r0, [r6]
	bl sub_0206409C
	mov r4, r0
	mov r0, r5
	bl sub_02064228
	mov r1, r0
	add r0, r6, #0x2c
	bl sub_02009498
	mov r0, r5
	bl sub_02064228
	mov r2, r0
	add r0, r6, #0x32
	add r1, r6, #0x34
	bl sub_020094E8
	mov r0, r5
	bl sub_02064228
	mov r1, r0
	add r0, r6, #0x28
	bl sub_020090F4
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _020641E4
	mov r0, r5
	bl sub_02063E98
	ldr r2, [r0, #4]
	mov r1, #0
	strh r2, [r6, #0x38]
	ldr r2, [r0, #8]
	strh r2, [r6, #0x3a]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [r4, #8]
	stmib r6, {r0, r1}
	bl sub_02063A20
	cmp r0, #0
	mov r0, #0
	beq _020641A0
	mov r1, r5
	bl sub_02063A34
	b _020641C8
_020641A0:
	mov r2, r0
	mov r1, #1
	bl sub_02009454
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bl sub_02009454
	mov r1, r5
	mov r0, #1
	bl sub_02063A34
_020641C8:
	ldrsh r0, [r6]
	mov r1, r5
	bl sub_0206404C
	mov r1, r5
	mov r0, #0
	bl sub_02063E20
	b _02064220
_020641E4:
	mov r0, #0
	str r0, [r6, #4]
	ldr r0, [r4, #0xc]
	str r0, [r6, #8]
	ldr r1, [r6, #0x10]
	bl sub_02063FA4
	ldr r0, [r6, #8]
	bl sub_0206407C
	mov r0, #0
	mov r1, #2
	bl sub_02063E20
	ldr r0, [r6, #8]
	ldr r1, [r6, #0x10]
	add r2, r6, #0x14
	bl sub_02063F78
_02064220:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020640DC
