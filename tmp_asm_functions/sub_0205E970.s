	arm_func_start sub_0205E970
sub_0205E970: ; 0x0205E970
	ldr r1, _0205E980 ; =MISSION_DELIVER_LIST_PTR
	ldr r1, [r1, #0x18]
	add r0, r1, r0, lsl #5
	bx lr
	.align 2, 0
_0205E980: .word MISSION_DELIVER_LIST_PTR
	arm_func_end sub_0205E970
