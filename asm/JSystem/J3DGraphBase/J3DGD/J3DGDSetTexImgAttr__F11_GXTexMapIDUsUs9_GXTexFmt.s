lbl_8030E5D4:
/* 8030E5D4  38 ED 83 9C */	la r7, J3DGDTexImage0Ids(r13) /* 8045091C-_SDA_BASE_ */
/* 8030E5D8  7C 07 18 AE */	lbzx r0, r7, r3
/* 8030E5DC  54 07 C0 0E */	slwi r7, r0, 0x18
/* 8030E5E0  54 C6 A0 16 */	slwi r6, r6, 0x14
/* 8030E5E4  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 8030E5E8  38 83 FF FF */	addi r4, r3, -1
/* 8030E5EC  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 8030E5F0  38 03 FF FF */	addi r0, r3, -1
/* 8030E5F4  54 00 50 2A */	slwi r0, r0, 0xa
/* 8030E5F8  7C 80 03 78 */	or r0, r4, r0
/* 8030E5FC  7C C0 03 78 */	or r0, r6, r0
/* 8030E600  7C E6 03 78 */	or r6, r7, r0
/* 8030E604  38 A0 00 61 */	li r5, 0x61
/* 8030E608  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030E60C  80 64 00 08 */	lwz r3, 8(r4)
/* 8030E610  38 03 00 01 */	addi r0, r3, 1
/* 8030E614  90 04 00 08 */	stw r0, 8(r4)
/* 8030E618  98 A3 00 00 */	stb r5, 0(r3)
/* 8030E61C  54 C5 46 3E */	srwi r5, r6, 0x18
/* 8030E620  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030E624  80 64 00 08 */	lwz r3, 8(r4)
/* 8030E628  38 03 00 01 */	addi r0, r3, 1
/* 8030E62C  90 04 00 08 */	stw r0, 8(r4)
/* 8030E630  98 A3 00 00 */	stb r5, 0(r3)
/* 8030E634  54 C5 86 3E */	rlwinm r5, r6, 0x10, 0x18, 0x1f
/* 8030E638  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030E63C  80 64 00 08 */	lwz r3, 8(r4)
/* 8030E640  38 03 00 01 */	addi r0, r3, 1
/* 8030E644  90 04 00 08 */	stw r0, 8(r4)
/* 8030E648  98 A3 00 00 */	stb r5, 0(r3)
/* 8030E64C  54 C5 C6 3E */	rlwinm r5, r6, 0x18, 0x18, 0x1f
/* 8030E650  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030E654  80 64 00 08 */	lwz r3, 8(r4)
/* 8030E658  38 03 00 01 */	addi r0, r3, 1
/* 8030E65C  90 04 00 08 */	stw r0, 8(r4)
/* 8030E660  98 A3 00 00 */	stb r5, 0(r3)
/* 8030E664  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030E668  80 64 00 08 */	lwz r3, 8(r4)
/* 8030E66C  38 03 00 01 */	addi r0, r3, 1
/* 8030E670  90 04 00 08 */	stw r0, 8(r4)
/* 8030E674  98 C3 00 00 */	stb r6, 0(r3)
/* 8030E678  4E 80 00 20 */	blr 