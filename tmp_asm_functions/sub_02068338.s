	arm_func_start sub_02068338
sub_02068338: ; 0x02068338
	stmdb sp!, {r3, lr}
	ldr r0, _0206838C ; =_020B0B2C
	mov r1, #0
	ldr r0, [r0, #0x14]
	add r2, r0, #0xee0
	mov r0, r1
_02068350:
	strb r0, [r2, r1]
	add r1, r1, #1
	cmp r1, #4
	blt _02068350
	ldr r0, _0206838C ; =_020B0B2C
	mov r1, #0x98
	ldr r0, [r0, #0x14]
	add r0, r0, #0x248
	add r0, r0, #0xc00
	bl MemZero
	ldr r0, _0206838C ; =_020B0B2C
	ldr r1, [r0, #0x14]
	add r0, r1, #0xee0
	str r0, [r1, #0xea8]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0206838C: .word _020B0B2C
	arm_func_end sub_02068338
