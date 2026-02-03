	arm_func_start sub_020698B8
sub_020698B8: ; 0x020698B8
	stmdb sp!, {r3, lr}
	ldr r0, _02069900 ; =_020B0B44
	ldr r0, [r0]
	cmp r0, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	beq _020698F8
	bl sub_020470D0
	ldr r0, _02069900 ; =_020B0B44
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bl sub_02047148
	mvn r1, #0
	cmp r0, r1
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
_020698F8:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02069900: .word _020B0B44
	arm_func_end sub_020698B8
