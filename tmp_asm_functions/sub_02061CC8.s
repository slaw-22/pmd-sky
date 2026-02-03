	arm_func_start sub_02061CC8
sub_02061CC8: ; 0x02061CC8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	mov r4, r2
	cmp r1, #9
	cmpne r1, #0
	mov sl, r0
	mov sb, r3
	cmpne r4, #0
	beq _02061DB8
	ldrb r1, [r4]
	cmp r1, #4
	bne _02061DB8
	ldr r3, _02061DC4 ; =0x00003C31
	mov r2, sb
	mov r1, #4
	bl sub_02026268
	add r0, sp, #4
	mov r1, r4
	add sb, sb, #0xd
	bl MissionToWonderMailPassword
	mov r7, #0
	mov fp, #0x44
	add r6, sp, #4
	mov r4, #0xb
	b _02061DB0
_02061D2C:
	beq _02061DB8
	cmp r7, #5
	movlt r8, fp
	blt _02061D60
	cmp r7, #0xc
	movlt r8, #0x43
	blt _02061D60
	cmp r7, #0x16
	movlt r8, #0x44
	blt _02061D60
	cmp r7, #0x1d
	movlt r8, #0x43
	movge r8, #0x44
_02061D60:
	ldrb r0, [r6, r7]
	bl sub_020251F0
	mov r5, r0
	mov r0, r7
	mov r1, #0x11
	bl _s32_div_f
	mul r2, r1, r4
	and r0, r8, #0xff
	str r0, [sp]
	add r1, r2, #0x13
	mov r3, r5
	mov r0, sl
	mov r2, sb
	bl sub_020264F8
	add r0, r7, #1
	mov r1, #0x11
	bl _s32_div_f
	cmp r1, #0
	addeq sb, sb, #0xd
	add r7, r7, #1
_02061DB0:
	cmp r7, #0x22
	blt _02061D2C
_02061DB8:
	mov r0, sb
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
#if defined(EUROPE)
_02061DC4: .word 0x00003C33
#elif defined(JAPAN)
_02061DC4: .word 0x0000386F
#else
_02061DC4: .word 0x00003C31
#endif
	arm_func_end sub_02061CC8
