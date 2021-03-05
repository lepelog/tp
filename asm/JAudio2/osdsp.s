.include "macros.inc"

.section .text, "ax" # 8029ea00


.global DSPAddTask
DSPAddTask:
/* 8029EA00 0029B940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029EA04 0029B944  7C 08 02 A6 */	mflr r0
/* 8029EA08 0029B948  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029EA0C 0029B94C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029EA10 0029B950  93 C1 00 08 */	stw r30, 8(r1)
/* 8029EA14 0029B954  7C 7E 1B 78 */	mr r30, r3
/* 8029EA18 0029B958  80 0D 8D 8C */	lwz r0, lbl_8045130C-_SDA_BASE_(r13)
/* 8029EA1C 0029B95C  28 00 00 00 */	cmplwi r0, 0
/* 8029EA20 0029B960  40 82 00 1C */	bne lbl_8029EA3C
/* 8029EA24 0029B964  3C 60 80 3A */	lis r3, lbl_8039B8B8@ha
/* 8029EA28 0029B968  38 63 B8 B8 */	addi r3, r3, lbl_8039B8B8@l
/* 8029EA2C 0029B96C  4C C6 31 82 */	crclr 6
/* 8029EA30 0029B970  4B D6 80 8D */	bl OSReport
/* 8029EA34 0029B974  38 60 00 00 */	li r3, 0
/* 8029EA38 0029B978  48 00 00 34 */	b lbl_8029EA6C
lbl_8029EA3C:
/* 8029EA3C 0029B97C  48 09 EC B9 */	bl __RAS_OSDisableInterrupts_begin 
/* 8029EA40 0029B980  7C 60 1B 78 */	mr r0, r3
/* 8029EA44 0029B984  7F C3 F3 78 */	mr r3, r30
/* 8029EA48 0029B988  7C 1F 03 78 */	mr r31, r0
/* 8029EA4C 0029B98C  48 0B 3E B1 */	bl __DSP_insert_task
/* 8029EA50 0029B990  38 60 00 00 */	li r3, 0
/* 8029EA54 0029B994  38 00 00 01 */	li r0, 1
/* 8029EA58 0029B998  90 7E 00 00 */	stw r3, 0(r30)
/* 8029EA5C 0029B99C  7F E3 FB 78 */	mr r3, r31
/* 8029EA60 0029B9A0  90 1E 00 08 */	stw r0, 8(r30)
/* 8029EA64 0029B9A4  48 09 EC B9 */	bl OSRestoreInterrupts
/* 8029EA68 0029B9A8  7F C3 F3 78 */	mr r3, r30
lbl_8029EA6C:
/* 8029EA6C 0029B9AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029EA70 0029B9B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029EA74 0029B9B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029EA78 0029B9B8  7C 08 03 A6 */	mtlr r0
/* 8029EA7C 0029B9BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8029EA80 0029B9C0  4E 80 00 20 */	blr 
/* 8029EA84 0029B9C4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029EA88 0029B9C8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029EA8C 0029B9CC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029EA90 0029B9D0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029EA94 0029B9D4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029EA98 0029B9D8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8029EA9C 0029B9DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global DSPAddPriorTask__FP15STRUCT_DSP_TASK
DSPAddPriorTask__FP15STRUCT_DSP_TASK:
/* 8029EAA0 0029B9E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029EAA4 0029B9E4  7C 08 02 A6 */	mflr r0
/* 8029EAA8 0029B9E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029EAAC 0029B9EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029EAB0 0029B9F0  93 C1 00 08 */	stw r30, 8(r1)
/* 8029EAB4 0029B9F4  7C 7E 1B 78 */	mr r30, r3
/* 8029EAB8 0029B9F8  80 0D 8D 8C */	lwz r0, lbl_8045130C-_SDA_BASE_(r13)
/* 8029EABC 0029B9FC  28 00 00 00 */	cmplwi r0, 0
/* 8029EAC0 0029BA00  41 82 00 18 */	beq lbl_8029EAD8
/* 8029EAC4 0029BA04  3C 60 80 3A */	lis r3, lbl_8039B8D4@ha
/* 8029EAC8 0029BA08  38 63 B8 D4 */	addi r3, r3, lbl_8039B8D4@l
/* 8029EACC 0029BA0C  4C C6 31 82 */	crclr 6
/* 8029EAD0 0029BA10  4B D6 7F ED */	bl OSReport
/* 8029EAD4 0029BA14  48 00 00 30 */	b lbl_8029EB04
lbl_8029EAD8:
/* 8029EAD8 0029BA18  48 09 EC 1D */	bl __RAS_OSDisableInterrupts_begin 
/* 8029EADC 0029BA1C  93 CD 8D 8C */	stw r30, lbl_8045130C-_SDA_BASE_(r13)
/* 8029EAE0 0029BA20  38 80 00 00 */	li r4, 0
/* 8029EAE4 0029BA24  7C 7F 1B 78 */	mr r31, r3
/* 8029EAE8 0029BA28  38 00 00 01 */	li r0, 1
/* 8029EAEC 0029BA2C  90 9E 00 00 */	stw r4, 0(r30)
/* 8029EAF0 0029BA30  7F C3 F3 78 */	mr r3, r30
/* 8029EAF4 0029BA34  90 1E 00 08 */	stw r0, 8(r30)
/* 8029EAF8 0029BA38  48 0B 3C 79 */	bl __DSP_boot_task
/* 8029EAFC 0029BA3C  7F E3 FB 78 */	mr r3, r31
/* 8029EB00 0029BA40  48 09 EC 1D */	bl OSRestoreInterrupts
lbl_8029EB04:
/* 8029EB04 0029BA44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029EB08 0029BA48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029EB0C 0029BA4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029EB10 0029BA50  7C 08 03 A6 */	mtlr r0
/* 8029EB14 0029BA54  38 21 00 10 */	addi r1, r1, 0x10
/* 8029EB18 0029BA58  4E 80 00 20 */	blr 
/* 8029EB1C 0029BA5C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
