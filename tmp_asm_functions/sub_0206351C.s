	arm_func_start sub_0206351C
sub_0206351C: ; 0x0206351C
	mov ip, #0
	strh ip, [r0]
	str ip, [r0, #8]
	str ip, [r0, #0xc]
	mov r3, ip
	mov r1, #6
_02063534:
	mla r2, ip, r1, r0
	add ip, ip, #1
	strh r3, [r2, #0x14]
	cmp ip, #3
	blt _02063534
	strb r3, [r0, #0x22]
	strh r3, [r0, #0x24]
	str r3, [r0, #0x28]
	mov r1, #1
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_0206351C
