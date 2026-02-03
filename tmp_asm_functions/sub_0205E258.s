	arm_func_start sub_0205E258
sub_0205E258: ; 0x0205E258
	ldrb r2, [r0, #1]
	mov r3, #1
	add r1, r2, #0xfe
	and r1, r1, #0xff
	cmp r1, #3
	bls _0205E280
	cmp r2, #0xa
	ldreqb r0, [r0, #2]
	cmpeq r0, #4
	movne r3, #0
_0205E280:
	and r0, r3, #0xff
	bx lr
	arm_func_end sub_0205E258
