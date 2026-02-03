	arm_func_start sub_0205D008
sub_0205D008: ; 0x0205D008
	stmdb sp!, {r4, r5, r6, lr}
	movs r4, r3
	mov r6, r0
	mov r5, r2
	beq _0205D034
	cmp r5, #0
	bne _0205D034
	ldr r0, _0205D104 ; =_020A3A08
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_0205D034:
	ldr r0, _0205D108 ; =0x00000483
	cmp r5, r0
	blt _0205D050
	ldr r0, _0205D10C ; =_020A3A24
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_0205D050:
	mov r0, r5
	bl GetBaseForm
	cmp r5, r0
	beq _0205D074
	ldr r0, _0205D110 ; =_020A3A44
	mov r1, r5
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_0205D074:
	mov r0, r5
	bl IsMonsterIllegalForMissions
	cmp r0, #0
	beq _0205D098
	ldr r0, _0205D114 ; =_020A3A6C
	mov r1, r5
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_0205D098:
	cmp r4, #0
	beq _0205D0C4
	add r0, r6, #0xfe
	and r0, r0, #0xff
	cmp r0, #3
	bhi _0205D0C4
	mov r0, r5
	bl GetBodySize
	cmp r0, #1
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
_0205D0C4:
	cmp r4, #0
	cmpne r6, #0xa
	cmpne r6, #0xe
	cmpne r6, #0xb
	beq _0205D0FC
	mov r0, r5
	bl IsMonsterMissionAllowed
	cmp r0, #0
	bne _0205D0FC
	ldr r0, _0205D118 ; =_020A3AA0
	mov r1, r5
	bl Debug_Print0
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_0205D0FC:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0205D104: .word _020A3A08
_0205D108: .word 0x00000483
_0205D10C: .word _020A3A24
_0205D110: .word _020A3A44
_0205D114: .word _020A3A6C
_0205D118: .word _020A3AA0
	arm_func_end sub_0205D008
