	arm_func_start sub_0205B77C
sub_0205B77C: ; 0x0205B77C
	ldr r2, _0205B790 ; =_020B0A54
	mov r1, #0xb0
	ldr r2, [r2]
	mla r0, r1, r0, r2
	bx lr
	.align 2, 0
_0205B790: .word _020B0A54
	arm_func_end sub_0205B77C
