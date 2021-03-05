.include "macros.inc"

.section .text, "ax" # 802a68f4


.global __ct__15JAUSeqDataBlockFv
__ct__15JAUSeqDataBlockFv:
/* 802A68F4 002A3834  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A68F8 002A3838  7C 08 02 A6 */	mflr r0
/* 802A68FC 002A383C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A6900 002A3840  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A6904 002A3844  7C 7F 1B 78 */	mr r31, r3
/* 802A6908 002A3848  7F E4 FB 78 */	mr r4, r31
/* 802A690C 002A384C  48 03 54 F1 */	bl __ct__10JSUPtrLinkFPv
/* 802A6910 002A3850  7F E3 FB 78 */	mr r3, r31
/* 802A6914 002A3854  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A6918 002A3858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A691C 002A385C  7C 08 03 A6 */	mtlr r0
/* 802A6920 002A3860  38 21 00 10 */	addi r1, r1, 0x10
/* 802A6924 002A3864  4E 80 00 20 */	blr 

.global getSeqData__16JAUSeqDataBlocksF10JAISoundID
getSeqData__16JAUSeqDataBlocksF10JAISoundID:
/* 802A6928 002A3868  80 84 00 00 */	lwz r4, 0(r4)
/* 802A692C 002A386C  3C 04 00 01 */	addis r0, r4, 1
/* 802A6930 002A3870  28 00 FF FF */	cmplwi r0, 0xffff
/* 802A6934 002A3874  40 82 00 0C */	bne lbl_802A6940
/* 802A6938 002A3878  38 60 00 00 */	li r3, 0
/* 802A693C 002A387C  4E 80 00 20 */	blr 
lbl_802A6940:
/* 802A6940 002A3880  80 A3 00 00 */	lwz r5, 0(r3)
/* 802A6944 002A3884  48 00 00 20 */	b lbl_802A6964
lbl_802A6948:
/* 802A6948 002A3888  80 65 00 00 */	lwz r3, 0(r5)
/* 802A694C 002A388C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 802A6950 002A3890  7C 00 20 40 */	cmplw r0, r4
/* 802A6954 002A3894  40 82 00 0C */	bne lbl_802A6960
/* 802A6958 002A3898  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802A695C 002A389C  4E 80 00 20 */	blr 
lbl_802A6960:
/* 802A6960 002A38A0  80 A5 00 0C */	lwz r5, 0xc(r5)
lbl_802A6964:
/* 802A6964 002A38A4  28 05 00 00 */	cmplwi r5, 0
/* 802A6968 002A38A8  40 82 FF E0 */	bne lbl_802A6948
/* 802A696C 002A38AC  38 60 00 00 */	li r3, 0
/* 802A6970 002A38B0  4E 80 00 20 */	blr 

.global seekFreeBlock__16JAUSeqDataBlocksFUl
seekFreeBlock__16JAUSeqDataBlocksFUl:
/* 802A6974 002A38B4  38 C0 FF FF */	li r6, -1
/* 802A6978 002A38B8  38 E0 00 00 */	li r7, 0
/* 802A697C 002A38BC  81 03 00 00 */	lwz r8, 0(r3)
/* 802A6980 002A38C0  48 00 00 38 */	b lbl_802A69B8
lbl_802A6984:
/* 802A6984 002A38C4  80 A8 00 00 */	lwz r5, 0(r8)
/* 802A6988 002A38C8  80 65 00 10 */	lwz r3, 0x10(r5)
/* 802A698C 002A38CC  3C 03 00 01 */	addis r0, r3, 1
/* 802A6990 002A38D0  28 00 FF FF */	cmplwi r0, 0xffff
/* 802A6994 002A38D4  40 82 00 20 */	bne lbl_802A69B4
/* 802A6998 002A38D8  80 05 00 18 */	lwz r0, 0x18(r5)
/* 802A699C 002A38DC  7C 00 20 40 */	cmplw r0, r4
/* 802A69A0 002A38E0  41 80 00 14 */	blt lbl_802A69B4
/* 802A69A4 002A38E4  7C 00 30 40 */	cmplw r0, r6
/* 802A69A8 002A38E8  40 80 00 0C */	bge lbl_802A69B4
/* 802A69AC 002A38EC  7D 07 43 78 */	mr r7, r8
/* 802A69B0 002A38F0  7C 06 03 78 */	mr r6, r0
lbl_802A69B4:
/* 802A69B4 002A38F4  81 08 00 0C */	lwz r8, 0xc(r8)
lbl_802A69B8:
/* 802A69B8 002A38F8  28 08 00 00 */	cmplwi r8, 0
/* 802A69BC 002A38FC  40 82 FF C8 */	bne lbl_802A6984
/* 802A69C0 002A3900  28 07 00 00 */	cmplwi r7, 0
/* 802A69C4 002A3904  41 82 00 0C */	beq lbl_802A69D0
/* 802A69C8 002A3908  7C E3 3B 78 */	mr r3, r7
/* 802A69CC 002A390C  4E 80 00 20 */	blr 
lbl_802A69D0:
/* 802A69D0 002A3910  38 60 00 00 */	li r3, 0
/* 802A69D4 002A3914  4E 80 00 20 */	blr 

