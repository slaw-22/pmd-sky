	arm_func_start sub_02062814
sub_02062814: ; 0x02062814
	cmp r0, #0
	ldrne r1, _02062828 ; =MISSION_DUNGEON_UNLOCK_TABLE
	strne r1, [r0]
	mov r0, #3
	bx lr
	.align 2, 0
_02062828: .word MISSION_DUNGEON_UNLOCK_TABLE
	arm_func_end sub_02062814
