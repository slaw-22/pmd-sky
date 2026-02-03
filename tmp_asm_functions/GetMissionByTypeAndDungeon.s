	arm_func_start GetMissionByTypeAndDungeon
GetMissionByTypeAndDungeon: ; 0x0205F3AC
	stmdb sp!, {r4, lr}
	ldr ip, _0205F460 ; =MISSION_DELIVER_LIST_PTR
	ldr r4, [ip, #0x18]
	add r4, r4, #0x100
	b _0205F450
_0205F3C0:
	mov ip, r0, lsl #0x18
	add lr, r4, ip, asr #19
	cmp r3, #0xff
	ldrneb ip, [lr, #4]
	cmpne ip, r3
	bne _0205F44C
	ldrb ip, [lr, #1]
	cmp ip, r1
	bne _0205F44C
	cmp ip, #0xc
	addls pc, pc, ip, lsl #2
	b _0205F44C
_0205F3F0: ; jump table
	b _0205F440 ; case 0
	b _0205F440 ; case 1
	b _0205F440 ; case 2
	b _0205F440 ; case 3
	b _0205F440 ; case 4
	b _0205F440 ; case 5
	b _0205F424 ; case 6
	b _0205F440 ; case 7
	b _0205F440 ; case 8
	b _0205F424 ; case 9
	b _0205F424 ; case 10
	b _0205F424 ; case 11
	b _0205F424 ; case 12
_0205F424:
	ldrb lr, [lr, #2]
	ldrb ip, [r2]
	cmp lr, ip
	bne _0205F44C
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	ldmia sp!, {r4, pc}
_0205F440:
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	ldmia sp!, {r4, pc}
_0205F44C:
	add r0, r0, #1
_0205F450:
	cmp r0, #8
	blt _0205F3C0
	mvn r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205F460: .word MISSION_DELIVER_LIST_PTR
	arm_func_end GetMissionByTypeAndDungeon
