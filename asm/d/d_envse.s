.include "macros.inc"

.section .text, "ax" # 80182dd4


/* 80182DD4 0017FD14  38 60 00 01 */	li r3, 1
/* 80182DD8 0017FD18  4E 80 00 20 */	blr 

.global dEnvSe_getNearPathPos
dEnvSe_getNearPathPos:
/* 80182DDC 0017FD1C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80182DE0 0017FD20  7C 08 02 A6 */	mflr r0
/* 80182DE4 0017FD24  90 01 00 74 */	stw r0, 0x74(r1)
/* 80182DE8 0017FD28  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80182DEC 0017FD2C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 80182DF0 0017FD30  39 61 00 60 */	addi r11, r1, 0x60
/* 80182DF4 0017FD34  48 1D F3 DD */	bl _savegpr_26
/* 80182DF8 0017FD38  7C 7E 1B 78 */	mr r30, r3
/* 80182DFC 0017FD3C  7C 9F 23 78 */	mr r31, r4
/* 80182E00 0017FD40  7C BA 2B 78 */	mr r26, r5
/* 80182E04 0017FD44  3B 80 00 00 */	li r28, 0
/* 80182E08 0017FD48  80 62 D1 80 */	lwz r3, lbl_80456B80-_SDA2_BASE_(r2)
/* 80182E0C 0017FD4C  80 02 D1 84 */	lwz r0, lbl_80456B84-_SDA2_BASE_(r2)
/* 80182E10 0017FD50  90 61 00 0C */	stw r3, 0xc(r1)
/* 80182E14 0017FD54  90 01 00 10 */	stw r0, 0x10(r1)
/* 80182E18 0017FD58  3C 60 80 45 */	lis r3, lbl_80450AE8@ha
/* 80182E1C 0017FD5C  C3 E3 0A E8 */	lfs f31, lbl_80450AE8@l(r3)
/* 80182E20 0017FD60  83 65 00 08 */	lwz r27, 8(r5)
/* 80182E24 0017FD64  3C 60 80 3A */	lis r3, lbl_803A78F8@ha
/* 80182E28 0017FD68  38 03 78 F8 */	addi r0, r3, lbl_803A78F8@l
/* 80182E2C 0017FD6C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80182E30 0017FD70  3B A0 00 00 */	li r29, 0
/* 80182E34 0017FD74  48 00 00 2C */	b lbl_80182E60
lbl_80182E38:
/* 80182E38 0017FD78  7F E3 FB 78 */	mr r3, r31
/* 80182E3C 0017FD7C  38 9B 00 04 */	addi r4, r27, 4
/* 80182E40 0017FD80  48 1C 45 5D */	bl PSVECSquareDistance
/* 80182E44 0017FD84  D0 21 00 08 */	stfs f1, 8(r1)
/* 80182E48 0017FD88  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80182E4C 0017FD8C  40 81 00 0C */	ble lbl_80182E58
/* 80182E50 0017FD90  FF E0 08 90 */	fmr f31, f1
/* 80182E54 0017FD94  7F BC EB 78 */	mr r28, r29
lbl_80182E58:
/* 80182E58 0017FD98  3B 7B 00 10 */	addi r27, r27, 0x10
/* 80182E5C 0017FD9C  3B BD 00 01 */	addi r29, r29, 1
lbl_80182E60:
/* 80182E60 0017FDA0  A0 1A 00 00 */	lhz r0, 0(r26)
/* 80182E64 0017FDA4  7C 1D 00 00 */	cmpw r29, r0
/* 80182E68 0017FDA8  41 80 FF D0 */	blt lbl_80182E38
/* 80182E6C 0017FDAC  80 7A 00 08 */	lwz r3, 8(r26)
/* 80182E70 0017FDB0  57 80 20 36 */	slwi r0, r28, 4
/* 80182E74 0017FDB4  7F A3 02 14 */	add r29, r3, r0
/* 80182E78 0017FDB8  2C 1C 00 00 */	cmpwi r28, 0
/* 80182E7C 0017FDBC  41 82 00 30 */	beq lbl_80182EAC
/* 80182E80 0017FDC0  38 61 00 14 */	addi r3, r1, 0x14
/* 80182E84 0017FDC4  38 9D FF F4 */	addi r4, r29, -12
/* 80182E88 0017FDC8  38 BD 00 04 */	addi r5, r29, 4
/* 80182E8C 0017FDCC  48 0E C4 91 */	bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 80182E90 0017FDD0  38 61 00 14 */	addi r3, r1, 0x14
/* 80182E94 0017FDD4  7F E4 FB 78 */	mr r4, r31
/* 80182E98 0017FDD8  38 A1 00 30 */	addi r5, r1, 0x30
/* 80182E9C 0017FDDC  38 C1 00 08 */	addi r6, r1, 8
/* 80182EA0 0017FDE0  48 0E 58 71 */	bl cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 80182EA4 0017FDE4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80182EA8 0017FDE8  90 01 00 0C */	stw r0, 0xc(r1)
lbl_80182EAC:
/* 80182EAC 0017FDEC  A0 7A 00 00 */	lhz r3, 0(r26)
/* 80182EB0 0017FDF0  38 03 FF FF */	addi r0, r3, -1
/* 80182EB4 0017FDF4  7C 1C 00 00 */	cmpw r28, r0
/* 80182EB8 0017FDF8  41 82 00 30 */	beq lbl_80182EE8
/* 80182EBC 0017FDFC  38 61 00 14 */	addi r3, r1, 0x14
/* 80182EC0 0017FE00  38 9D 00 04 */	addi r4, r29, 4
/* 80182EC4 0017FE04  38 BD 00 14 */	addi r5, r29, 0x14
/* 80182EC8 0017FE08  48 0E C4 55 */	bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 80182ECC 0017FE0C  38 61 00 14 */	addi r3, r1, 0x14
/* 80182ED0 0017FE10  7F E4 FB 78 */	mr r4, r31
/* 80182ED4 0017FE14  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80182ED8 0017FE18  38 C1 00 08 */	addi r6, r1, 8
/* 80182EDC 0017FE1C  48 0E 58 35 */	bl cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 80182EE0 0017FE20  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80182EE4 0017FE24  90 01 00 10 */	stw r0, 0x10(r1)
lbl_80182EE8:
/* 80182EE8 0017FE28  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80182EEC 0017FE2C  2C 00 00 00 */	cmpwi r0, 0
/* 80182EF0 0017FE30  41 82 00 7C */	beq lbl_80182F6C
/* 80182EF4 0017FE34  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80182EF8 0017FE38  2C 00 00 00 */	cmpwi r0, 0
/* 80182EFC 0017FE3C  41 82 00 54 */	beq lbl_80182F50
/* 80182F00 0017FE40  38 61 00 3C */	addi r3, r1, 0x3c
/* 80182F04 0017FE44  7F E4 FB 78 */	mr r4, r31
/* 80182F08 0017FE48  48 1C 44 95 */	bl PSVECSquareDistance
/* 80182F0C 0017FE4C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80182F10 0017FE50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80182F14 0017FE54  40 81 00 20 */	ble lbl_80182F34
/* 80182F18 0017FE58  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80182F1C 0017FE5C  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80182F20 0017FE60  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80182F24 0017FE64  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80182F28 0017FE68  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80182F2C 0017FE6C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80182F30 0017FE70  48 00 00 7C */	b lbl_80182FAC
lbl_80182F34:
/* 80182F34 0017FE74  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80182F38 0017FE78  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80182F3C 0017FE7C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80182F40 0017FE80  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80182F44 0017FE84  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80182F48 0017FE88  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80182F4C 0017FE8C  48 00 00 60 */	b lbl_80182FAC
lbl_80182F50:
/* 80182F50 0017FE90  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80182F54 0017FE94  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80182F58 0017FE98  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80182F5C 0017FE9C  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80182F60 0017FEA0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80182F64 0017FEA4  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80182F68 0017FEA8  48 00 00 44 */	b lbl_80182FAC
lbl_80182F6C:
/* 80182F6C 0017FEAC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80182F70 0017FEB0  2C 00 00 00 */	cmpwi r0, 0
/* 80182F74 0017FEB4  41 82 00 20 */	beq lbl_80182F94
/* 80182F78 0017FEB8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80182F7C 0017FEBC  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80182F80 0017FEC0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80182F84 0017FEC4  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80182F88 0017FEC8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80182F8C 0017FECC  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80182F90 0017FED0  48 00 00 1C */	b lbl_80182FAC
lbl_80182F94:
/* 80182F94 0017FED4  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80182F98 0017FED8  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80182F9C 0017FEDC  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80182FA0 0017FEE0  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80182FA4 0017FEE4  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80182FA8 0017FEE8  D0 1E 00 08 */	stfs f0, 8(r30)
lbl_80182FAC:
/* 80182FAC 0017FEEC  3C 60 80 3A */	lis r3, lbl_803A78F8@ha
/* 80182FB0 0017FEF0  38 03 78 F8 */	addi r0, r3, lbl_803A78F8@l
/* 80182FB4 0017FEF4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80182FB8 0017FEF8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 80182FBC 0017FEFC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80182FC0 0017FF00  39 61 00 60 */	addi r11, r1, 0x60
/* 80182FC4 0017FF04  48 1D F2 59 */	bl _restgpr_26
/* 80182FC8 0017FF08  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80182FCC 0017FF0C  7C 08 03 A6 */	mtlr r0
/* 80182FD0 0017FF10  38 21 00 70 */	addi r1, r1, 0x70
/* 80182FD4 0017FF14  4E 80 00 20 */	blr 

