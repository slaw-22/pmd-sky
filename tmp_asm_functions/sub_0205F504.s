	arm_func_start sub_0205F504
sub_0205F504: ; 0x0205F504
	stmdb sp!, {r4, r5, r6, lr}
	ldr r5, _0205F580 ; =MISSION_DELIVER_LIST_PTR
	mov r4, #0
	ldr r0, [r5, #0x18]
	add r6, r0, #0x100
_0205F518:
	ldrb r0, [r6]
	cmp r0, #6
	cmpne r0, #7
	cmpne r0, #8
	bne _0205F540
	ldr r1, [r5, #0x18]
	mov r0, r4, lsl #0x18
	add r1, r1, #0x100
	add r0, r1, r0, asr #19
	bl ClearMissionData
_0205F540:
	add r4, r4, #1
	cmp r4, #8
	add r6, r6, #0x20
	blt _0205F518
	ldr r1, _0205F580 ; =MISSION_DELIVER_LIST_PTR
	mov r0, #8
	ldr r1, [r1, #0x18]
	add r1, r1, #0x100
	bl sub_0205E48C
	ldr r0, _0205F580 ; =MISSION_DELIVER_LIST_PTR
	ldr r2, _0205F584 ; =sub_0205F5C8
	ldr r1, [r0, #0x18]
	mov r0, #8
	add r1, r1, #0x100
	bl sub_0205E50C
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0205F580: .word MISSION_DELIVER_LIST_PTR
_0205F584: .word sub_0205F5C8
	arm_func_end sub_0205F504
