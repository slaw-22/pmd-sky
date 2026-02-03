	arm_func_start sub_0205B690
sub_0205B690: ; 0x0205B690
	ldr r1, _0205B6C8 ; =_020B0A54
	mov r0, #2
	ldr r3, [r1]
	mov r1, #0xb0
	b _0205B6B8
_0205B6A4:
	mul r2, r0, r1
	ldrb r2, [r3, r2]
	cmp r2, #0
	bxeq lr
	add r0, r0, #1
_0205B6B8:
	cmp r0, #0x20
	blt _0205B6A4
	mvn r0, #0
	bx lr
	.align 2, 0
_0205B6C8: .word _020B0A54
	arm_func_end sub_0205B690
