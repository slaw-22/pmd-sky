	arm_func_start sub_02069660
sub_02069660: ; 0x02069660
	stmdb sp!, {r3, r4, r5, lr}
	ldr r3, _020696E4 ; =_020B0B2C
	mov r5, r0
	ldr r0, [r3, #0x14]
	add r0, r0, r1
	ldrb r0, [r0, #0x4c]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	str r0, [r2]
	mov r0, #0x68
	mul r4, r1, r0
	ldr r0, _020696E4 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, r4
	ldr r0, [r0, #0xe0]
	cmp r0, #0
	beq _020696C4
	bl IsMissionTypeSpecialEpisode
	cmp r0, #0
	beq _020696C4
	mov r0, r5
	bl sub_02060E24
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
_020696C4:
	ldr r1, _020696E4 ; =_020B0B2C
	mov r0, r5
	ldr r1, [r1, #0x14]
	add r1, r1, #0x84
	add r1, r1, r4
	bl sub_02060AFC
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_020696E4: .word _020B0B2C
	arm_func_end sub_02069660
