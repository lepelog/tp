lbl_80729A3C:
/* 80729A3C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80729A40  7C 08 02 A6 */	mflr r0
/* 80729A44  90 01 00 44 */	stw r0, 0x44(r1)
/* 80729A48  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80729A4C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80729A50  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80729A54  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80729A58  39 61 00 20 */	addi r11, r1, 0x20
/* 80729A5C  4B C3 87 80 */	b _savegpr_29
/* 80729A60  7C 7D 1B 78 */	mr r29, r3
/* 80729A64  7C 9E 23 78 */	mr r30, r4
/* 80729A68  FF C0 08 90 */	fmr f30, f1
/* 80729A6C  7C BF 2B 78 */	mr r31, r5
/* 80729A70  FF E0 10 90 */	fmr f31, f2
/* 80729A74  3C 60 80 73 */	lis r3, stringBase0@ha
/* 80729A78  38 63 C2 40 */	addi r3, r3, stringBase0@l
/* 80729A7C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80729A80  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80729A84  3C A5 00 02 */	addis r5, r5, 2
/* 80729A88  38 C0 00 80 */	li r6, 0x80
/* 80729A8C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80729A90  4B 91 28 5C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80729A94  7C 64 1B 78 */	mr r4, r3
/* 80729A98  80 7D 05 E0 */	lwz r3, 0x5e0(r29)
/* 80729A9C  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80729AA0  FC 20 F0 90 */	fmr f1, f30
/* 80729AA4  FC 40 F8 90 */	fmr f2, f31
/* 80729AA8  3C C0 80 73 */	lis r6, lit_3790@ha
/* 80729AAC  C0 66 C1 84 */	lfs f3, lit_3790@l(r6)
/* 80729AB0  3C C0 80 73 */	lis r6, lit_3828@ha
/* 80729AB4  C0 86 C1 C0 */	lfs f4, lit_3828@l(r6)
/* 80729AB8  4B 8E 73 B8 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80729ABC  93 DD 05 E4 */	stw r30, 0x5e4(r29)
/* 80729AC0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80729AC4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80729AC8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80729ACC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80729AD0  39 61 00 20 */	addi r11, r1, 0x20
/* 80729AD4  4B C3 87 54 */	b _restgpr_29
/* 80729AD8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80729ADC  7C 08 03 A6 */	mtlr r0
/* 80729AE0  38 21 00 40 */	addi r1, r1, 0x40
/* 80729AE4  4E 80 00 20 */	blr 