.global JAUSeqDataBlocks_NS_append
JAUSeqDataBlocks_NS_append:
/* 802A69D8 002A3918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A69DC 002A391C  7C 08 02 A6 */	mflr r0
/* 802A69E0 002A3920  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A69E4 002A3924  48 03 55 69 */	bl append__10JSUPtrListFP10JSUPtrLink
/* 802A69E8 002A3928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A69EC 002A392C  7C 08 03 A6 */	mtlr r0
/* 802A69F0 002A3930  38 21 00 10 */	addi r1, r1, 0x10
/* 802A69F4 002A3934  4E 80 00 20 */	blr 

.global JAUSeqDataBlocks_NS_remove
JAUSeqDataBlocks_NS_remove:
/* 802A69F8 002A3938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A69FC 002A393C  7C 08 02 A6 */	mflr r0
/* 802A6A00 002A3940  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A6A04 002A3944  48 03 57 59 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802A6A08 002A3948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A6A0C 002A394C  7C 08 03 A6 */	mtlr r0
/* 802A6A10 002A3950  38 21 00 10 */	addi r1, r1, 0x10
/* 802A6A14 002A3954  4E 80 00 20 */	blr 

.global hasFailedBlock__16JAUSeqDataBlocksF10JAISoundID
hasFailedBlock__16JAUSeqDataBlocksF10JAISoundID:
/* 802A6A18 002A3958  80 A3 00 00 */	lwz r5, 0(r3)
/* 802A6A1C 002A395C  80 04 00 00 */	lwz r0, 0(r4)
/* 802A6A20 002A3960  48 00 00 28 */	b lbl_802A6A48
lbl_802A6A24:
/* 802A6A24 002A3964  80 65 00 00 */	lwz r3, 0(r5)
/* 802A6A28 002A3968  80 83 00 10 */	lwz r4, 0x10(r3)
/* 802A6A2C 002A396C  7C 04 00 40 */	cmplw r4, r0
/* 802A6A30 002A3970  40 82 00 14 */	bne lbl_802A6A44
/* 802A6A34 002A3974  38 00 FF FF */	li r0, -1
/* 802A6A38 002A3978  90 03 00 10 */	stw r0, 0x10(r3)
/* 802A6A3C 002A397C  38 60 00 01 */	li r3, 1
/* 802A6A40 002A3980  4E 80 00 20 */	blr 
lbl_802A6A44:
/* 802A6A44 002A3984  80 A5 00 0C */	lwz r5, 0xc(r5)
lbl_802A6A48:
/* 802A6A48 002A3988  28 05 00 00 */	cmplwi r5, 0
/* 802A6A4C 002A398C  40 82 FF D8 */	bne lbl_802A6A24
/* 802A6A50 002A3990  38 60 00 00 */	li r3, 0
/* 802A6A54 002A3994  4E 80 00 20 */	blr 

.global __ct__23JAUDynamicSeqDataBlocksFv
__ct__23JAUDynamicSeqDataBlocksFv:
/* 802A6A58 002A3998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A6A5C 002A399C  7C 08 02 A6 */	mflr r0
/* 802A6A60 002A39A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A6A64 002A39A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A6A68 002A39A8  7C 7F 1B 78 */	mr r31, r3
/* 802A6A6C 002A39AC  48 03 54 A9 */	bl initiate__10JSUPtrListFv
/* 802A6A70 002A39B0  38 7F 00 0C */	addi r3, r31, 0xc
/* 802A6A74 002A39B4  48 03 54 A1 */	bl initiate__10JSUPtrListFv
/* 802A6A78 002A39B8  38 7F 00 18 */	addi r3, r31, 0x18
/* 802A6A7C 002A39BC  48 03 54 99 */	bl initiate__10JSUPtrListFv
/* 802A6A80 002A39C0  38 00 00 00 */	li r0, 0
/* 802A6A84 002A39C4  90 1F 00 24 */	stw r0, 0x24(r31)
/* 802A6A88 002A39C8  7F E3 FB 78 */	mr r3, r31
/* 802A6A8C 002A39CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A6A90 002A39D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A6A94 002A39D4  7C 08 03 A6 */	mtlr r0
/* 802A6A98 002A39D8  38 21 00 10 */	addi r1, r1, 0x10
/* 802A6A9C 002A39DC  4E 80 00 20 */	blr 

.global setSeqDataArchive__23JAUDynamicSeqDataBlocksFP10JKRArchive
setSeqDataArchive__23JAUDynamicSeqDataBlocksFP10JKRArchive:
/* 802A6AA0 002A39E0  90 83 00 24 */	stw r4, 0x24(r3)
/* 802A6AA4 002A39E4  4E 80 00 20 */	blr 

