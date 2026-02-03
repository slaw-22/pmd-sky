	arm_func_start IsAvailableItem
IsAvailableItem: ; 0x0206345C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	b _02063498
_0206346C:
	and r0, r4, #0xff
	bl GetMaxReachedFloor
	cmp r0, #0
	beq _02063494
	mov r1, r5
	and r0, r4, #0xff
	bl IsItemAvailableInDungeonGroup
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
_02063494:
	add r4, r4, #1
_02063498:
	cmp r4, #0xb4
	blt _0206346C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end IsAvailableItem
