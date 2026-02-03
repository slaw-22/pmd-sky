	arm_func_start sub_02063E44
sub_02063E44: ; 0x02063E44
	stmdb sp!, {r3, lr}
	cmp r0, #2
	ldmeqia sp!, {r3, pc}
	ldr r1, _02063E64 ; =_020B0B04
	ldr r1, [r1]
	add r0, r1, r0, lsl #5
	bl sub_0206466C
	ldmia sp!, {r3, pc}
	.align 2, 0
_02063E64: .word _020B0B04
	arm_func_end sub_02063E44
