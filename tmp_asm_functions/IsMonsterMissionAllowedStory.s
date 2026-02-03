	arm_func_start IsMonsterMissionAllowedStory
IsMonsterMissionAllowedStory: ; 0x02062AE4
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #9
	bl GetResolvedPerformanceProgressFlag
	cmp r0, #0
	bne _02062B58
	mov r2, #0
	ldr r0, _02062B60 ; =MISSION_BANNED_STORY_MONSTERS
	b _02062B18
_02062B08:
	cmp r4, r1
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	add r2, r2, #1
_02062B18:
	mov r1, r2, lsl #1
	ldrsh r1, [r0, r1]
	cmp r1, #0
	bne _02062B08
	bl GetHero
	ldrsh r0, [r0, #4]
	bl FemaleToMaleForm
	cmp r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	bl GetPartner
	ldrsh r0, [r0, #4]
	bl FemaleToMaleForm
	cmp r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
_02062B58:
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_02062B60: .word MISSION_BANNED_STORY_MONSTERS
	arm_func_end IsMonsterMissionAllowedStory
