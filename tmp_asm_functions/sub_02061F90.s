	arm_func_start sub_02061F90
sub_02061F90: ; 0x02061F90
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x68
	mov r4, r2
	mov r5, r1
	mov r6, r0
	add r1, sp, #0
	mov r0, r4
	bl sub_02060274
	add ip, r4, #4
	mov r3, #0
	add r0, sp, #0
	mov r1, r6
	mov r2, r5
	str ip, [sp, #8]
	str r3, [sp, #0x64]
	str r4, [sp, #0x5c]
	bl sub_02061FDC
	add sp, sp, #0x68
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_02061F90
