	.include "../../asm/macros/function.inc"
	.text

	arm_func_start sub_0206A84C
sub_0206A84C: ; 0x0206A84C
	cmp r0, #0xb4
	addlo r0, r0, #1
	movlo r0, r0, lsl #0x10
	movlo r0, r0, asr #0x10
	bxlo lr
	blo _0206A870
	cmp r0, #0xd3
	movls r0, #0xb8
	bxls lr
_0206A870:
	mvn r0, #0
	bx lr
	arm_func_end sub_0206A84C