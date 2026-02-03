	arm_func_start sub_0205C73C
sub_0205C73C: ; 0x0205C73C
	ldr r1, _0205C750 ; =_022B6F10
	ldr r0, _0205C754 ; =MISSION_DELIVER_LIST_PTR
	ldr ip, _0205C758 ; =sub_020600CC
	str r1, [r0, #0x18]
	bx ip
	.align 2, 0
_0205C750: .word _022B6F10
_0205C754: .word MISSION_DELIVER_LIST_PTR
_0205C758: .word sub_020600CC
	arm_func_end sub_0205C73C
