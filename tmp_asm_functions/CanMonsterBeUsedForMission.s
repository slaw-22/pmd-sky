	arm_func_start CanMonsterBeUsedForMission
CanMonsterBeUsedForMission: ; 0x02062A68
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	bl FemaleToMaleForm
	mov r4, r0
	bl HasMonsterBeenAttackedInDungeons
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl GetBaseForm
	cmp r4, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	cmp r5, #0
	beq _02062AB8
	mov r0, r4
	bl IsMonsterMissionAllowed
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
_02062AB8:
	mov r0, r4
	bl IsMonsterMissionAllowedStory
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end CanMonsterBeUsedForMission
