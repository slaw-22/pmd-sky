	arm_func_start IsMonsterIllegalForMissions
IsMonsterIllegalForMissions: ; 0x02062B64
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl IsMonsterValid
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	ldr r0, _02062BB0 ; =0x00000217
	cmp r4, r0
	blt _02062B90
	cmp r4, #0x228
	ble _02062BA0
_02062B90:
	cmp r4, #0x180
	ldrne r0, _02062BB4 ; =0x00000117
	cmpne r4, r0
	bne _02062BA8
_02062BA0:
	mov r0, #1
	ldmia sp!, {r4, pc}
_02062BA8:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02062BB0: .word 0x00000217
_02062BB4: .word 0x00000117
	arm_func_end IsMonsterIllegalForMissions
