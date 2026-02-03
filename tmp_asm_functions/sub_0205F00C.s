	arm_func_start sub_0205F00C
sub_0205F00C: ; 0x0205F00C
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r2, _0205F0B4 ; =MISSION_DELIVER_LIST_PTR
	mov ip, #0
	ldr r2, [r2, #0x18]
	add r3, r2, #0x100
	b _0205F0A0
_0205F028:
	mov r2, ip, lsl #0x18
	add r4, r3, r2, asr #19
	ldrb r2, [r4, #4]
	cmp r2, r0
	ldreqb r2, [r4]
	cmpeq r2, #5
	bne _0205F09C
	ldrb r2, [r4, #1]
	cmp r2, #2
	cmpne r2, #3
	cmpne r2, #4
	cmpne r2, #5
	beq _0205F06C
	cmp r2, #0xa
	ldreqb r2, [r4, #2]
	cmpeq r2, #4
	bne _0205F09C
_0205F06C:
	mov r2, #0xfa
	mov r0, #1
	strb r2, [sp, #4]
	strb r0, [sp, #5]
	mov r2, #0
	str r2, [sp]
	mov r0, r1
	ldrsh r1, [r4, #0xe]
	add r3, sp, #4
	bl sub_02052E2C
	mov r0, r4
	b _0205F0AC
_0205F09C:
	add ip, ip, #1
_0205F0A0:
	cmp ip, #8
	blt _0205F028
	mov r0, #0
_0205F0AC:
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205F0B4: .word MISSION_DELIVER_LIST_PTR
	arm_func_end sub_0205F00C
