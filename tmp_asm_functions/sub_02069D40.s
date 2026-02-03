	arm_func_start sub_02069D40
sub_02069D40: ; 0x02069D40
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0xc4
	mov r1, #8
	bl MemAlloc
	ldr r2, _02069D90 ; =_020B0B48
	mov r1, #0xc4
	str r0, [r2]
	bl MemZero
	ldr r0, _02069D90 ; =_020B0B48
	mov r2, #0
	ldr r1, [r0]
	str r2, [r1]
	ldr r1, [r0]
	strh r4, [r1, #0xc0]
	ldr r1, [r0]
	add r0, r1, #0x37
	bic r0, r0, #0x1f
	str r0, [r1, #0x14]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02069D90: .word _020B0B48
	arm_func_end sub_02069D40