.global execute_common__8dEnvSe_cFP18dStage_SoundInfo_cPScUc
execute_common__8dEnvSe_cFP18dStage_SoundInfo_cPScUc:
/* 80182FD8 0017FF18  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80182FDC 0017FF1C  7C 08 02 A6 */	mflr r0
/* 80182FE0 0017FF20  90 01 00 74 */	stw r0, 0x74(r1)
/* 80182FE4 0017FF24  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80182FE8 0017FF28  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 80182FEC 0017FF2C  39 61 00 60 */	addi r11, r1, 0x60
/* 80182FF0 0017FF30  48 1D F1 D1 */	bl _savegpr_22
/* 80182FF4 0017FF34  7C 7E 1B 78 */	mr r30, r3
/* 80182FF8 0017FF38  7C BD 2B 78 */	mr r29, r5
/* 80182FFC 0017FF3C  7C D6 33 78 */	mr r22, r6
/* 80183000 0017FF40  8B 6D 87 E4 */	lbz r27, lbl_80450D64-_SDA_BASE_(r13)
/* 80183004 0017FF44  7F 7B 07 74 */	extsb r27, r27
/* 80183008 0017FF48  7F 7C DB 78 */	mr r28, r27
/* 8018300C 0017FF4C  3B 20 00 00 */	li r25, 0
/* 80183010 0017FF50  28 04 00 00 */	cmplwi r4, 0
/* 80183014 0017FF54  40 82 00 0C */	bne lbl_80183020
/* 80183018 0017FF58  38 60 00 01 */	li r3, 1
/* 8018301C 0017FF5C  48 00 04 44 */	b lbl_80183460
lbl_80183020:
/* 80183020 0017FF60  83 44 00 00 */	lwz r26, 0(r4)
/* 80183024 0017FF64  83 E4 00 04 */	lwz r31, 4(r4)
/* 80183028 0017FF68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8018302C 0017FF6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80183030 0017FF70  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80183034 0017FF74  7C 00 07 74 */	extsb r0, r0
/* 80183038 0017FF78  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8018303C 0017FF7C  7C 63 02 14 */	add r3, r3, r0
/* 80183040 0017FF80  80 83 5D 74 */	lwz r4, 0x5d74(r3)
/* 80183044 0017FF84  38 61 00 08 */	addi r3, r1, 8
/* 80183048 0017FF88  38 84 02 48 */	addi r4, r4, 0x248
/* 8018304C 0017FF8C  4B FF EE 19 */	bl Eye__9dCamera_cFv
/* 80183050 0017FF90  C0 01 00 08 */	lfs f0, 8(r1)
/* 80183054 0017FF94  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80183058 0017FF98  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8018305C 0017FF9C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80183060 0017FFA0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80183064 0017FFA4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80183068 0017FFA8  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 8018306C 0017FFAC  40 82 00 08 */	bne lbl_80183074
/* 80183070 0017FFB0  3B 80 FF FF */	li r28, -1
lbl_80183074:
/* 80183074 0017FFB4  3C 60 80 39 */	lis r3, lbl_80394308@ha
/* 80183078 0017FFB8  3B 03 43 08 */	addi r24, r3, lbl_80394308@l
/* 8018307C 0017FFBC  48 00 03 D8 */	b lbl_80183454
lbl_80183080:
/* 80183080 0017FFC0  7F E3 FB 78 */	mr r3, r31
/* 80183084 0017FFC4  7F 04 C3 78 */	mr r4, r24
/* 80183088 0017FFC8  38 A0 00 06 */	li r5, 6
/* 8018308C 0017FFCC  48 1E 30 01 */	bl func_8036608C
/* 80183090 0017FFD0  2C 03 00 00 */	cmpwi r3, 0
/* 80183094 0017FFD4  40 82 00 6C */	bne lbl_80183100
/* 80183098 0017FFD8  88 1D 00 00 */	lbz r0, 0(r29)
/* 8018309C 0017FFDC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801830A0 0017FFE0  40 82 00 38 */	bne lbl_801830D8
/* 801830A4 0017FFE4  88 9F 00 17 */	lbz r4, 0x17(r31)
/* 801830A8 0017FFE8  28 04 00 00 */	cmplwi r4, 0
/* 801830AC 0017FFEC  41 82 00 20 */	beq lbl_801830CC
/* 801830B0 0017FFF0  3C 60 80 43 */	lis r3, lbl_8042DD70@ha
/* 801830B4 0017FFF4  38 63 DD 70 */	addi r3, r3, lbl_8042DD70@l
/* 801830B8 0017FFF8  88 BF 00 14 */	lbz r5, 0x14(r31)
/* 801830BC 0017FFFC  88 DF 00 19 */	lbz r6, 0x19(r31)
/* 801830C0 00180000  88 FF 00 1A */	lbz r7, 0x1a(r31)
/* 801830C4 00180004  39 1F 00 08 */	addi r8, r31, 8
/* 801830C8 00180008  48 14 3B BD */	bl initStaticEnvSe__10Z2EnvSeMgrFUcUcUcUcP3Vec
lbl_801830CC:
/* 801830CC 0018000C  88 1D 00 00 */	lbz r0, 0(r29)
/* 801830D0 00180010  60 00 00 01 */	ori r0, r0, 1
/* 801830D4 00180014  98 1D 00 00 */	stb r0, 0(r29)
lbl_801830D8:
/* 801830D8 00180018  2C 19 00 00 */	cmpwi r25, 0
/* 801830DC 0018001C  40 82 00 1C */	bne lbl_801830F8
/* 801830E0 00180020  7F 63 DB 78 */	mr r3, r27
/* 801830E4 00180024  4B EA 9F 89 */	bl dComIfGp_getReverb
/* 801830E8 00180028  7C 64 1B 78 */	mr r4, r3
/* 801830EC 0018002C  3C 60 80 43 */	lis r3, lbl_8042DD70@ha
/* 801830F0 00180030  38 63 DD 70 */	addi r3, r3, lbl_8042DD70@l
/* 801830F4 00180034  48 14 3F D5 */	bl startStaticEnvSe__10Z2EnvSeMgrFSc
lbl_801830F8:
/* 801830F8 00180038  3B 20 00 01 */	li r25, 1
/* 801830FC 0018003C  48 00 03 50 */	b lbl_8018344C
lbl_80183100:
/* 80183100 00180040  88 9F 00 17 */	lbz r4, 0x17(r31)
/* 80183104 00180044  28 04 00 08 */	cmplwi r4, 8
/* 80183108 00180048  40 80 00 A0 */	bge lbl_801831A8
/* 8018310C 0018004C  88 1D 00 00 */	lbz r0, 0(r29)
/* 80183110 00180050  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80183114 00180054  40 82 00 28 */	bne lbl_8018313C
/* 80183118 00180058  3C 60 80 43 */	lis r3, lbl_8042DD70@ha
/* 8018311C 0018005C  38 63 DD 70 */	addi r3, r3, lbl_8042DD70@l
/* 80183120 00180060  88 BF 00 14 */	lbz r5, 0x14(r31)
/* 80183124 00180064  88 DF 00 19 */	lbz r6, 0x19(r31)
/* 80183128 00180068  88 FF 00 1A */	lbz r7, 0x1a(r31)
/* 8018312C 0018006C  48 14 4F CD */	bl initRiverSe__10Z2EnvSeMgrFUcUcUcUc
/* 80183130 00180070  88 1D 00 00 */	lbz r0, 0(r29)
/* 80183134 00180074  60 00 00 02 */	ori r0, r0, 2
/* 80183138 00180078  98 1D 00 00 */	stb r0, 0(r29)
lbl_8018313C:
/* 8018313C 0018007C  88 7F 00 18 */	lbz r3, 0x18(r31)
/* 80183140 00180080  7F 84 E3 78 */	mr r4, r28
/* 80183144 00180084  4B EC E6 A9 */	bl dPath_GetRoomPath
/* 80183148 00180088  7C 76 1B 78 */	mr r22, r3
/* 8018314C 0018008C  3C 60 80 43 */	lis r3, lbl_8042DD70@ha
/* 80183150 00180090  3A E3 DD 70 */	addi r23, r3, lbl_8042DD70@l
/* 80183154 00180094  48 00 00 30 */	b lbl_80183184
lbl_80183158:
/* 80183158 00180098  38 7E 00 DC */	addi r3, r30, 0xdc
/* 8018315C 0018009C  38 81 00 20 */	addi r4, r1, 0x20
/* 80183160 001800A0  7E C5 B3 78 */	mr r5, r22
/* 80183164 001800A4  4B FF FC 79 */	bl dEnvSe_getNearPathPos
/* 80183168 001800A8  7E E3 BB 78 */	mr r3, r23
/* 8018316C 001800AC  38 9E 00 DC */	addi r4, r30, 0xdc
/* 80183170 001800B0  48 14 50 C5 */	bl registRiverSePos__10Z2EnvSeMgrFP3Vec
/* 80183174 001800B4  7E C3 B3 78 */	mr r3, r22
/* 80183178 001800B8  7F 84 E3 78 */	mr r4, r28
/* 8018317C 001800BC  4B EC E7 1D */	bl dPath_GetNextRoomPath
/* 80183180 001800C0  7C 76 1B 78 */	mr r22, r3
lbl_80183184:
/* 80183184 001800C4  28 16 00 00 */	cmplwi r22, 0
/* 80183188 001800C8  40 82 FF D0 */	bne lbl_80183158
/* 8018318C 001800CC  7F 63 DB 78 */	mr r3, r27
/* 80183190 001800D0  4B EA 9E DD */	bl dComIfGp_getReverb
/* 80183194 001800D4  7C 64 1B 78 */	mr r4, r3
/* 80183198 001800D8  3C 60 80 43 */	lis r3, lbl_8042DD70@ha
/* 8018319C 001800DC  38 63 DD 70 */	addi r3, r3, lbl_8042DD70@l
/* 801831A0 001800E0  48 14 51 61 */	bl startRiverSe__10Z2EnvSeMgrFSc
/* 801831A4 001800E4  48 00 02 A8 */	b lbl_8018344C
lbl_801831A8:
/* 801831A8 001800E8  28 04 00 10 */	cmplwi r4, 0x10
/* 801831AC 001800EC  40 80 00 F0 */	bge lbl_8018329C
/* 801831B0 001800F0  3C 60 80 45 */	lis r3, lbl_80450AE8@ha
/* 801831B4 001800F4  C3 E3 0A E8 */	lfs f31, lbl_80450AE8@l(r3)
/* 801831B8 001800F8  88 1D 00 00 */	lbz r0, 0(r29)
/* 801831BC 001800FC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 801831C0 00180100  40 82 00 28 */	bne lbl_801831E8
/* 801831C4 00180104  3C 60 80 43 */	lis r3, lbl_8042DD70@ha
/* 801831C8 00180108  38 63 DD 70 */	addi r3, r3, lbl_8042DD70@l
/* 801831CC 0018010C  88 BF 00 14 */	lbz r5, 0x14(r31)
/* 801831D0 00180110  88 DF 00 19 */	lbz r6, 0x19(r31)
/* 801831D4 00180114  88 FF 00 1A */	lbz r7, 0x1a(r31)
/* 801831D8 00180118  48 14 55 59 */	bl initFallSe__10Z2EnvSeMgrFUcUcUcUc
/* 801831DC 0018011C  88 1D 00 00 */	lbz r0, 0(r29)
/* 801831E0 00180120  60 00 00 04 */	ori r0, r0, 4
/* 801831E4 00180124  98 1D 00 00 */	stb r0, 0(r29)
lbl_801831E8:
/* 801831E8 00180128  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801831EC 0018012C  D0 1E 00 DC */	stfs f0, 0xdc(r30)
/* 801831F0 00180130  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 801831F4 00180134  D0 1E 00 E0 */	stfs f0, 0xe0(r30)
/* 801831F8 00180138  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 801831FC 0018013C  D0 1E 00 E4 */	stfs f0, 0xe4(r30)
/* 80183200 00180140  88 7F 00 18 */	lbz r3, 0x18(r31)
/* 80183204 00180144  7F 84 E3 78 */	mr r4, r28
/* 80183208 00180148  4B EC E5 E5 */	bl dPath_GetRoomPath
/* 8018320C 0018014C  7C 76 1B 78 */	mr r22, r3
/* 80183210 00180150  3C 60 80 43 */	lis r3, lbl_8042DD70@ha
/* 80183214 00180154  3A E3 DD 70 */	addi r23, r3, lbl_8042DD70@l
/* 80183218 00180158  48 00 00 60 */	b lbl_80183278
lbl_8018321C:
/* 8018321C 0018015C  38 61 00 14 */	addi r3, r1, 0x14
/* 80183220 00180160  38 81 00 20 */	addi r4, r1, 0x20
/* 80183224 00180164  7E C5 B3 78 */	mr r5, r22
/* 80183228 00180168  4B FF FB B5 */	bl dEnvSe_getNearPathPos
/* 8018322C 0018016C  38 61 00 14 */	addi r3, r1, 0x14
/* 80183230 00180170  38 81 00 20 */	addi r4, r1, 0x20
/* 80183234 00180174  48 1C 41 69 */	bl PSVECSquareDistance
/* 80183238 00180178  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8018323C 0018017C  40 80 00 20 */	bge lbl_8018325C
/* 80183240 00180180  FF E0 08 90 */	fmr f31, f1
/* 80183244 00180184  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80183248 00180188  D0 1E 00 DC */	stfs f0, 0xdc(r30)
/* 8018324C 0018018C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80183250 00180190  D0 1E 00 E0 */	stfs f0, 0xe0(r30)
/* 80183254 00180194  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80183258 00180198  D0 1E 00 E4 */	stfs f0, 0xe4(r30)
lbl_8018325C:
/* 8018325C 0018019C  7E E3 BB 78 */	mr r3, r23
/* 80183260 001801A0  38 81 00 14 */	addi r4, r1, 0x14
/* 80183264 001801A4  48 14 56 09 */	bl registFallSePos__10Z2EnvSeMgrFP3Vec
/* 80183268 001801A8  7E C3 B3 78 */	mr r3, r22
/* 8018326C 001801AC  7F 84 E3 78 */	mr r4, r28
/* 80183270 001801B0  4B EC E6 29 */	bl dPath_GetNextRoomPath
/* 80183274 001801B4  7C 76 1B 78 */	mr r22, r3
lbl_80183278:
/* 80183278 001801B8  28 16 00 00 */	cmplwi r22, 0
/* 8018327C 001801BC  40 82 FF A0 */	bne lbl_8018321C
/* 80183280 001801C0  7F 63 DB 78 */	mr r3, r27
/* 80183284 001801C4  4B EA 9D E9 */	bl dComIfGp_getReverb
/* 80183288 001801C8  7C 64 1B 78 */	mr r4, r3
/* 8018328C 001801CC  3C 60 80 43 */	lis r3, lbl_8042DD70@ha
/* 80183290 001801D0  38 63 DD 70 */	addi r3, r3, lbl_8042DD70@l
/* 80183294 001801D4  48 14 55 FD */	bl startFallSe__10Z2EnvSeMgrFSc
/* 80183298 001801D8  48 00 01 B4 */	b lbl_8018344C
lbl_8018329C:
/* 8018329C 001801DC  28 04 00 20 */	cmplwi r4, 0x20
/* 801832A0 001801E0  40 80 00 A0 */	bge lbl_80183340
/* 801832A4 001801E4  88 1D 00 00 */	lbz r0, 0(r29)
/* 801832A8 001801E8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 801832AC 001801EC  40 82 00 28 */	bne lbl_801832D4
/* 801832B0 001801F0  3C 60 80 43 */	lis r3, lbl_8042DD70@ha
/* 801832B4 001801F4  38 63 DD 70 */	addi r3, r3, lbl_8042DD70@l
/* 801832B8 001801F8  88 BF 00 14 */	lbz r5, 0x14(r31)
/* 801832BC 001801FC  88 DF 00 19 */	lbz r6, 0x19(r31)
/* 801832C0 00180200  88 FF 00 1A */	lbz r7, 0x1a(r31)
/* 801832C4 00180204  48 14 57 CD */	bl initEtcSe__10Z2EnvSeMgrFUcUcUcUc
/* 801832C8 00180208  88 1D 00 00 */	lbz r0, 0(r29)
/* 801832CC 0018020C  60 00 00 08 */	ori r0, r0, 8
/* 801832D0 00180210  98 1D 00 00 */	stb r0, 0(r29)
lbl_801832D4:
/* 801832D4 00180214  88 7F 00 18 */	lbz r3, 0x18(r31)
/* 801832D8 00180218  7F 84 E3 78 */	mr r4, r28
/* 801832DC 0018021C  4B EC E5 11 */	bl dPath_GetRoomPath
/* 801832E0 00180220  7C 76 1B 78 */	mr r22, r3
/* 801832E4 00180224  3C 60 80 43 */	lis r3, lbl_8042DD70@ha
/* 801832E8 00180228  3A E3 DD 70 */	addi r23, r3, lbl_8042DD70@l
/* 801832EC 0018022C  48 00 00 30 */	b lbl_8018331C
lbl_801832F0:
/* 801832F0 00180230  38 7E 00 DC */	addi r3, r30, 0xdc
/* 801832F4 00180234  38 81 00 20 */	addi r4, r1, 0x20
/* 801832F8 00180238  7E C5 B3 78 */	mr r5, r22
/* 801832FC 0018023C  4B FF FA E1 */	bl dEnvSe_getNearPathPos
/* 80183300 00180240  7E E3 BB 78 */	mr r3, r23
/* 80183304 00180244  38 9E 00 DC */	addi r4, r30, 0xdc
/* 80183308 00180248  48 14 59 1D */	bl registEtcSePos__10Z2EnvSeMgrFP3Vec
/* 8018330C 0018024C  7E C3 B3 78 */	mr r3, r22
/* 80183310 00180250  7F 84 E3 78 */	mr r4, r28
/* 80183314 00180254  4B EC E5 85 */	bl dPath_GetNextRoomPath
/* 80183318 00180258  7C 76 1B 78 */	mr r22, r3
lbl_8018331C:
/* 8018331C 0018025C  28 16 00 00 */	cmplwi r22, 0
/* 80183320 00180260  40 82 FF D0 */	bne lbl_801832F0
/* 80183324 00180264  7F 63 DB 78 */	mr r3, r27
/* 80183328 00180268  4B EA 9D 45 */	bl dComIfGp_getReverb
/* 8018332C 0018026C  7C 64 1B 78 */	mr r4, r3
/* 80183330 00180270  3C 60 80 43 */	lis r3, lbl_8042DD70@ha
/* 80183334 00180274  38 63 DD 70 */	addi r3, r3, lbl_8042DD70@l
/* 80183338 00180278  48 14 59 11 */	bl startEtcSe__10Z2EnvSeMgrFSc
/* 8018333C 0018027C  48 00 01 10 */	b lbl_8018344C
lbl_80183340:
/* 80183340 00180280  28 04 00 40 */	cmplwi r4, 0x40
/* 80183344 00180284  40 80 00 58 */	bge lbl_8018339C
/* 80183348 00180288  88 7F 00 18 */	lbz r3, 0x18(r31)
/* 8018334C 0018028C  7F 84 E3 78 */	mr r4, r28
/* 80183350 00180290  4B EC E4 9D */	bl dPath_GetRoomPath
/* 80183354 00180294  7C 76 1B 78 */	mr r22, r3
/* 80183358 00180298  3C 60 80 43 */	lis r3, lbl_8042DD70@ha
/* 8018335C 0018029C  3A E3 DD 70 */	addi r23, r3, lbl_8042DD70@l
/* 80183360 001802A0  48 00 00 30 */	b lbl_80183390
lbl_80183364:
/* 80183364 001802A4  38 7E 00 DC */	addi r3, r30, 0xdc
/* 80183368 001802A8  38 81 00 20 */	addi r4, r1, 0x20
/* 8018336C 001802AC  7E C5 B3 78 */	mr r5, r22
/* 80183370 001802B0  4B FF FA 6D */	bl dEnvSe_getNearPathPos
/* 80183374 001802B4  7E E3 BB 78 */	mr r3, r23
/* 80183378 001802B8  38 9E 00 DC */	addi r4, r30, 0xdc
/* 8018337C 001802BC  48 14 44 91 */	bl registWindowPos__10Z2EnvSeMgrFP3Vec
/* 80183380 001802C0  7E C3 B3 78 */	mr r3, r22
/* 80183384 001802C4  7F 84 E3 78 */	mr r4, r28
/* 80183388 001802C8  4B EC E5 11 */	bl dPath_GetNextRoomPath
/* 8018338C 001802CC  7C 76 1B 78 */	mr r22, r3
lbl_80183390:
/* 80183390 001802D0  28 16 00 00 */	cmplwi r22, 0
/* 80183394 001802D4  40 82 FF D0 */	bne lbl_80183364
/* 80183398 001802D8  48 00 00 B4 */	b lbl_8018344C
lbl_8018339C:
/* 8018339C 001802DC  28 04 00 64 */	cmplwi r4, 0x64
/* 801833A0 001802E0  41 80 00 AC */	blt lbl_8018344C
/* 801833A4 001802E4  80 1E 01 08 */	lwz r0, 0x108(r30)
/* 801833A8 001802E8  7C 00 D6 30 */	sraw r0, r0, r26
/* 801833AC 001802EC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801833B0 001802F0  40 82 00 30 */	bne lbl_801833E0
/* 801833B4 001802F4  3C 60 80 43 */	lis r3, lbl_8042DD70@ha
/* 801833B8 001802F8  38 63 DD 70 */	addi r3, r3, lbl_8042DD70@l
/* 801833BC 001802FC  88 BF 00 14 */	lbz r5, 0x14(r31)
/* 801833C0 00180300  88 DF 00 19 */	lbz r6, 0x19(r31)
/* 801833C4 00180304  88 FF 00 1A */	lbz r7, 0x1a(r31)
/* 801833C8 00180308  48 14 61 45 */	bl initLv3WaterSe__10Z2EnvSeMgrFUcUcUcUc
/* 801833CC 0018030C  80 7E 01 08 */	lwz r3, 0x108(r30)
/* 801833D0 00180310  38 00 00 01 */	li r0, 1
/* 801833D4 00180314  7C 00 D0 30 */	slw r0, r0, r26
/* 801833D8 00180318  7C 60 03 78 */	or r0, r3, r0
/* 801833DC 0018031C  90 1E 01 08 */	stw r0, 0x108(r30)
lbl_801833E0:
/* 801833E0 00180320  88 7F 00 18 */	lbz r3, 0x18(r31)
/* 801833E4 00180324  7F 84 E3 78 */	mr r4, r28
/* 801833E8 00180328  4B EC E4 05 */	bl dPath_GetRoomPath
/* 801833EC 0018032C  7C 76 1B 78 */	mr r22, r3
/* 801833F0 00180330  3C 60 80 43 */	lis r3, lbl_8042DD70@ha
/* 801833F4 00180334  3A E3 DD 70 */	addi r23, r3, lbl_8042DD70@l
/* 801833F8 00180338  48 00 00 34 */	b lbl_8018342C
lbl_801833FC:
/* 801833FC 0018033C  38 7E 00 DC */	addi r3, r30, 0xdc
/* 80183400 00180340  38 81 00 20 */	addi r4, r1, 0x20
/* 80183404 00180344  7E C5 B3 78 */	mr r5, r22
/* 80183408 00180348  4B FF F9 D5 */	bl dEnvSe_getNearPathPos
/* 8018340C 0018034C  7E E3 BB 78 */	mr r3, r23
/* 80183410 00180350  88 9F 00 17 */	lbz r4, 0x17(r31)
/* 80183414 00180354  38 BE 00 DC */	addi r5, r30, 0xdc
/* 80183418 00180358  48 14 6B 41 */	bl registLv3WaterSePos__10Z2EnvSeMgrFUcP3Vec
/* 8018341C 0018035C  7E C3 B3 78 */	mr r3, r22
/* 80183420 00180360  7F 84 E3 78 */	mr r4, r28
/* 80183424 00180364  4B EC E4 75 */	bl dPath_GetNextRoomPath
/* 80183428 00180368  7C 76 1B 78 */	mr r22, r3
lbl_8018342C:
/* 8018342C 0018036C  28 16 00 00 */	cmplwi r22, 0
/* 80183430 00180370  40 82 FF CC */	bne lbl_801833FC
/* 80183434 00180374  7F 63 DB 78 */	mr r3, r27
/* 80183438 00180378  4B EA 9C 35 */	bl dComIfGp_getReverb
/* 8018343C 0018037C  7C 64 1B 78 */	mr r4, r3
/* 80183440 00180380  3C 60 80 43 */	lis r3, lbl_8042DD70@ha
/* 80183444 00180384  38 63 DD 70 */	addi r3, r3, lbl_8042DD70@l
/* 80183448 00180388  48 14 73 4D */	bl startLv3WaterSe__10Z2EnvSeMgrFSc
lbl_8018344C:
/* 8018344C 0018038C  3B FF 00 1C */	addi r31, r31, 0x1c
/* 80183450 00180390  3B 5A FF FF */	addi r26, r26, -1
lbl_80183454:
/* 80183454 00180394  2C 1A 00 00 */	cmpwi r26, 0
/* 80183458 00180398  40 82 FC 28 */	bne lbl_80183080
/* 8018345C 0018039C  38 60 00 01 */	li r3, 1
lbl_80183460:
/* 80183460 001803A0  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 80183464 001803A4  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80183468 001803A8  39 61 00 60 */	addi r11, r1, 0x60
/* 8018346C 001803AC  48 1D ED A1 */	bl _restgpr_22
/* 80183470 001803B0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80183474 001803B4  7C 08 03 A6 */	mtlr r0
/* 80183478 001803B8  38 21 00 70 */	addi r1, r1, 0x70
/* 8018347C 001803BC  4E 80 00 20 */	blr 

