lbl_80AC0A88:
/* 80AC0A88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC0A8C  7C 08 02 A6 */	mflr r0
/* 80AC0A90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC0A94  4B 68 7A 98 */	b execute__8daNpcT_cFv
/* 80AC0A98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC0A9C  7C 08 03 A6 */	mtlr r0
/* 80AC0AA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC0AA4  4E 80 00 20 */	blr 