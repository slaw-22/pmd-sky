	arm_func_start sub_0205FF80
sub_0205FF80: ; 0x0205FF80
	stmdb sp!, {r3, lr}
	cmp r0, #3
	mov r2, #0
	bne _0205FFA8
	cmp r1, #1
	moveq r2, #0xa5
	beq _02060070
	cmp r1, #2
	moveq r2, #0x6f
	b _02060070
_0205FFA8:
	cmp r0, #0xa
	bne _0205FFCC
	cmp r1, #6
	bne _02060070
	ldr r0, _02060078 ; =_020A18FC
	sub r1, r2, #1
	bl sub_02060084
	mov r2, r0
	b _02060070
_0205FFCC:
	cmp r0, #0xb
	bne _02060034
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	b _02060070
_0205FFE0: ; jump table
	b _0205FFF8 ; case 0
	b _0206000C ; case 1
	b _02060014 ; case 2
	b _0206001C ; case 3
	b _02060024 ; case 4
	b _0206002C ; case 5
_0205FFF8:
	ldr r0, _0206007C ; =_020A1904
	sub r1, r2, #1
	bl sub_02060084
	mov r2, r0
	b _02060070
_0206000C:
	mov r2, #0x91
	b _02060070
_02060014:
	mov r2, #0x92
	b _02060070
_0206001C:
	mov r2, #0x93
	b _02060070
_02060024:
	mov r2, #0x94
	b _02060070
_0206002C:
	mov r2, #0x95
	b _02060070
_02060034:
	cmp r0, #0xc
	bne _02060070
	mov r0, #9
	bl GetResolvedPerformanceProgressFlag
	cmp r0, #0
	bne _02060060
	ldr r0, _02060080 ; =_020A1958
	mov r1, #0xf
	bl sub_02060084
	mov r2, r0
	b _02060070
_02060060:
	ldr r0, _02060080 ; =_020A1958
	mvn r1, #0
	bl sub_02060084
	mov r2, r0
_02060070:
	mov r0, r2
	ldmia sp!, {r3, pc}
	.align 2, 0
_02060078: .word _020A18FC
_0206007C: .word _020A1904
_02060080: .word _020A1958
	arm_func_end sub_0205FF80
