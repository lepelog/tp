.include "macros.inc"

.section .text, "ax" # 80079164


.global __ct__11dBgS_WtrChkFv
__ct__11dBgS_WtrChkFv:
/* 80079164 000760A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80079168 000760A8  7C 08 02 A6 */	mflr r0
/* 8007916C 000760AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80079170 000760B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80079174 000760B4  7C 7F 1B 78 */	mr r31, r3
/* 80079178 000760B8  4B FF FA 39 */	bl __ct__14dBgS_SplGrpChkFv
/* 8007917C 000760BC  3C 60 80 3A */	lis r3, lbl_803A37FC@ha
/* 80079180 000760C0  38 63 37 FC */	addi r3, r3, lbl_803A37FC@l
/* 80079184 000760C4  90 7F 00 0C */	stw r3, 0xc(r31)
/* 80079188 000760C8  38 03 00 0C */	addi r0, r3, 0xc
/* 8007918C 000760CC  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80079190 000760D0  38 03 00 18 */	addi r0, r3, 0x18
/* 80079194 000760D4  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80079198 000760D8  38 03 00 24 */	addi r0, r3, 0x24
/* 8007919C 000760DC  90 1F 00 34 */	stw r0, 0x34(r31)
/* 800791A0 000760E0  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 800791A4 000760E4  60 00 00 02 */	ori r0, r0, 2
/* 800791A8 000760E8  90 1F 00 38 */	stw r0, 0x38(r31)
/* 800791AC 000760EC  7F E3 FB 78 */	mr r3, r31
/* 800791B0 000760F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800791B4 000760F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800791B8 000760F8  7C 08 03 A6 */	mtlr r0
/* 800791BC 000760FC  38 21 00 10 */	addi r1, r1, 0x10
/* 800791C0 00076100  4E 80 00 20 */	blr 
