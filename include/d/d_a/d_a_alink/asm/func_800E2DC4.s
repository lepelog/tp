/* 800E2DC4 000DFD04  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800E2DC8 000DFD08  7C 08 02 A6 */ mflr r0
/* 800E2DCC 000DFD0C  90 01 00 24 */ stw r0, 0x24(r1)
/* 800E2DD0 000DFD10  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 800E2DD4 000DFD14  93 C1 00 18 */ stw r30, 0x18(r1)
/* 800E2DD8 000DFD18  7C 7E 1B 78 */ mr r30, r3
/* 800E2DDC 000DFD1C  80 03 05 70 */ lwz r0, 0x570(r3)
/* 800E2DE0 000DFD20  54 00 05 24 */ rlwinm r0, r0, 0, 0x14, 0x12
/* 800E2DE4 000DFD24  90 03 05 70 */ stw r0, 0x570(r3)
/* 800E2DE8 000DFD28  38 7E 2C A8 */ addi r3, r30, 0x2ca8
/* 800E2DEC 000DFD2C  38 80 00 00 */ li r4, 0
/* 800E2DF0 000DFD30  48 1E 0C FD */ bl setMagnetized__14Z2CreatureLinkFb
/* 800E2DF4 000DFD34  A8 9E 31 14 */ lha r4, 0x3114(r30)
/* 800E2DF8 000DFD38  2C 04 80 00 */ cmpwi r4, -32768
/* 800E2DFC 000DFD3C  40 82 00 18 */ bne lbl_800E2E14
/* 800E2E00 000DFD40  7F C3 F3 78 */ mr r3, r30
/* 800E2E04 000DFD44  38 A0 00 00 */ li r5, 0
/* 800E2E08 000DFD48  38 C0 00 00 */ li r6, 0
/* 800E2E0C 000DFD4C  4B FC AD 6D */ bl daAlink_c_NS_setOldRootQuaternion
/* 800E2E10 000DFD50  48 00 00 54 */ b lbl_800E2E64
lbl_800E2E14:
/* 800E2E14 000DFD54  A8 7E 31 16 */ lha r3, 0x3116(r30)
/* 800E2E18 000DFD58  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 800E2E1C 000DFD5C  7C 03 00 50 */ subf r0, r3, r0
/* 800E2E20 000DFD60  7C 1F 07 34 */ extsh r31, r0
/* 800E2E24 000DFD64  7F C3 F3 78 */ mr r3, r30
/* 800E2E28 000DFD68  38 80 00 00 */ li r4, 0
/* 800E2E2C 000DFD6C  7F E5 FB 78 */ mr r5, r31
/* 800E2E30 000DFD70  38 C0 00 00 */ li r6, 0
/* 800E2E34 000DFD74  4B FC AD 45 */ bl daAlink_c_NS_setOldRootQuaternion
/* 800E2E38 000DFD78  7F C3 F3 78 */ mr r3, r30
/* 800E2E3C 000DFD7C  A8 9E 31 14 */ lha r4, 0x3114(r30)
/* 800E2E40 000DFD80  38 A0 00 00 */ li r5, 0
/* 800E2E44 000DFD84  38 C0 00 00 */ li r6, 0
/* 800E2E48 000DFD88  4B FC AD 31 */ bl daAlink_c_NS_setOldRootQuaternion
/* 800E2E4C 000DFD8C  7F C3 F3 78 */ mr r3, r30
/* 800E2E50 000DFD90  38 80 00 00 */ li r4, 0
/* 800E2E54 000DFD94  7C 1F 00 D0 */ neg r0, r31
/* 800E2E58 000DFD98  7C 05 07 34 */ extsh r5, r0
/* 800E2E5C 000DFD9C  38 C0 00 00 */ li r6, 0
/* 800E2E60 000DFDA0  4B FC AD 19 */ bl daAlink_c_NS_setOldRootQuaternion
lbl_800E2E64:
/* 800E2E64 000DFDA4  38 00 00 00 */ li r0, 0
/* 800E2E68 000DFDA8  B0 1E 31 14 */ sth r0, 0x3114(r30)
/* 800E2E6C 000DFDAC  C0 3E 36 AC */ lfs f1, 0x36ac(r30)
/* 800E2E70 000DFDB0  48 18 53 75 */ bl cBgW_CheckBGround
/* 800E2E74 000DFDB4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800E2E78 000DFDB8  40 82 00 D8 */ bne lbl_800E2F50
/* 800E2E7C 000DFDBC  38 61 00 08 */ addi r3, r1, 8
/* 800E2E80 000DFDC0  38 9E 36 A8 */ addi r4, r30, 0x36a8
/* 800E2E84 000DFDC4  C0 22 93 50 */ lfs f1, lbl_80452D50-_SDA2_BASE_(r2)
/* 800E2E88 000DFDC8  48 18 3C FD */ bl __ml__4cXyzCFf
/* 800E2E8C 000DFDCC  38 7E 04 D0 */ addi r3, r30, 0x4d0
/* 800E2E90 000DFDD0  38 81 00 08 */ addi r4, r1, 8
/* 800E2E94 000DFDD4  7C 65 1B 78 */ mr r5, r3
/* 800E2E98 000DFDD8  48 26 41 F9 */ bl PSVECAdd
/* 800E2E9C 000DFDDC  38 7E 1D 08 */ addi r3, r30, 0x1d08
/* 800E2EA0 000DFDE0  38 9E 04 D0 */ addi r4, r30, 0x4d0
/* 800E2EA4 000DFDE4  48 18 4E 85 */ bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800E2EA8 000DFDE8  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800E2EAC 000DFDEC  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800E2EB0 000DFDF0  38 63 0F 38 */ addi r3, r3, 0xf38
/* 800E2EB4 000DFDF4  38 9E 1D 08 */ addi r4, r30, 0x1d08
/* 800E2EB8 000DFDF8  4B F9 15 E9 */ bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800E2EBC 000DFDFC  C0 5E 04 D4 */ lfs f2, 0x4d4(r30)
/* 800E2EC0 000DFE00  C0 02 93 50 */ lfs f0, lbl_80452D50-_SDA2_BASE_(r2)
/* 800E2EC4 000DFE04  EC 02 00 28 */ fsubs f0, f2, f0
/* 800E2EC8 000DFE08  D0 1E 04 D4 */ stfs f0, 0x4d4(r30)
/* 800E2ECC 000DFE0C  C0 1E 04 D4 */ lfs f0, 0x4d4(r30)
/* 800E2ED0 000DFE10  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800E2ED4 000DFE14  40 81 00 08 */ ble lbl_800E2EDC
/* 800E2ED8 000DFE18  D0 3E 04 D4 */ stfs f1, 0x4d4(r30)
lbl_800E2EDC:
/* 800E2EDC 000DFE1C  C0 1E 04 D0 */ lfs f0, 0x4d0(r30)
/* 800E2EE0 000DFE20  D0 1E 04 BC */ stfs f0, 0x4bc(r30)
/* 800E2EE4 000DFE24  C0 1E 04 D4 */ lfs f0, 0x4d4(r30)
/* 800E2EE8 000DFE28  D0 1E 04 C0 */ stfs f0, 0x4c0(r30)
/* 800E2EEC 000DFE2C  C0 1E 04 D8 */ lfs f0, 0x4d8(r30)
/* 800E2EF0 000DFE30  D0 1E 04 C4 */ stfs f0, 0x4c4(r30)
/* 800E2EF4 000DFE34  C0 1E 04 D0 */ lfs f0, 0x4d0(r30)
/* 800E2EF8 000DFE38  D0 1E 37 98 */ stfs f0, 0x3798(r30)
/* 800E2EFC 000DFE3C  C0 1E 04 D4 */ lfs f0, 0x4d4(r30)
/* 800E2F00 000DFE40  D0 1E 37 9C */ stfs f0, 0x379c(r30)
/* 800E2F04 000DFE44  C0 1E 04 D8 */ lfs f0, 0x4d8(r30)
/* 800E2F08 000DFE48  D0 1E 37 A0 */ stfs f0, 0x37a0(r30)
/* 800E2F0C 000DFE4C  3C 60 80 43 */ lis r3, lbl_80430D24@ha
/* 800E2F10 000DFE50  C4 03 0D 24 */ lfsu f0, lbl_80430D24@l(r3)
/* 800E2F14 000DFE54  D0 1E 36 A8 */ stfs f0, 0x36a8(r30)
/* 800E2F18 000DFE58  C0 03 00 04 */ lfs f0, 4(r3)
/* 800E2F1C 000DFE5C  D0 1E 36 AC */ stfs f0, 0x36ac(r30)
/* 800E2F20 000DFE60  C0 03 00 08 */ lfs f0, 8(r3)
/* 800E2F24 000DFE64  D0 1E 36 B0 */ stfs f0, 0x36b0(r30)
/* 800E2F28 000DFE68  7F C3 F3 78 */ mr r3, r30
/* 800E2F2C 000DFE6C  4B FD 80 55 */ bl daAlink_c_NS_checkUpperReadyThrowAnime
/* 800E2F30 000DFE70  2C 03 00 00 */ cmpwi r3, 0
/* 800E2F34 000DFE74  41 82 00 14 */ beq lbl_800E2F48
/* 800E2F38 000DFE78  7F C3 F3 78 */ mr r3, r30
/* 800E2F3C 000DFE7C  38 80 00 02 */ li r4, 2
/* 800E2F40 000DFE80  C0 22 92 C4 */ lfs f1, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800E2F44 000DFE84  4B FC A7 E1 */ bl daAlink_c_NS_resetUpperAnime
lbl_800E2F48:
/* 800E2F48 000DFE88  38 60 00 01 */ li r3, 1
/* 800E2F4C 000DFE8C  48 00 00 24 */ b lbl_800E2F70
lbl_800E2F50:
/* 800E2F50 000DFE90  3C 60 80 43 */ lis r3, lbl_80430D24@ha
/* 800E2F54 000DFE94  C4 03 0D 24 */ lfsu f0, lbl_80430D24@l(r3)
/* 800E2F58 000DFE98  D0 1E 36 A8 */ stfs f0, 0x36a8(r30)
/* 800E2F5C 000DFE9C  C0 03 00 04 */ lfs f0, 4(r3)
/* 800E2F60 000DFEA0  D0 1E 36 AC */ stfs f0, 0x36ac(r30)
/* 800E2F64 000DFEA4  C0 03 00 08 */ lfs f0, 8(r3)
/* 800E2F68 000DFEA8  D0 1E 36 B0 */ stfs f0, 0x36b0(r30)
/* 800E2F6C 000DFEAC  38 60 00 00 */ li r3, 0
lbl_800E2F70:
/* 800E2F70 000DFEB0  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 800E2F74 000DFEB4  83 C1 00 18 */ lwz r30, 0x18(r1)
/* 800E2F78 000DFEB8  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800E2F7C 000DFEBC  7C 08 03 A6 */ mtlr r0
/* 800E2F80 000DFEC0  38 21 00 20 */ addi r1, r1, 0x20
/* 800E2F84 000DFEC4  4E 80 00 20 */ blr
