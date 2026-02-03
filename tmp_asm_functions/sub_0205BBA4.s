	arm_func_start sub_0205BBA4
sub_0205BBA4: ; 0x0205BBA4
	ldr r1, _0205BBF8 ; =_020B0A54
	ldr r3, [r1]
	ldrb r1, [r3]
	cmp r1, #1
	bne _0205BBF0
	ldr r1, [r3, #0x10]
	ldr r2, [r3, #0xc]
	cmp r1, #0
	mov r1, #0
	cmpeq r2, #2
	movhs r1, #1
	tst r1, #0xff
	beq _0205BBF0
	cmp r0, #0
	addne r1, r3, #0xc
	ldmneia r1, {r2, r3}
	stmneia r0, {r2, r3}
	mov r0, #1
	bx lr
_0205BBF0:
	mov r0, #0
	bx lr
	.align 2, 0
_0205BBF8: .word _020B0A54
	arm_func_end sub_0205BBA4
