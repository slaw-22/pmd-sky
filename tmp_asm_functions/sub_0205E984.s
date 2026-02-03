	arm_func_start sub_0205E984
sub_0205E984: ; 0x0205E984
	ldr r1, _0205E9A4 ; =MISSION_DELIVER_LIST_PTR
	ldr r1, [r1, #0x18]
	ldrb r0, [r1, r0, lsl #5]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_0205E9A4: .word MISSION_DELIVER_LIST_PTR
	arm_func_end sub_0205E984
