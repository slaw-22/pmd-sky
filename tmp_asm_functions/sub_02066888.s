	arm_func_start sub_02066888
sub_02066888: ; 0x02066888
	stmdb sp!, {r3, lr}
	ldr r0, _020668B0 ; =_020B0B24
	ldr r0, [r0, #4]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl MemFree
	ldr r0, _020668B0 ; =_020B0B24
	mov r1, #0
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	.align 2, 0
_020668B0: .word _020B0B24
	arm_func_end sub_02066888
