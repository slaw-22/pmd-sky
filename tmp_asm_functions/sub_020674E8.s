	arm_func_start sub_020674E8
sub_020674E8: ; 0x020674E8
	ldr r0, _02067520 ; =_020B0B2C
	mov ip, #0
	ldr r2, [r0, #0x14]
	mov r0, ip
	ldr r3, [r2, #0x6c]
	b _02067514
_02067500:
	add r1, r2, ip
	ldrb r1, [r1, #0x4c]
	add ip, ip, #1
	cmp r1, #0
	addne r0, r0, #1
_02067514:
	cmp ip, r3
	blt _02067500
	bx lr
	.align 2, 0
_02067520: .word _020B0B2C
	arm_func_end sub_020674E8
