	arm_func_start sub_02065CD8
sub_02065CD8: ; 0x02065CD8
	ldr r2, _02065CF0 ; =_022B7320
	mov r3, r0
	mov r0, r1
	ldr ip, _02065CF4 ; =BulkItemToItem
	add r1, r2, r3, lsl #2
	bx ip
	.align 2, 0
_02065CF0: .word _022B7320
_02065CF4: .word BulkItemToItem
	arm_func_end sub_02065CD8
