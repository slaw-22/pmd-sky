	arm_func_start sub_02063504
sub_02063504: ; 0x02063504
	ldr r0, _02063518 ; =_020B0AD8
	ldr r0, [r0]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	.align 2, 0
_02063518: .word _020B0AD8
	arm_func_end sub_02063504
