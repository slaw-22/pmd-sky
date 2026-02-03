	arm_func_start CanDungeonBeUsedForMission
CanDungeonBeUsedForMission: ; 0x02062BB8
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl DungeonSwapIdToIdx
	cmp r5, #0x36
	mov r4, r0
	cmpne r5, #0x68
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r5, #0x7b
	blo _02062BEC
	cmp r5, #0xa3
	movls r0, #0
	ldmlsia sp!, {r3, r4, r5, pc}
_02062BEC:
	cmp r5, #0xaf
	movhs r0, #0
	ldmhsia sp!, {r3, r4, r5, pc}
	add r0, r5, #0xe8
	and r0, r0, #0xff
	cmp r0, #1
	bhi _02062C1C
	mov r0, #9
	bl GetResolvedPerformanceProgressFlag
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
_02062C1C:
	mvn r0, #0
	cmp r4, r0
	beq _02062C44
	cmp r4, #0xb4
	bge _02062C44
	mov r0, r4
	bl GetDungeonMode
	cmp r0, #3
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
_02062C44:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end CanDungeonBeUsedForMission
