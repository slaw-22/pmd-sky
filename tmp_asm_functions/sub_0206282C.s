	arm_func_start sub_0206282C
sub_0206282C: ; 0x0206282C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r5, #0
	ldr r4, _020628FC ; =MISSION_DUNGEON_UNLOCK_TABLE
	mov sb, r0
	mov r8, r5
_02062840:
	ldrb r0, [r4, r8, lsl #1]
	bl DungeonSwapIdToIdx
	bl GetDungeonMode
	cmp r0, #0
	bne _020628E8
	bl GetScenarioBalance
	add r1, r4, r8, lsl #1
	ldrb r1, [r1, #1]
	mov r2, r8, lsl #1
	cmp r1, r0
	bhi _020628E8
	ldrb r0, [r4, r2]
	bl GetMaxReachedFloor
	cmp r0, #0
	bne _020628E8
	ldrb r0, [r4, r8, lsl #1]
	cmp r0, #0x5b
	beq _020628E8
	mov r7, #1
	mov r6, #0
	b _020628C8
_02062894:
	mov r0, r6, lsl #0x18
	mov r0, r0, asr #0x18
	bl GetAcceptedMission
	ldrb r1, [r0, #1]
	cmp r1, #3
	ldreqb r1, [r0, #2]
	cmpeq r1, #3
	ldreqb r1, [r0, #4]
	ldreqb r0, [r4, r8, lsl #1]
	cmpeq r1, r0
	moveq r7, #0
	beq _020628D0
	add r6, r6, #1
_020628C8:
	cmp r6, #8
	blt _02062894
_020628D0:
	cmp r7, #0
	beq _020628E8
	cmp sb, #0
	ldrneb r0, [r4, r8, lsl #1]
	strneb r0, [sb, r5]
	add r5, r5, #1
_020628E8:
	add r8, r8, #1
	cmp r8, #3
	blt _02062840
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_020628FC: .word MISSION_DUNGEON_UNLOCK_TABLE
	arm_func_end sub_0206282C
