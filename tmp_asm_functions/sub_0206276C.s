	arm_func_start sub_0206276C
sub_0206276C: ; 0x0206276C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r5, _020627F0 ; =_020B0AD8
	mov ip, #0
	ldr r4, [r5, #0xc]
	ldr r5, [r5, #0x18]
	mov r6, #0x22
	b _020627E0
_02062788:
	add lr, r4, ip, lsl #4
	ldrh r7, [lr, #0xe]
	mla r8, r7, r6, r5
	ldrb r7, [r8, #0x20]
	cmp r7, r0
	ldreqb r8, [r8, #0x21]
	ldreqb r7, [r1]
	cmpeq r8, r7
	bne _020627DC
	cmp r2, #0
	ldrneb r0, [lr, #8]
	ldr r1, [sp, #0x18]
	strneb r0, [r2]
	cmp r3, #0
	ldrneb r0, [lr, #9]
	strne r0, [r3]
	cmp r1, #0
	ldrneh r0, [lr, #0xa]
	strne r0, [r1]
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020627DC:
	add ip, ip, #1
_020627E0:
	cmp ip, #0x27
	blt _02062788
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_020627F0: .word _020B0AD8
	arm_func_end sub_0206276C
