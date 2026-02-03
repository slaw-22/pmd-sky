	arm_func_start CreateJobSummary
CreateJobSummary: ; 0x02069800
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, #0x14
	mov r1, #8
	bl MemAlloc
	ldr r2, _02069864 ; =_020B0B44
	mov r1, #0x14
	str r0, [r2]
	bl MemZero
	ldr r0, _02069864 ; =_020B0B44
	mov ip, #0
	ldr r2, [r0]
	ldr r1, _02069868 ; =JOB_WINDOW_PARAMS_2
	str r5, [r2, #4]
	ldr r3, [r0]
	ldr r2, _0206986C ; =sub_02069CC0
	strh ip, [r3, #8]
	ldr r0, [r0]
	add r0, r0, #0xc
	bl sub_0204707C
	ldr r0, _02069864 ; =_020B0B44
	ldr r0, [r0]
	strb r4, [r0, #0x10]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02069864: .word _020B0B44
_02069868: .word JOB_WINDOW_PARAMS_2
_0206986C: .word sub_02069CC0
	arm_func_end CreateJobSummary
