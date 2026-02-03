	arm_func_start sub_02069AEC
sub_02069AEC: ; 0x02069AEC
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x68
	ldr r1, _02069CBC ; =_020B0B44
	mov r2, #0
	ldr r1, [r1]
	mov r5, r0
	ldr r4, [r1]
	add r0, r4, #4
	strb r2, [sp, #0x46]
	strh r2, [sp, #0x10]
	strh r2, [sp, #0x12]
	strh r2, [sp, #0x14]
	strh r2, [sp, #0x16]
	str r2, [sp, #0x5c]
	str r4, [sp, #0x64]
	str r0, [sp, #8]
	ldrsh r0, [r4, #0xa2]
	cmp r0, #0
	moveq r0, #7
	streqb r0, [sp, #0x1a]
	beq _02069B60
	mov r0, #2
	strb r0, [sp, #0x1a]
	ldrh r0, [r4, #0x9e]
	strh r0, [sp, #0x28]
	ldrh r0, [r4, #0xa0]
	strh r0, [sp, #0x2a]
	ldrh r0, [r4, #0xa2]
	strh r0, [sp, #0x2c]
_02069B60:
	bl GetLanguageType
	ldrsb r1, [r4, #0x1c]
	cmp r1, r0
	movne r0, #0
	strne r0, [sp, #0xc]
	strne r0, [sp, #0x54]
	strne r0, [sp, #0x58]
	bne _02069B98
	add r2, r4, #0x1d
	add r1, r4, #0x32
	add r0, r4, #0x56
	str r2, [sp, #0xc]
	str r1, [sp, #0x54]
	str r0, [sp, #0x58]
_02069B98:
	ldrb r0, [r4]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _02069C00
_02069BA8: ; jump table
	b _02069C00 ; case 0
	b _02069C00 ; case 1
	b _02069C00 ; case 2
	b _02069C00 ; case 3
	b _02069C00 ; case 4
	b _02069BC8 ; case 5
	b _02069BF4 ; case 6
	b _02069BC8 ; case 7
_02069BC8:
	ldr r0, _02069CBC ; =_020B0B44
	ldr r1, [r0]
	ldrsh r0, [r1, #8]
	cmp r0, #0
	movne r0, #6
	strneb r0, [sp, #0x1a]
	ldrnesh r0, [r1, #8]
	strneh r0, [sp, #0x3c]
	mov r0, #0
	strb r0, [sp, #0x48]
	b _02069C50
_02069BF4:
	mov r0, #0
	strb r0, [sp, #0x48]
	b _02069C50
_02069C00:
	ldrb r0, [r4, #0xae]
	bl sub_0205BD40
	cmp r0, #0
	beq _02069C24
	cmp r0, #1
	beq _02069C30
	cmp r0, #2
	beq _02069C3C
	b _02069C48
_02069C24:
	mov r0, #6
	strb r0, [sp, #0x48]
	b _02069C50
_02069C30:
	mov r0, #4
	strb r0, [sp, #0x48]
	b _02069C50
_02069C3C:
	mov r0, #5
	strb r0, [sp, #0x48]
	b _02069C50
_02069C48:
	mov r0, #0
	strb r0, [sp, #0x48]
_02069C50:
	ldr r0, [sp, #0x54]
	mov r1, #1
	cmp r0, #0
	ldrneh r0, [r0]
	cmpne r0, #0
	movne r1, #0
	cmp r1, #0
	movne r1, #0
	moveq r1, #6
	ldr r0, [sp, #0x58]
	strb r1, [sp, #0x44]
	cmp r0, #0
	ldrneh r0, [r0]
	mov r1, #1
	cmpne r0, #0
	movne r1, #0
	cmp r1, #0
	movne r2, #0
	moveq r2, #9
	add r0, sp, #0
	mov r1, r5
	strb r2, [sp, #0x45]
	bl sub_02060FD8
	mov r0, r5
	bl UpdateWindow
	add sp, sp, #0x68
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02069CBC: .word _020B0B44
	arm_func_end sub_02069AEC
