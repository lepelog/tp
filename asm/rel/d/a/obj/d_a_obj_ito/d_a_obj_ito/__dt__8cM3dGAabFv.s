lbl_8047D730:
/* 8047D730  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047D734  7C 08 02 A6 */	mflr r0
/* 8047D738  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047D73C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047D740  7C 7F 1B 79 */	or. r31, r3, r3
/* 8047D744  41 82 00 1C */	beq lbl_8047D760
/* 8047D748  3C A0 80 48 */	lis r5, __vt__8cM3dGAab@ha
/* 8047D74C  38 05 D9 88 */	addi r0, r5, __vt__8cM3dGAab@l
/* 8047D750  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8047D754  7C 80 07 35 */	extsh. r0, r4
/* 8047D758  40 81 00 08 */	ble lbl_8047D760
/* 8047D75C  4B E5 15 E0 */	b __dl__FPv
lbl_8047D760:
/* 8047D760  7F E3 FB 78 */	mr r3, r31
/* 8047D764  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047D768  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047D76C  7C 08 03 A6 */	mtlr r0
/* 8047D770  38 21 00 10 */	addi r1, r1, 0x10
/* 8047D774  4E 80 00 20 */	blr 