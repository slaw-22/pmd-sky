	arm_func_start sub_02069444
sub_02069444: ; 0x02069444
	stmdb sp!, {r3, lr}
	ldr r0, _02069558 ; =_020B0B2C
	ldr r2, [r0, #0x14]
	ldr r0, [r2, #4]
	sub r0, r0, #0xa
	cmp r0, #0xb
	addls pc, pc, r0, lsl #2
	b _02069550
_02069464: ; jump table
	b _02069494 ; case 0
	b _020694B0 ; case 1
	b _020694CC ; case 2
	b _020694E8 ; case 3
	b _02069504 ; case 4
	b _02069504 ; case 5
	b _02069504 ; case 6
	b _02069504 ; case 7
	b _02069550 ; case 8
	b _02069550 ; case 9
	b _02069520 ; case 10
	b _02069538 ; case 11
_02069494:
	ldr r0, [r2, #8]
	add r0, r2, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205E970
	ldmia sp!, {r3, pc}
_020694B0:
	ldr r0, [r2, #8]
	add r0, r2, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EAE8
	ldmia sp!, {r3, pc}
_020694CC:
	ldr r0, [r2, #8]
	add r0, r2, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EBD8
	ldmia sp!, {r3, pc}
_020694E8:
	ldr r0, [r2, #8]
	add r0, r2, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205EC38
	ldmia sp!, {r3, pc}
_02069504:
	ldr r0, [r2, #8]
	add r0, r2, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl GetAcceptedMission
	ldmia sp!, {r3, pc}
_02069520:
	ldr r0, [r2, #8]
	ldr r1, [r2, #0x74]
	add r0, r2, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	add r0, r1, r0, lsl #5
	ldmia sp!, {r3, pc}
_02069538:
	ldr r0, [r2, #8]
	ldr r1, [r2, #0x74]
	add r0, r2, r0, lsl #1
	ldrsh r0, [r0, #0xc]
	add r0, r1, r0, lsl #5
	ldmia sp!, {r3, pc}
_02069550:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02069558: .word _020B0B2C
	arm_func_end sub_02069444
