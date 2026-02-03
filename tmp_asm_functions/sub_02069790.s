	arm_func_start sub_02069790
sub_02069790: ; 0x02069790
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x14
	mov r1, #8
	bl MemAlloc
	ldr r2, _020697F4 ; =_020B0B44
	mov r1, #0x14
	str r0, [r2]
	bl MemZero
	ldr r0, _020697F4 ; =_020B0B44
	mov ip, #0
	ldr r2, [r0]
	ldr r1, _020697F8 ; =JOB_WINDOW_PARAMS_2
	str r4, [r2]
	ldr r3, [r0]
	ldr r2, _020697FC ; =sub_02069AEC
	strh ip, [r3, #8]
	ldr r0, [r0]
	add r0, r0, #0xc
	bl sub_0204707C
	ldr r0, _020697F4 ; =_020B0B44
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x10]
	ldmia sp!, {r4, pc}
	.align 2, 0
_020697F4: .word _020B0B44
_020697F8: .word JOB_WINDOW_PARAMS_2
_020697FC: .word sub_02069AEC
	arm_func_end sub_02069790
