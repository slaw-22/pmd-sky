	arm_func_start sub_02063394
sub_02063394: ; 0x02063394
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl DungeonSwapIdToIdx
	mov r5, r0
	mov r4, #0
	ldr r1, _0206341C ; =MISSION_DUNGEON_UNLOCK_TABLE
	b _0206340C
_020633B0:
	ldrb r0, [r1, r4, lsl #1]
	cmp r6, r0
	bne _02063408
	bl GetScenarioBalance
	ldr r1, _02063420 ; =_020A3CAD
	ldrb r1, [r1, r4, lsl #1]
	cmp r1, r0
	movhi r0, #1
	ldmhiia sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl GetDungeonMode
	cmp r0, #0
	bne _020633F8
	ldr r0, _0206341C ; =MISSION_DUNGEON_UNLOCK_TABLE
	ldrb r0, [r0, r4, lsl #1]
	bl GetMaxReachedFloor
	cmp r0, #0
	beq _02063400
_020633F8:
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_02063400:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_02063408:
	add r4, r4, #1
_0206340C:
	cmp r4, #3
	blt _020633B0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0206341C: .word MISSION_DUNGEON_UNLOCK_TABLE
_02063420: .word _020A3CAD
	arm_func_end sub_02063394
