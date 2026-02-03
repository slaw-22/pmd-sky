	arm_func_start sub_02064AB0
sub_02064AB0: ; 0x02064AB0
	stmdb sp!, {r4, lr}
	ldr r1, _02064AD8 ; =0x00000608
	mov r4, r0
	bl MemZero
	add r0, r4, #0x600
	mov r1, #1
	strh r1, [r0, #2]
	strb r1, [r4, #0x604]
	strh r1, [r0, #2]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02064AD8: .word 0x00000608
	arm_func_end sub_02064AB0
