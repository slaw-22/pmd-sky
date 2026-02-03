	arm_func_start sub_0205B80C
sub_0205B80C: ; 0x0205B80C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, #0
	ldr r7, _0205B88C ; =_020B0A54
	mov r8, sl
	mov sb, #1
	mov r4, #0xb0
	mov r6, sl
	mov r5, #2
_0205B82C:
	mov r0, sl, lsl #0x18
	ldr r1, [r7]
	mov r0, r0, asr #0x18
	mla r2, r0, r4, r1
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0xc]
	cmp r0, r6
	cmpeq r1, r5
	movhs r0, sb
	movlo r0, r8
	tst r0, #0xff
	ldrneb r0, [r2, #0xad]
	cmpne r0, #0
	ldrneb r0, [r2]
	cmpne r0, #1
	cmpne r0, #7
	beq _0205B87C
	mov r0, sl, lsl #0x18
	mov r0, r0, asr #0x18
	bl sub_0205B7C8
_0205B87C:
	add sl, sl, #1
	cmp sl, #0x20
	blt _0205B82C
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0205B88C: .word _020B0A54
	arm_func_end sub_0205B80C
