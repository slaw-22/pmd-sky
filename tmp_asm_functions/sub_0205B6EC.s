	arm_func_start sub_0205B6EC
sub_0205B6EC: ; 0x0205B6EC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0205B690
	mvn r1, #0
	cmp r0, r1
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r2, _0205B734 ; =_020B0A54
	mov r1, #0xb0
	ldr r2, [r2]
	mov ip, #0xb
	mla lr, r0, r1, r2
_0205B71C:
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _0205B71C
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205B734: .word _020B0A54
	arm_func_end sub_0205B6EC
