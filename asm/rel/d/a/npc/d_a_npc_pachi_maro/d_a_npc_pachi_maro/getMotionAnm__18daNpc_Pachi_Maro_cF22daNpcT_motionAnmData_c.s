lbl_80A99428:
/* 80A99428  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A9942C  38 E1 00 04 */	addi r7, r1, 4
/* 80A99430  38 C5 FF FC */	addi r6, r5, -4
/* 80A99434  38 00 00 03 */	li r0, 3
/* 80A99438  7C 09 03 A6 */	mtctr r0
lbl_80A9943C:
/* 80A9943C  80 A6 00 04 */	lwz r5, 4(r6)
/* 80A99440  84 06 00 08 */	lwzu r0, 8(r6)
/* 80A99444  90 A7 00 04 */	stw r5, 4(r7)
/* 80A99448  94 07 00 08 */	stwu r0, 8(r7)
/* 80A9944C  42 00 FF F0 */	bdnz lbl_80A9943C
/* 80A99450  80 06 00 04 */	lwz r0, 4(r6)
/* 80A99454  90 07 00 04 */	stw r0, 4(r7)
/* 80A99458  88 04 0A 89 */	lbz r0, 0xa89(r4)
/* 80A9945C  28 00 00 00 */	cmplwi r0, 0
/* 80A99460  41 82 00 20 */	beq lbl_80A99480
/* 80A99464  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A99468  2C 00 00 0E */	cmpwi r0, 0xe
/* 80A9946C  40 82 00 14 */	bne lbl_80A99480
/* 80A99470  38 00 00 08 */	li r0, 8
/* 80A99474  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A99478  38 00 00 02 */	li r0, 2
/* 80A9947C  90 01 00 1C */	stw r0, 0x1c(r1)
lbl_80A99480:
/* 80A99480  38 A3 FF FC */	addi r5, r3, -4
/* 80A99484  38 81 00 04 */	addi r4, r1, 4
/* 80A99488  38 00 00 03 */	li r0, 3
/* 80A9948C  7C 09 03 A6 */	mtctr r0
lbl_80A99490:
/* 80A99490  80 64 00 04 */	lwz r3, 4(r4)
/* 80A99494  84 04 00 08 */	lwzu r0, 8(r4)
/* 80A99498  90 65 00 04 */	stw r3, 4(r5)
/* 80A9949C  94 05 00 08 */	stwu r0, 8(r5)
/* 80A994A0  42 00 FF F0 */	bdnz lbl_80A99490
/* 80A994A4  80 04 00 04 */	lwz r0, 4(r4)
/* 80A994A8  90 05 00 04 */	stw r0, 4(r5)
/* 80A994AC  38 21 00 30 */	addi r1, r1, 0x30
/* 80A994B0  4E 80 00 20 */	blr 