	arm_func_start ValidateLegendaryChallengeMission
ValidateLegendaryChallengeMission: ; 0x02060904
	stmdb sp!, {r3, lr}
	ldrb r3, [r0, #0x20]
	ldrb r2, [r1, #1]
	mov ip, #0
	mov lr, ip
	cmp r3, r2
	ldreqb r3, [r0, #0x21]
	ldreqb r2, [r1, #2]
	cmpeq r3, r2
	bne _02060948
	ldrh r2, [r0, #8]
	cmp r2, #0
	cmpne r2, #1
	moveq r2, #1
	movne r2, ip
	tst r2, #0xff
	movne lr, #1
_02060948:
	cmp lr, #0
	beq _02060964
	ldrh r2, [r0, #0xc]
	ldrb r0, [r1, #4]
	and r1, r2, #0xff
	cmp r1, r0
	moveq ip, #1
_02060964:
	and r0, ip, #0xff
	ldmia sp!, {r3, pc}
	arm_func_end ValidateLegendaryChallengeMission
