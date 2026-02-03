	arm_func_start sub_0205B8CC
sub_0205B8CC: ; 0x0205B8CC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _0205B914 ; =_020B0A54
	b _0205B904
_0205B8E0:
	ldr r0, [r4, #4]
	mov r1, r6
	add r0, r0, #4
	add r0, r0, r5, lsl #3
	bl sub_0205B560
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	add r5, r5, #1
_0205B904:
	cmp r5, #0x20
	blt _0205B8E0
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0205B914: .word _020B0A54
	arm_func_end sub_0205B8CC
