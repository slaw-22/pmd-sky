	arm_func_start sub_020646F0
sub_020646F0: ; 0x020646F0
	ldr r0, [r0, #4]
	mov ip, #0
	add r2, r0, r2
	b _0206474C
_02064700:
	ldr r0, [r1]
	add ip, ip, #1
	str r0, [r2]
	ldr r0, [r1, #4]
	str r0, [r2, #4]
	ldr r0, [r1, #8]
	str r0, [r2, #8]
	ldr r0, [r1, #0xc]
	str r0, [r2, #0xc]
	ldr r0, [r1, #0x10]
	str r0, [r2, #0x10]
	ldr r0, [r1, #0x14]
	str r0, [r2, #0x14]
	ldr r0, [r1, #0x18]
	str r0, [r2, #0x18]
	ldr r0, [r1, #0x1c]
	add r1, r1, #0x20
	str r0, [r2, #0x1c]
	add r2, r2, #0x20
_0206474C:
	cmp ip, r3
	bls _02064700
	bx lr
	arm_func_end sub_020646F0
