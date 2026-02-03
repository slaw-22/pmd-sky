	arm_func_start sub_0205B9C8
sub_0205B9C8: ; 0x0205B9C8
	ldr r1, _0205BA08 ; =_020B0A54
	cmp r0, #0
	ldr r3, [r1]
	mov r0, #0
	movne ip, #2
	moveq ip, r0
	mov r1, #0xb0
	b _0205B9FC
_0205B9E8:
	mul r2, ip, r1
	ldrb r2, [r3, r2]
	add ip, ip, #1
	cmp r2, #0
	addne r0, r0, #1
_0205B9FC:
	cmp ip, #0x20
	blt _0205B9E8
	bx lr
	.align 2, 0
_0205BA08: .word _020B0A54
	arm_func_end sub_0205B9C8
