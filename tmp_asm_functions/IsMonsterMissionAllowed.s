	arm_func_start IsMonsterMissionAllowed
IsMonsterMissionAllowed: ; 0x02062A14
	stmdb sp!, {r4, lr}
	mov r4, #0
	bl GetBaseForm
	bl FemaleToMaleForm
	ldr r1, _02062A54 ; =MISSION_BANNED_MONSTERS
	b _02062A3C
_02062A2C:
	cmp r0, r2
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	add r4, r4, #1
_02062A3C:
	mov r2, r4, lsl #1
	ldrsh r2, [r1, r2]
	cmp r2, #0
	bne _02062A2C
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_02062A54: .word MISSION_BANNED_MONSTERS
	arm_func_end IsMonsterMissionAllowed