.global getSeqData__23JAUDynamicSeqDataBlocksF10JAISoundIDP14JAISeqDataUserP10JAISeqDatab
getSeqData__23JAUDynamicSeqDataBlocksF10JAISoundIDP14JAISeqDataUserP10JAISeqDatab:
/* 802A6AA8 002A39E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A6AAC 002A39EC  7C 08 02 A6 */	mflr r0
/* 802A6AB0 002A39F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A6AB4 002A39F4  39 61 00 30 */	addi r11, r1, 0x30
/* 802A6AB8 002A39F8  48 0B B7 1D */	bl _savegpr_27
/* 802A6ABC 002A39FC  7C 7B 1B 78 */	mr r27, r3
/* 802A6AC0 002A3A00  7C 9C 23 78 */	mr r28, r4
/* 802A6AC4 002A3A04  7C BD 2B 78 */	mr r29, r5
/* 802A6AC8 002A3A08  7C DE 33 78 */	mr r30, r6
/* 802A6ACC 002A3A0C  7C FF 3B 78 */	mr r31, r7
/* 802A6AD0 002A3A10  48 00 04 0D */	bl rearrangeLoadingSeqs___23JAUDynamicSeqDataBlocksFv
/* 802A6AD4 002A3A14  80 1C 00 00 */	lwz r0, 0(r28)
/* 802A6AD8 002A3A18  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A6ADC 002A3A1C  7F 63 DB 78 */	mr r3, r27
/* 802A6AE0 002A3A20  38 81 00 14 */	addi r4, r1, 0x14
/* 802A6AE4 002A3A24  4B FF FF 35 */	bl hasFailedBlock__16JAUSeqDataBlocksF10JAISoundID
/* 802A6AE8 002A3A28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A6AEC 002A3A2C  41 82 00 0C */	beq lbl_802A6AF8
/* 802A6AF0 002A3A30  38 60 00 00 */	li r3, 0
/* 802A6AF4 002A3A34  48 00 00 80 */	b lbl_802A6B74
lbl_802A6AF8:
/* 802A6AF8 002A3A38  80 1C 00 00 */	lwz r0, 0(r28)
/* 802A6AFC 002A3A3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802A6B00 002A3A40  38 7B 00 0C */	addi r3, r27, 0xc
/* 802A6B04 002A3A44  38 81 00 10 */	addi r4, r1, 0x10
/* 802A6B08 002A3A48  4B FF FE 21 */	bl getSeqData__16JAUSeqDataBlocksF10JAISoundID
/* 802A6B0C 002A3A4C  28 03 00 00 */	cmplwi r3, 0
/* 802A6B10 002A3A50  41 82 00 0C */	beq lbl_802A6B1C
/* 802A6B14 002A3A54  38 60 00 01 */	li r3, 1
/* 802A6B18 002A3A58  48 00 00 5C */	b lbl_802A6B74
lbl_802A6B1C:
/* 802A6B1C 002A3A5C  80 1C 00 00 */	lwz r0, 0(r28)
/* 802A6B20 002A3A60  90 01 00 0C */	stw r0, 0xc(r1)
/* 802A6B24 002A3A64  38 7B 00 18 */	addi r3, r27, 0x18
/* 802A6B28 002A3A68  38 81 00 0C */	addi r4, r1, 0xc
/* 802A6B2C 002A3A6C  4B FF FD FD */	bl getSeqData__16JAUSeqDataBlocksF10JAISoundID
/* 802A6B30 002A3A70  28 03 00 00 */	cmplwi r3, 0
/* 802A6B34 002A3A74  41 82 00 18 */	beq lbl_802A6B4C
/* 802A6B38 002A3A78  90 7E 00 00 */	stw r3, 0(r30)
/* 802A6B3C 002A3A7C  38 00 00 00 */	li r0, 0
/* 802A6B40 002A3A80  90 1E 00 04 */	stw r0, 4(r30)
/* 802A6B44 002A3A84  38 60 00 02 */	li r3, 2
/* 802A6B48 002A3A88  48 00 00 2C */	b lbl_802A6B74
lbl_802A6B4C:
/* 802A6B4C 002A3A8C  80 1C 00 00 */	lwz r0, 0(r28)
/* 802A6B50 002A3A90  90 01 00 08 */	stw r0, 8(r1)
/* 802A6B54 002A3A94  7F 63 DB 78 */	mr r3, r27
/* 802A6B58 002A3A98  38 81 00 08 */	addi r4, r1, 8
/* 802A6B5C 002A3A9C  7F E5 FB 78 */	mr r5, r31
/* 802A6B60 002A3AA0  7F A6 EB 78 */	mr r6, r29
/* 802A6B64 002A3AA4  48 00 00 B5 */	bl loadDynamicSeq__23JAUDynamicSeqDataBlocksF10JAISoundIDbP14JAISeqDataUser
/* 802A6B68 002A3AA8  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 802A6B6C 002A3AAC  30 03 FF FF */	addic r0, r3, -1
/* 802A6B70 002A3AB0  7C 60 19 10 */	subfe r3, r0, r3
lbl_802A6B74:
/* 802A6B74 002A3AB4  39 61 00 30 */	addi r11, r1, 0x30
/* 802A6B78 002A3AB8  48 0B B6 A9 */	bl _restgpr_27
/* 802A6B7C 002A3ABC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802A6B80 002A3AC0  7C 08 03 A6 */	mtlr r0
/* 802A6B84 002A3AC4  38 21 00 30 */	addi r1, r1, 0x30
/* 802A6B88 002A3AC8  4E 80 00 20 */	blr 

