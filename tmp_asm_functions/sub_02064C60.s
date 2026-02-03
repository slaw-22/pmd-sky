	arm_func_start sub_02064C60
sub_02064C60: ; 0x02064C60
	ldr r0, [r1, #0xc]
	cmp r2, r0
	movhs r0, #0
	bxhs lr
	ldr ip, [r1, #8]
	mov r0, #0x2c
	add r1, r1, ip
	mla r0, r2, r0, r1
	ldrsh r1, [r0, #8]
	mov r0, #1
	str r1, [r3]
	bx lr
	arm_func_end sub_02064C60
