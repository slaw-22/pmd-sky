	arm_func_start sub_02065C84
sub_02065C84: ; 0x02065C84
	mov r2, #0
	ldr r1, _02065CAC ; =_022B7320
	mov r0, r2
_02065C90:
	strh r0, [r1]
	add r2, r2, #1
	strh r0, [r1, #2]
	cmp r2, #4
	add r1, r1, #4
	blt _02065C90
	bx lr
	.align 2, 0
_02065CAC: .word _022B7320
	arm_func_end sub_02065C84
