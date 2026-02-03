	arm_func_start sub_0205E50C
sub_0205E50C: ; 0x0205E50C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x20
	mov r8, r0
	mov r7, r1
	mov fp, r2
	mov r5, #0
	b _0205E5BC
_0205E528:
	add r6, r5, #1
	mov r4, r5, lsl #5
	b _0205E5B0
_0205E534:
	ldrb r0, [r7, r6, lsl #5]
	mov r1, r6, lsl #5
	cmp r0, #0
	beq _0205E5AC
	ldrb r0, [r7, r4]
	cmp r0, #0
	beq _0205E564
	add r0, r7, r4
	add r1, r7, r1
	blx fp
	cmp r0, #0
	beq _0205E5AC
_0205E564:
	add sb, sp, #0
	add ip, r7, r4
	mov sl, sb
	ldmia ip!, {r0, r1, r2, r3}
	stmia sb!, {r0, r1, r2, r3}
	ldmia ip, {r0, r1, r2, r3}
	stmia sb, {r0, r1, r2, r3}
	add sb, r7, r6, lsl #5
	mov ip, sb
	add lr, r7, r4
	ldmia sb!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia sb, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	ldmia sl!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia sl, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
_0205E5AC:
	add r6, r6, #1
_0205E5B0:
	cmp r6, r8
	blt _0205E534
	add r5, r5, #1
_0205E5BC:
	sub r0, r8, #1
	cmp r5, r0
	blt _0205E528
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_0205E50C
