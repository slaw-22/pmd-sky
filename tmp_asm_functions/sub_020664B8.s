	arm_func_start sub_020664B8
sub_020664B8: ; 0x020664B8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020676AC
	ldr r2, _0206650C ; =_020B0B24
	mov r3, #0
	mov r0, #0xa8
	mov r1, #8
	strb r3, [r2]
	bl MemAlloc
	ldr r2, _0206650C ; =_020B0B24
	mov r1, #0xa8
	str r0, [r2, #4]
	bl MemZero
	ldr r1, _0206650C ; =_020B0B24
	mov r2, #0
	ldr r3, [r1, #4]
	mov r0, #1
	str r4, [r3, #8]
	ldr r1, [r1, #4]
	str r2, [r1]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0206650C: .word _020B0B24
	arm_func_end sub_020664B8
