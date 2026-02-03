	arm_func_start sub_0205B7C8
sub_0205B7C8: ; 0x0205B7C8
	stmdb sp!, {r4, lr}
	mov r2, #0xb0
	mul r4, r0, r2
	ldr r0, _0205B808 ; =_020B0A54
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, r4
	bl MemsetSimple
	ldr r0, _0205B808 ; =_020B0A54
	mov r2, #0
	ldr r1, [r0]
	strb r2, [r1, r4]
	ldr r0, [r0]
	add r0, r0, r4
	strh r2, [r0, #0xa2]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205B808: .word _020B0A54
	arm_func_end sub_0205B7C8
