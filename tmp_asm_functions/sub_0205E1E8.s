	arm_func_start sub_0205E1E8
sub_0205E1E8: ; 0x0205E1E8
	stmdb sp!, {r3, lr}
	ldrb lr, [r0, #1]
	mov r3, #0
	mov ip, #1
	add r1, lr, #0xff
	and r2, r1, #0xff
	cmp r2, #0xd
	bhi _0205E214
	ldr r1, _0205E234 ; =0x00002383
	tst r1, ip, lsl r2
	movne ip, r3
_0205E214:
	cmp ip, #0
	beq _0205E22C
	cmp lr, #0xb
	ldreqb r0, [r0, #2]
	cmpeq r0, #0
	movne r3, #1
_0205E22C:
	and r0, r3, #0xff
	ldmia sp!, {r3, pc}
	.align 2, 0
_0205E234: .word 0x00002383
	arm_func_end sub_0205E1E8
