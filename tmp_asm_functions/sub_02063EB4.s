	arm_func_start sub_02063EB4
sub_02063EB4: ; 0x02063EB4
	stmdb sp!, {r3, lr}
	ldr r3, _02063EDC ; =_020B0B04
	mov ip, r0
	ldr r0, [r3]
	mov r3, r1
	add r0, r0, r2, lsl #5
	mov r1, ip
	mov r2, r3
	bl sub_02064758
	ldmia sp!, {r3, pc}
	.align 2, 0
_02063EDC: .word _020B0B04
	arm_func_end sub_02063EB4
