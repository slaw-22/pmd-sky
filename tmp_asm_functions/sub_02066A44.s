	arm_func_start sub_02066A44
sub_02066A44: ; 0x02066A44
	stmdb sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r6, [r0, #0x14]
	ldr r0, [r6]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _02067494
_02066A64: ; jump table
	b _02066A80 ; case 0
	b _02066B08 ; case 1
	b _02066DA4 ; case 2
	b _02066DAC ; case 3
	b _020672F4 ; case 4
	b _02067374 ; case 5
	b _02067474 ; case 6
_02066A80:
	bl sub_020691B8
	ldr r0, _020674A0 ; =_020B0B2C
	mov r2, #1
	ldr r1, [r0, #0x14]
	str r2, [r1]
	ldr r1, [r6, #0xee4]
	cmp r1, #0
	bne _02066AF4
	ldr r1, [r0, #0x14]
	ldr r0, [r1, #4]
	sub r0, r0, #0xa
	cmp r0, #3
	bhi _02066AC8
	add r0, r1, #0x2e4
	ldr r1, _020674A4 ; =_020A92A8
	ldr r2, _020674A8 ; =sub_020696E8
	add r0, r0, #0xc00
	bl sub_0204707C
_02066AC8:
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r1, [r0, #0x14]
	ldr r0, [r1, #4]
	cmp r0, #0xe
	bne _02067494
	add r0, r1, #0x2e4
	ldr r1, _020674A4 ; =_020A92A8
	ldr r2, _020674AC ; =sub_02069750
	add r0, r0, #0xc00
	bl sub_0204707C
	b _02067494
_02066AF4:
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047188
	b _02067494
_02066B08:
	ldrsb r0, [r6, #0x7d]
	bl sub_0202C748
	ldr r1, [r6, #0xef0]
	mov r4, r0
	cmp r1, #0
	strneb r4, [r1]
	ldrsb r0, [r6, #0x7d]
	bl IsCollectionMenuActive
	cmp r0, #0
	bne _02066D68
	ldrsb r0, [r6, #0x7d]
	bl sub_0202C75C
	movs r5, r0
	bpl _02066BAC
	mov r2, #0
	mov r1, r2
	b _02066B58
_02066B4C:
	add r0, r6, r2
	strb r1, [r0, #0x4c]
	add r2, r2, #1
_02066B58:
	ldr r0, [r6, #0x6c]
	cmp r2, r0
	blt _02066B4C
	mvn r0, #0
	str r0, [r6, #8]
	bl sub_020692B4
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #4]
	sub r0, r0, #0xa
	cmp r0, #3
	bhi _02066BA4
	bl sub_0205F5A8
	bl sub_0205F710
_02066BA4:
	mvn r0, #0
	b _02067498
_02066BAC:
	bl sub_020674E8
	cmp r0, #0
	beq _02066BE8
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #4]
	sub r0, r0, #0x12
	cmp r0, #1
	bhi _02066D68
	bl sub_020692B4
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #2
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02066D68
_02066BE8:
	ldr r3, [r6, #8]
	cmp r3, r5
	bne _02066D64
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r1, [r0, #0x14]
	ldr r2, [r1, #4]
	cmp r2, #0xe
	cmpne r2, #0xf
	cmpne r2, #0x11
	moveq r0, #2
	streq r0, [r1]
	beq _02066D68
	sub r1, r2, #0xa
	cmp r1, #3
	bhi _02066CF4
	bl CountJobListMissions
	cmp r0, #8
	bge _02066CEC
	ldr r1, _020674A0 ; =_020B0B2C
	mov r0, #0
	ldr r1, [r1, #0x14]
	ldr r1, [r1, #4]
	sub r1, r1, #0xa
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _02066CCC
_02066C50: ; jump table
	b _02066C60 ; case 0
	b _02066C7C ; case 1
	b _02066C98 ; case 2
	b _02066CB4 ; case 3
_02066C60:
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205E970
	b _02066CCC
_02066C7C:
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EAE8
	b _02066CCC
_02066C98:
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EBD8
	b _02066CCC
_02066CB4:
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EC38
_02066CCC:
	bl AddMissionToJobList
	bl sub_020686F4
	bl sub_0206937C
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047188
_02066CEC:
	bl sub_020691B8
	b _02066D68
_02066CF4:
	cmp r2, #0x10
	bne _02066D04
	bl sub_020691B8
	b _02066D68
_02066D04:
	sub r1, r2, #0x12
	cmp r1, #1
	bhi _02066D30
	add r1, r6, r3
	mov r2, #1
	strb r2, [r1, #0x4c]
	ldr r0, [r0, #0x14]
	mov r1, #2
	str r1, [r0]
	bl sub_020692B4
	b _02066D68
_02066D30:
	cmp r2, #9
	cmpne r2, #0x14
	cmpne r2, #4
	bne _02066D58
	bl sub_020692B4
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #2
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02066D68
_02066D58:
	bl sub_020692B4
	mov r0, #1
	b _02067498
_02066D64:
	bl sub_020691B8
_02066D68:
	bl sub_020698B8
	cmp r0, #0
	beq _02066D90
	cmp r4, #0
	blt _02066D90
	ldr r0, [r6, #8]
	cmp r0, r4
	beq _02066D90
	str r4, [r6, #8]
	bl sub_0206937C
_02066D90:
	ldr r0, [r6, #0xee4]
	cmp r0, #0
	beq _02067494
	bl sub_020470D0
	b _02067494
_02066DA4:
	bl sub_02067708
	b _02067494
_02066DAC:
	bl sub_02046B04
	bl sub_02068308
	ldr r1, [r6, #0xef4]
	mov r4, r0
	cmp r1, #0
	beq _02066DD0
	bl sub_02046BA0
	ldr r1, [r6, #0xef4]
	strb r0, [r1]
_02066DD0:
	cmp r4, #1
	bne _02066E00
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #4]
	cmp r0, #9
	bne _02066DF4
	bl sub_0206955C
	bl sub_02046D20
_02066DF4:
	bl sub_020692B4
	mov r0, #1
	b _02067498
_02066E00:
	cmp r4, #2
	bne _02066EDC
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #4]
	cmp r0, #0xa
	bne _02066E3C
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205E970
	bl AddMissionToJobList
	b _02066EC0
_02066E3C:
	cmp r0, #0xb
	bne _02066E64
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EAE8
	bl AddMissionToJobList
	b _02066EC0
_02066E64:
	cmp r0, #0xc
	bne _02066E8C
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EBD8
	bl AddMissionToJobList
	b _02066EC0
_02066E8C:
	cmp r0, #0xd
	bne _02066EB4
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EC38
	bl AddMissionToJobList
	b _02066EC0
_02066EB4:
	cmp r0, #0x14
	moveq r0, #1
	beq _02067498
_02066EC0:
	bl sub_020686F4
	bl sub_0206937C
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #0
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02067494
_02066EDC:
	cmp r4, #3
	bne _02066EF4
	bl sub_02067C8C
	cmp r0, #0
	beq _02067494
	b _02067498
_02066EF4:
	cmp r4, #4
	bne _02066F44
	bl sub_02046BB4
	mov r0, #6
	bl PlaySeVolumeWrapper
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl GetAcceptedMission
	mov r1, #4
	strb r1, [r0]
	bl sub_020686F4
	bl sub_0206937C
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #0
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02067494
_02066F44:
	cmp r4, #5
	bne _02067020
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #4]
	cmp r0, #0x11
	bne _02066F84
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205F588
	bl sub_0205F5A8
	mov r0, #1
	b _02067498
_02066F84:
	cmp r0, #0x12
	moveq r0, #1
	beq _02067498
	cmp r0, #0xe
	bne _02066FB4
	mov r0, #0
	bl PlaySeVolumeWrapper
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #4
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02067494
_02066FB4:
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205F588
	bl sub_0205F5A8
	bl CountJobListMissions
	cmp r0, #0
	bne _02066FFC
	bl sub_020692B4
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
	mvn r0, #0
	b _02067498
_02066FFC:
	bl sub_020686F4
	bl sub_0206937C
	ldr r0, _020674A0 ; =_020B0B2C
	mov r2, #0
	ldr r1, [r0, #0x14]
	mov r0, #1
	str r2, [r1]
	strb r0, [r6, #0xd84]
	b _02067494
_02067020:
	cmp r4, #6
	bne _020670F4
	ldr r3, [r6, #0x70]
	mov r1, #1
	add r0, r6, r3
	strb r1, [r0, #0x4c]
	add r2, r3, #1
	ldr r1, [r6, #0x6c]
	b _0206705C
_02067044:
	add r0, r6, r2
	ldrb r0, [r0, #0x4c]
	cmp r0, #0
	strne r2, [r6, #0x70]
	bne _02067064
	add r2, r2, #1
_0206705C:
	cmp r2, r1
	blt _02067044
_02067064:
	ldr r0, [r6, #0x70]
	cmp r0, r3
	bne _020670A0
	bl sub_020674E8
	cmp r0, #0
	bne _02067098
	bl sub_02046D20
	mov r1, #0
	ldr r0, _020674A0 ; =_020B0B2C
	str r1, [r6, #8]
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02067494
_02067098:
	mov r0, #2
	b _02067498
_020670A0:
	str r0, [r6, #8]
	bl sub_0206937C
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r1, _020674B0 ; =_020A937C
	ldrsb r3, [r0, #0xd]
	ldr r0, _020674B4 ; =_020B0B39
	ldr r2, _020674B8 ; =JOB_MENU_ITEMS_11
	ldr r1, [r1, r3, lsl #3]
	add r3, r6, #0x248
	str r1, [r6, #0xe48]
	str r0, [r6, #0xef4]
	mov r0, #0
	ldr r1, _020674BC ; =0x00003878
	str r2, [sp]
	str r1, [sp, #4]
	ldr r2, _020674C0 ; =0x00000233
	mov r1, r0
	add r3, r3, #0xc00
	str r0, [sp, #8]
	bl sub_02046A20
	b _02067494
_020670F4:
	sub r0, r4, #7
	cmp r0, #1
	bhi _02067494
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r1, [r0, #0x14]
	ldr r0, [r1, #4]
	cmp r0, #0x11
	bne _02067134
	bl sub_02046D20
	ldr r1, [r6, #8]
	ldr r0, _020674A0 ; =_020B0B2C
	str r1, [r6, #0xd88]
	ldr r0, [r0, #0x14]
	mov r1, #0
	str r1, [r0]
	b _02067494
_02067134:
	cmp r0, #0x13
	bne _02067210
	ldr r3, [r6, #0x70]
	mov r1, #0
	add r0, r6, r3
	strb r1, [r0, #0x4c]
	mov r2, r3
	ldr r1, [r6, #0x6c]
	b _02067170
_02067158:
	add r0, r6, r2
	ldrb r0, [r0, #0x4c]
	cmp r0, #0
	strne r2, [r6, #0x70]
	bne _02067178
	add r2, r2, #1
_02067170:
	cmp r2, r1
	blt _02067158
_02067178:
	ldr r0, [r6, #0x70]
	cmp r0, r3
	bne _020671BC
	bl sub_020674E8
	cmp r0, #0
	bne _020671B4
	bl sub_02046D20
	mov r0, #0
	str r0, [r6, #8]
	bl sub_0206937C
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #0
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02067494
_020671B4:
	mov r0, #2
	b _02067498
_020671BC:
	str r0, [r6, #8]
	bl sub_0206937C
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r1, _020674B0 ; =_020A937C
	ldrsb r3, [r0, #0xd]
	ldr r0, _020674B4 ; =_020B0B39
	ldr r2, _020674B8 ; =JOB_MENU_ITEMS_11
	ldr r1, [r1, r3, lsl #3]
	add r3, r6, #0x248
	str r1, [r6, #0xe48]
	str r0, [r6, #0xef4]
	mov r0, #0
	ldr r1, _020674BC ; =0x00003878
	str r2, [sp]
	str r1, [sp, #4]
	ldr r2, _020674C0 ; =0x00000233
	mov r1, r0
	add r3, r3, #0xc00
	str r0, [sp, #8]
	bl sub_02046A20
	b _02067494
_02067210:
	cmp r0, #9
	bne _02067234
	bl sub_0206955C
	bl sub_02046D20
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #0
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02067494
_02067234:
	cmp r0, #4
	bne _02067254
	bl sub_02046D20
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #0
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02067494
_02067254:
	cmp r0, #0x12
	bne _02067298
	mov r2, #0
	mov r1, r2
	b _02067274
_02067268:
	add r0, r6, r2
	strb r1, [r0, #0x4c]
	add r2, r2, #1
_02067274:
	ldr r0, [r6, #0x6c]
	cmp r2, r0
	blt _02067268
	bl sub_02046D20
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #0
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02067494
_02067298:
	cmp r0, #0x14
	bne _020672B8
	bl sub_02046D20
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #0
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02067494
_020672B8:
	cmp r0, #0xe
	bne _020672E8
	bl sub_02046BB4
	cmp r4, #7
	bne _020672D4
	mov r0, #0
	bl PlaySeVolumeWrapper
_020672D4:
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #0
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02067494
_020672E8:
	mov r0, #0
	str r0, [r1]
	b _02067494
_020672F4:
	mov r0, #0
	ldr r5, _020674C4 ; =_020A9268
	bl sub_02046D2C
	str r0, [r6, #0xee8]
	mov r0, #0
	bl sub_020474A0
	str r0, [r6, #0xeec]
	bl sub_020469BC
	bl sub_02068338
	ldr r0, _020674A0 ; =_020B0B2C
	add r3, r6, #0x248
	ldr r0, [r0, #0x14]
	mov r1, #0
	ldr r0, [r0, #4]
	ldr r2, _020674C0 ; =0x00000233
	cmp r0, #0xe
	moveq r0, #7
	streq r0, [r6, #0xe48]
	moveq r0, #0
	streq r0, [r6, #0xef4]
	ldreq r4, _020674C8 ; =JOB_MENU_ITEMS_4
	mov r0, r5
	str r4, [sp]
	str r1, [sp, #4]
	add r3, r3, #0xc00
	str r1, [sp, #8]
	bl sub_02046A20
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #5
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02067494
_02067374:
	bl sub_02046B04
	bl sub_02068308
	ldr r1, [r6, #0xef4]
	mov r4, r0
	cmp r1, #0
	beq _02067398
	bl sub_02046BA0
	ldr r1, [r6, #0xef4]
	strb r0, [r1]
_02067398:
	cmp r4, #5
	bne _02067430
	bl sub_020469E8
	ldr r0, [r6, #0xee8]
	bl sub_02046D2C
	ldr r0, [r6, #0xeec]
	bl sub_020474A0
	mov r0, #0
	str r0, [r6, #0xee8]
	str r0, [r6, #0xeec]
	bl sub_02046BB4
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205F588
	bl sub_0205F5A8
	bl CountJobListMissions
	cmp r0, #0
	bne _0206740C
	bl sub_020692B4
	ldr r0, _020674A0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
	mvn r0, #0
	b _02067498
_0206740C:
	bl sub_020686F4
	bl sub_0206937C
	ldr r0, _020674A0 ; =_020B0B2C
	mov r2, #0
	ldr r1, [r0, #0x14]
	mov r0, #1
	str r2, [r1]
	strb r0, [r6, #0xd84]
	b _02067494
_02067430:
	sub r0, r4, #7
	cmp r0, #1
	bhi _02067494
	bl sub_020469E8
	ldr r0, [r6, #0xee8]
	bl sub_02046D2C
	ldr r0, [r6, #0xeec]
	bl sub_020474A0
	mov r0, #0
	str r0, [r6, #0xee8]
	str r0, [r6, #0xeec]
	bl sub_02046BB4
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #0
	ldr r0, [r0, #0x14]
	str r1, [r0]
	b _02067494
_02067474:
	bl sub_02046C78
	cmp r0, #0
	beq _02067494
	bl sub_02046D20
	ldr r0, _020674A0 ; =_020B0B2C
	mov r1, #0
	ldr r0, [r0, #0x14]
	str r1, [r0]
_02067494:
	mov r0, #0
_02067498:
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	.align 2, 0
_020674A0: .word _020B0B2C
_020674A4: .word _020A92A8
_020674A8: .word sub_020696E8
_020674AC: .word sub_02069750
_020674B0: .word _020A937C
_020674B4: .word _020B0B39
_020674B8: .word JOB_MENU_ITEMS_11
#if defined(EUROPE)
_020674BC: .word 0x0000387A
#elif defined(JAPAN)
_020674BC: .word 0x000034B6
#else
_020674BC: .word 0x00003878
#endif
_020674C0: .word 0x00000233
_020674C4: .word _020A9268
_020674C8: .word JOB_MENU_ITEMS_4
	arm_func_end sub_02066A44
