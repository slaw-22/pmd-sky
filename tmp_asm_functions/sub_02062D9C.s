	arm_func_start sub_02062D9C
sub_02062D9C: ; 0x02062D9C
	stmdb sp!, {r3, lr}
	bl sub_02062D5C
	and r0, r0, #0xff
	cmp r0, #0x10
	movhs r0, #0xf
	ldmia sp!, {r3, pc}
	arm_func_end sub_02062D9C
