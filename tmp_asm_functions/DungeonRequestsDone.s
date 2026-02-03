	.include "../asm/macros/function.inc"
	.text
	arm_func_start DungeonRequestsDone
DungeonRequestsDone: ; 0x0205EDA4
	stmdb sp!, {r4, lr}
	ldr r2, _0205EE0C ; =MISSION_DELIVER_LIST_PTR
	mov ip, #0
	ldr r2, [r2, #0x18]
	mov lr, ip
	add r3, r2, #0x100
_0205EDBC:
	mov r2, lr, lsl #0x18
	add r4, r3, r2, asr #19
	ldrb r2, [r4, #4]
	cmp r2, r0
	bne _0205EDF8
	cmp r1, #0
	beq _0205EDE4
	ldrb r2, [r4, #1]
	cmp r2, #0xc
	beq _0205EDF8
_0205EDE4:
	ldrb r2, [r4]
	add r2, r2, #0xfb
	and r2, r2, #0xff
	cmp r2, #3
	addls ip, ip, #1
_0205EDF8:
	add lr, lr, #1
	cmp lr, #8
	blt _0205EDBC
	mov r0, ip
	ldmia sp!, {r4, pc}
	.align 2, 0
_0205EE0C: .word MISSION_DELIVER_LIST_PTR
	arm_func_end DungeonRequestsDone
