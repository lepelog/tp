.include "macros.inc"

.section .text, "ax" # 80288988


.global isEqual__Q37JStudio6object7TIDDataFRCQ37JStudio6object7TIDDataRCQ37JStudio6object7TIDData
isEqual__Q37JStudio6object7TIDDataFRCQ37JStudio6object7TIDDataRCQ37JStudio6object7TIDData:
/* 80288988 002858C8  80 A3 00 04 */	lwz r5, 4(r3)
/* 8028898C 002858CC  80 04 00 04 */	lwz r0, 4(r4)
/* 80288990 002858D0  7C 05 00 40 */	cmplw r5, r0
/* 80288994 002858D4  41 82 00 0C */	beq lbl_802889A0
/* 80288998 002858D8  38 60 00 00 */	li r3, 0
/* 8028899C 002858DC  4E 80 00 20 */	blr 
lbl_802889A0:
/* 802889A0 002858E0  80 03 00 00 */	lwz r0, 0(r3)
/* 802889A4 002858E4  7C 06 03 78 */	mr r6, r0
/* 802889A8 002858E8  80 64 00 00 */	lwz r3, 0(r4)
/* 802889AC 002858EC  7C 64 1B 78 */	mr r4, r3
/* 802889B0 002858F0  7C 00 18 40 */	cmplw r0, r3
/* 802889B4 002858F4  40 82 00 0C */	bne lbl_802889C0
/* 802889B8 002858F8  38 60 00 01 */	li r3, 1
/* 802889BC 002858FC  4E 80 00 20 */	blr 
lbl_802889C0:
/* 802889C0 00285900  54 A0 F0 BE */	srwi r0, r5, 2
/* 802889C4 00285904  7C 09 03 A6 */	mtctr r0
/* 802889C8 00285908  28 05 00 04 */	cmplwi r5, 4
/* 802889CC 0028590C  41 80 00 2C */	blt lbl_802889F8
lbl_802889D0:
/* 802889D0 00285910  80 66 00 00 */	lwz r3, 0(r6)
/* 802889D4 00285914  80 04 00 00 */	lwz r0, 0(r4)
/* 802889D8 00285918  7C 03 00 40 */	cmplw r3, r0
/* 802889DC 0028591C  41 82 00 0C */	beq lbl_802889E8
/* 802889E0 00285920  38 60 00 00 */	li r3, 0
/* 802889E4 00285924  4E 80 00 20 */	blr 
lbl_802889E8:
/* 802889E8 00285928  38 A5 FF FC */	addi r5, r5, -4
/* 802889EC 0028592C  38 C6 00 04 */	addi r6, r6, 4
/* 802889F0 00285930  38 84 00 04 */	addi r4, r4, 4
/* 802889F4 00285934  42 00 FF DC */	bdnz lbl_802889D0
lbl_802889F8:
/* 802889F8 00285938  2C 05 00 02 */	cmpwi r5, 2
/* 802889FC 0028593C  41 82 00 3C */	beq lbl_80288A38
/* 80288A00 00285940  40 80 00 10 */	bge lbl_80288A10
/* 80288A04 00285944  2C 05 00 01 */	cmpwi r5, 1
/* 80288A08 00285948  40 80 00 50 */	bge lbl_80288A58
/* 80288A0C 0028594C  48 00 00 64 */	b lbl_80288A70
lbl_80288A10:
/* 80288A10 00285950  2C 05 00 04 */	cmpwi r5, 4
/* 80288A14 00285954  40 80 00 5C */	bge lbl_80288A70
/* 80288A18 00285958  88 66 00 00 */	lbz r3, 0(r6)
/* 80288A1C 0028595C  88 04 00 00 */	lbz r0, 0(r4)
/* 80288A20 00285960  7C 03 00 40 */	cmplw r3, r0
/* 80288A24 00285964  41 82 00 0C */	beq lbl_80288A30
/* 80288A28 00285968  38 60 00 00 */	li r3, 0
/* 80288A2C 0028596C  4E 80 00 20 */	blr 
lbl_80288A30:
/* 80288A30 00285970  38 C6 00 01 */	addi r6, r6, 1
/* 80288A34 00285974  38 84 00 01 */	addi r4, r4, 1
lbl_80288A38:
/* 80288A38 00285978  88 66 00 00 */	lbz r3, 0(r6)
/* 80288A3C 0028597C  88 04 00 00 */	lbz r0, 0(r4)
/* 80288A40 00285980  7C 03 00 40 */	cmplw r3, r0
/* 80288A44 00285984  41 82 00 0C */	beq lbl_80288A50
/* 80288A48 00285988  38 60 00 00 */	li r3, 0
/* 80288A4C 0028598C  4E 80 00 20 */	blr 
lbl_80288A50:
/* 80288A50 00285990  38 C6 00 01 */	addi r6, r6, 1
/* 80288A54 00285994  38 84 00 01 */	addi r4, r4, 1
lbl_80288A58:
/* 80288A58 00285998  88 66 00 00 */	lbz r3, 0(r6)
/* 80288A5C 0028599C  88 04 00 00 */	lbz r0, 0(r4)
/* 80288A60 002859A0  7C 03 00 40 */	cmplw r3, r0
/* 80288A64 002859A4  41 82 00 0C */	beq lbl_80288A70
/* 80288A68 002859A8  38 60 00 00 */	li r3, 0
/* 80288A6C 002859AC  4E 80 00 20 */	blr 
lbl_80288A70:
/* 80288A70 002859B0  38 60 00 01 */	li r3, 1
/* 80288A74 002859B4  4E 80 00 20 */	blr 

