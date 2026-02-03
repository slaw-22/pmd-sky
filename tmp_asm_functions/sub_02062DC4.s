	arm_func_start sub_02062DC4
sub_02062DC4: ; 0x02062DC4
	stmdb sp!, {r3, lr}
	bl sub_02062D5C
	ldr r1, _02062DD8 ; =MISSION_RANK_POINTS
	ldr r0, [r1, r0, lsl #2]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02062DD8: .word MISSION_RANK_POINTS
	arm_func_end sub_02062DC4
