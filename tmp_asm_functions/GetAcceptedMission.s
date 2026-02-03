	arm_func_start GetAcceptedMission
GetAcceptedMission: ; 0x0205F0D8
	ldr r1, _0205F0EC ; =MISSION_DELIVER_LIST_PTR
	ldr r1, [r1, #0x18]
	add r1, r1, #0x100
	add r0, r1, r0, lsl #5
	bx lr
	.align 2, 0
_0205F0EC: .word MISSION_DELIVER_LIST_PTR
	arm_func_end GetAcceptedMission
