	arm_func_start sub_020637FC
sub_020637FC: ; 0x020637FC
	stmdb sp!, {r4, lr}
	ldrb ip, [sp, #8]
	mov r4, r0
	mov r0, r4
	cmp ip, #0
	addne r3, r3, r2, lsl #8
	mov r3, r3, lsl #0x10
	mov r2, r1
	mov r1, r3, lsr #0x10
	bl sub_0200A590
	mov r0, r4
	bl sub_0200A504
	ldmia sp!, {r4, pc}
	arm_func_end sub_020637FC
