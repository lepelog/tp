lbl_80C57164:
/* 80C57164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C57168  7C 08 02 A6 */	mflr r0
/* 80C5716C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C57170  88 03 07 40 */	lbz r0, 0x740(r3)
/* 80C57174  28 00 00 00 */	cmplwi r0, 0
/* 80C57178  41 82 00 0C */	beq lbl_80C57184
/* 80C5717C  38 63 07 48 */	addi r3, r3, 0x748
/* 80C57180  4B 55 06 10 */	b dKy_plight_set__FP15LIGHT_INFLUENCE
lbl_80C57184:
/* 80C57184  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C57188  7C 08 03 A6 */	mtlr r0
/* 80C5718C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C57190  4E 80 00 20 */	blr 