.include "macros.inc"

.section .text, "ax" # 80249c20


.global dMsgString_c
dMsgString_c:
/* 80249C20 00246B60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80249C24 00246B64  7C 08 02 A6 */	mflr r0
/* 80249C28 00246B68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80249C2C 00246B6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80249C30 00246B70  7C 7F 1B 78 */	mr r31, r3
/* 80249C34 00246B74  4B FF F7 81 */	bl dMsgStringBase_c
/* 80249C38 00246B78  3C 60 80 3C */	lis r3, lbl_803C1498@ha
/* 80249C3C 00246B7C  38 03 14 98 */	addi r0, r3, lbl_803C1498@l
/* 80249C40 00246B80  90 1F 00 00 */	stw r0, 0(r31)
/* 80249C44 00246B84  38 00 00 00 */	li r0, 0
/* 80249C48 00246B88  98 1F 00 28 */	stb r0, 0x28(r31)
/* 80249C4C 00246B8C  38 60 02 44 */	li r3, 0x244
/* 80249C50 00246B90  48 08 4F FD */	bl __nw__FUl
/* 80249C54 00246B94  7C 60 1B 79 */	or. r0, r3, r3
/* 80249C58 00246B98  41 82 00 10 */	beq lbl_80249C68
/* 80249C5C 00246B9C  88 9F 00 28 */	lbz r4, 0x28(r31)
/* 80249C60 00246BA0  4B FD C0 35 */	bl COutFont_c
/* 80249C64 00246BA4  7C 60 1B 78 */	mr r0, r3
lbl_80249C68:
/* 80249C68 00246BA8  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80249C6C 00246BAC  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 80249C70 00246BB0  81 83 00 00 */	lwz r12, 0(r3)
/* 80249C74 00246BB4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80249C78 00246BB8  7D 89 03 A6 */	mtctr r12
/* 80249C7C 00246BBC  4E 80 04 21 */	bctrl 
/* 80249C80 00246BC0  7F E3 FB 78 */	mr r3, r31
/* 80249C84 00246BC4  4B FF FA 7D */	bl dMsgStringBase_c_NS_getResource
/* 80249C88 00246BC8  7F E3 FB 78 */	mr r3, r31
/* 80249C8C 00246BCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80249C90 00246BD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80249C94 00246BD4  7C 08 03 A6 */	mtlr r0
/* 80249C98 00246BD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80249C9C 00246BDC  4E 80 00 20 */	blr 

.global dMsgString_c_X1_
dMsgString_c_X1_:
/* 80249CA0 00246BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80249CA4 00246BE4  7C 08 02 A6 */	mflr r0
/* 80249CA8 00246BE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80249CAC 00246BEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80249CB0 00246BF0  93 C1 00 08 */	stw r30, 8(r1)
/* 80249CB4 00246BF4  7C 7E 1B 78 */	mr r30, r3
/* 80249CB8 00246BF8  7C 9F 23 78 */	mr r31, r4
/* 80249CBC 00246BFC  4B FF F6 F9 */	bl dMsgStringBase_c
/* 80249CC0 00246C00  3C 60 80 3C */	lis r3, lbl_803C1498@ha
/* 80249CC4 00246C04  38 03 14 98 */	addi r0, r3, lbl_803C1498@l
/* 80249CC8 00246C08  90 1E 00 00 */	stw r0, 0(r30)
/* 80249CCC 00246C0C  9B FE 00 28 */	stb r31, 0x28(r30)
/* 80249CD0 00246C10  38 60 02 44 */	li r3, 0x244
/* 80249CD4 00246C14  48 08 4F 79 */	bl __nw__FUl
/* 80249CD8 00246C18  7C 60 1B 79 */	or. r0, r3, r3
/* 80249CDC 00246C1C  41 82 00 10 */	beq lbl_80249CEC
/* 80249CE0 00246C20  88 9E 00 28 */	lbz r4, 0x28(r30)
/* 80249CE4 00246C24  4B FD BF B1 */	bl COutFont_c
/* 80249CE8 00246C28  7C 60 1B 78 */	mr r0, r3
lbl_80249CEC:
/* 80249CEC 00246C2C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80249CF0 00246C30  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 80249CF4 00246C34  81 83 00 00 */	lwz r12, 0(r3)
/* 80249CF8 00246C38  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80249CFC 00246C3C  7D 89 03 A6 */	mtctr r12
/* 80249D00 00246C40  4E 80 04 21 */	bctrl 
/* 80249D04 00246C44  7F C3 F3 78 */	mr r3, r30
/* 80249D08 00246C48  4B FF F9 F9 */	bl dMsgStringBase_c_NS_getResource
/* 80249D0C 00246C4C  7F C3 F3 78 */	mr r3, r30
/* 80249D10 00246C50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80249D14 00246C54  83 C1 00 08 */	lwz r30, 8(r1)
/* 80249D18 00246C58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80249D1C 00246C5C  7C 08 03 A6 */	mtlr r0
/* 80249D20 00246C60  38 21 00 10 */	addi r1, r1, 0x10
/* 80249D24 00246C64  4E 80 00 20 */	blr 

