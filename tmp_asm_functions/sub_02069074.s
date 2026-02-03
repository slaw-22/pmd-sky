	arm_func_start sub_02069074
sub_02069074: ; 0x02069074
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl AlreadyHaveMission
	cmp r0, #0
	movne r0, #3
	strneb r0, [r4]
	bl CountJobListMissions
	cmp r0, #8
	ldrgeb r0, [r4]
	orrge r0, r0, #1
	strgeb r0, [r4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02069074
