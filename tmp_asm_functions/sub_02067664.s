	arm_func_start sub_02067664
sub_02067664: ; 0x02067664
	stmdb sp!, {r3, lr}
	ldr r0, _020676A8 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
	bl sub_02069904
	bl sub_020692B4
	ldr r0, _020676A8 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	bl MemFree
	ldr r0, _020676A8 ; =_020B0B2C
	mov r1, #0
	str r1, [r0, #0x14]
	ldmia sp!, {r3, pc}
	.align 2, 0
_020676A8: .word _020B0B2C
	arm_func_end sub_02067664
