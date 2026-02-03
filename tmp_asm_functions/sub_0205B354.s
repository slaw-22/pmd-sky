	arm_func_start sub_0205B354
sub_0205B354: ; 0x0205B354
	ldrb r1, [r0, #0x45]
	cmp r1, #0
	movne r0, #0
	bxne lr
	mov r2, #0
	b _0205B38C
_0205B36C:
	add r1, r0, r2
	ldrb r1, [r1, #0x18]
	cmp r1, #0x6f
	moveq r0, #1
	bxeq lr
	add r1, r2, #1
	mov r1, r1, lsl #0x10
	mov r2, r1, asr #0x10
_0205B38C:
	cmp r2, #2
	blt _0205B36C
	mov r0, #0
	bx lr
	arm_func_end sub_0205B354
