	arm_func_start sub_0205EC78
sub_0205EC78: ; 0x0205EC78
	ldr r1, _0205EC90 ; =MISSION_DELIVER_LIST_PTR
	ldr ip, _0205EC94 ; =ClearMissionData
	ldr r1, [r1, #0x18]
	add r1, r1, #0x320
	add r0, r1, r0, lsl #5
	bx ip
	.align 2, 0
_0205EC90: .word MISSION_DELIVER_LIST_PTR
_0205EC94: .word ClearMissionData
	arm_func_end sub_0205EC78
