	arm_func_start sub_02063F30
sub_02063F30: ; 0x02063F30
	stmdb sp!, {r4, r5, r6, lr}
	ldr ip, _02063F74 ; =_020B0B04
	mov r5, r1
	ldr ip, [ip]
	mov r6, r0
	mov r1, r3
	add r0, ip, #0x40
	mov r4, r2
	bl sub_02064C58
	ldr r0, _02063F74 ; =_020B0B04
	mov r1, r6
	ldr r0, [r0]
	mov r2, r5
	mov r3, r4
	add r0, r0, #0x40
	bl sub_02064CC8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02063F74: .word _020B0B04
	arm_func_end sub_02063F30
