/* 80011D70 0000ECB0  94 21 FF 90 */ stwu r1, -0x70(r1)
/* 80011D74 0000ECB4  7C 08 02 A6 */ mflr r0
/* 80011D78 0000ECB8  90 01 00 74 */ stw r0, 0x74(r1)
/* 80011D7C 0000ECBC  DB E1 00 60 */ stfd f31, 0x60(r1)
/* 80011D80 0000ECC0  F3 E1 00 68 */ psq_st f31, 104(r1), 0, 0
/* 80011D84 0000ECC4  DB C1 00 50 */ stfd f30, 0x50(r1)
/* 80011D88 0000ECC8  F3 C1 00 58 */ psq_st f30, 88(r1), 0, 0
/* 80011D8C 0000ECCC  DB A1 00 40 */ stfd f29, 0x40(r1)
/* 80011D90 0000ECD0  F3 A1 00 48 */ psq_st f29, 72(r1), 0, 0
/* 80011D94 0000ECD4  DB 81 00 30 */ stfd f28, 0x30(r1)
/* 80011D98 0000ECD8  F3 81 00 38 */ psq_st f28, 56(r1), 0, 0
/* 80011D9C 0000ECDC  39 61 00 30 */ addi r11, r1, 0x30
/* 80011DA0 0000ECE0  48 35 04 39 */ bl _savegpr_28
/* 80011DA4 0000ECE4  7C 7D 1B 78 */ mr r29, r3
/* 80011DA8 0000ECE8  7C 9E 23 78 */ mr r30, r4
/* 80011DAC 0000ECEC  7C BF 2B 78 */ mr r31, r5
/* 80011DB0 0000ECF0  FF C0 08 90 */ fmr f30, f1
/* 80011DB4 0000ECF4  7C DC 33 78 */ mr r28, r6
/* 80011DB8 0000ECF8  FF E0 10 90 */ fmr f31, f2
/* 80011DBC 0000ECFC  FF 80 18 90 */ fmr f28, f3
/* 80011DC0 0000ED00  FF A0 20 90 */ fmr f29, f4
/* 80011DC4 0000ED04  93 C3 00 08 */ stw r30, 8(r3)
/* 80011DC8 0000ED08  93 E3 00 40 */ stw r31, 0x40(r3)
/* 80011DCC 0000ED0C  D3 C3 00 44 */ stfs f30, 0x44(r3)
/* 80011DD0 0000ED10  FC 00 E8 1E */ fctiwz f0, f29
/* 80011DD4 0000ED14  D8 01 00 08 */ stfd f0, 8(r1)
/* 80011DD8 0000ED18  80 01 00 0C */ lwz r0, 0xc(r1)
/* 80011DDC 0000ED1C  B0 03 00 12 */ sth r0, 0x12(r3)
/* 80011DE0 0000ED20  D8 01 00 10 */ stfd f0, 0x10(r1)
/* 80011DE4 0000ED24  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80011DE8 0000ED28  7C 00 07 34 */ extsh r0, r0
/* 80011DEC 0000ED2C  C8 22 81 20 */ lfd f1, lbl_80451B20-_SDA2_BASE_(r2)
/* 80011DF0 0000ED30  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 80011DF4 0000ED34  90 01 00 1C */ stw r0, 0x1c(r1)
/* 80011DF8 0000ED38  3C 00 43 30 */ lis r0, 0x4330
/* 80011DFC 0000ED3C  90 01 00 18 */ stw r0, 0x18(r1)
/* 80011E00 0000ED40  C8 01 00 18 */ lfd f0, 0x18(r1)
/* 80011E04 0000ED44  EC 00 08 28 */ fsubs f0, f0, f1
/* 80011E08 0000ED48  D0 03 00 1C */ stfs f0, 0x1c(r3)
/* 80011E0C 0000ED4C  C0 02 81 1C */ lfs f0, lbl_80451B1C-_SDA2_BASE_(r2)
/* 80011E10 0000ED50  FC 05 00 40 */ fcmpo cr0, f5, f0
/* 80011E14 0000ED54  40 80 00 30 */ bge lbl_80011E44
/* 80011E18 0000ED58  80 7D 00 08 */ lwz r3, 8(r29)
/* 80011E1C 0000ED5C  28 03 00 00 */ cmplwi r3, 0
/* 80011E20 0000ED60  40 82 00 14 */ bne lbl_80011E34
/* 80011E24 0000ED64  38 7D 00 0C */ addi r3, r29, 0xc
/* 80011E28 0000ED68  38 80 00 00 */ li r4, 0
/* 80011E2C 0000ED6C  48 31 65 D1 */ bl init__12J3DFrameCtrlFs
/* 80011E30 0000ED70  48 00 00 28 */ b lbl_80011E58
lbl_80011E34:
/* 80011E34 0000ED74  A8 83 00 06 */ lha r4, 6(r3)
/* 80011E38 0000ED78  38 7D 00 0C */ addi r3, r29, 0xc
/* 80011E3C 0000ED7C  48 31 65 C1 */ bl init__12J3DFrameCtrlFs
/* 80011E40 0000ED80  48 00 00 18 */ b lbl_80011E58
lbl_80011E44:
/* 80011E44 0000ED84  38 7D 00 0C */ addi r3, r29, 0xc
/* 80011E48 0000ED88  FC 00 28 1E */ fctiwz f0, f5
/* 80011E4C 0000ED8C  D8 01 00 18 */ stfd f0, 0x18(r1)
/* 80011E50 0000ED90  80 81 00 1C */ lwz r4, 0x1c(r1)
/* 80011E54 0000ED94  48 31 65 A9 */ bl init__12J3DFrameCtrlFs
lbl_80011E58:
/* 80011E58 0000ED98  2C 1C 00 00 */ cmpwi r28, 0
/* 80011E5C 0000ED9C  40 80 00 08 */ bge lbl_80011E64
/* 80011E60 0000EDA0  8B 9E 00 04 */ lbz r28, 4(r30)
lbl_80011E64:
/* 80011E64 0000EDA4  9B 9D 00 10 */ stb r28, 0x10(r29)
/* 80011E68 0000EDA8  D3 9D 00 18 */ stfs f28, 0x18(r29)
/* 80011E6C 0000EDAC  C0 02 81 1C */ lfs f0, lbl_80451B1C-_SDA2_BASE_(r2)
/* 80011E70 0000EDB0  FC 1C 00 40 */ fcmpo cr0, f28, f0
/* 80011E74 0000EDB4  4C 41 13 82 */ cror 2, 1, 2
/* 80011E78 0000EDB8  40 82 00 38 */ bne lbl_80011EB0
/* 80011E7C 0000EDBC  FC 00 E8 1E */ fctiwz f0, f29
/* 80011E80 0000EDC0  D8 01 00 18 */ stfd f0, 0x18(r1)
/* 80011E84 0000EDC4  80 01 00 1C */ lwz r0, 0x1c(r1)
/* 80011E88 0000EDC8  7C 00 07 34 */ extsh r0, r0
/* 80011E8C 0000EDCC  C8 22 81 20 */ lfd f1, lbl_80451B20-_SDA2_BASE_(r2)
/* 80011E90 0000EDD0  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 80011E94 0000EDD4  90 01 00 14 */ stw r0, 0x14(r1)
/* 80011E98 0000EDD8  3C 00 43 30 */ lis r0, 0x4330
/* 80011E9C 0000EDDC  90 01 00 10 */ stw r0, 0x10(r1)
/* 80011EA0 0000EDE0  C8 01 00 10 */ lfd f0, 0x10(r1)
/* 80011EA4 0000EDE4  EC 00 08 28 */ fsubs f0, f0, f1
/* 80011EA8 0000EDE8  D0 1D 00 1C */ stfs f0, 0x1c(r29)
/* 80011EAC 0000EDEC  48 00 00 4C */ b lbl_80011EF8
lbl_80011EB0:
/* 80011EB0 0000EDF0  A8 1D 00 14 */ lha r0, 0x14(r29)
/* 80011EB4 0000EDF4  C8 22 81 20 */ lfd f1, lbl_80451B20-_SDA2_BASE_(r2)
/* 80011EB8 0000EDF8  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 80011EBC 0000EDFC  90 01 00 1C */ stw r0, 0x1c(r1)
/* 80011EC0 0000EE00  3C 60 43 30 */ lis r3, 0x4330
/* 80011EC4 0000EE04  90 61 00 18 */ stw r3, 0x18(r1)
/* 80011EC8 0000EE08  C8 01 00 18 */ lfd f0, 0x18(r1)
/* 80011ECC 0000EE0C  EC 00 08 28 */ fsubs f0, f0, f1
/* 80011ED0 0000EE10  FC 00 00 1E */ fctiwz f0, f0
/* 80011ED4 0000EE14  D8 01 00 10 */ stfd f0, 0x10(r1)
/* 80011ED8 0000EE18  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80011EDC 0000EE1C  7C 00 07 34 */ extsh r0, r0
/* 80011EE0 0000EE20  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 80011EE4 0000EE24  90 01 00 0C */ stw r0, 0xc(r1)
/* 80011EE8 0000EE28  90 61 00 08 */ stw r3, 8(r1)
/* 80011EEC 0000EE2C  C8 01 00 08 */ lfd f0, 8(r1)
/* 80011EF0 0000EE30  EC 00 08 28 */ fsubs f0, f0, f1
/* 80011EF4 0000EE34  D0 1D 00 1C */ stfs f0, 0x1c(r29)
lbl_80011EF8:
/* 80011EF8 0000EE38  C0 1D 00 1C */ lfs f0, 0x1c(r29)
/* 80011EFC 0000EE3C  FC 00 00 1E */ fctiwz f0, f0
/* 80011F00 0000EE40  D8 01 00 18 */ stfd f0, 0x18(r1)
/* 80011F04 0000EE44  80 01 00 1C */ lwz r0, 0x1c(r1)
/* 80011F08 0000EE48  B0 1D 00 16 */ sth r0, 0x16(r29)
/* 80011F0C 0000EE4C  7F A3 EB 78 */ mr r3, r29
/* 80011F10 0000EE50  FC 20 F8 90 */ fmr f1, f31
/* 80011F14 0000EE54  4B FF DC 69 */ bl mDoExt_morf_c_NS_setMorf
/* 80011F18 0000EE58  80 1D 00 48 */ lwz r0, 0x48(r29)
/* 80011F1C 0000EE5C  28 00 00 00 */ cmplwi r0, 0
/* 80011F20 0000EE60  41 82 00 74 */ beq lbl_80011F94
/* 80011F24 0000EE64  C0 02 81 2C */ lfs f0, lbl_80451B2C-_SDA2_BASE_(r2)
/* 80011F28 0000EE68  FC 1E 00 40 */ fcmpo cr0, f30, f0
/* 80011F2C 0000EE6C  40 80 00 10 */ bge lbl_80011F3C
/* 80011F30 0000EE70  80 1E 00 28 */ lwz r0, 0x28(r30)
/* 80011F34 0000EE74  90 1D 00 4C */ stw r0, 0x4c(r29)
/* 80011F38 0000EE78  48 00 00 0C */ b lbl_80011F44
lbl_80011F3C:
/* 80011F3C 0000EE7C  80 1F 00 28 */ lwz r0, 0x28(r31)
/* 80011F40 0000EE80  90 1D 00 4C */ stw r0, 0x4c(r29)
lbl_80011F44:
/* 80011F44 0000EE84  80 9D 00 4C */ lwz r4, 0x4c(r29)
/* 80011F48 0000EE88  28 04 00 00 */ cmplwi r4, 0
/* 80011F4C 0000EE8C  41 82 00 48 */ beq lbl_80011F94
/* 80011F50 0000EE90  80 7D 00 48 */ lwz r3, 0x48(r29)
/* 80011F54 0000EE94  C0 3D 00 18 */ lfs f1, 0x18(r29)
/* 80011F58 0000EE98  C0 02 81 1C */ lfs f0, lbl_80451B1C-_SDA2_BASE_(r2)
/* 80011F5C 0000EE9C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80011F60 0000EEA0  4C 41 13 82 */ cror 2, 1, 2
/* 80011F64 0000EEA4  7C 00 00 26 */ mfcr r0
/* 80011F68 0000EEA8  54 05 1F FE */ rlwinm r5, r0, 3, 0x1f, 0x1f
/* 80011F6C 0000EEAC  A8 1D 00 16 */ lha r0, 0x16(r29)
/* 80011F70 0000EEB0  C8 22 81 20 */ lfd f1, lbl_80451B20-_SDA2_BASE_(r2)
/* 80011F74 0000EEB4  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 80011F78 0000EEB8  90 01 00 1C */ stw r0, 0x1c(r1)
/* 80011F7C 0000EEBC  3C 00 43 30 */ lis r0, 0x4330
/* 80011F80 0000EEC0  90 01 00 18 */ stw r0, 0x18(r1)
/* 80011F84 0000EEC4  C8 01 00 18 */ lfd f0, 0x18(r1)
/* 80011F88 0000EEC8  EC 20 08 28 */ fsubs f1, f0, f1
/* 80011F8C 0000EECC  C0 5D 00 1C */ lfs f2, 0x1c(r29)
/* 80011F90 0000EED0  48 2A E6 99 */ bl Z2Creature_NS_initAnime
lbl_80011F94:
/* 80011F94 0000EED4  E3 E1 00 68 */ psq_l f31, 104(r1), 0, 0
/* 80011F98 0000EED8  CB E1 00 60 */ lfd f31, 0x60(r1)
/* 80011F9C 0000EEDC  E3 C1 00 58 */ psq_l f30, 88(r1), 0, 0
/* 80011FA0 0000EEE0  CB C1 00 50 */ lfd f30, 0x50(r1)
/* 80011FA4 0000EEE4  E3 A1 00 48 */ psq_l f29, 72(r1), 0, 0
/* 80011FA8 0000EEE8  CB A1 00 40 */ lfd f29, 0x40(r1)
/* 80011FAC 0000EEEC  E3 81 00 38 */ psq_l f28, 56(r1), 0, 0
/* 80011FB0 0000EEF0  CB 81 00 30 */ lfd f28, 0x30(r1)
/* 80011FB4 0000EEF4  39 61 00 30 */ addi r11, r1, 0x30
/* 80011FB8 0000EEF8  48 35 02 6D */ bl _restgpr_28
/* 80011FBC 0000EEFC  80 01 00 74 */ lwz r0, 0x74(r1)
/* 80011FC0 0000EF00  7C 08 03 A6 */ mtlr r0
/* 80011FC4 0000EF04  38 21 00 70 */ addi r1, r1, 0x70
/* 80011FC8 0000EF08  4E 80 00 20 */ blr