.global appendDynamicSeqDataBlock__23JAUDynamicSeqDataBlocksFP15JAUSeqDataBlock
appendDynamicSeqDataBlock__23JAUDynamicSeqDataBlocksFP15JAUSeqDataBlock:
/* 802A6B8C 002A3ACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A6B90 002A3AD0  7C 08 02 A6 */	mflr r0
/* 802A6B94 002A3AD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A6B98 002A3AD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A6B9C 002A3ADC  93 C1 00 08 */	stw r30, 8(r1)
/* 802A6BA0 002A3AE0  7C 7E 1B 78 */	mr r30, r3
/* 802A6BA4 002A3AE4  7C 9F 23 78 */	mr r31, r4
/* 802A6BA8 002A3AE8  48 00 03 35 */	bl rearrangeLoadingSeqs___23JAUDynamicSeqDataBlocksFv
/* 802A6BAC 002A3AEC  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 802A6BB0 002A3AF0  3C 03 00 01 */	addis r0, r3, 1
/* 802A6BB4 002A3AF4  28 00 FF FF */	cmplwi r0, 0xffff
/* 802A6BB8 002A3AF8  40 82 00 14 */	bne lbl_802A6BCC
/* 802A6BBC 002A3AFC  7F C3 F3 78 */	mr r3, r30
/* 802A6BC0 002A3B00  7F E4 FB 78 */	mr r4, r31
/* 802A6BC4 002A3B04  4B FF FE 15 */	bl JAUSeqDataBlocks_NS_append
/* 802A6BC8 002A3B08  48 00 00 10 */	b lbl_802A6BD8
lbl_802A6BCC:
/* 802A6BCC 002A3B0C  38 7E 00 18 */	addi r3, r30, 0x18
/* 802A6BD0 002A3B10  7F E4 FB 78 */	mr r4, r31
/* 802A6BD4 002A3B14  4B FF FE 05 */	bl JAUSeqDataBlocks_NS_append
lbl_802A6BD8:
/* 802A6BD8 002A3B18  38 60 00 01 */	li r3, 1
/* 802A6BDC 002A3B1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A6BE0 002A3B20  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A6BE4 002A3B24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A6BE8 002A3B28  7C 08 03 A6 */	mtlr r0
/* 802A6BEC 002A3B2C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A6BF0 002A3B30  4E 80 00 20 */	blr 
.global JAUDynamicSeqDataBlocks_receiveLoaded___FUlUl
JAUDynamicSeqDataBlocks_receiveLoaded___FUlUl:
/* 802A6BF4 002A3B34  80 84 00 00 */	lwz r4, 0(r4)
/* 802A6BF8 002A3B38  28 03 00 00 */	cmplwi r3, 0
/* 802A6BFC 002A3B3C  41 82 00 10 */	beq lbl_802A6C0C
/* 802A6C00 002A3B40  38 00 00 02 */	li r0, 2
/* 802A6C04 002A3B44  90 04 00 1C */	stw r0, 0x1c(r4)
/* 802A6C08 002A3B48  4E 80 00 20 */	blr 
lbl_802A6C0C:
/* 802A6C0C 002A3B4C  38 00 00 00 */	li r0, 0
/* 802A6C10 002A3B50  90 04 00 1C */	stw r0, 0x1c(r4)
/* 802A6C14 002A3B54  4E 80 00 20 */	blr 

