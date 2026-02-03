	arm_func_start sub_02062548
sub_02062548: ; 0x02062548
	stmdb sp!, {r3, lr}
	ldr r0, _02062574 ; =_020B0AD8
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl MemFree
	ldr r0, _02062574 ; =_020B0AD8
	mov r1, #0
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02062574: .word _020B0AD8
	arm_func_end sub_02062548
