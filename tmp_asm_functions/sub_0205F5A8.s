	arm_func_start sub_0205F5A8
sub_0205F5A8: ; 0x0205F5A8
	ldr r1, _0205F5C0 ; =MISSION_DELIVER_LIST_PTR
	ldr ip, _0205F5C4 ; =sub_0205E48C
	ldr r1, [r1, #0x18]
	mov r0, #8
	add r1, r1, #0x100
	bx ip
	.align 2, 0
_0205F5C0: .word MISSION_DELIVER_LIST_PTR
_0205F5C4: .word sub_0205E48C
	arm_func_end sub_0205F5A8
