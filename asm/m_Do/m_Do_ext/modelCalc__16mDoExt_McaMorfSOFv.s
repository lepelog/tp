lbl_800111EC:
/* 800111EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800111F0  7C 08 02 A6 */	mflr r0
/* 800111F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800111F8  80 03 00 04 */	lwz r0, 4(r3)
/* 800111FC  28 00 00 00 */	cmplwi r0, 0
/* 80011200  41 82 00 40 */	beq lbl_80011240
/* 80011204  80 83 00 08 */	lwz r4, 8(r3)
/* 80011208  28 04 00 00 */	cmplwi r4, 0
/* 8001120C  41 82 00 0C */	beq lbl_80011218
/* 80011210  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80011214  D0 04 00 08 */	stfs f0, 8(r4)
lbl_80011218:
/* 80011218  80 83 00 04 */	lwz r4, 4(r3)
/* 8001121C  80 84 00 04 */	lwz r4, 4(r4)
/* 80011220  80 84 00 28 */	lwz r4, 0x28(r4)
/* 80011224  80 84 00 00 */	lwz r4, 0(r4)
/* 80011228  90 64 00 54 */	stw r3, 0x54(r4)
/* 8001122C  80 63 00 04 */	lwz r3, 4(r3)
/* 80011230  81 83 00 00 */	lwz r12, 0(r3)
/* 80011234  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80011238  7D 89 03 A6 */	mtctr r12
/* 8001123C  4E 80 04 21 */	bctrl 
lbl_80011240:
/* 80011240  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80011244  7C 08 03 A6 */	mtlr r0
/* 80011248  38 21 00 10 */	addi r1, r1, 0x10
/* 8001124C  4E 80 00 20 */	blr 