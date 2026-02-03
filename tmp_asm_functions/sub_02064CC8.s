	arm_func_start sub_02064CC8
sub_02064CC8: ; 0x02064CC8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x44
	ldr r4, [r1, #0xc]
	mov sl, r0
	cmp r2, r4
	movhs r0, #0
	bhs _02064F84
	ldr r0, [r1, #0x28]
	ldr r4, _02064F8C ; =_020AFC70
	ldr r6, [r1, #8]
	ldr r5, [sl, #4]
	ldr r7, [r4]
	str r5, [sp, #0x14]
	add r5, r1, r6
	mov r4, #0x2c
	mla r4, r2, r4, r5
	ldrsh r6, [sl, #8]
	ldr r7, [r7, #0xe0]
	add r0, r1, r0
	add r6, r7, r6, lsl #9
	str r6, [sp, #0x18]
	ldrsh r8, [r4, #0x18]
	add r7, sp, #0x1c
	mov r6, #4
	add r8, r0, r8, lsl #3
_02064D2C:
	ldrh r0, [r8], #2
	subs r6, r6, #1
	strh r0, [r7], #2
	bne _02064D2C
	ldrh r0, [r1, #4]
	ldr r8, _02064F90 ; =0x00007FFF
	mov r7, #0
	bic sb, r0, #0x1800
	mov r6, #0x39
	mov r0, #0x21
	strh sb, [sp, #0x24]
	strh r8, [sp, #0x36]
	strh r8, [sp, #0x38]
	strh r8, [sp, #0x3a]
	strh r8, [sp, #0x3c]
	strh r7, [sp, #0x3e]
	strh r6, [sp, #0x12]
	strb r7, [sp, #0x42]
	strb r0, [sp, #0x40]
	ldr r0, [r1, #0xc]
	sub r0, r0, #1
	cmp r2, r0
	bne _02064DA0
	ldrh r0, [r4, #0xa]
	mov r0, r0, asr #8
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #24
	add r1, r1, r0, ror #24
	b _02064DEC
_02064DA0:
	add r2, r2, #1
	mov r0, #0x2c
	mla r5, r2, r0, r5
	ldrh r0, [r5, #0xa]
	cmp r0, #0
	beq _02064DEC
	ldrsh r1, [r5, #8]
	sub r0, r1, r3
	mov r0, r0, lsl #8
	mov r1, r1, lsl #8
	bl sub_02001AB0
	ldrh r5, [r5, #0xa]
	mov r1, r7
	bl MultiplyByFixedPoint
	add r0, r0, r5
	mov r0, r0, asr #8
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #24
	add r1, r1, r0, ror #24
_02064DEC:
	ldrsh r6, [sp, #0x20]
	and r0, r1, #0xf8
	mov r2, r0, asr #3
	mov r1, r6
	mov r0, #0x100
	strb r2, [sp, #0x41]
	ldrsh r7, [sp, #0x22]
	bl _s32_div_f
	cmp r1, #0
	movne r5, #1
	moveq r5, #0
	mov r1, r6
	mov r0, #0x100
	bl _s32_div_f
	add r0, r0, r5
	mov r2, r0, lsl #0x10
	mov r1, r7
	mov r0, #0xc0
	mov r5, r2, asr #0x10
	bl _s32_div_f
	add r2, r5, #1
	cmp r1, #0
	str r2, [sp]
	ldrsh r2, [sl, #0x14]
	movne sb, #1
	moveq sb, #0
	mov r1, r7
	mov r0, #0xc0
	ldrsh r5, [sl, #0x12]
	str r2, [sp, #4]
	mvn r8, #0
	bl _s32_div_f
	add r0, r0, sb
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	add fp, r0, #1
	b _02064F2C
_02064E80:
	ldr r0, [sp, #4]
	add r1, r8, #1
	mla r2, r8, r7, r0
	mla r1, r7, r1, r0
	mov r0, r2, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsl #0x10
	str r0, [sp, #8]
	mov r0, r1, asr #0x10
	mvn sb, #0
	str r0, [sp, #0xc]
	b _02064F14
_02064EB0:
	add r0, sb, #1
	mla r0, r6, r0, r5
	strh r0, [sp, #0x2a]
	mla r0, sb, r6, r5
	strh r0, [sp, #0x26]
	ldr r0, [sp, #8]
	ldrsh r1, [sp, #0x26]
	strh r0, [sp, #0x28]
	ldr r0, [sp, #0xc]
	ldrsh r2, [sp, #0x28]
	strh r0, [sp, #0x30]
	ldrb r0, [sp, #0x40]
	strh r2, [sp, #0x2c]
	strh r1, [sp, #0x2e]
	ldrsh r2, [sp, #0x2a]
	ldrsh r1, [sp, #0x30]
	add r0, r0, #1
	strb r0, [sp, #0x40]
	add r0, sp, #0x10
	strh r2, [sp, #0x32]
	strh r1, [sp, #0x34]
	bl EnqueueRender3dTiling
	add r0, sb, #1
	mov r0, r0, lsl #0x10
	mov sb, r0, asr #0x10
_02064F14:
	ldr r0, [sp]
	cmp sb, r0
	blt _02064EB0
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
_02064F2C:
	cmp r8, fp
	blt _02064E80
	ldrb r0, [sl, #0x16]
	cmp r0, #0
	bne _02064F80
	ldrsh r2, [sl, #0x12]
	ldrsh r0, [r4, #0x14]
	mov r1, r6
	add r0, r2, r0
	strh r0, [sl, #0x12]
	ldrsh r2, [sl, #0x14]
	ldrsh r0, [r4, #0x16]
	add r0, r2, r0
	strh r0, [sl, #0x14]
	ldrsh r0, [sl, #0x12]
	bl _s32_div_f
	strh r1, [sl, #0x12]
	ldrsh r0, [sl, #0x14]
	mov r1, r7
	bl _s32_div_f
	strh r1, [sl, #0x14]
_02064F80:
	mov r0, #1
_02064F84:
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02064F8C: .word _020AFC70
_02064F90: .word 0x00007FFF
	arm_func_end sub_02064CC8
