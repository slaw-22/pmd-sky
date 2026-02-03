	arm_func_start sub_020635D8
sub_020635D8: ; 0x020635D8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	bl UnloadFile
	mov r0, r4
	mov r1, #0xc
	bl MemZero
	ldmia sp!, {r4, pc}
	arm_func_end sub_020635D8
