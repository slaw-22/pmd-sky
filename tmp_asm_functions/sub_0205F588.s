	arm_func_start sub_0205F588
sub_0205F588: ; 0x0205F588
	ldr r1, _0205F5A0 ; =MISSION_DELIVER_LIST_PTR
	ldr ip, _0205F5A4 ; =ClearMissionData
	ldr r1, [r1, #0x18]
	add r1, r1, #0x100
	add r0, r1, r0, lsl #5
	bx ip
	.align 2, 0
_0205F5A0: .word MISSION_DELIVER_LIST_PTR
_0205F5A4: .word ClearMissionData
	arm_func_end sub_0205F588
