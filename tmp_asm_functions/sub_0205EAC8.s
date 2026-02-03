	arm_func_start sub_0205EAC8
sub_0205EAC8: ; 0x0205EAC8
	ldr r1, _0205EAE0 ; =MISSION_DELIVER_LIST_PTR
	ldr ip, _0205EAE4 ; =sub_0205E448
	ldr r1, [r1, #0x18]
	mov r0, #8
	add r1, r1, #0x200
	bx ip
	.align 2, 0
_0205EAE0: .word MISSION_DELIVER_LIST_PTR
_0205EAE4: .word sub_0205E448
	arm_func_end sub_0205EAC8
