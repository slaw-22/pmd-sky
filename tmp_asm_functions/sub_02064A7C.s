	arm_func_start sub_02064A7C
sub_02064A7C: ; 0x02064A7C
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r1
	ldr r1, [r0, #0x50]
	add r0, sp, #0
	bl HandleSir0TranslationVeneer
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	strb r0, [r4]
	ldr r0, [sp]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_02064A7C
