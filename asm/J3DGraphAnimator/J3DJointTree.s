.include "macros.inc"

.section .text, "ax" # 80325a18


.global J3DJointTree
J3DJointTree:
/* 80325A18 00322958  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80325A1C 0032295C  7C 08 02 A6 */	mflr r0
/* 80325A20 00322960  90 01 00 14 */	stw r0, 0x14(r1)
/* 80325A24 00322964  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80325A28 00322968  7C 7F 1B 78 */	mr r31, r3
/* 80325A2C 0032296C  3C 60 80 3D */	lis r3, lbl_803CECF4@ha
/* 80325A30 00322970  38 03 EC F4 */	addi r0, r3, lbl_803CECF4@l
/* 80325A34 00322974  90 1F 00 00 */	stw r0, 0(r31)
/* 80325A38 00322978  38 00 00 00 */	li r0, 0
/* 80325A3C 0032297C  90 1F 00 04 */	stw r0, 4(r31)
/* 80325A40 00322980  90 1F 00 08 */	stw r0, 8(r31)
/* 80325A44 00322984  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80325A48 00322988  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80325A4C 0032298C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80325A50 00322990  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80325A54 00322994  B0 1F 00 1C */	sth r0, 0x1c(r31)
/* 80325A58 00322998  B0 1F 00 1E */	sth r0, 0x1e(r31)
/* 80325A5C 0032299C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80325A60 003229A0  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80325A64 003229A4  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80325A68 003229A8  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 80325A6C 003229AC  90 1F 00 30 */	stw r0, 0x30(r31)
/* 80325A70 003229B0  38 7F 00 34 */	addi r3, r31, 0x34
/* 80325A74 003229B4  4B FE BB 6D */	bl J3DDrawMtxData
/* 80325A78 003229B8  38 00 00 00 */	li r0, 0
/* 80325A7C 003229BC  90 1F 00 40 */	stw r0, 0x40(r31)
/* 80325A80 003229C0  90 1F 00 44 */	stw r0, 0x44(r31)
/* 80325A84 003229C4  7F E3 FB 78 */	mr r3, r31
/* 80325A88 003229C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80325A8C 003229CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80325A90 003229D0  7C 08 03 A6 */	mtlr r0
/* 80325A94 003229D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80325A98 003229D8  4E 80 00 20 */	blr 

