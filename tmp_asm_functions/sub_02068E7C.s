	arm_func_start sub_02068E7C
sub_02068E7C: ; 0x02068E7C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x68
	ldr r1, _02069018 ; =_020B0B2C
	mov r8, r0
	ldr r7, [r1, #0x14]
	add r4, r7, #0x188
	bl sub_0206901C
	mov r5, #0
	str r5, [r7, #0xd88]
	mov r0, #0x10
	str r0, [r4, #0xc0c]
	str r5, [r7, #0x80]
	b _02068FF4
_02068EB0:
	add r0, r7, r5, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r2, #0
	mov r1, #7
	mov r0, r0, lsl #0x18
	mov r3, r0, asr #0x18
	mov r0, #0xb0
	mla r6, r3, r0, r8
	add r0, r6, #4
	strb r2, [sp, #0x46]
	strb r2, [sp, #0x48]
	str r0, [sp, #8]
	strh r2, [sp, #0x10]
	strh r2, [sp, #0x12]
	strh r2, [sp, #0x14]
	strh r2, [sp, #0x16]
	strb r1, [sp, #0x1a]
	str r2, [sp, #0x5c]
	str r6, [sp, #0x64]
	bl GetLanguageType
	ldrsb r1, [r6, #0x1c]
	cmp r1, r0
	movne r0, #0
	strne r0, [sp, #0xc]
	strne r0, [sp, #0x54]
	strne r0, [sp, #0x58]
	bne _02068F34
	add r2, r6, #0x1d
	add r1, r6, #0x32
	add r0, r6, #0x56
	str r2, [sp, #0xc]
	str r1, [sp, #0x54]
	str r0, [sp, #0x58]
_02068F34:
	ldr r0, [sp, #0x54]
	mov r1, #1
	cmp r0, #0
	ldrneh r0, [r0]
	cmpne r0, #0
	movne r1, #0
	cmp r1, #0
	movne r1, #0
	moveq r1, #6
	ldrb r0, [r6]
	strb r1, [sp, #0x44]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _02068FAC
_02068F6C: ; jump table
	b _02068FAC ; case 0
	b _02068FA0 ; case 1
	b _02068FA0 ; case 2
	b _02068FAC ; case 3
	b _02068F88 ; case 4
	b _02068F94 ; case 5
	b _02068F94 ; case 6
_02068F88:
	mov r0, #3
	strb r0, [sp, #0x47]
	b _02068FB4
_02068F94:
	mov r0, #4
	strb r0, [sp, #0x47]
	b _02068FB4
_02068FA0:
	mov r0, #1
	strb r0, [sp, #0x47]
	b _02068FB4
_02068FAC:
	mov r0, #2
	strb r0, [sp, #0x47]
_02068FB4:
	ldr r1, [r7, #0x80]
	mov r0, #0x68
	mla r0, r1, r0, r7
	add lr, sp, #0
	add ip, r0, #0x84
	mov r6, #6
_02068FCC:
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	subs r6, r6, #1
	bne _02068FCC
	ldmia lr, {r0, r1}
	stmia ip, {r0, r1}
	ldr r0, [r7, #0x80]
	add r5, r5, #1
	add r0, r0, #1
	str r0, [r7, #0x80]
_02068FF4:
	ldr r0, [r7, #0x6c]
	cmp r5, r0
	blt _02068EB0
	mov r0, #0x10
	str r0, [r4, #0xc0c]
	mov r0, #0x1a
	str r0, [r4, #0xc04]
	add sp, sp, #0x68
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02069018: .word _020B0B2C
	arm_func_end sub_02068E7C
