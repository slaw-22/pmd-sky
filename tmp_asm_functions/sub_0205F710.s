	arm_func_start sub_0205F710
sub_0205F710: ; 0x0205F710
	ldr r0, _0205F72C ; =MISSION_DELIVER_LIST_PTR
	ldr ip, _0205F730 ; =sub_0205E50C
	ldr r1, [r0, #0x18]
	ldr r2, _0205F734 ; =sub_0205F5C8
	mov r0, #8
	add r1, r1, #0x100
	bx ip
	.align 2, 0
_0205F72C: .word MISSION_DELIVER_LIST_PTR
_0205F730: .word sub_0205E50C
_0205F734: .word sub_0205F5C8
	arm_func_end sub_0205F710
