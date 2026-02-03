	arm_func_start sub_020648FC
sub_020648FC: ; 0x020648FC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #0x10]
	mov r6, r1
	mov r5, r2
	cmp r0, #0
	beq _02064930
	mov r2, r6
	mov r3, r5
	mov r1, #0xe0
	bl sub_0200A5B0
	ldr r0, [r7, #0x10]
	bl sub_0200A504
_02064930:
	ldr r0, [r7, #0xc]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, #0
	b _02064960
_02064944:
	add r0, r4, #0xe0
	mov r1, r0, lsl #0x10
	ldr r0, [r7, #0xc]
	mov r1, r1, lsr #0x10
	add r2, r6, r4, lsl #2
	bl sub_0200A29C
	add r4, r4, #1
_02064960:
	cmp r4, r5
	blt _02064944
	ldr r0, [r7, #0xc]
	bl sub_0200A174
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020648FC
