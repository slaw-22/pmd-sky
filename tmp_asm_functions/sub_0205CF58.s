	arm_func_start sub_0205CF58
sub_0205CF58: ; 0x0205CF58
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	cmp r7, #6
	ldreqb r0, [r6]
	mov r5, r2
	cmpeq r0, #4
	beq _0205CFF4
	cmp r7, #0xe
	beq _0205CFF4
	ldrb r0, [r5]
	bl IsInvalidForMission
	cmp r0, #0
	beq _0205CFA4
	ldrb r1, [r5]
	ldr r0, _0205CFFC ; =_020A39C0
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0205CFA4:
	ldrb r4, [r5, #1]
	ldrb r2, [r5]
	mov r0, r7
	mov r1, r6
	bl sub_02063424
	cmp r4, r0
	ble _0205CFD4
	ldr r0, _0205D000 ; =_020A39D4
	mov r1, r4
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0205CFD4:
	mov r0, r5
	bl IsForbiddenFloor
	cmp r0, #0
	beq _0205CFF4
	ldr r0, _0205D004 ; =_020A39F0
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0205CFF4:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0205CFFC: .word _020A39C0
_0205D000: .word _020A39D4
_0205D004: .word _020A39F0
	arm_func_end sub_0205CF58
