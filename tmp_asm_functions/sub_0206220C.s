	arm_func_start sub_0206220C
sub_0206220C: ; 0x0206220C
	stmdb sp!, {r3, lr}
	mov ip, r0
	mov r0, #0
	mov r2, r1
	mov r3, r0
	b _02062234
_02062224:
	mov r1, r3, lsl #1
	ldrh r1, [r2, r1]
	add r3, r3, #1
	add r0, r0, r1
_02062234:
	cmp r3, ip
	blo _02062224
	mov r1, ip
	bl sub_02062248
	ldmia sp!, {r3, pc}
	arm_func_end sub_0206220C
