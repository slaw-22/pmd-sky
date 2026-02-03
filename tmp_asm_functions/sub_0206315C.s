	arm_func_start sub_0206315C
sub_0206315C: ; 0x0206315C
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldrb r0, [r4, #1]
	cmp r0, #6
	beq _020631D8
	cmp r0, #0xa
	beq _02063188
	cmp r0, #0xb
	beq _020631B4
	b _020631F4
_02063188:
	ldr r1, _02063230 ; =OUTLAW_MISSION_REWARD_TYPE_WEIGHTS
	add r0, sp, #0
	mov r2, #0xe
	bl MemcpySimple
	mov r0, #0
	strh r0, [sp, #0xc]
	ldrsh r2, [r4, #0x10]
	add r1, sp, #0
	mov r0, r4
	bl sub_02063240
	b _02063228
_020631B4:
	ldrb r0, [r4, #2]
	cmp r0, #1
	blo _020631D8
	cmp r0, #5
	movls r0, #6
	strlsb r0, [r4, #0x16]
	ldrlssh r0, [r4, #0xe]
	strlsh r0, [r4, #0x18]
	bls _02063228
_020631D8:
	ldrb r0, [r4, #2]
	cmp r0, #4
	moveq r1, #4
	ldreq r0, _02063234 ; =0x0000031E
	streqb r1, [r4, #0x16]
	streqh r0, [r4, #0x18]
	beq _02063228
_020631F4:
	cmp r1, #0
	add r0, sp, #0
	mov r2, #0xe
	beq _02063210
	ldr r1, _02063238 ; =DEFAULT_MISSION_REWARD_TYPE_WEIGHTS
	bl MemcpySimple
	b _02063218
_02063210:
	ldr r1, _0206323C ; =CAFE_MISSION_REWARD_TYPE_WEIGHTS
	bl MemcpySimple
_02063218:
	ldrsh r2, [r4, #0xe]
	add r1, sp, #0
	mov r0, r4
	bl sub_02063240
_02063228:
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_02063230: .word OUTLAW_MISSION_REWARD_TYPE_WEIGHTS
_02063234: .word 0x0000031E
_02063238: .word DEFAULT_MISSION_REWARD_TYPE_WEIGHTS
_0206323C: .word CAFE_MISSION_REWARD_TYPE_WEIGHTS
	arm_func_end sub_0206315C