.global loadDynamicSeq__23JAUDynamicSeqDataBlocksF10JAISoundIDbP14JAISeqDataUser
loadDynamicSeq__23JAUDynamicSeqDataBlocksF10JAISoundIDbP14JAISeqDataUser:
/* 802A6C18 002A3B58  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A6C1C 002A3B5C  7C 08 02 A6 */	mflr r0
/* 802A6C20 002A3B60  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A6C24 002A3B64  39 61 00 30 */	addi r11, r1, 0x30
/* 802A6C28 002A3B68  48 0B B5 A5 */	bl _savegpr_25
/* 802A6C2C 002A3B6C  7C 7F 1B 78 */	mr r31, r3
/* 802A6C30 002A3B70  7C 99 23 78 */	mr r25, r4
/* 802A6C34 002A3B74  7C BA 2B 78 */	mr r26, r5
/* 802A6C38 002A3B78  7C DB 33 78 */	mr r27, r6
/* 802A6C3C 002A3B7C  80 03 00 24 */	lwz r0, 0x24(r3)
/* 802A6C40 002A3B80  28 00 00 00 */	cmplwi r0, 0
/* 802A6C44 002A3B84  40 82 00 0C */	bne lbl_802A6C50
/* 802A6C48 002A3B88  38 60 00 00 */	li r3, 0
/* 802A6C4C 002A3B8C  48 00 00 E4 */	b lbl_802A6D30
lbl_802A6C50:
/* 802A6C50 002A3B90  80 6D 85 D0 */	lwz r3, lbl_80450B50-_SDA_BASE_(r13)
/* 802A6C54 002A3B94  28 03 00 00 */	cmplwi r3, 0
/* 802A6C58 002A3B98  40 82 00 0C */	bne lbl_802A6C64
/* 802A6C5C 002A3B9C  38 60 00 00 */	li r3, 0
/* 802A6C60 002A3BA0  48 00 00 D0 */	b lbl_802A6D30
lbl_802A6C64:
/* 802A6C64 002A3BA4  80 19 00 00 */	lwz r0, 0(r25)
/* 802A6C68 002A3BA8  90 01 00 08 */	stw r0, 8(r1)
/* 802A6C6C 002A3BAC  38 81 00 08 */	addi r4, r1, 8
/* 802A6C70 002A3BB0  81 83 00 00 */	lwz r12, 0(r3)
/* 802A6C74 002A3BB4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A6C78 002A3BB8  7D 89 03 A6 */	mtctr r12
/* 802A6C7C 002A3BBC  4E 80 04 21 */	bctrl 
/* 802A6C80 002A3BC0  7C 7E 1B 78 */	mr r30, r3
/* 802A6C84 002A3BC4  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 802A6C88 002A3BC8  7F C4 F3 78 */	mr r4, r30
/* 802A6C8C 002A3BCC  4B FE 9F 45 */	bl getResSize__15JASResArcLoaderFPC10JKRArchiveUs
/* 802A6C90 002A3BD0  7C 7D 1B 78 */	mr r29, r3
/* 802A6C94 002A3BD4  7F E3 FB 78 */	mr r3, r31
/* 802A6C98 002A3BD8  7F A4 EB 78 */	mr r4, r29
/* 802A6C9C 002A3BDC  4B FF FC D9 */	bl seekFreeBlock__16JAUSeqDataBlocksFUl
/* 802A6CA0 002A3BE0  7C 7C 1B 79 */	or. r28, r3, r3
/* 802A6CA4 002A3BE4  40 82 00 34 */	bne lbl_802A6CD8
/* 802A6CA8 002A3BE8  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 802A6CAC 002A3BEC  41 82 00 24 */	beq lbl_802A6CD0
/* 802A6CB0 002A3BF0  7F E3 FB 78 */	mr r3, r31
/* 802A6CB4 002A3BF4  7F 64 DB 78 */	mr r4, r27
/* 802A6CB8 002A3BF8  7F A5 EB 78 */	mr r5, r29
/* 802A6CBC 002A3BFC  48 00 01 45 */	bl releaseIdleDynamicSeqDataBlock___23JAUDynamicSeqDataBlocksFP14JAISeqDataUserUl
/* 802A6CC0 002A3C00  7C 7C 1B 79 */	or. r28, r3, r3
/* 802A6CC4 002A3C04  40 82 00 14 */	bne lbl_802A6CD8
/* 802A6CC8 002A3C08  38 60 00 00 */	li r3, 0
/* 802A6CCC 002A3C0C  48 00 00 64 */	b lbl_802A6D30
lbl_802A6CD0:
/* 802A6CD0 002A3C10  38 60 00 00 */	li r3, 0
/* 802A6CD4 002A3C14  48 00 00 5C */	b lbl_802A6D30
lbl_802A6CD8:
/* 802A6CD8 002A3C18  7F E3 FB 78 */	mr r3, r31
/* 802A6CDC 002A3C1C  7F 84 E3 78 */	mr r4, r28
/* 802A6CE0 002A3C20  4B FF FD 19 */	bl JAUSeqDataBlocks_NS_remove
/* 802A6CE4 002A3C24  80 7C 00 00 */	lwz r3, 0(r28)
/* 802A6CE8 002A3C28  80 19 00 00 */	lwz r0, 0(r25)
/* 802A6CEC 002A3C2C  90 03 00 10 */	stw r0, 0x10(r3)
/* 802A6CF0 002A3C30  38 00 00 01 */	li r0, 1
/* 802A6CF4 002A3C34  80 7C 00 00 */	lwz r3, 0(r28)
/* 802A6CF8 002A3C38  90 03 00 1C */	stw r0, 0x1c(r3)
/* 802A6CFC 002A3C3C  38 7F 00 0C */	addi r3, r31, 0xc
/* 802A6D00 002A3C40  7F 84 E3 78 */	mr r4, r28
/* 802A6D04 002A3C44  4B FF FC D5 */	bl JAUSeqDataBlocks_NS_append
/* 802A6D08 002A3C48  80 DC 00 00 */	lwz r6, 0(r28)
/* 802A6D0C 002A3C4C  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 802A6D10 002A3C50  7F C4 F3 78 */	mr r4, r30
/* 802A6D14 002A3C54  80 A6 00 14 */	lwz r5, 0x14(r6)
/* 802A6D18 002A3C58  80 C6 00 18 */	lwz r6, 0x18(r6)
.global JAUDynamicSeqDataBlocks_receiveLoaded___FUlUl
/* 802A6D1C 002A3C5C  3C E0 80 2A */	lis r7, JAUDynamicSeqDataBlocks_receiveLoaded___FUlUl@ha
.global JAUDynamicSeqDataBlocks_receiveLoaded___FUlUl
/* 802A6D20 002A3C60  38 E7 6B F4 */	addi r7, r7, JAUDynamicSeqDataBlocks_receiveLoaded___FUlUl@l
/* 802A6D24 002A3C64  7F 88 E3 78 */	mr r8, r28
/* 802A6D28 002A3C68  4B FE 9F F1 */	bl loadResourceAsync__15JASResArcLoaderFP10JKRArchiveUsPUcUlPFUlUl_vUl
/* 802A6D2C 002A3C6C  38 60 00 01 */	li r3, 1
lbl_802A6D30:
/* 802A6D30 002A3C70  39 61 00 30 */	addi r11, r1, 0x30
/* 802A6D34 002A3C74  48 0B B4 E5 */	bl _restgpr_25
/* 802A6D38 002A3C78  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802A6D3C 002A3C7C  7C 08 03 A6 */	mtlr r0
/* 802A6D40 002A3C80  38 21 00 30 */	addi r1, r1, 0x30
/* 802A6D44 002A3C84  4E 80 00 20 */	blr 

