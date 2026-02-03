	arm_func_start sub_0205C75C
sub_0205C75C: ; 0x0205C75C
	stmdb sp!, {r3, r4, r5, lr}
	ldr r4, _0205C850 ; =MISSION_DELIVER_LIST_PTR
	mov r5, #0
_0205C768:
	ldr r1, [r4, #0x18]
	mov r0, r5, lsl #0x18
	add r0, r1, r0, asr #19
	bl ClearMissionData
	add r5, r5, #1
	cmp r5, #8
	blt _0205C768
	ldr r4, _0205C850 ; =MISSION_DELIVER_LIST_PTR
	mov r5, #0
_0205C78C:
	ldr r1, [r4, #0x18]
	mov r0, r5, lsl #0x18
	add r1, r1, #0x100
	add r0, r1, r0, asr #19
	bl ClearMissionData
	add r5, r5, #1
	cmp r5, #8
	blt _0205C78C
	ldr r4, _0205C850 ; =MISSION_DELIVER_LIST_PTR
	mov r5, #0
_0205C7B4:
	ldr r1, [r4, #0x18]
	mov r0, r5, lsl #0x18
	add r1, r1, #0x200
	add r0, r1, r0, asr #19
	bl ClearMissionData
	add r5, r5, #1
	cmp r5, #8
	blt _0205C7B4
	ldr r0, _0205C850 ; =MISSION_DELIVER_LIST_PTR
	ldr r0, [r0, #0x18]
	add r0, r0, #0x300
	bl ClearMissionData
	ldr r0, _0205C850 ; =MISSION_DELIVER_LIST_PTR
	ldr r0, [r0, #0x18]
	add r0, r0, #0x320
	bl ClearMissionData
	mov r0, #0
	ldr r2, _0205C850 ; =MISSION_DELIVER_LIST_PTR
	mov lr, #0xff
	mov ip, #1
	mov r4, r0
	mov r1, #0xc
_0205C80C:
	mul r5, r0, r1
	ldr r3, [r2, #0x18]
	add r0, r0, #1
	add r3, r3, r5
	strb lr, [r3, #0x340]
	ldr r3, [r2, #0x18]
	cmp r0, #0x10
	add r3, r3, r5
	strb ip, [r3, #0x341]
	ldr r3, [r2, #0x18]
	add r3, r3, r5
	str r4, [r3, #0x344]
	ldr r3, [r2, #0x18]
	add r3, r3, r5
	str r4, [r3, #0x348]
	blt _0205C80C
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0205C850: .word MISSION_DELIVER_LIST_PTR
	arm_func_end sub_0205C75C