.global makeHierarchy__12J3DJointTreeFP8J3DJointPPC17J3DModelHierarchyP16J3DMaterialTableP13J3DShapeTable
makeHierarchy__12J3DJointTreeFP8J3DJointPPC17J3DModelHierarchyP16J3DMaterialTableP13J3DShapeTable:
/* 80325A9C 003229DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80325AA0 003229E0  7C 08 02 A6 */	mflr r0
/* 80325AA4 003229E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80325AA8 003229E8  39 61 00 30 */	addi r11, r1, 0x30
/* 80325AAC 003229EC  48 03 C7 19 */	bl _savegpr_23
/* 80325AB0 003229F0  7C 77 1B 78 */	mr r23, r3
/* 80325AB4 003229F4  7C 98 23 78 */	mr r24, r4
/* 80325AB8 003229F8  7C B9 2B 78 */	mr r25, r5
/* 80325ABC 003229FC  7C DA 33 78 */	mr r26, r6
/* 80325AC0 00322A00  7C FB 3B 78 */	mr r27, r7
/* 80325AC4 00322A04  7F 1F C3 78 */	mr r31, r24
lbl_80325AC8:
/* 80325AC8 00322A08  3B C0 00 00 */	li r30, 0
/* 80325ACC 00322A0C  3B A0 00 00 */	li r29, 0
/* 80325AD0 00322A10  3B 80 00 00 */	li r28, 0
/* 80325AD4 00322A14  80 99 00 00 */	lwz r4, 0(r25)
/* 80325AD8 00322A18  A0 04 00 00 */	lhz r0, 0(r4)
/* 80325ADC 00322A1C  28 00 00 12 */	cmplwi r0, 0x12
/* 80325AE0 00322A20  41 81 00 A0 */	bgt lbl_80325B80
/* 80325AE4 00322A24  3C 60 80 3D */	lis r3, lbl_803CECA8@ha
/* 80325AE8 00322A28  38 63 EC A8 */	addi r3, r3, lbl_803CECA8@l
/* 80325AEC 00322A2C  54 00 10 3A */	slwi r0, r0, 2
/* 80325AF0 00322A30  7C 03 00 2E */	lwzx r0, r3, r0
/* 80325AF4 00322A34  7C 09 03 A6 */	mtctr r0
/* 80325AF8 00322A38  4E 80 04 20 */	bctr 
/* 80325AFC 00322A3C  38 04 00 04 */	addi r0, r4, 4
/* 80325B00 00322A40  90 19 00 00 */	stw r0, 0(r25)
/* 80325B04 00322A44  7E E3 BB 78 */	mr r3, r23
/* 80325B08 00322A48  7F E4 FB 78 */	mr r4, r31
/* 80325B0C 00322A4C  7F 25 CB 78 */	mr r5, r25
/* 80325B10 00322A50  7F 46 D3 78 */	mr r6, r26
/* 80325B14 00322A54  7F 67 DB 78 */	mr r7, r27
/* 80325B18 00322A58  4B FF FF 85 */	bl makeHierarchy__12J3DJointTreeFP8J3DJointPPC17J3DModelHierarchyP16J3DMaterialTableP13J3DShapeTable
/* 80325B1C 00322A5C  48 00 00 64 */	b lbl_80325B80
/* 80325B20 00322A60  38 04 00 04 */	addi r0, r4, 4
/* 80325B24 00322A64  90 19 00 00 */	stw r0, 0(r25)
/* 80325B28 00322A68  48 00 00 C0 */	b lbl_80325BE8
/* 80325B2C 00322A6C  48 00 00 BC */	b lbl_80325BE8
/* 80325B30 00322A70  80 77 00 18 */	lwz r3, 0x18(r23)
/* 80325B34 00322A74  38 04 00 04 */	addi r0, r4, 4
/* 80325B38 00322A78  90 19 00 00 */	stw r0, 0(r25)
/* 80325B3C 00322A7C  A0 04 00 02 */	lhz r0, 2(r4)
/* 80325B40 00322A80  54 00 10 3A */	slwi r0, r0, 2
/* 80325B44 00322A84  7F C3 00 2E */	lwzx r30, r3, r0
/* 80325B48 00322A88  48 00 00 38 */	b lbl_80325B80
/* 80325B4C 00322A8C  38 04 00 04 */	addi r0, r4, 4
/* 80325B50 00322A90  90 19 00 00 */	stw r0, 0(r25)
/* 80325B54 00322A94  A0 04 00 02 */	lhz r0, 2(r4)
/* 80325B58 00322A98  80 7A 00 08 */	lwz r3, 8(r26)
/* 80325B5C 00322A9C  54 00 10 3A */	slwi r0, r0, 2
/* 80325B60 00322AA0  7F A3 00 2E */	lwzx r29, r3, r0
/* 80325B64 00322AA4  48 00 00 1C */	b lbl_80325B80
/* 80325B68 00322AA8  38 04 00 04 */	addi r0, r4, 4
/* 80325B6C 00322AAC  90 19 00 00 */	stw r0, 0(r25)
/* 80325B70 00322AB0  A0 04 00 02 */	lhz r0, 2(r4)
/* 80325B74 00322AB4  80 7B 00 08 */	lwz r3, 8(r27)
/* 80325B78 00322AB8  54 00 10 3A */	slwi r0, r0, 2
/* 80325B7C 00322ABC  7F 83 00 2E */	lwzx r28, r3, r0
lbl_80325B80:
/* 80325B80 00322AC0  28 1E 00 00 */	cmplwi r30, 0
/* 80325B84 00322AC4  41 82 00 28 */	beq lbl_80325BAC
/* 80325B88 00322AC8  7F DF F3 78 */	mr r31, r30
/* 80325B8C 00322ACC  28 18 00 00 */	cmplwi r24, 0
/* 80325B90 00322AD0  40 82 00 0C */	bne lbl_80325B9C
/* 80325B94 00322AD4  93 D7 00 10 */	stw r30, 0x10(r23)
/* 80325B98 00322AD8  4B FF FF 30 */	b lbl_80325AC8
lbl_80325B9C:
/* 80325B9C 00322ADC  7F 03 C3 78 */	mr r3, r24
/* 80325BA0 00322AE0  7F C4 F3 78 */	mr r4, r30
/* 80325BA4 00322AE4  48 00 95 99 */	bl appendChild__8J3DJointFP8J3DJoint
/* 80325BA8 00322AE8  4B FF FF 20 */	b lbl_80325AC8
lbl_80325BAC:
/* 80325BAC 00322AEC  28 1D 00 00 */	cmplwi r29, 0
/* 80325BB0 00322AF0  41 82 00 20 */	beq lbl_80325BD0
/* 80325BB4 00322AF4  80 18 00 58 */	lwz r0, 0x58(r24)
/* 80325BB8 00322AF8  28 00 00 00 */	cmplwi r0, 0
/* 80325BBC 00322AFC  41 82 00 08 */	beq lbl_80325BC4
/* 80325BC0 00322B00  90 1D 00 04 */	stw r0, 4(r29)
lbl_80325BC4:
/* 80325BC4 00322B04  93 B8 00 58 */	stw r29, 0x58(r24)
/* 80325BC8 00322B08  93 1D 00 0C */	stw r24, 0xc(r29)
/* 80325BCC 00322B0C  4B FF FE FC */	b lbl_80325AC8
lbl_80325BD0:
/* 80325BD0 00322B10  28 1C 00 00 */	cmplwi r28, 0
/* 80325BD4 00322B14  41 82 FE F4 */	beq lbl_80325AC8
/* 80325BD8 00322B18  80 78 00 58 */	lwz r3, 0x58(r24)
/* 80325BDC 00322B1C  93 83 00 08 */	stw r28, 8(r3)
/* 80325BE0 00322B20  90 7C 00 04 */	stw r3, 4(r28)
/* 80325BE4 00322B24  4B FF FE E4 */	b lbl_80325AC8
lbl_80325BE8:
/* 80325BE8 00322B28  39 61 00 30 */	addi r11, r1, 0x30
/* 80325BEC 00322B2C  48 03 C6 25 */	bl _restgpr_23
/* 80325BF0 00322B30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80325BF4 00322B34  7C 08 03 A6 */	mtlr r0
/* 80325BF8 00322B38  38 21 00 30 */	addi r1, r1, 0x30
/* 80325BFC 00322B3C  4E 80 00 20 */	blr 

