	arm_func_start sub_0206395C
sub_0206395C: ; 0x0206395C
	stmdb sp!, {r3, lr}
	ldr r0, _020639AC ; =0x00000668
	mov r1, #0
	bl MemAlloc
	ldr r2, _020639B0 ; =_020B0B04
	ldr r1, _020639AC ; =0x00000668
	str r0, [r2]
	bl MemZero
	ldr r0, _020639B0 ; =_020B0B04
	mov r2, #0
	ldr r1, [r0]
	strb r2, [r1, #0x664]
	ldr r0, [r0]
	add r0, r0, #0x58
	bl sub_02064AB0
	ldr r0, _020639B0 ; =_020B0B04
	ldr r0, [r0]
	add r0, r0, #0x58
	bl sub_02064ADC
	ldmia sp!, {r3, pc}
	.align 2, 0
_020639AC: .word 0x00000668
_020639B0: .word _020B0B04
	arm_func_end sub_0206395C
