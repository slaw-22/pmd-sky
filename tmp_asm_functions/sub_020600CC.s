	arm_func_start sub_020600CC
sub_020600CC: ; 0x020600CC
	stmdb sp!, {r3, lr}
	ldr r0, _02060144 ; =_020B0AD8
	ldr r0, [r0, #0x24]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _02060148 ; =_020B0AFC
	ldr r1, _0206014C ; =_020A462C
	mov r2, #1
	bl LoadFileFromRom
	ldr r0, _02060144 ; =_020B0AD8
	ldr r2, [r0, #0x24]
	ldr r1, [r2]
	add r1, r2, r1
	str r1, [r0, #4]
	ldr r1, [r2, #4]
	add r1, r2, r1
	str r1, [r0, #0x14]
	ldr r1, [r2, #8]
	add r1, r2, r1
	str r1, [r0, #0x10]
	ldr r1, [r2, #0xc]
	add r1, r2, r1
	str r1, [r0, #8]
	ldr r1, [r2, #0x10]
	add r1, r2, r1
	str r1, [r0, #0x18]
	ldr r1, [r2, #0x14]
	add r1, r2, r1
	str r1, [r0, #0xc]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02060144: .word _020B0AD8
_02060148: .word _020B0AFC
_0206014C: .word _020A462C
	arm_func_end sub_020600CC
