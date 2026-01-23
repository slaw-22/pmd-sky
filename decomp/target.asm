	.include "../asm/macros/function.inc"
	.text

.public GetGameMode
.public LoadScriptVariableValueAtIndex

	arm_func_start sub_0204CE00
sub_0204CE00: ; 0x0204CE00
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl GetGameMode
	cmp r0, #3
	mov r0, r4, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, #0
	bne _0204CE2C
	mov r1, #0x56
	bl LoadScriptVariableValueAtIndex
	b _0204CE34
_0204CE2C:
	mov r1, #0x55
	bl LoadScriptVariableValueAtIndex
_0204CE34:
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r4, pc}
	arm_func_end sub_0204CE00
