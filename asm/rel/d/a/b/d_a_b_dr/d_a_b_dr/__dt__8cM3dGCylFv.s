lbl_805C6960:
/* 805C6960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C6964  7C 08 02 A6 */	mflr r0
/* 805C6968  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C696C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C6970  7C 7F 1B 79 */	or. r31, r3, r3
/* 805C6974  41 82 00 1C */	beq lbl_805C6990
/* 805C6978  3C A0 80 5C */	lis r5, __vt__8cM3dGCyl@ha
/* 805C697C  38 05 78 64 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 805C6980  90 1F 00 14 */	stw r0, 0x14(r31)
/* 805C6984  7C 80 07 35 */	extsh. r0, r4
/* 805C6988  40 81 00 08 */	ble lbl_805C6990
/* 805C698C  4B D0 83 B0 */	b __dl__FPv
lbl_805C6990:
/* 805C6990  7F E3 FB 78 */	mr r3, r31
/* 805C6994  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C6998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C699C  7C 08 03 A6 */	mtlr r0
/* 805C69A0  38 21 00 10 */	addi r1, r1, 0x10
/* 805C69A4  4E 80 00 20 */	blr 