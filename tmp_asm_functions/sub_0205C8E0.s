	arm_func_start sub_0205C8E0
sub_0205C8E0: ; 0x0205C8E0
	ldrb ip, [r0]
	ldrb r2, [r1]
	cmp ip, r2
	movne r0, #0
	bxne lr
	cmp ip, #0
	bne _0205C910
	ldrh r3, [r0, #2]
	ldrh r2, [r1, #2]
	cmp r3, r2
	movne r0, #0
	bxne lr
_0205C910:
	cmp ip, #1
	bne _0205C92C
	ldrsh r2, [r0, #2]
	ldrsh r0, [r1, #2]
	cmp r2, r0
	movne r0, #0
	bxne lr
_0205C92C:
	mov r0, #1
	bx lr
	arm_func_end sub_0205C8E0
