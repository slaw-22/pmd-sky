	arm_func_start sub_020676AC
sub_020676AC: ; 0x020676AC
	ldr r0, _02067704 ; =_020B0B2C
	mov r1, #0
	strb r1, [r0, #0x10]
	strb r1, [r0, #0xe]
	strb r1, [r0, #9]
	strb r1, [r0, #8]
	strb r1, [r0, #6]
	strb r1, [r0, #0xb]
	strb r1, [r0, #4]
	strb r1, [r0, #0xd]
	strb r1, [r0, #7]
	strb r1, [r0, #3]
	strb r1, [r0, #2]
	strb r1, [r0, #5]
	strb r1, [r0, #1]
	strb r1, [r0]
	strb r1, [r0, #0x13]
	strb r1, [r0, #0x12]
	strb r1, [r0, #0x11]
	strb r1, [r0, #0xa]
	strb r1, [r0, #0xf]
	bx lr
	.align 2, 0
_02067704: .word _020B0B2C
	arm_func_end sub_020676AC
