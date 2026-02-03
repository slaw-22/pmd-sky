	arm_func_start sub_02060274
sub_02060274: ; 0x02060274
	ldrb r3, [r0, #1]
	mov r2, #0
	cmp r3, #0xe
	addls pc, pc, r3, lsl #2
	b _02060634
_02060288: ; jump table
	b _020602C4 ; case 0
	b _020602DC ; case 1
	b _02060344 ; case 2
	b _02060388 ; case 3
	b _020603DC ; case 4
	b _02060404 ; case 5
	b _02060420 ; case 6
	b _02060480 ; case 7
	b _0206050C ; case 8
	b _02060494 ; case 9
	b _02060528 ; case 10
	b _0206058C ; case 11
	b _020605EC ; case 12
	b _02060634 ; case 13
	b _02060608 ; case 14
_020602C4:
	mov r0, #1
	strb r0, [r1, #0x44]
	strb r0, [r1, #0x45]
	mov r0, #3
	strb r0, [r1, #0x46]
	b _02060634
_020602DC:
	ldrb r0, [r0, #2]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02060338
_020602EC: ; jump table
	b _020602FC ; case 0
	b _02060310 ; case 1
	b _02060324 ; case 2
	b _02060324 ; case 3
_020602FC:
	mov r0, #4
	strb r0, [r1, #0x44]
	strb r0, [r1, #0x45]
	mov r2, #1
	b _02060338
_02060310:
	mov r0, #1
	strb r0, [r1, #0x44]
	strb r0, [r1, #0x45]
	mov r2, #5
	b _02060338
_02060324:
	mov r0, #1
	strb r0, [r1, #0x44]
	mov r0, #4
	strb r0, [r1, #0x45]
	mov r2, #5
_02060338:
	mov r0, #4
	strb r0, [r1, #0x46]
	b _02060634
_02060344:
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _0206036C
	cmp r0, #1
	moveq r0, #1
	streqb r0, [r1, #0x44]
	moveq r0, #4
	streqb r0, [r1, #0x45]
	moveq r2, #5
	b _0206037C
_0206036C:
	mov r0, #4
	strb r0, [r1, #0x44]
	strb r0, [r1, #0x45]
	mov r2, #1
_0206037C:
	mov r0, #5
	strb r0, [r1, #0x46]
	b _02060634
_02060388:
	ldrb r0, [r0, #2]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020603CC
_02060398: ; jump table
	b _020603A8 ; case 0
	b _020603BC ; case 1
	b _020603BC ; case 2
	b _020603BC ; case 3
_020603A8:
	mov r0, #1
	strb r0, [r1, #0x44]
	mov r0, #8
	strb r0, [r1, #0x45]
	b _020603CC
_020603BC:
	mov r0, #1
	strb r0, [r1, #0x44]
	mov r0, #7
	strb r0, [r1, #0x45]
_020603CC:
	mov r0, #6
	strb r0, [r1, #0x46]
	mov r2, #1
	b _02060634
_020603DC:
	ldrb r0, [r0, #2]
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r1, #0x44]
	moveq r0, #5
	streqb r0, [r1, #0x45]
	mov r0, #7
	moveq r2, #3
	strb r0, [r1, #0x46]
	b _02060634
_02060404:
	mov r0, #5
	strb r0, [r1, #0x44]
	mov r0, #7
	strb r0, [r1, #0x45]
	mov r0, #8
	strb r0, [r1, #0x46]
	b _02060634
_02060420:
	ldrb r0, [r0, #2]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02060474
_02060430: ; jump table
	b _02060444 ; case 0
	b _02060454 ; case 1
	b _02060444 ; case 2
	b _02060444 ; case 3
	b _02060468 ; case 4
_02060444:
	mov r0, #2
	strb r0, [r1, #0x44]
	strb r0, [r1, #0x45]
	b _02060474
_02060454:
	mov r0, #1
	strb r0, [r1, #0x44]
	mov r0, #2
	strb r0, [r1, #0x45]
	b _02060474
_02060468:
	mov r0, #1
	strb r0, [r1, #0x44]
	strb r0, [r1, #0x45]
_02060474:
	mov r2, #1
	strb r2, [r1, #0x46]
	b _02060634
_02060480:
	mov r0, #2
	strb r0, [r1, #0x44]
	strb r0, [r1, #0x45]
	strb r0, [r1, #0x46]
	b _02060634
_02060494:
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _020604B4
	cmp r0, #1
	beq _020604D0
	cmp r0, #2
	beq _020604EC
	b _02060504
_020604B4:
	mov r0, #1
	strb r0, [r1, #0x44]
	mov r0, #5
	strb r0, [r1, #0x45]
	mov r0, #0xa
	strb r0, [r1, #0x46]
	b _02060504
_020604D0:
	mov r0, #1
	strb r0, [r1, #0x44]
	mov r0, #6
	strb r0, [r1, #0x45]
	mov r0, #0xb
	strb r0, [r1, #0x46]
	b _02060504
_020604EC:
	mov r0, #1
	strb r0, [r1, #0x44]
	mov r0, #5
	strb r0, [r1, #0x45]
	mov r0, #0xb
	strb r0, [r1, #0x46]
_02060504:
	mov r2, #1
	b _02060634
_0206050C:
	mov r0, #1
	strb r0, [r1, #0x44]
	mov r0, #4
	strb r0, [r1, #0x45]
	mov r0, #0xc
	strb r0, [r1, #0x46]
	b _02060634
_02060528:
	ldrb r0, [r0, #2]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _02060580
_02060538: ; jump table
	b _02060558 ; case 0
	b _02060558 ; case 1
	b _02060558 ; case 2
	b _02060558 ; case 3
	b _02060558 ; case 4
	b _02060558 ; case 5
	b _0206056C ; case 6
	b _02060558 ; case 7
_02060558:
	mov r2, #4
	strb r2, [r1, #0x44]
	mov r0, #1
	strb r0, [r1, #0x45]
	b _02060580
_0206056C:
	mov r0, #4
	strb r0, [r1, #0x44]
	mov r0, #1
	strb r0, [r1, #0x45]
	mov r2, #6
_02060580:
	mov r0, #0xd
	strb r0, [r1, #0x46]
	b _02060634
_0206058C:
	ldrb r0, [r0, #2]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _020605E0
_0206059C: ; jump table
	b _020605B4 ; case 0
	b _020605CC ; case 1
	b _020605CC ; case 2
	b _020605CC ; case 3
	b _020605CC ; case 4
	b _020605CC ; case 5
_020605B4:
	mov r0, #3
	strb r0, [r1, #0x44]
	mov r0, #7
	strb r0, [r1, #0x45]
	mov r2, #6
	b _020605E0
_020605CC:
	mov r0, #3
	strb r0, [r1, #0x44]
	mov r0, #7
	strb r0, [r1, #0x45]
	mov r2, #4
_020605E0:
	mov r0, #0xe
	strb r0, [r1, #0x46]
	b _02060634
_020605EC:
	mov r0, #1
	strb r0, [r1, #0x44]
	strb r0, [r1, #0x45]
	mov r0, #0xf
	strb r0, [r1, #0x46]
	mov r2, #7
	b _02060634
_02060608:
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _02060630
	mov r0, #1
	strb r0, [r1, #0x44]
	strb r0, [r1, #0x45]
	mov r0, #9
	strb r0, [r1, #0x46]
	mov r0, #7
	strb r0, [r1, #0x1a]
_02060630:
	mov r2, #7
_02060634:
	mov r0, r2
	bx lr
	arm_func_end sub_02060274
