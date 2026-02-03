	arm_func_start SetActorTalkMain
SetActorTalkMain: ; 0x02065B50
	ldr r1, _02065B5C ; =_020B0B08
	strh r0, [r1, #0x18]
	bx lr
	.align 2, 0
_02065B5C: .word _020B0B08
	arm_func_end SetActorTalkMain
