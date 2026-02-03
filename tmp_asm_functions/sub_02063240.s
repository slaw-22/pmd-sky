	arm_func_start sub_02063240
sub_02063240: ; 0x02063240
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r6, r1
	mov r5, r2
	mov r0, #3
	mov r1, #0xc
	mov r2, #0
	bl IsStoryBeforePoint
	cmp r0, #0
	movne r0, #0
	strneh r0, [r6, #0xa]
	mov r0, #3
	mov r1, #6
	mov r2, #0
	bl IsStoryBeforePoint
	cmp r0, #0
	movne r0, #0
	strneh r0, [r6, #0xc]
	mov r0, #3
	mov r1, #8
	mov r2, #0
	bl IsStoryBeforePoint
	cmp r0, #0
	bne _020632B8
	ldrb r1, [r4, #1]
	add r0, r4, #4
	bl sub_02062D9C
	cmp r0, #0xb
	bge _020632C0
_020632B8:
	mov r0, #0
	strh r0, [r6, #8]
_020632C0:
	mov r1, r6
	mov r0, #7
	bl sub_0206220C
	and r1, r0, #0xff
	strb r0, [r4, #0x16]
	cmp r1, #6
	ldreqsh r0, [r4, #0xe]
	streqh r0, [r4, #0x18]
	beq _0206338C
	cmp r1, #4
	bne _0206336C
	add r1, sp, #0
	mov r0, r5
	bl sub_020630F0
	cmp r0, #0
	bne _02063360
	mov r0, r5
	mov r1, #0
	bl GetType
	mov r6, r0
	mov r0, r5
	mov r1, #1
	bl GetType
	movs r5, r0
	beq _02063334
	mov r0, #2
	bl RandInt
	cmp r0, #0
	beq _0206334C
_02063334:
	sub r0, r6, #1
	mov r0, r0, lsl #2
	add r0, r0, #0xfb
	add r0, r0, #0x100
	strh r0, [sp]
	b _02063360
_0206334C:
	sub r0, r5, #1
	mov r0, r0, lsl #2
	add r0, r0, #0xfb
	add r0, r0, #0x100
	strh r0, [sp]
_02063360:
	ldrsh r0, [sp]
	strh r0, [r4, #0x18]
	b _0206338C
_0206336C:
	ldrb r1, [r4, #1]
	add r0, r4, #4
	add r2, r4, #0x18
	bl sub_020630A4
	ldrsh r1, [r4, #0x14]
	ldrsh r0, [r4, #0x18]
	cmp r1, r0
	beq _0206336C
_0206338C:
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end sub_02063240
