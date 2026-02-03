	arm_func_start sub_0205BAB0
sub_0205BAB0: ; 0x0205BAB0
	stmdb sp!, {r4, lr}
	ldr r1, _0205BB74 ; =_020B0A54
	mov r4, #1
	ldr r3, [r1]
	mov r2, #0
	strb r4, [r3]
	ldr r3, [r1]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [r3, #4]
	str r0, [r3, #8]
	str r2, [r3, #0xc]
	str r2, [r3, #0x10]
	bl sub_02063504
	mov r4, r0
	bl Rand16Bit
	orr r0, r0, r4, lsl #16
	bl sub_020510E8
	bl sub_02051134
	ldr r1, _0205BB74 ; =_020B0A54
	ldr r1, [r1]
	str r0, [r1, #0x18]
	bl sub_020634F4
	ldr r1, _0205BB78 ; =_022B57BC
	ldr r0, _0205BB74 ; =_020B0A54
	ldr r1, [r1]
	ldr r0, [r0]
	str r1, [r0, #0x14]
	bl GetLanguageType
	ldr r1, _0205BB74 ; =_020B0A54
	ldr r2, [r1]
	strb r0, [r2, #0x1c]
	ldr r0, [r1]
	add r0, r0, #0x1d
	bl GetMainTeamNameWithCheck
	ldr r0, _0205BB74 ; =_020B0A54
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	bl GetMaxRescueAttempts
	ldr r1, _0205BB74 ; =_020B0A54
	ldr r1, [r1]
	strb r0, [r1, #0xac]
	mov r0, #2
	bl RandInt
	ldr r1, _0205BB74 ; =_020B0A54
	orr r2, r0, #2
	ldr r0, [r1]
	strb r2, [r0, #0xae]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205BB74: .word _020B0A54
_0205BB78: .word _022B57BC
	arm_func_end sub_0205BAB0
