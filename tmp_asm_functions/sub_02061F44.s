	arm_func_start sub_02061F44
sub_02061F44: ; 0x02061F44
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x6c
	mov r4, r2
	mov r5, r1
	mov r6, r0
	add r1, sp, #4
	mov r0, r4
	bl sub_02060274
	ldrb r2, [sp, #0x4a]
	ldrsh ip, [r4, #0x14]
	mov r0, r6
	cmp r2, #0xe
	ldreqsh r3, [r4, #0xe]
	mov r1, r5
	ldrnesh r3, [r4, #0x10]
	str ip, [sp]
	bl sub_02061DC8
	add sp, sp, #0x6c
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end sub_02061F44
