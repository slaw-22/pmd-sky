	arm_func_start sub_0205EB28
sub_0205EB28: ; 0x0205EB28
	ldrb r3, [r1, #4]
	ldrb r2, [r0, #4]
	mov ip, #1
	cmp r2, r3
	bhi _0205EB54
	bne _0205EB50
	ldrb r2, [r0, #5]
	ldrb r0, [r1, #5]
	cmp r2, r0
	bhi _0205EB54
_0205EB50:
	mov ip, #0
_0205EB54:
	and r0, ip, #0xff
	bx lr
	arm_func_end sub_0205EB28
