	arm_func_start sub_02064ADC
sub_02064ADC: ; 0x02064ADC
	stmdb sp!, {r4, lr}
	mov r1, #0x600
	mov r4, r0
	bl MemZero
	add r0, r4, #0x600
	mov r1, #0x10
	strh r1, [r0]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02064ADC
