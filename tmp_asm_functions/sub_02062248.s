	arm_func_start sub_02062248
sub_02062248: ; 0x02062248
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, #0
	mov r6, r1
	mov r5, r2
	bl RandIntSafe
	mov r2, r4
	b _02062280
_02062264:
	mov r1, r2, lsl #1
	ldrh r1, [r5, r1]
	add r4, r4, r1
	cmp r0, r4
	movlo r0, r2
	ldmloia sp!, {r4, r5, r6, pc}
	add r2, r2, #1
_02062280:
	cmp r2, r6
	blo _02062264
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_02062248
