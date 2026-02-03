	arm_func_start sub_0206409C
sub_0206409C: ; 0x0206409C
	ldr r2, _020640B8 ; =_020B0B04
	mov r1, #0x60
	ldr r2, [r2]
	add r2, r2, #0x58
	smlabb r0, r0, r1, r2
	add r0, r0, #0x50
	bx lr
	.align 2, 0
_020640B8: .word _020B0B04
	arm_func_end sub_0206409C
