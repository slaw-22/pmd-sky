	arm_func_start sub_0205EC18
sub_0205EC18: ; 0x0205EC18
	ldr r1, _0205EC30 ; =MISSION_DELIVER_LIST_PTR
	ldr ip, _0205EC34 ; =ClearMissionData
	ldr r1, [r1, #0x18]
	add r1, r1, #0x300
	add r0, r1, r0, lsl #5
	bx ip
	.align 2, 0
_0205EC30: .word MISSION_DELIVER_LIST_PTR
_0205EC34: .word ClearMissionData
	arm_func_end sub_0205EC18
