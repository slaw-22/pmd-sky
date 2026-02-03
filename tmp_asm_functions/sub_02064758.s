	arm_func_start sub_02064758
sub_02064758: ; 0x02064758
	stmdb sp!, {r3, lr}
	mov lr, #0
	b _02064780
_02064764:
	add r3, r0, lr, lsl #1
	ldrsh ip, [r3, #0x16]
	add r3, lr, #1
	mov lr, lr, lsl #1
	mov r3, r3, lsl #0x10
	strh ip, [r1, lr]
	mov lr, r3, lsr #0x10
_02064780:
	cmp lr, r2
	blo _02064764
	ldmia sp!, {r3, pc}
	arm_func_end sub_02064758
