	arm_func_start sub_0205BA70
sub_0205BA70: ; 0x0205BA70
	ldr r1, _0205BAAC ; =_020B0A54
	mov r3, #0
	ldr ip, [r1]
	mov r1, #0xb0
	b _0205BA9C
_0205BA84:
	mul r2, r3, r1
	ldrb r2, [ip, r2]
	cmp r0, r2
	moveq r0, r3
	bxeq lr
	add r3, r3, #1
_0205BA9C:
	cmp r3, #0x20
	blt _0205BA84
	mvn r0, #0
	bx lr
	.align 2, 0
_0205BAAC: .word _020B0A54
	arm_func_end sub_0205BA70
