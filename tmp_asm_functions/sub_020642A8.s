	arm_func_start sub_020642A8
sub_020642A8: ; 0x020642A8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x14
	mov r5, r0
	ldr r1, [r5, #4]
	cmp r1, #0
	beq _020645C0
	ldrb r1, [r5, #0x3e]
	ldr r4, [r5, #0xc]
	cmp r1, #0
	beq _020642DC
	bl sub_0206423C
	mov r0, #0
	b _02064658
_020642DC:
	ldrb r0, [r5, #0x3c]
	cmp r0, #0
	movne r0, #1
	bne _02064658
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _02064484
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0x14
	stmib sp, {r0, r4}
	mov r2, #0
	ldrsh r0, [r5]
	mov r3, r2
	add r1, r5, #0x10
	bl sub_02063EE0
	mov r6, r0
	ldr r2, [r5, #0xc]
	add r0, sp, #0xc
	mov r1, #4
	bl sub_02063EB4
	cmp r6, #0
	beq _02064464
	ldrsh r0, [sp, #0xc]
	cmp r0, #0
	movne r0, #1
	strneb r0, [r5, #0x1c]
	movne r0, #0
	strne r0, [r5, #0x20]
	strne r0, [r5, #0x24]
	ldrsh r1, [sp, #0xe]
	cmp r1, #0
	beq _020643A4
	cmp r1, #0x63
	ldreq r1, _02064660 ; =0x00000C1C
	moveq r0, #0
	streq r1, [r5, #0x20]
	streq r0, [r5, #0x24]
	beq _020643A4
	cmp r1, #0
	ldr r0, _02064660 ; =0x00000C1C
	ble _02064394
	bl _s32_div_f
	str r0, [r5, #0x24]
	str r0, [r5, #0x20]
	b _020643A4
_02064394:
	str r0, [r5, #0x20]
	ldrsh r1, [sp, #0xe]
	bl _s32_div_f
	str r0, [r5, #0x24]
_020643A4:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _02064478
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x20]
	ldr r2, [r1, #0x10]
	mov r1, #0x64
	add sb, r2, #0x380
	bl _s32_div_f
	mov r8, #0
	mov r7, r0
	mov r6, r8
_020643D4:
	mov r0, r4
	bl sub_02063E7C
	add r1, r8, #0xe0
	mov r2, r1, lsl #0x10
	mov r1, sb
	mov r3, r7
	mov r2, r2, asr #0x10
	str r6, [sp]
	bl sub_0200C020
	add r8, r8, #1
	cmp r8, #0x10
	add sb, sb, #4
	blt _020643D4
	mov r0, r4
	bl sub_02063E7C
	bl sub_0200A504
	mov r1, r4
	mov r0, #3
	bl sub_02063BCC
	mov r0, r4
	bl sub_02063E68
	mov r2, r0
	mov r0, #0x50
	mov r1, r0
	bl sub_020094C4
	ldr r1, [r5, #0x20]
	ldr r0, [r5, #0x24]
	adds r1, r1, r0
	str r1, [r5, #0x20]
	movmi r0, #0
	strmi r0, [r5, #0x20]
	bmi _02064478
	ldr r0, _02064660 ; =0x00000C1C
	cmp r1, r0
	strgt r0, [r5, #0x20]
	b _02064478
_02064464:
	mov r0, r4
	bl sub_02063E44
	mov r0, #1
	strb r0, [r5, #0x3e]
	b _02064658
_02064478:
	ldr r0, [r5, #0x10]
	add r0, r0, #1
	str r0, [r5, #0x10]
_02064484:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	bne _020645AC
	ldrsh r0, [r5]
	bl sub_0206409C
	ldr r1, [r5, #0x10]
	mov r8, #0xff
	subs r2, r1, #1
	ldr r1, [r0, #8]
	movmi r2, #0
	cmp r1, #0
	beq _020645AC
	ldmia r1, {r0, r1}
	sub r0, r0, #1
	cmp r2, r0
	ldr r7, [r1, r2, lsl #2]
	bne _02064504
	ldr r1, [r7, #0x1c]
	mov r0, r4
	mov r1, r1, asr #8
	mov r2, r1, lsr #0x1f
	rsb r1, r2, r1, lsl #24
	add r8, r2, r1, ror #24
	bl sub_02063E68
	rsb r1, r8, #0xff
	mov r3, r1, lsl #0x10
	mov r1, r8, lsl #0x10
	mov r2, r0
	mov r0, r1, asr #0x10
	mov r1, r3, asr #0x10
	bl sub_020094C4
	b _0206458C
_02064504:
	ldrsh r0, [r7, #0xc]
	add r1, r1, r2, lsl #2
	ldr r6, [r1, #4]
	cmp r0, #0
	bne _0206458C
	ldr r0, [r7, #0x1c]
	cmp r0, #0xff00
	beq _0206458C
	ldrsh r1, [r7, #8]
	ldr r0, [r5, #0x14]
	sub r0, r1, r0
	mov r0, r0, lsl #8
	mov r1, r1, lsl #8
	bl sub_02001AB0
	ldr r7, [r7, #0x1c]
	ldr r1, [r6, #0x1c]
	sub r1, r1, r7
	bl MultiplyByFixedPoint
	add r0, r0, r7
	mov r0, r0, asr #8
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #24
	add r8, r1, r0, ror #24
	add r1, r8, r8, lsr #31
	mov r0, r4
	mov r6, r1, asr #1
	bl sub_02063E68
	rsb r1, r6, #0x80
	mov r3, r1, lsl #0x10
	mov r1, r6, lsl #0x10
	mov r2, r0
	mov r0, r1, asr #0x10
	mov r1, r3, asr #0x10
	bl sub_020094C4
_0206458C:
	cmp r8, #0xff
	mov r1, r4
	bne _020645A4
	mov r0, #0
	bl sub_02063BCC
	b _020645AC
_020645A4:
	mov r0, #2
	bl sub_02063BCC
_020645AC:
	ldr r1, [r5, #0x14]
	mov r0, #1
	sub r1, r1, #1
	str r1, [r5, #0x14]
	b _02064658
_020645C0:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02064654
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _0206460C
	ldr r0, [r5, #0x10]
	add r2, r5, #0x14
	add r1, r0, #1
	str r1, [r5, #0x10]
	ldr r0, [r5, #8]
	bl sub_02063F78
	cmp r0, #0
	bne _0206460C
	mov r1, #0
	str r1, [r5, #0x10]
	ldr r0, [r5, #8]
	add r2, r5, #0x14
	bl sub_02063F78
_0206460C:
	ldrb r0, [r5, #0x3c]
	ldr r1, [r5, #0x10]
	cmp r0, #0
	ldr r0, [r5, #8]
	beq _02064634
	ldr r2, [r5, #0x14]
	mov r3, #1
	bl sub_02063F30
	mov r0, #1
	b _02064658
_02064634:
	ldr r2, [r5, #0x14]
	mov r3, #0
	bl sub_02063F30
	ldr r1, [r5, #0x14]
	mov r0, #1
	sub r1, r1, #1
	str r1, [r5, #0x14]
	b _02064658
_02064654:
	mov r0, #0
_02064658:
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02064660: .word 0x00000C1C
	arm_func_end sub_020642A8
