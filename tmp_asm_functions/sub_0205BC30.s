	arm_func_start sub_0205BC30
sub_0205BC30: ; 0x0205BC30
	stmdb sp!, {r4, lr}
	mov r4, r1
	cmp r0, #0
	bne _0205BC58
	ldr r0, _0205BC90 ; =_020B0A54
	mov r1, #0
	ldr r0, [r0, #8]
	mov r2, #0x44
	bl MemsetSimple
	ldmia sp!, {r4, pc}
_0205BC58:
	ldr r2, _0205BC90 ; =_020B0A54
	mov r1, r0
	ldr r0, [r2, #8]
	bl sub_02055F04
	cmp r4, #0
	ldmneia sp!, {r4, pc}
	ldr r0, _0205BC90 ; =_020B0A54
	ldr r0, [r0, #8]
	ldrb r0, [r0, #2]
	bl sub_02051788
	ldr r1, _0205BC90 ; =_020B0A54
	ldr r1, [r1, #8]
	strb r0, [r1, #2]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205BC90: .word _020B0A54
	arm_func_end sub_0205BC30