.global findImportantMtxIndex__12J3DJointTreeFv
findImportantMtxIndex__12J3DJointTreeFv:
/* 80325C00 00322B40  A0 E3 00 1E */	lhz r7, 0x1e(r3)
/* 80325C04 00322B44  38 80 00 00 */	li r4, 0
/* 80325C08 00322B48  38 A0 00 00 */	li r5, 0
/* 80325C0C 00322B4C  A0 03 00 36 */	lhz r0, 0x36(r3)
/* 80325C10 00322B50  81 03 00 24 */	lwz r8, 0x24(r3)
/* 80325C14 00322B54  81 23 00 28 */	lwz r9, 0x28(r3)
/* 80325C18 00322B58  81 43 00 30 */	lwz r10, 0x30(r3)
/* 80325C1C 00322B5C  39 80 00 00 */	li r12, 0
/* 80325C20 00322B60  48 00 00 18 */	b lbl_80325C38
lbl_80325C24:
/* 80325C24 00322B64  55 8B 0B FC */	rlwinm r11, r12, 1, 0xf, 0x1e
/* 80325C28 00322B68  80 C3 00 3C */	lwz r6, 0x3c(r3)
/* 80325C2C 00322B6C  7C C6 5A 2E */	lhzx r6, r6, r11
/* 80325C30 00322B70  7C CA 5B 2E */	sthx r6, r10, r11
/* 80325C34 00322B74  39 8C 00 01 */	addi r12, r12, 1
lbl_80325C38:
/* 80325C38 00322B78  55 86 04 3E */	clrlwi r6, r12, 0x10
/* 80325C3C 00322B7C  7C 06 00 40 */	cmplw r6, r0
/* 80325C40 00322B80  41 80 FF E4 */	blt lbl_80325C24
/* 80325C44 00322B84  39 60 00 00 */	li r11, 0
/* 80325C48 00322B88  48 00 00 58 */	b lbl_80325CA0
lbl_80325C4C:
/* 80325C4C 00322B8C  80 C3 00 20 */	lwz r6, 0x20(r3)
/* 80325C50 00322B90  55 60 04 3E */	clrlwi r0, r11, 0x10
/* 80325C54 00322B94  7C 06 00 AE */	lbzx r0, r6, r0
/* 80325C58 00322B98  38 C0 00 00 */	li r6, 0
/* 80325C5C 00322B9C  C0 22 CA 18 */	lfs f1, lbl_80456418-_SDA2_BASE_(r2)
/* 80325C60 00322BA0  7C 09 03 A6 */	mtctr r0
/* 80325C64 00322BA4  2C 00 00 00 */	cmpwi r0, 0
/* 80325C68 00322BA8  40 81 00 24 */	ble lbl_80325C8C
lbl_80325C6C:
/* 80325C6C 00322BAC  7C 09 2C 2E */	lfsx f0, r9, r5
/* 80325C70 00322BB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80325C74 00322BB4  40 80 00 0C */	bge lbl_80325C80
/* 80325C78 00322BB8  FC 20 00 90 */	fmr f1, f0
/* 80325C7C 00322BBC  7C C8 22 2E */	lhzx r6, r8, r4
lbl_80325C80:
/* 80325C80 00322BC0  38 84 00 02 */	addi r4, r4, 2
/* 80325C84 00322BC4  38 A5 00 04 */	addi r5, r5, 4
/* 80325C88 00322BC8  42 00 FF E4 */	bdnz lbl_80325C6C
lbl_80325C8C:
/* 80325C8C 00322BCC  A0 03 00 36 */	lhz r0, 0x36(r3)
/* 80325C90 00322BD0  7C 0B 02 14 */	add r0, r11, r0
/* 80325C94 00322BD4  54 00 08 3C */	slwi r0, r0, 1
/* 80325C98 00322BD8  7C CA 03 2E */	sthx r6, r10, r0
/* 80325C9C 00322BDC  39 6B 00 01 */	addi r11, r11, 1
lbl_80325CA0:
/* 80325CA0 00322BE0  7C 0B 38 00 */	cmpw r11, r7
/* 80325CA4 00322BE4  41 80 FF A8 */	blt lbl_80325C4C
/* 80325CA8 00322BE8  4E 80 00 20 */	blr 
/* 80325CAC 00322BEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80325CB0 00322BF0  7C 08 02 A6 */	mflr r0
/* 80325CB4 00322BF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80325CB8 00322BF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80325CBC 00322BFC  93 C1 00 08 */	stw r30, 8(r1)
/* 80325CC0 00322C00  7C 7E 1B 78 */	mr r30, r3
/* 80325CC4 00322C04  7C 9F 23 78 */	mr r31, r4
/* 80325CC8 00322C08  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80325CCC 00322C0C  7C A4 2B 78 */	mr r4, r5
/* 80325CD0 00322C10  7C C5 33 78 */	mr r5, r6
/* 80325CD4 00322C14  81 83 00 00 */	lwz r12, 0(r3)
/* 80325CD8 00322C18  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80325CDC 00322C1C  7D 89 03 A6 */	mtctr r12
/* 80325CE0 00322C20  4E 80 04 21 */	bctrl 
/* 80325CE4 00322C24  7F E3 FB 78 */	mr r3, r31
/* 80325CE8 00322C28  48 00 00 35 */	bl setMtxBuffer__10J3DMtxCalcFP12J3DMtxBuffer
/* 80325CEC 00322C2C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80325CF0 00322C30  28 03 00 00 */	cmplwi r3, 0
/* 80325CF4 00322C34  41 82 00 10 */	beq lbl_80325D04
/* 80325CF8 00322C38  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 80325CFC 00322C3C  90 0D 90 78 */	stw r0, lbl_804515F8-_SDA_BASE_(r13)
/* 80325D00 00322C40  48 00 96 F9 */	bl recursiveCalc__8J3DJointFv
lbl_80325D04:
/* 80325D04 00322C44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80325D08 00322C48  83 C1 00 08 */	lwz r30, 8(r1)
/* 80325D0C 00322C4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80325D10 00322C50  7C 08 03 A6 */	mtlr r0
/* 80325D14 00322C54  38 21 00 10 */	addi r1, r1, 0x10
/* 80325D18 00322C58  4E 80 00 20 */	blr 

