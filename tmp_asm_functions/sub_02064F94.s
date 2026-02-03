	arm_func_start sub_02064F94
sub_02064F94: ; 0x02064F94
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, #0
	ldr r4, _02064FE0 ; =_020AFC70
	b _02064FD4
_02064FB0:
	ldr r0, [r4]
	mov r3, r5, lsl #0x10
	ldrsh r2, [r8, #8]
	mov r1, r7
	add r0, r0, #0xcc
	mov r3, r3, asr #0x10
	bl sub_0201E380
	add r5, r5, #1
	add r7, r7, #4
_02064FD4:
	cmp r5, r6
	blt _02064FB0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02064FE0: .word _020AFC70
	arm_func_end sub_02064F94
