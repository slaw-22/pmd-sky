	arm_func_start sub_0205F93C
sub_0205F93C: ; 0x0205F93C
	ldrb r2, [r0, #2]
	ldrb r1, [r0, #1]
	mov r3, #0
	add r3, r3, r2, lsl #11
	add r3, r3, r1
	ldrb r2, [r0, #4]
	ldrb r1, [r0, #5]
	add r2, r3, r2
	add ip, r2, r1
	ldr r3, [r0, #8]
	ldrb r2, [r0, #0xc]
	add ip, ip, r3, lsl #8
	ldrsh r3, [r0, #0xe]
	add ip, ip, r2, lsl #13
	ldrb r1, [r0, #0x16]
	add ip, ip, r3, lsl #12
	ldrsh r2, [r0, #0x10]
	ldrsh r3, [r0, #0x12]
	cmp r1, #5
	add ip, ip, r2, lsl #16
	ldrsh r2, [r0, #0x14]
	add r3, ip, r3, lsl #4
	add r2, r3, r2, lsl #24
	add r2, r2, r1, lsl #2
	ldrneh r1, [r0, #0x18]
	addne r2, r2, r1, lsl #1
	ldrb r1, [r0, #0x1a]
	ldrh r0, [r0, #0x1c]
	add r1, r2, r1, lsl #21
	add r0, r1, r0, lsl #22
	bx lr
	arm_func_end sub_0205F93C