.global setMtxBuffer__10J3DMtxCalcFP12J3DMtxBuffer
setMtxBuffer__10J3DMtxCalcFP12J3DMtxBuffer:
/* 80325D1C 00322C5C  90 6D 90 70 */	stw r3, lbl_804515F0-_SDA_BASE_(r13)
/* 80325D20 00322C60  4E 80 00 20 */	blr 
/* 80325D24 00322C64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80325D28 00322C68  7C 08 02 A6 */	mflr r0
/* 80325D2C 00322C6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80325D30 00322C70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80325D34 00322C74  93 C1 00 08 */	stw r30, 8(r1)
/* 80325D38 00322C78  7C 7E 1B 79 */	or. r30, r3, r3
/* 80325D3C 00322C7C  7C 9F 23 78 */	mr r31, r4
/* 80325D40 00322C80  41 82 00 2C */	beq lbl_80325D6C
/* 80325D44 00322C84  3C 60 80 3D */	lis r3, lbl_803CECF4@ha
/* 80325D48 00322C88  38 03 EC F4 */	addi r0, r3, lbl_803CECF4@l
/* 80325D4C 00322C8C  90 1E 00 00 */	stw r0, 0(r30)
/* 80325D50 00322C90  38 7E 00 34 */	addi r3, r30, 0x34
/* 80325D54 00322C94  38 80 FF FF */	li r4, -1
/* 80325D58 00322C98  4B FE B8 9D */	bl __dt__14J3DDrawMtxDataFv
/* 80325D5C 00322C9C  7F E0 07 35 */	extsh. r0, r31
/* 80325D60 00322CA0  40 81 00 0C */	ble lbl_80325D6C
/* 80325D64 00322CA4  7F C3 F3 78 */	mr r3, r30
/* 80325D68 00322CA8  4B FA 8F D5 */	bl __dl__FPv
lbl_80325D6C:
/* 80325D6C 00322CAC  7F C3 F3 78 */	mr r3, r30
/* 80325D70 00322CB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80325D74 00322CB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80325D78 00322CB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80325D7C 00322CBC  7C 08 03 A6 */	mtlr r0
/* 80325D80 00322CC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80325D84 00322CC4  4E 80 00 20 */	blr 

