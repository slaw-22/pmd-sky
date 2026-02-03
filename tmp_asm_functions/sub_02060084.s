	arm_func_start sub_02060084
sub_02060084: ; 0x02060084
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r2, r5
	mov r4, #0
	b _0206009C
_02060098:
	add r4, r4, #1
_0206009C:
	ldrb r0, [r2], #1
	cmp r0, #0
	bne _02060098
	cmp r1, #0
	blt _020600B8
	cmp r4, r1
	movgt r4, r1
_020600B8:
	bl Rand16Bit
	mov r1, r4
	bl _s32_div_f
	ldrb r0, [r5, r1]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02060084
