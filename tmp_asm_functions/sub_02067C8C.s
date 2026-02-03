	arm_func_start sub_02067C8C
sub_02067C8C: ; 0x02067C8C
#if defined(EUROPE)
#define SUB_02067C8C_WORD_OFFSET 2
#elif defined(JAPAN)
#define SUB_02067C8C_WORD_OFFSET -0x3C2
#else
#define SUB_02067C8C_WORD_OFFSET 0
#endif
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x60
	ldr r0, _020682E0 ; =_020B0B2C
	ldr r6, [r0, #0x14]
	bl sub_02046BB4
	mov r0, #6
	bl PlaySeVolumeWrapper
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl GetAcceptedMission
	mov r4, r0
	ldrb r0, [r4, #4]
	bl DungeonSwapIdToIdx
	mov r5, r0
	add r0, sp, #8
	str r0, [sp]
	ldrb r0, [r4, #1]
	add r1, r4, #2
	add r2, sp, #4
	add r3, sp, #0xc
	bl sub_0206276C
	ldrb r1, [r4, #1]
	cmp r1, #0xe
	ldreqb r0, [r4, #2]
	cmpeq r0, #1
	bne _02067E70
	bl GetRank
	ldrb r1, [sp, #4]
	cmp r1, r0
	bhi _02067D3C
	bl GetScenarioBalance
	ldr r1, [sp, #0xc]
	cmp r1, r0
	bgt _02067D3C
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02067D7C
	mov r0, #0x16
	bl GetResolvedPerformanceProgressFlag
	cmp r0, #0
	bne _02067D7C
_02067D3C:
	bl sub_020692B4
	ldr r0, _020682E0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
	ldr r1, _020682E4 ; =0x0000381F
	mov r0, #0x1c
	mov r2, #0
	bl sub_02046BE8
	ldr r0, _020682E0 ; =_020B0B2C
	mov r2, #6
	ldr r1, [r0, #0x14]
	mov r0, #0
	str r2, [r1]
	b _020682D8
_02067D7C:
	mov r0, r5
	bl GetDungeonMode
	cmp r0, #3
	bne _02067DCC
	bl sub_020692B4
	ldr r0, _020682E0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
	ldr r1, _020682E8 ; =0x00003820
	mov r0, #0x1c
	mov r2, #0
	bl sub_02046BE8
	ldr r0, _020682E0 ; =_020B0B2C
	mov r2, #6
	ldr r1, [r0, #0x14]
	mov r0, #0
	str r2, [r1]
	b _020682D8
_02067DCC:
	ldrb r0, [r4, #4]
	mov r4, #0
	sub r0, r0, #0x49
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _02067E4C
_02067DE4: ; jump table
	b _02067E30 ; case 0
	b _02067E4C ; case 1
	b _02067E28 ; case 2
	b _02067E4C ; case 3
	b _02067E18 ; case 4
	b _02067E4C ; case 5
	b _02067E20 ; case 6
	b _02067E4C ; case 7
	b _02067E38 ; case 8
	b _02067E4C ; case 9
	b _02067E48 ; case 10
	b _02067E4C ; case 11
	b _02067E40 ; case 12
_02067E18:
	mov r4, #3
	b _02067E4C
_02067E20:
	mov r4, #4
	b _02067E4C
_02067E28:
	mov r4, #5
	b _02067E4C
_02067E30:
	mov r4, #6
	b _02067E4C
_02067E38:
	mov r4, #7
	b _02067E4C
_02067E40:
	mov r4, #8
	b _02067E4C
_02067E48:
	mov r4, #9
_02067E4C:
	ldr r0, [r6, #8]
	add r0, r6, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205F588
	bl sub_0205F5A8
	mov r0, r4
	b _020682D8
_02067E70:
	cmp r1, #3
	ldreqb r0, [r4, #2]
	cmpeq r0, #3
	bne _02067FE0
	ldrb r0, [r4, #4]
	bl sub_02063394
	cmp r0, #1
	bne _02067ED0
	bl sub_020692B4
	ldr r0, _020682E0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
#ifdef NORTH_AMERICA
	mov r0, #0x1c
	rsb r1, r0, #0x3840
#else
	ldr r1, _02068678 ; =0x00003826
	mov r0, #0x1c
#endif
	mov r2, #0
	bl sub_02046BE8
	ldr r0, _020682E0 ; =_020B0B2C
	mov r2, #6
	ldr r1, [r0, #0x14]
	mov r0, #0
	str r2, [r1]
	b _020682D8
_02067ED0:
	cmp r0, #0
	beq _02067F28
	add r0, sp, #0x10
	bl InitPreprocessorArgs
	ldrb r0, [r4, #4]
	str r0, [sp, #0x20]
	bl sub_020692B4
	ldr r0, _020682E0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
	ldr r1, _020682EC ; =0x00003825
	add r2, sp, #0x10
	mov r0, #0x1c
	bl sub_02046BE8
	ldr r0, _020682E0 ; =_020B0B2C
	mov r2, #6
	ldr r1, [r0, #0x14]
	mov r0, #0
	str r2, [r1]
	b _020682D8
_02067F28:
	mov r0, r5
	mov r1, #3
	bl sub_0204D018
	mov r0, #5
	strb r0, [r4]
	ldrb r0, [r4, #4]
	sub r0, r0, #0x57
	cmp r0, #0xb
	addls pc, pc, r0, lsl #2
	b _02067FE0
_02067F50: ; jump table
	b _02067F80 ; case 0
	b _02067F88 ; case 1
	b _02067F90 ; case 2
	b _02067F98 ; case 3
	b _02067FA0 ; case 4
	b _02067FA8 ; case 5
	b _02067FB0 ; case 6
	b _02067FB8 ; case 7
	b _02067FC0 ; case 8
	b _02067FC8 ; case 9
	b _02067FD0 ; case 10
	b _02067FD8 ; case 11
_02067F80:
	mov r0, #0xa
	b _020682D8
_02067F88:
	mov r0, #0xb
	b _020682D8
_02067F90:
	mov r0, #0xc
	b _020682D8
_02067F98:
	mov r0, #0xd
	b _020682D8
_02067FA0:
	mov r0, #0xe
	b _020682D8
_02067FA8:
	mov r0, #0xf
	b _020682D8
_02067FB0:
	mov r0, #0x10
	b _020682D8
_02067FB8:
	mov r0, #0x11
	b _020682D8
_02067FC0:
	mov r0, #0x12
	b _020682D8
_02067FC8:
	mov r0, #0x13
	b _020682D8
_02067FD0:
	mov r0, #0x14
	b _020682D8
_02067FD8:
	mov r0, #0x15
	b _020682D8
_02067FE0:
	ldrb r0, [r4, #1]
	cmp r0, #0xb
	bne _02068158
	ldrb r1, [r4, #2]
	cmp r1, #1
	blo _02068158
	cmp r1, #5
	bhi _02068158
	add r1, r4, #2
	mov r2, #0xff
	bl CheckAcceptedMissionByTypeAndDungeon
	cmp r0, #0
	beq _02068054
	bl sub_020692B4
	ldr r0, _020682E0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
	ldr r1, _020682F0 ; =0x00003821
	mov r0, #0x1c
	mov r2, #0
	bl sub_02046BE8
	ldr r0, _020682E0 ; =_020B0B2C
	mov r2, #6
	ldr r1, [r0, #0x14]
	mov r0, #0
	str r2, [r1]
	b _020682D8
_02068054:
	bl GetRank
	ldrb r1, [sp, #4]
	cmp r1, r0
	bhi _02068090
	bl GetScenarioBalance
	ldr r1, [sp, #0xc]
	cmp r1, r0
	bgt _02068090
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _020680D0
	mov r0, #0x16
	bl GetResolvedPerformanceProgressFlag
	cmp r0, #0
	bne _020680D0
_02068090:
	bl sub_020692B4
	ldr r0, _020682E0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
#ifdef EUROPE
	mov r0, #0x1c
	rsb r1, r0, #0x3840
#else
	ldr r1, _020682F4 ; =0x00003822
	mov r0, #0x1c
#endif
	mov r2, #0
	bl sub_02046BE8
	ldr r0, _020682E0 ; =_020B0B2C
	mov r2, #6
	ldr r1, [r0, #0x14]
	mov r0, #0
	str r2, [r1]
	b _020682D8
_020680D0:
	ldrb r0, [r4, #2]
	cmp r0, #5
	bne _02068158
	mov r0, #0
	bl IsSpecialEpisodeBeaten
	cmp r0, #0
	bne _0206812C
	bl sub_020692B4
	ldr r0, _020682E0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
	ldr r1, _020682F8 ; =0x00003823
	mov r0, #0x1c
	mov r2, #0
	bl sub_02046BE8
	ldr r0, _020682E0 ; =_020B0B2C
	mov r2, #6
	ldr r1, [r0, #0x14]
	mov r0, #0
	str r2, [r1]
	b _020682D8
_0206812C:
	mov r0, r5
	bl GetDungeonMode
	cmp r0, #3
	beq _02068158
	mov r0, r5
	mov r1, #3
	bl sub_0204D018
	mov r0, #5
	strb r0, [r4]
	mov r0, #0x16
	b _020682D8
_02068158:
	ldrb r1, [r4, #1]
	cmp r1, #6
	ldreqb r0, [r4, #2]
	cmpeq r0, #4
	bne _02068260
	ldrb r0, [r4, #4]
	bl sub_02063394
	mov r6, r0
	bl GetRank
	ldrb r1, [sp, #4]
	cmp r1, r0
	bhi _020681BC
	bl GetScenarioBalance
	ldr r1, [sp, #0xc]
	cmp r1, r0
	bgt _020681BC
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _020681B4
	mov r0, #0x16
	bl GetResolvedPerformanceProgressFlag
	cmp r0, #0
	beq _020681BC
_020681B4:
	cmp r6, #1
	bne _020681FC
_020681BC:
	bl sub_020692B4
	ldr r0, _020682E0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
#ifdef JAPAN
	mov r0, #0x1c
	rsb r1, r0, #0x3480
#else
	ldr r1, _020682FC ; =0x00003826
	mov r0, #0x1c
#endif
	mov r2, #0
	bl sub_02046BE8
	ldr r0, _020682E0 ; =_020B0B2C
	mov r2, #6
	ldr r1, [r0, #0x14]
	mov r0, #0
	str r2, [r1]
	b _020682D8
_020681FC:
	cmp r6, #0
	beq _02068244
	bl sub_020692B4
	ldr r0, _020682E0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
	ldr r1, _02068300 ; =0x00003827
	mov r0, #0x1c
	mov r2, #0
	bl sub_02046BE8
	ldr r0, _020682E0 ; =_020B0B2C
	mov r2, #6
	ldr r1, [r0, #0x14]
	mov r0, #0
	str r2, [r1]
	b _020682D8
_02068244:
	mov r2, #5
	mov r0, r5
	mov r1, #3
	strb r2, [r4]
	bl sub_0204D018
	mov r0, #0xe
	b _020682D8
_02068260:
	cmp r1, #0xc
	beq _020682B8
	ldrb r0, [r4, #4]
	bl CanDungeonBeUsedForMission
	cmp r0, #0
	bne _020682B8
	bl sub_020692B4
	ldr r0, _020682E0 ; =_020B0B2C
	ldr r0, [r0, #0x14]
	add r0, r0, #0x2e4
	add r0, r0, #0xc00
	bl sub_02047150
	ldr r1, _02068304 ; =0x00003828
	mov r0, #0x1c
	mov r2, #0
	bl sub_02046BE8
	ldr r0, _020682E0 ; =_020B0B2C
	mov r2, #6
	ldr r1, [r0, #0x14]
	mov r0, #0
	str r2, [r1]
	b _020682D8
_020682B8:
	mov r0, #5
	strb r0, [r4]
	bl sub_020686F4
	bl sub_0206937C
	ldr r1, _020682E0 ; =_020B0B2C
	mov r0, #0
	ldr r1, [r1, #0x14]
	str r0, [r1]
_020682D8:
	add sp, sp, #0x60
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_020682E0: .word _020B0B2C
_020682E4: .word 0x0000381F + SUB_02067C8C_WORD_OFFSET
_020682E8: .word 0x00003820 + SUB_02067C8C_WORD_OFFSET
#if defined(EUROPE)
_02068678: .word 0x00003826
#elif defined(JAPAN)
_02068678: .word 0x00003462
#endif
_020682EC: .word 0x00003825 + SUB_02067C8C_WORD_OFFSET
_020682F0: .word 0x00003821 + SUB_02067C8C_WORD_OFFSET
#ifndef EUROPE
_020682F4: .word 0x00003822 + SUB_02067C8C_WORD_OFFSET
#endif
_020682F8: .word 0x00003823 + SUB_02067C8C_WORD_OFFSET
#ifndef JAPAN
_020682FC: .word 0x00003826 + SUB_02067C8C_WORD_OFFSET
#endif
_02068300: .word 0x00003827 + SUB_02067C8C_WORD_OFFSET
_02068304: .word 0x00003828 + SUB_02067C8C_WORD_OFFSET
	arm_func_end sub_02067C8C
