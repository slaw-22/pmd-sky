	arm_func_start sub_02064C24
sub_02064C24: ; 0x02064C24
	stmdb sp!, {r4, lr}
	mov lr, r1
	ldr ip, [lr, #0x10]
	ldr r1, [lr, #0x18]
	add ip, lr, ip
	mov r4, r0
	mla r0, r1, r3, ip
	ldr r1, [r4, #4]
	mov r3, #0
	add r1, r1, r2
	ldr r2, [lr, #0x14]
	bl sub_0201E050
	ldmia sp!, {r4, pc}
	arm_func_end sub_02064C24
