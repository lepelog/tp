.include "macros.inc"

.section .text, "ax" # 802632c8


.global cAPIGph_Painter__Fv
cAPIGph_Painter__Fv:
/* 802632C8 00260208  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802632CC 0026020C  7C 08 02 A6 */	mflr r0
/* 802632D0 00260210  90 01 00 14 */	stw r0, 0x14(r1)
/* 802632D4 00260214  3C 60 80 3C */	lis r3, lbl_803C3528@ha
/* 802632D8 00260218  38 63 35 28 */	addi r3, r3, lbl_803C3528@l
/* 802632DC 0026021C  81 83 00 0C */	lwz r12, 0xc(r3)
/* 802632E0 00260220  7D 89 03 A6 */	mtctr r12
/* 802632E4 00260224  4E 80 04 21 */	bctrl 
/* 802632E8 00260228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802632EC 0026022C  7C 08 03 A6 */	mtlr r0
/* 802632F0 00260230  38 21 00 10 */	addi r1, r1, 0x10
/* 802632F4 00260234  4E 80 00 20 */	blr 

.global cAPIGph_BeforeOfDraw__Fv
cAPIGph_BeforeOfDraw__Fv:
/* 802632F8 00260238  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802632FC 0026023C  7C 08 02 A6 */	mflr r0
/* 80263300 00260240  90 01 00 14 */	stw r0, 0x14(r1)
/* 80263304 00260244  3C 60 80 3C */	lis r3, lbl_803C3528@ha
/* 80263308 00260248  38 63 35 28 */	addi r3, r3, lbl_803C3528@l
/* 8026330C 0026024C  81 83 00 04 */	lwz r12, 4(r3)
/* 80263310 00260250  7D 89 03 A6 */	mtctr r12
/* 80263314 00260254  4E 80 04 21 */	bctrl 
/* 80263318 00260258  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026331C 0026025C  7C 08 03 A6 */	mtlr r0
/* 80263320 00260260  38 21 00 10 */	addi r1, r1, 0x10
/* 80263324 00260264  4E 80 00 20 */	blr 

.global cAPIGph_AfterOfDraw__Fv
cAPIGph_AfterOfDraw__Fv:
/* 80263328 00260268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026332C 0026026C  7C 08 02 A6 */	mflr r0
/* 80263330 00260270  90 01 00 14 */	stw r0, 0x14(r1)
/* 80263334 00260274  3C 60 80 3C */	lis r3, lbl_803C3528@ha
/* 80263338 00260278  38 63 35 28 */	addi r3, r3, lbl_803C3528@l
/* 8026333C 0026027C  81 83 00 08 */	lwz r12, 8(r3)
/* 80263340 00260280  7D 89 03 A6 */	mtctr r12
/* 80263344 00260284  4E 80 04 21 */	bctrl 
/* 80263348 00260288  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026334C 0026028C  7C 08 03 A6 */	mtlr r0
/* 80263350 00260290  38 21 00 10 */	addi r1, r1, 0x10
/* 80263354 00260294  4E 80 00 20 */	blr 

