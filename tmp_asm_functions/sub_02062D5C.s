	arm_func_start sub_02062D5C
sub_02062D5C: ; 0x02062D5C
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl sub_0204F7A8
	cmp r4, #2
	cmpne r4, #3
	cmpne r4, #4
	cmpne r4, #5
	beq _02062D8C
	add r1, r4, #0xf7
	and r1, r1, #0xff
	cmp r1, #1
	bhi _02062D90
_02062D8C:
	add r0, r0, #1
_02062D90:
	cmp r0, #0xf
	movgt r0, #0xf
	ldmia sp!, {r4, pc}
	arm_func_end sub_02062D5C
