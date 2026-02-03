	arm_func_start sub_02068390
sub_02068390: ; 0x02068390
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r1
	cmp r0, #0x12
	mov r4, #0
	addls pc, pc, r0, lsl #2
	b _020686E4
_020683AC: ; jump table
	b _020683F8 ; case 0
	b _02068468 ; case 1
	b _020684A0 ; case 2
	b _02068510 ; case 3
	b _020684D8 ; case 4
	b _02068548 ; case 5
	b _02068430 ; case 6
	b _02068580 ; case 7
	b _020686E4 ; case 8
	b _020684A0 ; case 9
	b _020685B8 ; case 10
	b _020685E8 ; case 11
	b _02068618 ; case 12
	b _02068634 ; case 13
	b _02068650 ; case 14
	b _020686E4 ; case 15
	b _020686E4 ; case 16
	b _020686E4 ; case 17
	b _02068680 ; case 18
_020683F8:
	ldr r1, _020686F0 ; =_020B0A54
	mov ip, r4
	mov r0, #0xb0
_02068404:
	mul r2, ip, r0
	ldr r3, [r1]
	ldrb r2, [r3, r2]
	cmp r2, #0
	movne r2, r4, lsl #1
	strneh ip, [r5, r2]
	add ip, ip, #1
	addne r4, r4, #1
	cmp ip, #0x20
	blt _02068404
	b _020686E4
_02068430:
	ldr r1, _020686F0 ; =_020B0A54
	mov r6, r4
	mov r0, #0xb0
_0206843C:
	mul r2, r6, r0
	ldr r3, [r1]
	ldrb r2, [r3, r2]
	cmp r2, #6
	moveq r2, r4, lsl #1
	streqh r6, [r5, r2]
	add r6, r6, #1
	addeq r4, r4, #1
	cmp r6, #0x20
	blt _0206843C
	b _020686E4
_02068468:
	ldr r1, _020686F0 ; =_020B0A54
	mov r6, r4
	mov r0, #0xb0
_02068474:
	mul r2, r6, r0
	ldr r3, [r1]
	ldrb r2, [r3, r2]
	cmp r2, #1
	moveq r2, r4, lsl #1
	streqh r6, [r5, r2]
	add r6, r6, #1
	addeq r4, r4, #1
	cmp r6, #0x20
	blt _02068474
	b _020686E4
_020684A0:
	ldr r1, _020686F0 ; =_020B0A54
	mov r6, r4
	mov r0, #0xb0
_020684AC:
	mul r2, r6, r0
	ldr r3, [r1]
	ldrb r2, [r3, r2]
	cmp r2, #2
	moveq r2, r4, lsl #1
	streqh r6, [r5, r2]
	add r6, r6, #1
	addeq r4, r4, #1
	cmp r6, #0x20
	blt _020684AC
	b _020686E4
_020684D8:
	ldr r1, _020686F0 ; =_020B0A54
	mov r6, r4
	mov r0, #0xb0
_020684E4:
	mul r2, r6, r0
	ldr r3, [r1]
	ldrb r2, [r3, r2]
	cmp r2, #4
	moveq r2, r4, lsl #1
	streqh r6, [r5, r2]
	add r6, r6, #1
	addeq r4, r4, #1
	cmp r6, #0x20
	blt _020684E4
	b _020686E4
_02068510:
	ldr r1, _020686F0 ; =_020B0A54
	mov r6, r4
	mov r0, #0xb0
_0206851C:
	mul r2, r6, r0
	ldr r3, [r1]
	ldrb r2, [r3, r2]
	cmp r2, #3
	moveq r2, r4, lsl #1
	streqh r6, [r5, r2]
	add r6, r6, #1
	addeq r4, r4, #1
	cmp r6, #0x20
	blt _0206851C
	b _020686E4
_02068548:
	ldr r1, _020686F0 ; =_020B0A54
	mov r6, r4
	mov r0, #0xb0
_02068554:
	mul r2, r6, r0
	ldr r3, [r1]
	ldrb r2, [r3, r2]
	cmp r2, #5
	moveq r2, r4, lsl #1
	streqh r6, [r5, r2]
	add r6, r6, #1
	addeq r4, r4, #1
	cmp r6, #0x20
	blt _02068554
	b _020686E4
_02068580:
	ldr r1, _020686F0 ; =_020B0A54
	mov r6, r4
	mov r0, #0xb0
_0206858C:
	mul r2, r6, r0
	ldr r3, [r1]
	ldrb r2, [r3, r2]
	cmp r2, #7
	moveq r2, r4, lsl #1
	streqh r6, [r5, r2]
	add r6, r6, #1
	addeq r4, r4, #1
	cmp r6, #0x20
	blt _0206858C
	b _020686E4
_020685B8:
	mov r6, r4
_020685BC:
	mov r0, r6, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205E984
	cmp r0, #0
	moveq r0, r4, lsl #1
	streqh r6, [r5, r0]
	add r6, r6, #1
	addeq r4, r4, #1
	cmp r6, #8
	blt _020685BC
	b _020686E4
_020685E8:
	mov r6, r4
_020685EC:
	mov r0, r6, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EB00
	cmp r0, #0
	moveq r0, r4, lsl #1
	streqh r6, [r5, r0]
	add r6, r6, #1
	addeq r4, r4, #1
	cmp r6, #8
	blt _020685EC
	b _020686E4
_02068618:
	mov r0, r4
	bl sub_0205EBF0
	cmp r0, #0
	moveq r0, r4
	streqh r0, [r5]
	addeq r4, r4, #1
	b _020686E4
_02068634:
	mov r0, r4
	bl sub_0205EC50
	cmp r0, #0
	moveq r0, r4
	streqh r0, [r5]
	addeq r4, r4, #1
	b _020686E4
_02068650:
	mov r6, r4
_02068654:
	mov r0, r6, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205F0F0
	cmp r0, #0
	moveq r0, r4, lsl #1
	streqh r6, [r5, r0]
	add r6, r6, #1
	addeq r4, r4, #1
	cmp r6, #8
	blt _02068654
	b _020686E4
_02068680:
	sub r0, r4, #1
	strb r0, [sp]
	bl sub_0204E210
	cmp r0, #2
	bne _020686A8
	add r0, sp, #0
	bl sub_0204F1B4
	cmp r0, #0
	mvneq r0, #0
	streqb r0, [sp]
_020686A8:
	ldrsb ip, [sp]
	ldr r1, _020686F0 ; =_020B0A54
	mov lr, #2
	mov r0, #0xb0
_020686B8:
	cmp ip, lr
	mulne r2, lr, r0
	ldrne r3, [r1]
	ldrneb r2, [r3, r2]
	cmpne r2, #0
	movne r2, r4, lsl #1
	strneh lr, [r5, r2]
	add lr, lr, #1
	addne r4, r4, #1
	cmp lr, #0x20
	blt _020686B8
_020686E4:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_020686F0: .word _020B0A54
	arm_func_end sub_02068390
