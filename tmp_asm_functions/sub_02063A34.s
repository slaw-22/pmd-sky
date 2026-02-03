	arm_func_start sub_02063A34
sub_02063A34: ; 0x02063A34
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, r1
	bl sub_02063BB8
	movs r4, r0
	mov r0, #0
	bne _02063B20
	cmp r5, #1
	bne _02063A98
	mov r2, r4
	mov r1, #2
	bl sub_020090A0
	mov r2, r4
	mov r0, #1
	mov r1, #0
	bl sub_020090A0
	mov r2, r4
	mov r0, #2
	mov r1, #1
	bl sub_020090A0
	mov r0, #3
	mov r1, r0
	mov r2, r4
	bl sub_020090A0
	b _02063BA0
_02063A98:
	cmp r5, #2
	bne _02063AE0
	mov r1, r0
	mov r2, r4
	bl sub_020090A0
	mov r0, #1
	mov r1, r0
	mov r2, r4
	bl sub_020090A0
	mov r0, #2
	mov r1, r0
	mov r2, r4
	bl sub_020090A0
	mov r0, #3
	mov r1, r0
	mov r2, r4
	bl sub_020090A0
	b _02063BA0
_02063AE0:
	mov r2, r4
	mov r1, #1
	bl sub_020090A0
	mov r2, r4
	mov r0, #1
	mov r1, #0
	bl sub_020090A0
	mov r0, #2
	mov r1, r0
	mov r2, r4
	bl sub_020090A0
	mov r0, #3
	mov r1, r0
	mov r2, r4
	bl sub_020090A0
	b _02063BA0
_02063B20:
	cmp r5, #1
	mov r2, r4
	bne _02063B68
	mov r1, #2
	bl sub_020090A0
	mov r2, r4
	mov r0, #1
	mov r1, #0
	bl sub_020090A0
	mov r2, r4
	mov r0, #2
	mov r1, #1
	bl sub_020090A0
	mov r0, #3
	mov r1, r0
	mov r2, r4
	bl sub_020090A0
	b _02063BA0
_02063B68:
	mov r1, #1
	bl sub_020090A0
	mov r2, r4
	mov r0, #1
	mov r1, #0
	bl sub_020090A0
	mov r0, #2
	mov r1, r0
	mov r2, r4
	bl sub_020090A0
	mov r0, #3
	mov r1, r0
	mov r2, r4
	bl sub_020090A0
_02063BA0:
	ldr r0, _02063BB4 ; =_020B0B04
	ldr r0, [r0]
	add r0, r0, r4
	strb r5, [r0, #0x660]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02063BB4: .word _020B0B04
	arm_func_end sub_02063A34
