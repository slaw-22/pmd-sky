	arm_func_start sub_02065B14
sub_02065B14: ; 0x02065B14
	mvn r1, #0
	cmp r0, r1
	moveq r0, #0
	bxeq lr
	ldr r2, _02065B38 ; =ENTITIES
	mov r1, #0xc
	smlabb r0, r0, r1, r2
	ldrh r0, [r0, #8]
	bx lr
	.align 2, 0
_02065B38: .word ENTITIES
	arm_func_end sub_02065B14
