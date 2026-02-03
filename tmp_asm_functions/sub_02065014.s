	arm_func_start sub_02065014
sub_02065014: ; 0x02065014
	mvn r1, #0
	cmp r0, r1
	beq _02065044
	mov r1, #0xc
	smulbb r1, r0, r1
	ldr r0, _0206504C ; =EVENTS
	ldrsh r0, [r0, r1]
	cmp r0, #5
	cmpne r0, #6
	cmpne r0, #8
	moveq r0, #0
	bxeq lr
_02065044:
	mov r0, #1
	bx lr
	.align 2, 0
_0206504C: .word EVENTS
	arm_func_end sub_02065014
