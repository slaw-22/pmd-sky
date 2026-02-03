	arm_func_start sub_0205B584
sub_0205B584: ; 0x0205B584
	stmdb sp!, {r4, lr}
	ldr r1, _0205B5A4 ; =_022B57BC
	mov r4, r0
	ldr r0, [r1]
	str r0, [r4]
	bl sub_02048C3C
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205B5A4: .word _022B57BC
	arm_func_end sub_0205B584
