lbl_8099071C:
/* 8099071C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80990720  7C 08 02 A6 */	mflr r0
/* 80990724  90 01 00 14 */	stw r0, 0x14(r1)
/* 80990728  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8099072C  93 C1 00 08 */	stw r30, 8(r1)
/* 80990730  7C 7E 1B 78 */	mr r30, r3
/* 80990734  3B E0 00 00 */	li r31, 0
/* 80990738  80 04 00 00 */	lwz r0, 0(r4)
/* 8099073C  2C 00 00 14 */	cmpwi r0, 0x14
/* 80990740  41 82 00 1C */	beq lbl_8099075C
/* 80990744  40 80 00 4C */	bge lbl_80990790
/* 80990748  2C 00 00 0A */	cmpwi r0, 0xa
/* 8099074C  41 82 00 08 */	beq lbl_80990754
/* 80990750  48 00 00 40 */	b lbl_80990790
lbl_80990754:
/* 80990754  3B E0 00 01 */	li r31, 1
/* 80990758  48 00 00 38 */	b lbl_80990790
lbl_8099075C:
/* 8099075C  38 80 00 00 */	li r4, 0
/* 80990760  38 A0 00 01 */	li r5, 1
/* 80990764  38 C0 00 00 */	li r6, 0
/* 80990768  4B 7C 36 1C */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 8099076C  2C 03 00 00 */	cmpwi r3, 0
/* 80990770  41 82 00 18 */	beq lbl_80990788
/* 80990774  38 00 00 00 */	li r0, 0
/* 80990778  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 8099077C  4B 8D 0B 1C */	b dTimer_show__Fv
/* 80990780  3B E0 00 01 */	li r31, 1
/* 80990784  48 00 00 0C */	b lbl_80990790
lbl_80990788:
/* 80990788  7F C3 F3 78 */	mr r3, r30
/* 8099078C  4B FF EA 7D */	bl _talk_motion__11daNpcChin_cFv
lbl_80990790:
/* 80990790  7F E3 FB 78 */	mr r3, r31
/* 80990794  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80990798  83 C1 00 08 */	lwz r30, 8(r1)
/* 8099079C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809907A0  7C 08 03 A6 */	mtlr r0
/* 809907A4  38 21 00 10 */	addi r1, r1, 0x10
/* 809907A8  4E 80 00 20 */	blr 