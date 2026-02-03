	arm_func_start sub_02066510
sub_02066510: ; 0x02066510
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldr r0, _02066874 ; =_020B0B24
	ldr r1, [r0, #4]
	ldr r0, [r1]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02066868
_02066530: ; jump table
	b _02066544 ; case 0
	b _02066640 ; case 1
	b _02066700 ; case 2
	b _02066708 ; case 3
	b _02066724 ; case 4
_02066544:
	mov r2, #0
	add r1, r1, #0xa4
	mov r0, r2
_02066550:
	strb r0, [r1, r2]
	add r2, r2, #1
	cmp r2, #4
	blt _02066550
	ldr r0, _02066874 ; =_020B0B24
	mov r1, #0x98
	ldr r0, [r0, #4]
	add r0, r0, #0xc
	bl MemZero
	ldr r0, _02066874 ; =_020B0B24
	ldr r2, [r0, #4]
	add r1, r2, #0xa4
	str r1, [r2, #0x6c]
	ldr r0, [r0, #4]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _020665B4
	ldr r4, _02066878 ; =JOB_MENU_ITEMS_1
	bl sub_0205E954
	cmp r0, #0
	ldreq r0, _02066874 ; =_020B0B24
	moveq r1, #3
	ldreq r0, [r0, #4]
	streqb r1, [r0, #0xa4]
	b _020665D8
_020665B4:
	cmp r0, #1
	bne _020665D8
	ldr r4, _0206687C ; =JOB_MENU_ITEMS_2
	bl sub_0205EAC8
	cmp r0, #0
	ldreq r0, _02066874 ; =_020B0B24
	moveq r1, #3
	ldreq r0, [r0, #4]
	streqb r1, [r0, #0xa4]
_020665D8:
	bl CountJobListMissions
	cmp r0, #0
	ldreq r0, _02066874 ; =_020B0B24
	moveq r1, #3
	ldreq r0, [r0, #4]
	ldr r3, _02066874 ; =_020B0B24
	streqb r1, [r0, #0xa5]
	ldrsb r2, [r3]
	ldr ip, [r3, #4]
	mov r1, #0
	add r2, r4, r2, lsl #3
	ldr lr, [r2, #4]
	ldr r0, _02066880 ; =JOB_WINDOW_PARAMS_1
	str lr, [ip, #0xc]
	str r4, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r3, [r3, #4]
	ldr r2, _02066884 ; =0x00000233
	add r3, r3, #0xc
	bl sub_02046A20
	ldr r0, _02066874 ; =_020B0B24
	mov r1, #1
	ldr r0, [r0, #4]
	str r1, [r0]
	b _02066868
_02066640:
	bl sub_02046B04
	mov r4, r0
	mvn r1, #1
	cmp r4, r1
	moveq r4, #4
	beq _02066674
	sub r0, r1, #1
	cmp r4, r0
	moveq r4, #4
	beq _02066674
	add r0, r1, #1
	cmp r4, r0
	moveq r4, #0
_02066674:
	bl sub_02046BA0
	ldr r1, _02066874 ; =_020B0B24
	cmp r4, #1
	strb r0, [r1]
	bne _020666A4
	ldr r0, [r1, #4]
	mov r2, #0xa
	str r2, [r0, #4]
	ldr r0, [r1, #4]
	mov r1, #3
	str r1, [r0]
	b _02066868
_020666A4:
	cmp r4, #2
	bne _020666C8
	ldr r0, [r1, #4]
	mov r2, #0xb
	str r2, [r0, #4]
	ldr r0, [r1, #4]
	mov r1, #3
	str r1, [r0]
	b _02066868
_020666C8:
	cmp r4, #3
	bne _020666EC
	ldr r0, [r1, #4]
	mov r2, #0xe
	str r2, [r0, #4]
	ldr r0, [r1, #4]
	mov r1, #3
	str r1, [r0]
	b _02066868
_020666EC:
	cmp r4, #4
	ldreq r0, [r1, #4]
	moveq r1, #2
	streq r1, [r0]
	b _02066868
_02066700:
	mov r0, #1
	b _0206686C
_02066708:
	ldr r0, [r1, #4]
	bl sub_020668B4
	ldr r0, _02066874 ; =_020B0B24
	mov r1, #4
	ldr r0, [r0, #4]
	str r1, [r0]
	b _02066868
_02066724:
	bl sub_02066A44
	movs r4, r0
	beq _02066868
	bl sub_02067664
	add r0, r4, #1
	cmp r0, #0x17
	addls pc, pc, r0, lsl #2
	b _02066868
_02066744: ; jump table
	b _02066858 ; case 0
	b _02066868 ; case 1
	b _020667A4 ; case 2
	b _02066868 ; case 3
	b _020667B8 ; case 4
	b _020667C0 ; case 5
	b _020667C8 ; case 6
	b _020667D0 ; case 7
	b _020667D8 ; case 8
	b _020667E0 ; case 9
	b _020667E8 ; case 10
	b _020667F0 ; case 11
	b _020667F8 ; case 12
	b _02066800 ; case 13
	b _02066808 ; case 14
	b _02066810 ; case 15
	b _02066818 ; case 16
	b _02066820 ; case 17
	b _02066828 ; case 18
	b _02066830 ; case 19
	b _02066838 ; case 20
	b _02066840 ; case 21
	b _02066848 ; case 22
	b _02066850 ; case 23
_020667A4:
	ldr r0, _02066874 ; =_020B0B24
	mov r1, #0
	ldr r0, [r0, #4]
	str r1, [r0]
	b _02066868
_020667B8:
	mov r0, #2
	b _0206686C
_020667C0:
	mov r0, #3
	b _0206686C
_020667C8:
	mov r0, #4
	b _0206686C
_020667D0:
	mov r0, #5
	b _0206686C
_020667D8:
	mov r0, #6
	b _0206686C
_020667E0:
	mov r0, #7
	b _0206686C
_020667E8:
	mov r0, #8
	b _0206686C
_020667F0:
	mov r0, #9
	b _0206686C
_020667F8:
	mov r0, #0xa
	b _0206686C
_02066800:
	mov r0, #0xb
	b _0206686C
_02066808:
	mov r0, #0xc
	b _0206686C
_02066810:
	mov r0, #0xd
	b _0206686C
_02066818:
	mov r0, #0xe
	b _0206686C
_02066820:
	mov r0, #0xf
	b _0206686C
_02066828:
	mov r0, #0x10
	b _0206686C
_02066830:
	mov r0, #0x11
	b _0206686C
_02066838:
	mov r0, #0x12
	b _0206686C
_02066840:
	mov r0, #0x13
	b _0206686C
_02066848:
	mov r0, #0x14
	b _0206686C
_02066850:
	mov r0, #0x15
	b _0206686C
_02066858:
	ldr r0, _02066874 ; =_020B0B24
	mov r1, #0
	ldr r0, [r0, #4]
	str r1, [r0]
_02066868:
	mov r0, #0
_0206686C:
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_02066874: .word _020B0B24
_02066878: .word JOB_MENU_ITEMS_1
_0206687C: .word JOB_MENU_ITEMS_2
_02066880: .word JOB_WINDOW_PARAMS_1
_02066884: .word 0x00000233
	arm_func_end sub_02066510
