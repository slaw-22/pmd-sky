	arm_func_start sub_0205E448
sub_0205E448: ; 0x0205E448
	stmdb sp!, {r4, lr}
	mov lr, #0
	mov r4, lr
	mov r2, lr
	mov r3, #1
	b _0205E47C
_0205E460:
	ldrb ip, [r1, r4, lsl #5]
	add r4, r4, #1
	cmp ip, #0
	moveq ip, r3
	movne ip, r2
	tst ip, #0xff
	addeq lr, lr, #1
_0205E47C:
	cmp r4, r0
	blt _0205E460
	mov r0, lr
	ldmia sp!, {r4, pc}
	arm_func_end sub_0205E448
