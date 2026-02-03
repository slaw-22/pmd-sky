	arm_func_start sub_02063DE4
sub_02063DE4: ; 0x02063DE4
	stmdb sp!, {r3, lr}
	ldr r0, _02063E1C ; =_020B0B04
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, r0, #0x58
	bl sub_02064AFC
	ldr r0, _02063E1C ; =_020B0B04
	ldr r0, [r0]
	bl MemFree
	ldr r0, _02063E1C ; =_020B0B04
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02063E1C: .word _020B0B04
	arm_func_end sub_02063DE4
