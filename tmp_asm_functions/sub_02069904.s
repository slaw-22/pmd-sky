	arm_func_start sub_02069904
sub_02069904: ; 0x02069904
	stmdb sp!, {r3, lr}
	ldr r0, _0206993C ; =_020B0B44
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, r0, #0xc
	bl sub_02047150
	ldr r0, _0206993C ; =_020B0B44
	ldr r0, [r0]
	bl MemFree
	ldr r0, _0206993C ; =_020B0B44
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0206993C: .word _020B0B44
	arm_func_end sub_02069904
