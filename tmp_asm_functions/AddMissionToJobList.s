	arm_func_start AddMissionToJobList
AddMissionToJobList: ; 0x0205F0B8
	ldr r2, _0205F0D0 ; =MISSION_DELIVER_LIST_PTR
	ldr ip, _0205F0D4 ; =sub_0205E3F8
	ldr r2, [r2, #0x18]
	mov r1, #8
	add r2, r2, #0x100
	bx ip
	.align 2, 0
_0205F0D0: .word MISSION_DELIVER_LIST_PTR
_0205F0D4: .word sub_0205E3F8
	arm_func_end AddMissionToJobList
