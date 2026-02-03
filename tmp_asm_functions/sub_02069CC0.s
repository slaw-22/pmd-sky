	arm_func_start sub_02069CC0
sub_02069CC0: ; 0x02069CC0
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x68
	ldr r1, _02069D3C ; =_020B0B44
	mov r6, r0
	ldr r0, [r1]
	ldr r4, [r0, #4]
	ldrb r5, [r0, #0x10]
	mov r0, r4
	bl IsMissionTypeSpecialEpisode
	cmp r0, #0
	beq _02069CFC
	mov r0, r6
	mov r1, r4
	bl sub_02061C60
	b _02069D2C
_02069CFC:
	add r1, sp, #0
	mov r0, r4
	bl GenerateMissionDetailsStruct
	add r1, sp, #0x47
	add r2, sp, #0x48
	mov r0, r4
	mov r3, r5
	bl sub_02069958
	add r0, sp, #0
	mov r1, r6
	str r4, [sp, #0x5c]
	bl sub_02060FD8
_02069D2C:
	mov r0, r6
	bl UpdateWindow
	add sp, sp, #0x68
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02069D3C: .word _020B0B44
	arm_func_end sub_02069CC0
