	arm_func_start sub_0206096C
sub_0206096C: ; 0x0206096C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r2, _020609E0 ; =MISSION_VALIDATION_FUNCTION_LIST
	mov r8, r0
	mov r7, r1
	ldr r5, [r2, r8, lsl #2]
	mov r4, #0
	mov sb, #0x22
	ldr sl, _020609E4 ; =_020B0AD8
	b _020609BC
_02060990:
	mul r6, r4, sb
	ldr r0, [sl, #0x18]
	mov r1, r7
	add r0, r0, r6
	blx r5
	cmp r0, #0
	ldrne r0, _020609E4 ; =_020B0AD8
	ldrne r0, [r0, #0x18]
	addne r0, r0, r6
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	add r4, r4, #1
_020609BC:
	cmp r4, #0x258
	blt _02060990
	cmp r8, #3
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r1, r7
	mov r0, #1
	bl sub_0206096C
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_020609E0: .word MISSION_VALIDATION_FUNCTION_LIST
_020609E4: .word _020B0AD8
	arm_func_end sub_0206096C
