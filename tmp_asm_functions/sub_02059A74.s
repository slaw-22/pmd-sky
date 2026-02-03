	arm_func_start sub_02059A74
sub_02059A74: ; 0x02059A74
	stmdb sp!, {r3, lr}
	sub sp, sp, #0x18
	mov r3, r0
	mov r2, r1
	add r0, sp, #8
	mov r1, r3
	bl sub_02050974
	add r0, sp, #8
	mov r1, #0
	bl sub_02059824
	add r0, sp, #8
	mov r1, #1
	bl sub_02059824
	add r0, sp, #8
	mov r1, #2
	bl sub_02059824
	add r0, sp, #8
	bl sub_020509BC
	ldr r1, _02059AE4 ; =_020A3498
	add r0, sp, #0
	ldr r2, [r1, #8]
	ldr r1, [r1, #4]
	str r2, [sp, #4]
	str r1, [sp]
	bl sub_020584F8
	ldr r0, [sp, #0x10]
	add sp, sp, #0x18
	ldmia sp!, {r3, pc}
	.align 2, 0
_02059AE4: .word _020A3498
	arm_func_end sub_02059A74
