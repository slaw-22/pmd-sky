	arm_func_start sub_0206466C
sub_0206466C: ; 0x0206466C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #8
	mov r8, #0
	mov sb, r0
	add r5, sp, #0
	mov r4, r8
	mov r6, r8
_02064688:
	mov r7, r6
_0206468C:
	str r8, [sp, #4]
	str r7, [sp]
	ldr r0, [sb, #8]
	mov r1, r5
	mov r2, r4
	bl sub_0200B3FC
	add r7, r7, #1
	cmp r7, #0x40
	blt _0206468C
	add r8, r8, #1
	cmp r8, #0x20
	blt _02064688
	ldr r0, [sb, #8]
	bl sub_0200B330
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_0206466C
