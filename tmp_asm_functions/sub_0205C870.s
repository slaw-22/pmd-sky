	arm_func_start sub_0205C870
sub_0205C870: ; 0x0205C870
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0205C8D8
_0205C87C: ; jump table
	b _0205C898 ; case 0
	b _0205C898 ; case 1
	b _0205C898 ; case 2
	b _0205C898 ; case 3
	b _0205C898 ; case 4
	b _0205C8B4 ; case 5
	b _0205C8BC ; case 6
_0205C898:
	ldrsh r1, [r1]
	ldrsh r0, [r2]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
_0205C8B4:
	mov r0, #1
	bx lr
_0205C8BC:
	ldrsh r1, [r1]
	ldrsh r0, [r2]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
_0205C8D8:
	mov r0, #0
	bx lr
	arm_func_end sub_0205C870
