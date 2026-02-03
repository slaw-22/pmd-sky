	arm_func_start sub_020668B4
sub_020668B4: ; 0x020668B4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	sub r0, r5, #0x13
	cmp r0, #2
	movls r0, #0
	ldmlsia sp!, {r3, r4, r5, pc}
	ldr r0, _02066988 ; =0x00000EF8
	mov r1, #8
	bl MemAlloc
	ldr r2, _0206698C ; =_020B0B2C
	ldr r1, _02066988 ; =0x00000EF8
	str r0, [r2, #0x14]
	bl MemZero
	ldr r0, _0206698C ; =_020B0B2C
	mov r2, #0
	ldr r4, [r0, #0x14]
	mov r1, r2
_020668F8:
	add r0, r4, r2
	add r2, r2, #1
	strb r1, [r0, #0x4c]
	cmp r2, #0x20
	blt _020668F8
	ldr r0, _0206698C ; =_020B0B2C
	ldr r0, [r0, #0x14]
	str r5, [r0, #4]
	str r1, [r4, #8]
	str r1, [r4, #0xef0]
	bl sub_020686F4
	mov r2, #0
	str r2, [r4, #0x74]
	sub r1, r2, #1
	str r1, [r4, #0x78]
	cmp r0, #0
	bne _0206695C
	bl sub_020692B4
	ldr r0, _0206698C ; =_020B0B2C
	ldr r0, [r0, #0x14]
	bl MemFree
	ldr r1, _0206698C ; =_020B0B2C
	mov r0, #0
	str r0, [r1, #0x14]
	ldmia sp!, {r3, r4, r5, pc}
_0206695C:
	sub r0, r2, #2
	strb r0, [r4, #0x7d]
	bl sub_020692FC
	mvn r1, #1
	ldr r0, _0206698C ; =_020B0B2C
	strb r1, [r4, #0xd85]
	ldr r0, [r0, #0x14]
	mov r1, #0
	str r1, [r0]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02066988: .word 0x00000EF8
_0206698C: .word _020B0B2C
	arm_func_end sub_020668B4