.global releaseIdleDynamicSeqDataBlock__23JAUDynamicSeqDataBlocksFP14JAISeqDataUser
releaseIdleDynamicSeqDataBlock__23JAUDynamicSeqDataBlocksFP14JAISeqDataUser:
/* 802A6D48 002A3C88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A6D4C 002A3C8C  7C 08 02 A6 */	mflr r0
/* 802A6D50 002A3C90  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A6D54 002A3C94  39 61 00 20 */	addi r11, r1, 0x20
/* 802A6D58 002A3C98  48 0B B4 7D */	bl _savegpr_27
/* 802A6D5C 002A3C9C  7C 7B 1B 78 */	mr r27, r3
/* 802A6D60 002A3CA0  7C 9C 23 78 */	mr r28, r4
/* 802A6D64 002A3CA4  48 00 01 79 */	bl rearrangeLoadingSeqs___23JAUDynamicSeqDataBlocksFv
/* 802A6D68 002A3CA8  3B C0 00 00 */	li r30, 0
/* 802A6D6C 002A3CAC  83 BB 00 18 */	lwz r29, 0x18(r27)
/* 802A6D70 002A3CB0  48 00 00 6C */	b lbl_802A6DDC
lbl_802A6D74:
/* 802A6D74 002A3CB4  83 FD 00 0C */	lwz r31, 0xc(r29)
/* 802A6D78 002A3CB8  80 9D 00 00 */	lwz r4, 0(r29)
/* 802A6D7C 002A3CBC  28 1C 00 00 */	cmplwi r28, 0
/* 802A6D80 002A3CC0  41 82 00 24 */	beq lbl_802A6DA4
/* 802A6D84 002A3CC4  7F 83 E3 78 */	mr r3, r28
/* 802A6D88 002A3CC8  38 84 00 14 */	addi r4, r4, 0x14
/* 802A6D8C 002A3CCC  81 9C 00 00 */	lwz r12, 0(r28)
/* 802A6D90 002A3CD0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A6D94 002A3CD4  7D 89 03 A6 */	mtctr r12
/* 802A6D98 002A3CD8  4E 80 04 21 */	bctrl 
/* 802A6D9C 002A3CDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A6DA0 002A3CE0  40 82 00 38 */	bne lbl_802A6DD8
lbl_802A6DA4:
/* 802A6DA4 002A3CE4  38 7B 00 18 */	addi r3, r27, 0x18
/* 802A6DA8 002A3CE8  7F A4 EB 78 */	mr r4, r29
/* 802A6DAC 002A3CEC  4B FF FC 4D */	bl JAUSeqDataBlocks_NS_remove
/* 802A6DB0 002A3CF0  80 7D 00 00 */	lwz r3, 0(r29)
/* 802A6DB4 002A3CF4  38 00 FF FF */	li r0, -1
/* 802A6DB8 002A3CF8  90 03 00 10 */	stw r0, 0x10(r3)
/* 802A6DBC 002A3CFC  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802A6DC0 002A3D00  7C 1E 00 40 */	cmplw r30, r0
/* 802A6DC4 002A3D04  40 80 00 08 */	bge lbl_802A6DCC
/* 802A6DC8 002A3D08  7C 1E 03 78 */	mr r30, r0
lbl_802A6DCC:
/* 802A6DCC 002A3D0C  7F 63 DB 78 */	mr r3, r27
/* 802A6DD0 002A3D10  7F A4 EB 78 */	mr r4, r29
/* 802A6DD4 002A3D14  4B FF FC 05 */	bl JAUSeqDataBlocks_NS_append
lbl_802A6DD8:
/* 802A6DD8 002A3D18  7F FD FB 78 */	mr r29, r31
lbl_802A6DDC:
/* 802A6DDC 002A3D1C  28 1D 00 00 */	cmplwi r29, 0
/* 802A6DE0 002A3D20  40 82 FF 94 */	bne lbl_802A6D74
/* 802A6DE4 002A3D24  7F C3 F3 78 */	mr r3, r30
/* 802A6DE8 002A3D28  39 61 00 20 */	addi r11, r1, 0x20
/* 802A6DEC 002A3D2C  48 0B B4 35 */	bl _restgpr_27
/* 802A6DF0 002A3D30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A6DF4 002A3D34  7C 08 03 A6 */	mtlr r0
/* 802A6DF8 002A3D38  38 21 00 20 */	addi r1, r1, 0x20
/* 802A6DFC 002A3D3C  4E 80 00 20 */	blr 

