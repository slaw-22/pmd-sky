	arm_func_start sub_02062578
sub_02062578: ; 0x02062578
	stmdb sp!, {r4, lr}
	ldr r2, _02062768 ; =_020B0AD8
	mov r1, #0x258
	ldr r0, [r2, #0x20]
	ldr r2, [r2, #0x1c]
	bl sub_02062248
	movs r4, r0
	bmi _02062760
	ldr r0, _02062768 ; =_020B0AD8
	ldr r0, [r0, #0xc]
	add r0, r0, r4, lsl #4
	ldrh r0, [r0, #0xc]
	bl RandInt
	ldr r2, _02062768 ; =_020B0AD8
	mov r1, #0x22
	ldr r3, [r2, #0xc]
	ldr r2, [r2, #0x18]
	add r3, r3, r4, lsl #4
	ldrh r3, [r3, #0xe]
	add r0, r3, r0
	mla r4, r0, r1, r2
	ldrb r0, [r4, #0x20]
	cmp r0, #0xe
	addls pc, pc, r0, lsl #2
	b _02062750
_020625DC: ; jump table
	b _02062750 ; case 0
	b _02062750 ; case 1
	b _02062750 ; case 2
	b _02062660 ; case 3
	b _02062750 ; case 4
	b _02062750 ; case 5
	b _02062618 ; case 6
	b _02062750 ; case 7
	b _02062750 ; case 8
	b _02062750 ; case 9
	b _02062750 ; case 10
	b _02062684 ; case 11
	b _02062750 ; case 12
	b _02062750 ; case 13
	b _020626F4 ; case 14
_02062618:
	ldrb r0, [r4, #0x21]
	cmp r0, #2
	bne _02062638
	mov r0, #6
	bl GetResolvedPerformanceProgressFlag
	cmp r0, #0
	moveq r0, #0
	beq _02062754
_02062638:
	ldrb r0, [r4, #0x21]
	cmp r0, #4
	bne _02062750
	ldrh r0, [r4, #0xc]
	and r0, r0, #0xff
	bl sub_02063394
	cmp r0, #0
	beq _02062750
	mov r0, #0
	b _02062754
_02062660:
	ldrb r0, [r4, #0x21]
	cmp r0, #2
	bne _02062750
	mov r0, #9
	bl GetResolvedPerformanceProgressFlag
	cmp r0, #0
	bne _02062750
	mov r0, #0
	b _02062754
_02062684:
	ldrb r0, [r4, #0x21]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02062750
_02062694: ; jump table
	b _02062750 ; case 0
	b _020626C0 ; case 1
	b _020626C0 ; case 2
	b _020626C0 ; case 3
	b _020626C0 ; case 4
	b _020626AC ; case 5
_020626AC:
	mov r0, #0
	bl IsSpecialEpisodeBeaten
	cmp r0, #0
	moveq r0, #0
	beq _02062754
_020626C0:
	ldrsh r0, [r4, #0x12]
	bl GetFirstMatchingMemberIdx
	mvn r1, #0
	cmp r0, r1
	movne r0, #0
	bne _02062754
	ldrb r0, [r4, #0x20]
	add r1, r4, #0x21
	bl sub_0205E2B8
	cmp r0, #0
	beq _02062750
	mov r0, #0
	b _02062754
_020626F4:
	ldrb r0, [r4, #0x21]
	cmp r0, #1
	bne _02062750
	ldrh r0, [r4, #0xc]
	and r0, r0, #0xff
	bl DungeonSwapIdToIdx
	bl GetDungeonMode
	cmp r0, #3
	moveq r0, #0
	beq _02062754
	ldrb r0, [r4, #0x20]
	add r1, r4, #0x21
	bl sub_0205E2B8
	cmp r0, #0
	beq _02062750
	ldrh r0, [r4, #0xc]
	mvn r1, #0
	mov r2, #0
	and r0, r0, #0xff
	bl sub_0205E090
	cmp r0, #0
	movne r0, #0
	bne _02062754
_02062750:
	mov r0, #1
_02062754:
	cmp r0, #0
	movne r0, r4
	ldmneia sp!, {r4, pc}
_02062760:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02062768: .word _020B0AD8
	arm_func_end sub_02062578