.global execute__8dEnvSe_cFv
execute__8dEnvSe_cFv:
/* 80183480 001803C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80183484 001803C4  7C 08 02 A6 */	mflr r0
/* 80183488 001803C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018348C 001803CC  39 61 00 20 */	addi r11, r1, 0x20
/* 80183490 001803D0  48 1D ED 49 */	bl _savegpr_28
/* 80183494 001803D4  7C 7C 1B 78 */	mr r28, r3
/* 80183498 001803D8  8B CD 87 E4 */	lbz r30, lbl_80450D64-_SDA_BASE_(r13)
/* 8018349C 001803DC  7F DE 07 74 */	extsb r30, r30
/* 801834A0 001803E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801834A4 001803E4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 801834A8 001803E8  38 7F 4E C4 */	addi r3, r31, 0x4ec4
/* 801834AC 001803EC  7F C4 F3 78 */	mr r4, r30
/* 801834B0 001803F0  4B EA 0E D5 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 801834B4 001803F4  7C 7D 1B 79 */	or. r29, r3, r3
/* 801834B8 001803F8  40 82 00 0C */	bne lbl_801834C4
/* 801834BC 001803FC  38 60 00 01 */	li r3, 1
/* 801834C0 00180400  48 00 00 C8 */	b lbl_80183588
lbl_801834C4:
/* 801834C4 00180404  80 1C 01 04 */	lwz r0, 0x104(r28)
/* 801834C8 00180408  7C 00 F0 00 */	cmpw r0, r30
/* 801834CC 0018040C  41 82 00 18 */	beq lbl_801834E4
/* 801834D0 00180410  38 00 00 00 */	li r0, 0
/* 801834D4 00180414  98 1C 00 FC */	stb r0, 0xfc(r28)
/* 801834D8 00180418  98 1C 00 FD */	stb r0, 0xfd(r28)
/* 801834DC 0018041C  90 1C 01 08 */	stw r0, 0x108(r28)
/* 801834E0 00180420  93 DC 01 04 */	stw r30, 0x104(r28)
lbl_801834E4:
/* 801834E4 00180424  7F A3 EB 78 */	mr r3, r29
/* 801834E8 00180428  81 9D 00 00 */	lwz r12, 0(r29)
/* 801834EC 0018042C  81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 801834F0 00180430  7D 89 03 A6 */	mtctr r12
/* 801834F4 00180434  4E 80 04 21 */	bctrl 
/* 801834F8 00180438  7C 64 1B 78 */	mr r4, r3
/* 801834FC 0018043C  7F 83 E3 78 */	mr r3, r28
/* 80183500 00180440  38 BC 00 FC */	addi r5, r28, 0xfc
/* 80183504 00180444  38 C0 00 01 */	li r6, 1
/* 80183508 00180448  4B FF FA D1 */	bl execute_common__8dEnvSe_cFP18dStage_SoundInfo_cPScUc
/* 8018350C 0018044C  7F A3 EB 78 */	mr r3, r29
/* 80183510 00180450  81 9D 00 00 */	lwz r12, 0(r29)
/* 80183514 00180454  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 80183518 00180458  7D 89 03 A6 */	mtctr r12
/* 8018351C 0018045C  4E 80 04 21 */	bctrl 
/* 80183520 00180460  7C 64 1B 78 */	mr r4, r3
/* 80183524 00180464  7F 83 E3 78 */	mr r3, r28
/* 80183528 00180468  38 BC 00 FD */	addi r5, r28, 0xfd
/* 8018352C 0018046C  38 C0 00 01 */	li r6, 1
/* 80183530 00180470  4B FF FA A9 */	bl execute_common__8dEnvSe_cFP18dStage_SoundInfo_cPScUc
/* 80183534 00180474  3B BF 4E 20 */	addi r29, r31, 0x4e20
/* 80183538 00180478  7F A3 EB 78 */	mr r3, r29
/* 8018353C 0018047C  81 9D 00 00 */	lwz r12, 0(r29)
/* 80183540 00180480  81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 80183544 00180484  7D 89 03 A6 */	mtctr r12
/* 80183548 00180488  4E 80 04 21 */	bctrl 
/* 8018354C 0018048C  7C 64 1B 78 */	mr r4, r3
/* 80183550 00180490  7F 83 E3 78 */	mr r3, r28
/* 80183554 00180494  38 BC 00 FE */	addi r5, r28, 0xfe
/* 80183558 00180498  38 C0 00 00 */	li r6, 0
/* 8018355C 0018049C  4B FF FA 7D */	bl execute_common__8dEnvSe_cFP18dStage_SoundInfo_cPScUc
/* 80183560 001804A0  7F A3 EB 78 */	mr r3, r29
/* 80183564 001804A4  81 9D 00 00 */	lwz r12, 0(r29)
/* 80183568 001804A8  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8018356C 001804AC  7D 89 03 A6 */	mtctr r12
/* 80183570 001804B0  4E 80 04 21 */	bctrl 
/* 80183574 001804B4  7C 64 1B 78 */	mr r4, r3
/* 80183578 001804B8  7F 83 E3 78 */	mr r3, r28
/* 8018357C 001804BC  38 BC 00 FF */	addi r5, r28, 0xff
/* 80183580 001804C0  38 C0 00 00 */	li r6, 0
/* 80183584 001804C4  4B FF FA 55 */	bl execute_common__8dEnvSe_cFP18dStage_SoundInfo_cPScUc
lbl_80183588:
/* 80183588 001804C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8018358C 001804CC  48 1D EC 99 */	bl _restgpr_28
/* 80183590 001804D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80183594 001804D4  7C 08 03 A6 */	mtlr r0
/* 80183598 001804D8  38 21 00 20 */	addi r1, r1, 0x20
/* 8018359C 001804DC  4E 80 00 20 */	blr 
/* 801835A0 001804E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801835A4 001804E4  7C 08 02 A6 */	mflr r0
/* 801835A8 001804E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801835AC 001804EC  4B FF FE D5 */	bl execute__8dEnvSe_cFv
/* 801835B0 001804F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801835B4 001804F4  7C 08 03 A6 */	mtlr r0
/* 801835B8 001804F8  38 21 00 10 */	addi r1, r1, 0x10
/* 801835BC 001804FC  4E 80 00 20 */	blr 
/* 801835C0 00180500  38 60 00 01 */	li r3, 1
/* 801835C4 00180504  4E 80 00 20 */	blr 
/* 801835C8 00180508  38 60 00 01 */	li r3, 1
/* 801835CC 0018050C  4E 80 00 20 */	blr 
/* 801835D0 00180510  38 80 00 00 */	li r4, 0
/* 801835D4 00180514  98 83 00 FC */	stb r4, 0xfc(r3)
/* 801835D8 00180518  98 83 00 FD */	stb r4, 0xfd(r3)
/* 801835DC 0018051C  98 83 00 FE */	stb r4, 0xfe(r3)
/* 801835E0 00180520  98 83 00 FF */	stb r4, 0xff(r3)
/* 801835E4 00180524  38 00 00 FF */	li r0, 0xff
/* 801835E8 00180528  90 03 01 04 */	stw r0, 0x104(r3)
/* 801835EC 0018052C  90 83 01 08 */	stw r4, 0x108(r3)
/* 801835F0 00180530  38 60 00 04 */	li r3, 4
/* 801835F4 00180534  4E 80 00 20 */	blr 

