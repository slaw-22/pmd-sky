	arm_func_start sub_0206901C
sub_0206901C: ; 0x0206901C
	stmdb sp!, {r3, lr}
	ldr r0, _02069070 ; =_020B0B2C
	mov r1, #0
	ldr r0, [r0, #0x14]
	add r2, r0, #0xe20
	mov r0, r1
_02069034:
	strb r0, [r2, r1]
	add r1, r1, #1
	cmp r1, #0x20
	blt _02069034
	ldr r0, _02069070 ; =_020B0B2C
	mov r1, #0x98
	ldr r0, [r0, #0x14]
	add r0, r0, #0x188
	add r0, r0, #0xc00
	bl MemZero
	ldr r0, _02069070 ; =_020B0B2C
	ldr r1, [r0, #0x14]
	add r0, r1, #0xe20
	str r0, [r1, #0xde8]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02069070: .word _020B0B2C
	arm_func_end sub_0206901C