.global dMsgString_c_NS_dtor
dMsgString_c_NS_dtor:
/* 80249D28 00246C68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80249D2C 00246C6C  7C 08 02 A6 */	mflr r0
/* 80249D30 00246C70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80249D34 00246C74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80249D38 00246C78  93 C1 00 08 */	stw r30, 8(r1)
/* 80249D3C 00246C7C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80249D40 00246C80  7C 9F 23 78 */	mr r31, r4
/* 80249D44 00246C84  41 82 00 54 */	beq lbl_80249D98
/* 80249D48 00246C88  3C 60 80 3C */	lis r3, lbl_803C1498@ha
/* 80249D4C 00246C8C  38 03 14 98 */	addi r0, r3, lbl_803C1498@l
/* 80249D50 00246C90  90 1E 00 00 */	stw r0, 0(r30)
/* 80249D54 00246C94  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 80249D58 00246C98  28 03 00 00 */	cmplwi r3, 0
/* 80249D5C 00246C9C  41 82 00 18 */	beq lbl_80249D74
/* 80249D60 00246CA0  38 80 00 01 */	li r4, 1
/* 80249D64 00246CA4  81 83 00 00 */	lwz r12, 0(r3)
/* 80249D68 00246CA8  81 8C 00 08 */	lwz r12, 8(r12)
/* 80249D6C 00246CAC  7D 89 03 A6 */	mtctr r12
/* 80249D70 00246CB0  4E 80 04 21 */	bctrl 
lbl_80249D74:
/* 80249D74 00246CB4  38 00 00 00 */	li r0, 0
/* 80249D78 00246CB8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80249D7C 00246CBC  7F C3 F3 78 */	mr r3, r30
/* 80249D80 00246CC0  38 80 00 00 */	li r4, 0
/* 80249D84 00246CC4  4B FF F7 A5 */	bl dMsgStringBase_c_NS_dtor
/* 80249D88 00246CC8  7F E0 07 35 */	extsh. r0, r31
/* 80249D8C 00246CCC  40 81 00 0C */	ble lbl_80249D98
/* 80249D90 00246CD0  7F C3 F3 78 */	mr r3, r30
/* 80249D94 00246CD4  48 08 4F A9 */	bl __dl__FPv
lbl_80249D98:
/* 80249D98 00246CD8  7F C3 F3 78 */	mr r3, r30
/* 80249D9C 00246CDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80249DA0 00246CE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80249DA4 00246CE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80249DA8 00246CE8  7C 08 03 A6 */	mtlr r0
/* 80249DAC 00246CEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80249DB0 00246CF0  4E 80 00 20 */	blr 
/* 80249DB4 00246CF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80249DB8 00246CF8  7C 08 02 A6 */	mflr r0
/* 80249DBC 00246CFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80249DC0 00246D00  80 63 00 24 */	lwz r3, 0x24(r3)
/* 80249DC4 00246D04  81 83 00 00 */	lwz r12, 0(r3)
/* 80249DC8 00246D08  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80249DCC 00246D0C  7D 89 03 A6 */	mtctr r12
/* 80249DD0 00246D10  4E 80 04 21 */	bctrl 
/* 80249DD4 00246D14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80249DD8 00246D18  7C 08 03 A6 */	mtlr r0
/* 80249DDC 00246D1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80249DE0 00246D20  4E 80 00 20 */	blr 
/* 80249DE4 00246D24  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80249DE8 00246D28  7C 08 02 A6 */	mflr r0
/* 80249DEC 00246D2C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80249DF0 00246D30  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80249DF4 00246D34  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 80249DF8 00246D38  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80249DFC 00246D3C  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 80249E00 00246D40  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80249E04 00246D44  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80249E08 00246D48  7C 7E 1B 78 */	mr r30, r3
/* 80249E0C 00246D4C  7C 9F 23 78 */	mr r31, r4
/* 80249E10 00246D50  FF C0 08 90 */	fmr f30, f1
/* 80249E14 00246D54  38 61 00 08 */	addi r3, r1, 8
/* 80249E18 00246D58  38 A0 00 00 */	li r5, 0
/* 80249E1C 00246D5C  48 0A DB 8D */	bl getGlbVtx__7J2DPaneCFUc
/* 80249E20 00246D60  80 61 00 08 */	lwz r3, 8(r1)
/* 80249E24 00246D64  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80249E28 00246D68  90 61 00 14 */	stw r3, 0x14(r1)
/* 80249E2C 00246D6C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80249E30 00246D70  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80249E34 00246D74  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80249E38 00246D78  C3 E1 00 18 */	lfs f31, 0x18(r1)
/* 80249E3C 00246D7C  C0 02 B3 7C */	lfs f0, lbl_80454D7C-_SDA2_BASE_(r2)
/* 80249E40 00246D80  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 80249E44 00246D84  40 82 00 28 */	bne lbl_80249E6C
/* 80249E48 00246D88  88 1F 00 B2 */	lbz r0, 0xb2(r31)
/* 80249E4C 00246D8C  C8 22 B3 88 */	lfd f1, lbl_80454D88-_SDA2_BASE_(r2)
/* 80249E50 00246D90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80249E54 00246D94  3C 00 43 30 */	lis r0, 0x4330
/* 80249E58 00246D98  90 01 00 20 */	stw r0, 0x20(r1)
/* 80249E5C 00246D9C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80249E60 00246DA0  EC 20 08 28 */	fsubs f1, f0, f1
/* 80249E64 00246DA4  C0 02 B3 78 */	lfs f0, lbl_80454D78-_SDA2_BASE_(r2)
/* 80249E68 00246DA8  EF C1 00 24 */	fdivs f30, f1, f0
lbl_80249E6C:
/* 80249E6C 00246DAC  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 80249E70 00246DB0  FC 20 F0 90 */	fmr f1, f30
/* 80249E74 00246DB4  81 83 00 00 */	lwz r12, 0(r3)
/* 80249E78 00246DB8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80249E7C 00246DBC  7D 89 03 A6 */	mtctr r12
/* 80249E80 00246DC0  4E 80 04 21 */	bctrl 
/* 80249E84 00246DC4  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 80249E88 00246DC8  7F E4 FB 78 */	mr r4, r31
/* 80249E8C 00246DCC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80249E90 00246DD0  FC 40 F8 90 */	fmr f2, f31
/* 80249E94 00246DD4  C0 62 B3 80 */	lfs f3, lbl_80454D80-_SDA2_BASE_(r2)
/* 80249E98 00246DD8  81 83 00 00 */	lwz r12, 0(r3)
/* 80249E9C 00246DDC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80249EA0 00246DE0  7D 89 03 A6 */	mtctr r12
/* 80249EA4 00246DE4  4E 80 04 21 */	bctrl 
/* 80249EA8 00246DE8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 80249EAC 00246DEC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80249EB0 00246DF0  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 80249EB4 00246DF4  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80249EB8 00246DF8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80249EBC 00246DFC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80249EC0 00246E00  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80249EC4 00246E04  7C 08 03 A6 */	mtlr r0
/* 80249EC8 00246E08  38 21 00 50 */	addi r1, r1, 0x50
/* 80249ECC 00246E0C  4E 80 00 20 */	blr 
/* 80249ED0 00246E10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80249ED4 00246E14  7C 08 02 A6 */	mflr r0
/* 80249ED8 00246E18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80249EDC 00246E1C  80 63 00 24 */	lwz r3, 0x24(r3)
/* 80249EE0 00246E20  81 83 00 00 */	lwz r12, 0(r3)
/* 80249EE4 00246E24  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80249EE8 00246E28  7D 89 03 A6 */	mtctr r12
/* 80249EEC 00246E2C  4E 80 04 21 */	bctrl 
/* 80249EF0 00246E30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80249EF4 00246E34  7C 08 03 A6 */	mtlr r0
/* 80249EF8 00246E38  38 21 00 10 */	addi r1, r1, 0x10
/* 80249EFC 00246E3C  4E 80 00 20 */	blr 