.global releaseIdleDynamicSeqDataBlock___23JAUDynamicSeqDataBlocksFP14JAISeqDataUserUl
releaseIdleDynamicSeqDataBlock___23JAUDynamicSeqDataBlocksFP14JAISeqDataUserUl:
/* 802A6E00 002A3D40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A6E04 002A3D44  7C 08 02 A6 */	mflr r0
/* 802A6E08 002A3D48  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A6E0C 002A3D4C  39 61 00 30 */	addi r11, r1, 0x30
/* 802A6E10 002A3D50  48 0B B3 B9 */	bl _savegpr_24
/* 802A6E14 002A3D54  7C 78 1B 78 */	mr r24, r3
/* 802A6E18 002A3D58  7C 99 23 78 */	mr r25, r4
/* 802A6E1C 002A3D5C  7C BA 2B 78 */	mr r26, r5
/* 802A6E20 002A3D60  48 00 00 BD */	bl rearrangeLoadingSeqs___23JAUDynamicSeqDataBlocksFv
/* 802A6E24 002A3D64  3B A0 FF FF */	li r29, -1
/* 802A6E28 002A3D68  3B 80 00 00 */	li r28, 0
/* 802A6E2C 002A3D6C  83 78 00 18 */	lwz r27, 0x18(r24)
/* 802A6E30 002A3D70  48 00 00 54 */	b lbl_802A6E84
lbl_802A6E34:
/* 802A6E34 002A3D74  83 FB 00 0C */	lwz r31, 0xc(r27)
/* 802A6E38 002A3D78  83 DB 00 00 */	lwz r30, 0(r27)
/* 802A6E3C 002A3D7C  28 19 00 00 */	cmplwi r25, 0
/* 802A6E40 002A3D80  41 82 00 24 */	beq lbl_802A6E64
/* 802A6E44 002A3D84  7F 23 CB 78 */	mr r3, r25
/* 802A6E48 002A3D88  38 9E 00 14 */	addi r4, r30, 0x14
/* 802A6E4C 002A3D8C  81 99 00 00 */	lwz r12, 0(r25)
/* 802A6E50 002A3D90  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A6E54 002A3D94  7D 89 03 A6 */	mtctr r12
/* 802A6E58 002A3D98  4E 80 04 21 */	bctrl 
/* 802A6E5C 002A3D9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A6E60 002A3DA0  40 82 00 20 */	bne lbl_802A6E80
lbl_802A6E64:
/* 802A6E64 002A3DA4  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 802A6E68 002A3DA8  7C 00 D0 40 */	cmplw r0, r26
/* 802A6E6C 002A3DAC  41 80 00 14 */	blt lbl_802A6E80
/* 802A6E70 002A3DB0  7C 00 E8 40 */	cmplw r0, r29
/* 802A6E74 002A3DB4  40 80 00 0C */	bge lbl_802A6E80
/* 802A6E78 002A3DB8  7F 7C DB 78 */	mr r28, r27
/* 802A6E7C 002A3DBC  7C 1D 03 78 */	mr r29, r0
lbl_802A6E80:
/* 802A6E80 002A3DC0  7F FB FB 78 */	mr r27, r31
lbl_802A6E84:
/* 802A6E84 002A3DC4  28 1B 00 00 */	cmplwi r27, 0
/* 802A6E88 002A3DC8  40 82 FF AC */	bne lbl_802A6E34
/* 802A6E8C 002A3DCC  28 1C 00 00 */	cmplwi r28, 0
/* 802A6E90 002A3DD0  41 82 00 30 */	beq lbl_802A6EC0
/* 802A6E94 002A3DD4  38 78 00 18 */	addi r3, r24, 0x18
/* 802A6E98 002A3DD8  7F 84 E3 78 */	mr r4, r28
/* 802A6E9C 002A3DDC  4B FF FB 5D */	bl JAUSeqDataBlocks_NS_remove
/* 802A6EA0 002A3DE0  80 7C 00 00 */	lwz r3, 0(r28)
/* 802A6EA4 002A3DE4  38 00 FF FF */	li r0, -1
/* 802A6EA8 002A3DE8  90 03 00 10 */	stw r0, 0x10(r3)
/* 802A6EAC 002A3DEC  7F 03 C3 78 */	mr r3, r24
/* 802A6EB0 002A3DF0  7F 84 E3 78 */	mr r4, r28
/* 802A6EB4 002A3DF4  4B FF FB 25 */	bl JAUSeqDataBlocks_NS_append
/* 802A6EB8 002A3DF8  80 7C 00 00 */	lwz r3, 0(r28)
/* 802A6EBC 002A3DFC  48 00 00 08 */	b lbl_802A6EC4
lbl_802A6EC0:
/* 802A6EC0 002A3E00  38 60 00 00 */	li r3, 0
lbl_802A6EC4:
/* 802A6EC4 002A3E04  39 61 00 30 */	addi r11, r1, 0x30
/* 802A6EC8 002A3E08  48 0B B3 4D */	bl _restgpr_24
/* 802A6ECC 002A3E0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802A6ED0 002A3E10  7C 08 03 A6 */	mtlr r0
/* 802A6ED4 002A3E14  38 21 00 30 */	addi r1, r1, 0x30
/* 802A6ED8 002A3E18  4E 80 00 20 */	blr 

