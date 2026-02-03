	arm_func_start sub_0205B0B8
sub_0205B0B8: ; 0x0205B0B8
	stmdb sp!, {r3, lr}
	ldrsh r1, [r0, #0x56]
	mov r2, #0x10
	mov lr, #0
	mov r3, lr
	sub ip, r1, #1
	sub r2, r2, #0xc
	b _0205B110
_0205B0D8:
	cmp ip, #0
	cmpge r2, #0x10
	blt _0205B104
	cmp ip, #0x1e
	bge _0205B118
	add r1, r0, ip
	ldrb r1, [r1, #0x58]
	cmp r1, #0
	beq _0205B104
	cmp r3, #1
	addge lr, lr, #1
_0205B104:
	add r3, r3, #1
	add ip, ip, #1
	add r2, r2, #0xc
_0205B110:
	cmp r3, #0xa
	blt _0205B0D8
_0205B118:
	mov r0, lr
	ldmia sp!, {r3, pc}
	arm_func_end sub_0205B0B8
