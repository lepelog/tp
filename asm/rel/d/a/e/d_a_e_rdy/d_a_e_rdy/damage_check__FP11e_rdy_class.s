lbl_80773E5C:
/* 80773E5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80773E60  7C 08 02 A6 */	mflr r0
/* 80773E64  90 01 00 34 */	stw r0, 0x34(r1)
/* 80773E68  39 61 00 30 */	addi r11, r1, 0x30
/* 80773E6C  4B BE E3 60 */	b _savegpr_25
/* 80773E70  7C 7D 1B 78 */	mr r29, r3
/* 80773E74  3C 80 80 78 */	lis r4, lit_4018@ha
/* 80773E78  3B C4 9D FC */	addi r30, r4, lit_4018@l
/* 80773E7C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80773E80  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 80773E84  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 80773E88  88 03 0A 8F */	lbz r0, 0xa8f(r3)
/* 80773E8C  7C 00 07 75 */	extsb. r0, r0
/* 80773E90  41 82 00 38 */	beq lbl_80773EC8
/* 80773E94  38 00 00 00 */	li r0, 0
/* 80773E98  98 1D 0A 8F */	stb r0, 0xa8f(r29)
/* 80773E9C  4B FF FC 89 */	bl big_damage__FP11e_rdy_class
/* 80773EA0  38 00 03 E8 */	li r0, 0x3e8
/* 80773EA4  B0 1D 0A 68 */	sth r0, 0xa68(r29)
/* 80773EA8  38 00 00 00 */	li r0, 0
/* 80773EAC  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 80773EB0  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 80773EB4  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80773EB8  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80773EBC  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 80773EC0  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 80773EC4  48 00 03 70 */	b lbl_80774234
lbl_80773EC8:
/* 80773EC8  38 7D 0E 08 */	addi r3, r29, 0xe08
/* 80773ECC  4B 90 F9 64 */	b Move__10dCcD_GSttsFv
/* 80773ED0  A8 1D 0A 68 */	lha r0, 0xa68(r29)
/* 80773ED4  2C 00 00 00 */	cmpwi r0, 0
/* 80773ED8  40 82 03 5C */	bne lbl_80774234
/* 80773EDC  3C 60 80 78 */	lis r3, l_HIO@ha
/* 80773EE0  38 63 A8 84 */	addi r3, r3, l_HIO@l
/* 80773EE4  88 03 00 39 */	lbz r0, 0x39(r3)
/* 80773EE8  28 00 00 00 */	cmplwi r0, 0
/* 80773EEC  41 82 00 0C */	beq lbl_80773EF8
/* 80773EF0  38 00 00 64 */	li r0, 0x64
/* 80773EF4  B0 1D 05 62 */	sth r0, 0x562(r29)
lbl_80773EF8:
/* 80773EF8  3B 60 00 00 */	li r27, 0
/* 80773EFC  3B 40 00 00 */	li r26, 0
lbl_80773F00:
/* 80773F00  3B 3A 0E 28 */	addi r25, r26, 0xe28
/* 80773F04  7F 3D CA 14 */	add r25, r29, r25
/* 80773F08  7F 23 CB 78 */	mr r3, r25
/* 80773F0C  4B 91 05 54 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80773F10  28 03 00 00 */	cmplwi r3, 0
/* 80773F14  41 82 02 DC */	beq lbl_807741F0
/* 80773F18  38 00 00 06 */	li r0, 6
/* 80773F1C  B0 1D 0A 68 */	sth r0, 0xa68(r29)
/* 80773F20  38 00 00 03 */	li r0, 3
/* 80773F24  98 1D 13 6B */	stb r0, 0x136b(r29)
/* 80773F28  7F 23 CB 78 */	mr r3, r25
/* 80773F2C  4B 91 05 CC */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80773F30  90 7D 13 08 */	stw r3, 0x1308(r29)
/* 80773F34  80 7D 13 08 */	lwz r3, 0x1308(r29)
/* 80773F38  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80773F3C  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 80773F40  41 82 00 18 */	beq lbl_80773F58
/* 80773F44  7F A3 EB 78 */	mr r3, r29
/* 80773F48  4B FF FB 45 */	bl wolfkick_damage__FP11e_rdy_class
/* 80773F4C  38 00 03 E8 */	li r0, 0x3e8
/* 80773F50  B0 1D 0A 68 */	sth r0, 0xa68(r29)
/* 80773F54  48 00 02 AC */	b lbl_80774200
lbl_80773F58:
/* 80773F58  38 7D 13 08 */	addi r3, r29, 0x1308
/* 80773F5C  4B 91 3A FC */	b at_power_check__FP11dCcU_AtInfo
/* 80773F60  80 7D 13 08 */	lwz r3, 0x1308(r29)
/* 80773F64  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80773F68  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80773F6C  41 82 00 10 */	beq lbl_80773F7C
/* 80773F70  38 00 00 1E */	li r0, 0x1e
/* 80773F74  B0 1D 0A 62 */	sth r0, 0xa62(r29)
/* 80773F78  48 00 00 0C */	b lbl_80773F84
lbl_80773F7C:
/* 80773F7C  38 00 00 01 */	li r0, 1
/* 80773F80  B0 1D 0A 62 */	sth r0, 0xa62(r29)
lbl_80773F84:
/* 80773F84  88 7D 13 28 */	lbz r3, 0x1328(r29)
/* 80773F88  28 03 00 01 */	cmplwi r3, 1
/* 80773F8C  41 82 00 4C */	beq lbl_80773FD8
/* 80773F90  28 03 00 10 */	cmplwi r3, 0x10
/* 80773F94  41 82 00 44 */	beq lbl_80773FD8
/* 80773F98  28 03 00 02 */	cmplwi r3, 2
/* 80773F9C  41 82 00 3C */	beq lbl_80773FD8
/* 80773FA0  88 1D 13 65 */	lbz r0, 0x1365(r29)
/* 80773FA4  7C 00 07 75 */	extsb. r0, r0
/* 80773FA8  41 82 00 30 */	beq lbl_80773FD8
/* 80773FAC  38 00 03 E8 */	li r0, 0x3e8
/* 80773FB0  B0 1D 0A 68 */	sth r0, 0xa68(r29)
/* 80773FB4  38 00 00 16 */	li r0, 0x16
/* 80773FB8  B0 1D 0A 42 */	sth r0, 0xa42(r29)
/* 80773FBC  38 00 00 00 */	li r0, 0
/* 80773FC0  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80773FC4  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 80773FC8  7F A3 EB 78 */	mr r3, r29
/* 80773FCC  38 9D 13 08 */	addi r4, r29, 0x1308
/* 80773FD0  4B 91 3C 34 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 80773FD4  48 00 02 60 */	b lbl_80774234
lbl_80773FD8:
/* 80773FD8  88 1D 0A 8C */	lbz r0, 0xa8c(r29)
/* 80773FDC  7C 00 07 75 */	extsb. r0, r0
/* 80773FE0  40 82 00 5C */	bne lbl_8077403C
/* 80773FE4  28 03 00 0F */	cmplwi r3, 0xf
/* 80773FE8  40 82 00 54 */	bne lbl_8077403C
/* 80773FEC  38 00 00 17 */	li r0, 0x17
/* 80773FF0  B0 1D 0A 42 */	sth r0, 0xa42(r29)
/* 80773FF4  38 00 00 00 */	li r0, 0
/* 80773FF8  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80773FFC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070013@ha */
/* 80774000  38 03 00 13 */	addi r0, r3, 0x0013 /* 0x00070013@l */
/* 80774004  90 01 00 08 */	stw r0, 8(r1)
/* 80774008  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 8077400C  38 81 00 08 */	addi r4, r1, 8
/* 80774010  38 A0 FF FF */	li r5, -1
/* 80774014  81 9D 05 D0 */	lwz r12, 0x5d0(r29)
/* 80774018  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8077401C  7D 89 03 A6 */	mtctr r12
/* 80774020  4E 80 04 21 */	bctrl 
/* 80774024  38 00 00 00 */	li r0, 0
/* 80774028  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 8077402C  7F A3 EB 78 */	mr r3, r29
/* 80774030  38 9D 13 08 */	addi r4, r29, 0x1308
/* 80774034  4B 91 3B D0 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 80774038  48 00 01 FC */	b lbl_80774234
lbl_8077403C:
/* 8077403C  7F A3 EB 78 */	mr r3, r29
/* 80774040  38 9D 13 08 */	addi r4, r29, 0x1308
/* 80774044  4B 91 3B C0 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 80774048  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8077404C  88 03 05 68 */	lbz r0, 0x568(r3)
/* 80774050  28 00 00 05 */	cmplwi r0, 5
/* 80774054  40 82 00 0C */	bne lbl_80774060
/* 80774058  38 00 00 00 */	li r0, 0
/* 8077405C  B0 1D 05 62 */	sth r0, 0x562(r29)
lbl_80774060:
/* 80774060  80 7D 13 08 */	lwz r3, 0x1308(r29)
/* 80774064  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80774068  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 8077406C  41 82 00 10 */	beq lbl_8077407C
/* 80774070  38 00 00 14 */	li r0, 0x14
/* 80774074  B0 1D 0A 68 */	sth r0, 0xa68(r29)
/* 80774078  48 00 00 0C */	b lbl_80774084
lbl_8077407C:
/* 8077407C  38 00 00 0A */	li r0, 0xa
/* 80774080  B0 1D 0A 68 */	sth r0, 0xa68(r29)
lbl_80774084:
/* 80774084  A0 1D 13 24 */	lhz r0, 0x1324(r29)
/* 80774088  28 00 00 01 */	cmplwi r0, 1
/* 8077408C  41 81 00 0C */	bgt lbl_80774098
/* 80774090  38 00 00 0A */	li r0, 0xa
/* 80774094  B0 1D 0A 68 */	sth r0, 0xa68(r29)
lbl_80774098:
/* 80774098  80 7D 0A F0 */	lwz r3, 0xaf0(r29)
/* 8077409C  80 1D 13 1C */	lwz r0, 0x131c(r29)
/* 807740A0  7C 60 03 78 */	or r0, r3, r0
/* 807740A4  90 1D 0A F0 */	stw r0, 0xaf0(r29)
/* 807740A8  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807740AC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807740B0  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 807740B4  7D 89 03 A6 */	mtctr r12
/* 807740B8  4E 80 04 21 */	bctrl 
/* 807740BC  28 03 00 00 */	cmplwi r3, 0
/* 807740C0  41 82 00 38 */	beq lbl_807740F8
/* 807740C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807740C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807740CC  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 807740D0  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 807740D4  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 807740D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807740DC  4C 41 13 82 */	cror 2, 1, 2
/* 807740E0  40 82 00 18 */	bne lbl_807740F8
/* 807740E4  88 1D 13 28 */	lbz r0, 0x1328(r29)
/* 807740E8  28 00 00 01 */	cmplwi r0, 1
/* 807740EC  40 82 00 0C */	bne lbl_807740F8
/* 807740F0  38 00 00 14 */	li r0, 0x14
/* 807740F4  B0 1D 13 24 */	sth r0, 0x1324(r29)
lbl_807740F8:
/* 807740F8  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 807740FC  2C 00 00 00 */	cmpwi r0, 0
/* 80774100  40 81 00 28 */	ble lbl_80774128
/* 80774104  A0 1D 13 24 */	lhz r0, 0x1324(r29)
/* 80774108  28 00 00 14 */	cmplwi r0, 0x14
/* 8077410C  40 80 00 1C */	bge lbl_80774128
/* 80774110  88 1D 13 27 */	lbz r0, 0x1327(r29)
/* 80774114  7C 00 07 75 */	extsb. r0, r0
/* 80774118  40 82 00 10 */	bne lbl_80774128
/* 8077411C  88 1D 0A 8C */	lbz r0, 0xa8c(r29)
/* 80774120  7C 00 07 75 */	extsb. r0, r0
/* 80774124  41 82 00 58 */	beq lbl_8077417C
lbl_80774128:
/* 80774128  88 1C 05 68 */	lbz r0, 0x568(r28)
/* 8077412C  28 00 00 0A */	cmplwi r0, 0xa
/* 80774130  40 82 00 38 */	bne lbl_80774168
/* 80774134  7F 83 E3 78 */	mr r3, r28
/* 80774138  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 8077413C  81 8C 01 3C */	lwz r12, 0x13c(r12)
/* 80774140  7D 89 03 A6 */	mtctr r12
/* 80774144  4E 80 04 21 */	bctrl 
/* 80774148  2C 03 00 00 */	cmpwi r3, 0
/* 8077414C  41 82 00 1C */	beq lbl_80774168
/* 80774150  7F A3 EB 78 */	mr r3, r29
/* 80774154  7F 64 DB 78 */	mr r4, r27
/* 80774158  4B FF FB D5 */	bl small_damage__FP11e_rdy_classi
/* 8077415C  38 00 00 03 */	li r0, 3
/* 80774160  B0 1D 0A 68 */	sth r0, 0xa68(r29)
/* 80774164  48 00 00 34 */	b lbl_80774198
lbl_80774168:
/* 80774168  7F A3 EB 78 */	mr r3, r29
/* 8077416C  4B FF F9 B9 */	bl big_damage__FP11e_rdy_class
/* 80774170  38 00 03 E8 */	li r0, 0x3e8
/* 80774174  B0 1D 0A 68 */	sth r0, 0xa68(r29)
/* 80774178  48 00 00 20 */	b lbl_80774198
lbl_8077417C:
/* 8077417C  7F 64 DB 78 */	mr r4, r27
/* 80774180  88 1D 13 28 */	lbz r0, 0x1328(r29)
/* 80774184  28 00 00 10 */	cmplwi r0, 0x10
/* 80774188  40 82 00 08 */	bne lbl_80774190
/* 8077418C  38 80 00 00 */	li r4, 0
lbl_80774190:
/* 80774190  7F A3 EB 78 */	mr r3, r29
/* 80774194  4B FF FB 99 */	bl small_damage__FP11e_rdy_classi
lbl_80774198:
/* 80774198  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077419C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807741A0  80 1D 06 94 */	lwz r0, 0x694(r29)
/* 807741A4  28 00 00 00 */	cmplwi r0, 0
/* 807741A8  41 82 00 58 */	beq lbl_80774200
/* 807741AC  80 7D 06 74 */	lwz r3, 0x674(r29)
/* 807741B0  38 80 00 0B */	li r4, 0xb
/* 807741B4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 807741B8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807741BC  3C A5 00 02 */	addis r5, r5, 2
/* 807741C0  38 C0 00 80 */	li r6, 0x80
/* 807741C4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807741C8  4B 8C 81 24 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807741CC  7C 64 1B 78 */	mr r4, r3
/* 807741D0  80 7D 06 94 */	lwz r3, 0x694(r29)
/* 807741D4  38 A0 00 00 */	li r5, 0
/* 807741D8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807741DC  FC 40 08 90 */	fmr f2, f1
/* 807741E0  C0 7E 00 04 */	lfs f3, 4(r30)
/* 807741E4  C0 9E 00 60 */	lfs f4, 0x60(r30)
/* 807741E8  4B 89 CC 88 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 807741EC  48 00 00 14 */	b lbl_80774200
lbl_807741F0:
/* 807741F0  3B 7B 00 01 */	addi r27, r27, 1
/* 807741F4  2C 1B 00 02 */	cmpwi r27, 2
/* 807741F8  3B 5A 01 38 */	addi r26, r26, 0x138
/* 807741FC  40 81 FD 04 */	ble lbl_80773F00
lbl_80774200:
/* 80774200  38 60 00 00 */	li r3, 0
/* 80774204  38 A0 00 00 */	li r5, 0
/* 80774208  38 80 00 03 */	li r4, 3
/* 8077420C  38 00 00 03 */	li r0, 3
/* 80774210  7C 09 03 A6 */	mtctr r0
lbl_80774214:
/* 80774214  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 80774218  2C 00 00 01 */	cmpwi r0, 1
/* 8077421C  41 81 00 10 */	bgt lbl_8077422C
/* 80774220  B0 BD 05 62 */	sth r5, 0x562(r29)
/* 80774224  38 03 0E E2 */	addi r0, r3, 0xee2
/* 80774228  7C 9D 01 AE */	stbx r4, r29, r0
lbl_8077422C:
/* 8077422C  38 63 01 38 */	addi r3, r3, 0x138
/* 80774230  42 00 FF E4 */	bdnz lbl_80774214
lbl_80774234:
/* 80774234  39 61 00 30 */	addi r11, r1, 0x30
/* 80774238  4B BE DF E0 */	b _restgpr_25
/* 8077423C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80774240  7C 08 03 A6 */	mtlr r0
/* 80774244  38 21 00 30 */	addi r1, r1, 0x30
/* 80774248  4E 80 00 20 */	blr 