	arm_func_start sub_0206478C
sub_0206478C: ; 0x0206478C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	ldrb r6, [sp, #0x3c]
	mov sl, r0
	mov r5, r1
	mov r4, r2
	str r3, [sp]
	cmp r6, #0
	beq _020647B4
	bl sub_0206466C
_020647B4:
	ldr r2, [r5, #0x14]
	ldrb r0, [r2, #8]
	cmp r0, #0
	beq _020647DC
	ldrb r0, [r2, #0xa]
	ldr r1, [r4]
	cmp r1, r0
	ldrgeb r0, [r2, #9]
	strge r0, [r4]
	b _020647F0
_020647DC:
	ldr r1, [r4]
	ldr r0, [r5]
	cmp r1, r0
	movge r0, #0
	bge _020648F0
_020647F0:
	ldr r2, [r5, #4]
	ldr r0, [r4]
	ldr r1, [sp, #0x40]
	ldr r2, [r2, r0, lsl #2]
	mov sb, #0
	ldrsh r0, [r2, #6]
	cmp r1, #0
	ldrsh r8, [r2, #4]
	str r0, [sp, #4]
	ldrnesh r0, [r2, #8]
	mov r5, sb
	add fp, r2, #0x24
	strne r0, [r1]
	ldrsh r0, [r2, #0xc]
	ldrsh r7, [sp, #0x38]
	strh r0, [sl, #0x16]
	ldrsh r0, [r2, #0xe]
	strh r0, [sl, #0x18]
	ldrsh r0, [r2, #0x10]
	strh r0, [sl, #0x1a]
	ldrsh r0, [r2, #0x12]
	strh r0, [sl, #0x1c]
	b _020648D8
_0206484C:
	cmp r7, #0x18
	bge _020648E4
	ldr r6, [sp]
	mov r4, #0
	cmp r8, #0
	ble _020648D0
	b _020648C8
_02064868:
	cmp sb, #0
	bne _02064888
	ldrh r2, [fp], #2
	tst r2, #0xf000
	ldreq r0, _020648F8 ; =0x000003FF
	andeq sb, r2, r0
	moveq r2, #0
	b _0206488C
_02064888:
	mov r2, #0
_0206488C:
	cmp sb, #0
	subne sb, sb, #1
	cmp r6, #0
	blt _020648C0
	cmp r6, #0x20
	bge _020648C0
	cmp r7, #0
	blt _020648C0
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	ldr r0, [sl, #8]
	add r1, sp, #8
	bl sub_0200B3FC
_020648C0:
	add r4, r4, #1
	add r6, r6, #1
_020648C8:
	cmp r4, r8
	blt _02064868
_020648D0:
	add r5, r5, #1
	add r7, r7, #1
_020648D8:
	ldr r0, [sp, #4]
	cmp r5, r0
	blt _0206484C
_020648E4:
	ldr r0, [sl, #8]
	bl sub_0200B330
	mov r0, #1
_020648F0:
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_020648F8: .word 0x000003FF
	arm_func_end sub_0206478C
