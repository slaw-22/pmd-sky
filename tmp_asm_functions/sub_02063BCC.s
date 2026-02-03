	arm_func_start sub_02063BCC
sub_02063BCC: ; 0x02063BCC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, r1
	bl sub_02063BB8
	mov r4, r0
	cmp r5, #1
	beq _02063BFC
	cmp r5, #2
	beq _02063C60
	cmp r5, #3
	beq _02063CB4
	b _02063D18
_02063BFC:
	mov r2, r4
	mov r0, #0
	mov r1, #1
	bl sub_02009454
	mov r2, r4
	mov r0, #1
	mov r1, #2
	bl sub_02009454
	mov r0, #2
	mov r1, r0
	mov r2, r4
	bl sub_02009454
	mov r2, r4
	mov r0, #3
	mov r1, #2
	bl sub_02009454
	mov r0, #4
	mov r1, #2
	mov r2, r4
	bl sub_02009454
	mov r0, #0xff
	mov r1, #0
	mov r2, r4
	bl sub_020094C4
	b _02063DCC
_02063C60:
	mov r2, r4
	mov r0, #0
	mov r1, #2
	bl sub_02009454
	mov r2, r4
	mov r0, #1
	mov r1, #2
	bl sub_02009454
	mov r2, r4
	mov r0, #2
	mov r1, #1
	bl sub_02009454
	mov r2, r4
	mov r0, #3
	mov r1, #2
	bl sub_02009454
	mov r0, #4
	mov r1, #2
	mov r2, r4
	bl sub_02009454
	b _02063DCC
_02063CB4:
	mov r2, r4
	mov r0, #0
	mov r1, #2
	bl sub_02009454
	mov r0, #1
	mov r1, r0
	mov r2, r4
	bl sub_02009454
	mov r2, r4
	mov r0, #2
	mov r1, #1
	bl sub_02009454
	mov r2, r4
	mov r0, #3
	mov r1, #2
	bl sub_02009454
	mov r0, #4
	mov r1, #2
	mov r2, r4
	bl sub_02009454
	mov r0, #0xff
	mov r1, #0
	mov r2, r4
	bl sub_020094C4
	b _02063DCC
_02063D18:
	cmp r4, #0
	mov r2, r4
	mov r0, #0
	bne _02063D74
	mov r1, #1
	bl sub_02009454
	mov r2, r4
	mov r0, #1
	mov r1, #2
	bl sub_02009454
	mov r0, #2
	mov r1, r0
	mov r2, r4
	bl sub_02009454
	mov r2, r4
	mov r0, #3
	mov r1, #2
	bl sub_02009454
	mov r0, #4
	mov r1, #2
	mov r2, r4
	bl sub_02009454
	b _02063DBC
_02063D74:
	mov r1, #2
	bl sub_02009454
	mov r2, r4
	mov r0, #1
	mov r1, #2
	bl sub_02009454
	mov r0, #2
	mov r1, r0
	mov r2, r4
	bl sub_02009454
	mov r2, r4
	mov r0, #3
	mov r1, #2
	bl sub_02009454
	mov r0, #4
	mov r1, #2
	mov r2, r4
	bl sub_02009454
_02063DBC:
	mov r0, #0x40
	mov r1, r0
	mov r2, r4
	bl sub_020094C4
_02063DCC:
	ldr r0, _02063DE0 ; =_020B0B04
	ldr r0, [r0]
	add r0, r0, r4
	strb r5, [r0, #0x662]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02063DE0: .word _020B0B04
	arm_func_end sub_02063BCC
