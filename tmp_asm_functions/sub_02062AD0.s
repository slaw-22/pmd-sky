	arm_func_start sub_02062AD0
sub_02062AD0: ; 0x02062AD0
	stmdb sp!, {r3, lr}
	bl GetBaseForm
	bl FemaleToMaleForm
	bl IsMonsterMissionAllowedStory
	ldmia sp!, {r3, pc}
	arm_func_end sub_02062AD0
