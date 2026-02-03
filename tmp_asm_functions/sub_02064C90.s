	arm_func_start sub_02064C90
sub_02064C90: ; 0x02064C90
	stmdb sp!, {r3, lr}
	ldr r3, [r1, #0xc]
	cmp r2, r3
	movhs r0, #0
	ldmhsia sp!, {r3, pc}
	ldr ip, [r1, #8]
	mov r3, #0x2c
	add ip, r1, ip
	mla r3, r2, r3, ip
	ldrsh r3, [r3, #0x18]
	mov r2, #0
	bl sub_02064C24
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end sub_02064C90
