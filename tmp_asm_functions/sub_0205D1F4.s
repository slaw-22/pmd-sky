	arm_func_start sub_0205D1F4
sub_0205D1F4: ; 0x0205D1F4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl IsMissionValid
	cmp r0, #0
	beq _0205D214
	ldrb r0, [r4]
	cmp r0, #9
	blo _0205D21C
_0205D214:
	mov r0, #0
	ldmia sp!, {r4, pc}
_0205D21C:
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end sub_0205D1F4
