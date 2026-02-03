	arm_func_start CheckAcceptedMissionByTypeAndDungeon
CheckAcceptedMissionByTypeAndDungeon: ; 0x0205F4A4
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _0205F500 ; =MISSION_DELIVER_LIST_PTR
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, #0
_0205F4BC:
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl GetMissionByTypeAndDungeon
	cmp r0, #0
	movlt r0, #0
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r2, [r7, #0x18]
	mov r1, r0, lsl #0x18
	add r2, r2, #0x100
	mov r1, r1, asr #0x18
	ldrb r1, [r2, r1, lsl #5]
	add r0, r0, #1
	cmp r1, #5
	bne _0205F4BC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0205F500: .word MISSION_DELIVER_LIST_PTR
	arm_func_end CheckAcceptedMissionByTypeAndDungeon
