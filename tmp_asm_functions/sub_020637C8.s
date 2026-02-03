	arm_func_start sub_020637C8
sub_020637C8: ; 0x020637C8
	stmdb sp!, {r4, lr}
	ldrb ip, [sp, #8]
	mov r4, r0
	mov r0, r4
	cmp ip, #0
	addne r3, r3, r2, lsl #8
	mov r3, r3, lsl #0x10
	mov r2, r1
	mov r1, r3, lsr #0x10
	bl sub_0200A29C
	mov r0, r4
	bl sub_0200A174
	ldmia sp!, {r4, pc}
	arm_func_end sub_020637C8
