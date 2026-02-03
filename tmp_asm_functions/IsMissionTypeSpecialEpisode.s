	arm_func_start IsMissionTypeSpecialEpisode
IsMissionTypeSpecialEpisode: ; 0x0205E238
	ldrb r1, [r0, #1]
	cmp r1, #0xe
	ldreqb r0, [r0, #2]
	cmpeq r0, #2
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end IsMissionTypeSpecialEpisode