.global rearrangeLoadingSeqs___23JAUDynamicSeqDataBlocksFv
rearrangeLoadingSeqs___23JAUDynamicSeqDataBlocksFv:
/* 802A6EDC 002A3E1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A6EE0 002A3E20  7C 08 02 A6 */	mflr r0
/* 802A6EE4 002A3E24  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A6EE8 002A3E28  39 61 00 20 */	addi r11, r1, 0x20
/* 802A6EEC 002A3E2C  48 0B B2 F1 */	bl _savegpr_29
/* 802A6EF0 002A3E30  7C 7D 1B 78 */	mr r29, r3
/* 802A6EF4 002A3E34  83 C3 00 0C */	lwz r30, 0xc(r3)
/* 802A6EF8 002A3E38  48 00 00 58 */	b lbl_802A6F50
lbl_802A6EFC:
/* 802A6EFC 002A3E3C  83 FE 00 0C */	lwz r31, 0xc(r30)
/* 802A6F00 002A3E40  80 7E 00 00 */	lwz r3, 0(r30)
/* 802A6F04 002A3E44  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 802A6F08 002A3E48  2C 00 00 00 */	cmpwi r0, 0
/* 802A6F0C 002A3E4C  40 82 00 20 */	bne lbl_802A6F2C
/* 802A6F10 002A3E50  38 7D 00 0C */	addi r3, r29, 0xc
/* 802A6F14 002A3E54  7F C4 F3 78 */	mr r4, r30
/* 802A6F18 002A3E58  4B FF FA E1 */	bl JAUSeqDataBlocks_NS_remove
/* 802A6F1C 002A3E5C  7F A3 EB 78 */	mr r3, r29
/* 802A6F20 002A3E60  7F C4 F3 78 */	mr r4, r30
/* 802A6F24 002A3E64  4B FF FA B5 */	bl JAUSeqDataBlocks_NS_append
/* 802A6F28 002A3E68  48 00 00 24 */	b lbl_802A6F4C
lbl_802A6F2C:
/* 802A6F2C 002A3E6C  2C 00 00 02 */	cmpwi r0, 2
/* 802A6F30 002A3E70  40 82 00 1C */	bne lbl_802A6F4C
/* 802A6F34 002A3E74  38 7D 00 0C */	addi r3, r29, 0xc
/* 802A6F38 002A3E78  7F C4 F3 78 */	mr r4, r30
/* 802A6F3C 002A3E7C  4B FF FA BD */	bl JAUSeqDataBlocks_NS_remove
/* 802A6F40 002A3E80  38 7D 00 18 */	addi r3, r29, 0x18
/* 802A6F44 002A3E84  7F C4 F3 78 */	mr r4, r30
/* 802A6F48 002A3E88  4B FF FA 91 */	bl JAUSeqDataBlocks_NS_append
lbl_802A6F4C:
/* 802A6F4C 002A3E8C  7F FE FB 78 */	mr r30, r31
lbl_802A6F50:
/* 802A6F50 002A3E90  28 1E 00 00 */	cmplwi r30, 0
/* 802A6F54 002A3E94  40 82 FF A8 */	bne lbl_802A6EFC
/* 802A6F58 002A3E98  39 61 00 20 */	addi r11, r1, 0x20
/* 802A6F5C 002A3E9C  48 0B B2 CD */	bl _restgpr_29
/* 802A6F60 002A3EA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A6F64 002A3EA4  7C 08 03 A6 */	mtlr r0
/* 802A6F68 002A3EA8  38 21 00 20 */	addi r1, r1, 0x20
/* 802A6F6C 002A3EAC  4E 80 00 20 */	blr 

