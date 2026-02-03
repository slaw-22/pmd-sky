	arm_func_start GetSosMailCount
GetSosMailCount: ; 0x0205B97C
	stmdb sp!, {r3, lr}
	cmp r1, #0
	ldr r1, _0205B9C4 ; =_020B0A54
	mov r3, #0
	movne lr, #2
	ldr ip, [r1]
	moveq lr, r3
	mov r1, #0xb0
	b _0205B9B4
_0205B9A0:
	mul r2, lr, r1
	ldrb r2, [ip, r2]
	add lr, lr, #1
	cmp r0, r2
	addeq r3, r3, #1
_0205B9B4:
	cmp lr, #0x20
	blt _0205B9A0
	mov r0, r3
	ldmia sp!, {r3, pc}
	.align 2, 0
_0205B9C4: .word _020B0A54
	arm_func_end GetSosMailCount
