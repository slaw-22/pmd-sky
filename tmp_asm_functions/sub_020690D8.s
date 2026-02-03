	arm_func_start sub_020690D8
sub_020690D8: ; 0x020690D8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x68
	ldr r3, _020691B4 ; =_020B0B2C
	mov sb, r0
	ldr r6, [r3, #0x14]
	mov r8, r1
	mov r7, r2
	bl sub_0206901C
	mov r5, #0
	str r5, [r6, #0x80]
	add r4, r6, #0xe20
	mov fp, #0x68
	b _02069188
_0206910C:
	add r0, r6, r5, lsl #1
	ldrsh r0, [r0, #0xc]
	add r1, sp, #0
	add sl, sb, r0, lsl #5
	mov r0, sl
	bl GenerateMissionDetailsStruct
	mov r0, sl
	add r1, sp, #0x47
	add r2, sp, #0x48
	mov r3, r7
	bl sub_02069958
	cmp r8, #0
	beq _0206914C
	mov r0, sl
	add r1, r4, r5
	blx r8
_0206914C:
	ldr r1, [r6, #0x80]
	add sl, sp, #0
	mla r0, r1, fp, r6
	add lr, r0, #0x84
	mov ip, #6
_02069160:
	ldmia sl!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _02069160
	ldmia sl, {r0, r1}
	stmia lr, {r0, r1}
	ldr r0, [r6, #0x80]
	add r5, r5, #1
	add r0, r0, #1
	str r0, [r6, #0x80]
_02069188:
	ldr r0, [r6, #0x6c]
	cmp r5, r0
	blt _0206910C
	mov r0, #0
	str r0, [r6, #0xd88]
	mov r0, #0x10
	str r0, [r6, #0xd94]
	mov r0, #0x1a
	str r0, [r6, #0xd8c]
	add sp, sp, #0x68
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_020691B4: .word _020B0B2C
	arm_func_end sub_020690D8
