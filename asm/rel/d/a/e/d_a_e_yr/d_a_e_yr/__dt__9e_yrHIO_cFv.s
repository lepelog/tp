lbl_808282CC:
/* 808282CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808282D0  7C 08 02 A6 */	mflr r0
/* 808282D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 808282D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808282DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 808282E0  41 82 00 40 */	beq lbl_80828320
/* 808282E4  3C 60 80 83 */	lis r3, __vt__9e_yrHIO_c@ha
/* 808282E8  38 03 8D 80 */	addi r0, r3, __vt__9e_yrHIO_c@l
/* 808282EC  90 1F 00 00 */	stw r0, 0(r31)
/* 808282F0  41 82 00 20 */	beq lbl_80828310
/* 808282F4  3C 60 80 83 */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha
/* 808282F8  38 03 8D 8C */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l
/* 808282FC  90 1F 00 00 */	stw r0, 0(r31)
/* 80828300  41 82 00 10 */	beq lbl_80828310
/* 80828304  3C 60 80 83 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80828308  38 03 8D 98 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 8082830C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80828310:
/* 80828310  7C 80 07 35 */	extsh. r0, r4
/* 80828314  40 81 00 0C */	ble lbl_80828320
/* 80828318  7F E3 FB 78 */	mr r3, r31
/* 8082831C  4B AA 6A 20 */	b __dl__FPv
lbl_80828320:
/* 80828320  7F E3 FB 78 */	mr r3, r31
/* 80828324  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80828328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8082832C  7C 08 03 A6 */	mtlr r0
/* 80828330  38 21 00 10 */	addi r1, r1, 0x10
/* 80828334  4E 80 00 20 */	blr 