	arm_func_start sub_0205E954
sub_0205E954: ; 0x0205E954
	ldr r1, _0205E968 ; =MISSION_DELIVER_LIST_PTR
	ldr ip, _0205E96C ; =sub_0205E448
	mov r0, #8
	ldr r1, [r1, #0x18]
	bx ip
	.align 2, 0
_0205E968: .word MISSION_DELIVER_LIST_PTR
_0205E96C: .word sub_0205E448
	arm_func_end sub_0205E954
