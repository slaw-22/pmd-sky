	arm_func_start sub_0205F2B8
sub_0205F2B8: ; 0x0205F2B8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #1]
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r4, pc}
_0205F2D0: ; jump table
	ldmia sp!, {r4, pc} ; case 0
	ldmia sp!, {r4, pc} ; case 1
	ldmia sp!, {r4, pc} ; case 2
	ldmia sp!, {r4, pc} ; case 3
	b _0205F360 ; case 4
	ldmia sp!, {r4, pc} ; case 5
	b _0205F304 ; case 6
	ldmia sp!, {r4, pc} ; case 7
	ldmia sp!, {r4, pc} ; case 8
	b _0205F388 ; case 9
	ldmia sp!, {r4, pc} ; case 10
	ldmia sp!, {r4, pc} ; case 11
	ldmia sp!, {r4, pc} ; case 12
_0205F304:
	ldrb r0, [r4, #2]
	cmp r0, #4
	ldrb r0, [r4]
	bne _0205F33C
	add r0, r0, #0xfb
	and r0, r0, #0xff
	cmp r0, #1
	ldmhiia sp!, {r4, pc}
	ldrsh r0, [r4, #0x14]
	bl RemoveFirstUnequippedItemOfType
	cmp r0, #0
	movne r0, #8
	strneb r0, [r4]
	ldmia sp!, {r4, pc}
_0205F33C:
	cmp r0, #5
	cmpne r0, #8
	ldmneia sp!, {r4, pc}
	ldrsh r0, [r4, #0x14]
	bl RemoveFirstUnequippedItemOfType
	cmp r0, #0
	movne r0, #8
	strneb r0, [r4]
	ldmia sp!, {r4, pc}
_0205F360:
	ldrb r0, [r4]
	cmp r0, #5
	cmpne r0, #8
	ldmneia sp!, {r4, pc}
	ldrsh r0, [r4, #0x14]
	bl IsItemInBag
	cmp r0, #0
	movne r0, #8
	strneb r0, [r4]
	ldmia sp!, {r4, pc}
_0205F388:
	ldrb r0, [r4]
	cmp r0, #8
	ldmneia sp!, {r4, pc}
	ldrsh r0, [r4, #0x14]
	bl RemoveFirstUnequippedItemOfType
	cmp r0, #0
	movne r0, #8
	strneb r0, [r4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_0205F2B8
