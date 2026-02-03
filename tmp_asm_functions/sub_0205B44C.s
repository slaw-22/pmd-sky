	arm_func_start sub_0205B44C
sub_0205B44C: ; 0x0205B44C
	ldr r1, _0205B468 ; =_022B5910
	ldr r0, _0205B46C ; =_020B0A54
	ldr r2, _0205B470 ; =_022B57C0
	str r1, [r0]
	ldr r1, _0205B474 ; =_022B580C
	stmib r0, {r1, r2}
	bx lr
	.align 2, 0
_0205B468: .word _022B5910
_0205B46C: .word _020B0A54
_0205B470: .word _022B57C0
_0205B474: .word _022B580C
	arm_func_end sub_0205B44C
