	arm_func_start sub_020636A8
sub_020636A8: ; 0x020636A8
	ldr r1, [r0]
	cmp r1, #0
	beq _020636F0
	ldr r1, [r1]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	bx lr
_020636C4: ; jump table
	b _020636D8 ; case 0
	b _020636E4 ; case 1
	b _020636E4 ; case 2
	b _020636E4 ; case 3
	b _020636E4 ; case 4
_020636D8:
	mov r1, #0
	strb r1, [r0, #0x14]
	bx lr
_020636E4:
	mov r1, #1
	strb r1, [r0, #0x14]
	bx lr
_020636F0:
	ldr r1, [r0, #4]
	ldr r1, [r1]
	ldr r1, [r1]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	bx lr
_02063708: ; jump table
	b _0206371C ; case 0
	b _02063728 ; case 1
	b _02063728 ; case 2
	b _02063728 ; case 3
	b _02063728 ; case 4
_0206371C:
	mov r1, #0
	strb r1, [r0, #0x14]
	bx lr
_02063728:
	mov r1, #1
	strb r1, [r0, #0x14]
	bx lr
	arm_func_end sub_020636A8
