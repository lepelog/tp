/* 8005CF78 00059EB8  94 21 FF 10 */ stwu r1, -0xf0(r1)
/* 8005CF7C 00059EBC  7C 08 02 A6 */ mflr r0
/* 8005CF80 00059EC0  90 01 00 F4 */ stw r0, 0xf4(r1)
/* 8005CF84 00059EC4  DB E1 00 E0 */ stfd f31, 0xe0(r1)
/* 8005CF88 00059EC8  F3 E1 00 E8 */ psq_st f31, 232(r1), 0, 0
/* 8005CF8C 00059ECC  39 61 00 E0 */ addi r11, r1, 0xe0
/* 8005CF90 00059ED0  48 30 52 49 */ bl _savegpr_28
/* 8005CF94 00059ED4  7C 7D 1B 78 */ mr r29, r3
/* 8005CF98 00059ED8  FF E0 08 90 */ fmr f31, f1
/* 8005CF9C 00059EDC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8005CFA0 00059EE0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8005CFA4 00059EE4  83 E3 5D 74 */ lwz r31, 0x5d74(r3)
/* 8005CFA8 00059EE8  3B C0 00 00 */ li r30, 0
/* 8005CFAC 00059EEC  3B 81 00 70 */ addi r28, r1, 0x70
/* 8005CFB0 00059EF0  7F 83 E3 78 */ mr r3, r28
/* 8005CFB4 00059EF4  48 01 A5 C9 */ bl dBgS_GndChk
/* 8005CFB8 00059EF8  3C 60 80 3A */ lis r3, lbl_803A382C@ha
/* 8005CFBC 00059EFC  38 63 38 2C */ addi r3, r3, lbl_803A382C@l
/* 8005CFC0 00059F00  90 61 00 80 */ stw r3, 0x80(r1)
/* 8005CFC4 00059F04  38 03 00 0C */ addi r0, r3, 0xc
/* 8005CFC8 00059F08  90 01 00 90 */ stw r0, 0x90(r1)
/* 8005CFCC 00059F0C  38 03 00 18 */ addi r0, r3, 0x18
/* 8005CFD0 00059F10  90 01 00 AC */ stw r0, 0xac(r1)
/* 8005CFD4 00059F14  38 03 00 24 */ addi r0, r3, 0x24
/* 8005CFD8 00059F18  90 01 00 BC */ stw r0, 0xbc(r1)
/* 8005CFDC 00059F1C  38 7C 00 3C */ addi r3, r28, 0x3c
/* 8005CFE0 00059F20  48 01 BE 89 */ bl SetObj__16dBgS_PolyPassChkFv
/* 8005CFE4 00059F24  3C 60 80 3B */ lis r3, lbl_803AB6E8@ha
/* 8005CFE8 00059F28  38 63 B6 E8 */ addi r3, r3, lbl_803AB6E8@l
/* 8005CFEC 00059F2C  90 61 00 80 */ stw r3, 0x80(r1)
/* 8005CFF0 00059F30  38 03 00 0C */ addi r0, r3, 0xc
/* 8005CFF4 00059F34  90 01 00 90 */ stw r0, 0x90(r1)
/* 8005CFF8 00059F38  38 03 00 18 */ addi r0, r3, 0x18
/* 8005CFFC 00059F3C  90 01 00 AC */ stw r0, 0xac(r1)
/* 8005D000 00059F40  38 03 00 24 */ addi r0, r3, 0x24
/* 8005D004 00059F44  90 01 00 BC */ stw r0, 0xbc(r1)
/* 8005D008 00059F48  80 01 00 C0 */ lwz r0, 0xc0(r1)
/* 8005D00C 00059F4C  60 00 00 03 */ ori r0, r0, 3
/* 8005D010 00059F50  90 01 00 C0 */ stw r0, 0xc0(r1)
/* 8005D014 00059F54  38 61 00 20 */ addi r3, r1, 0x20
/* 8005D018 00059F58  48 01 BF DD */ bl dBgS_RoofChk
/* 8005D01C 00059F5C  38 7F 00 D8 */ addi r3, r31, 0xd8
/* 8005D020 00059F60  38 9F 00 E4 */ addi r4, r31, 0xe4
/* 8005D024 00059F64  38 A1 00 08 */ addi r5, r1, 8
/* 8005D028 00059F68  4B FF E7 39 */ bl dKyr_get_vectle_calc
/* 8005D02C 00059F6C  C0 3F 00 D8 */ lfs f1, 0xd8(r31)
/* 8005D030 00059F70  C0 01 00 08 */ lfs f0, 8(r1)
/* 8005D034 00059F74  EC 00 07 F2 */ fmuls f0, f0, f31
/* 8005D038 00059F78  EC 61 00 2A */ fadds f3, f1, f0
/* 8005D03C 00059F7C  D0 61 00 14 */ stfs f3, 0x14(r1)
/* 8005D040 00059F80  C0 5F 00 DC */ lfs f2, 0xdc(r31)
/* 8005D044 00059F84  C0 01 00 0C */ lfs f0, 0xc(r1)
/* 8005D048 00059F88  EC 00 07 F2 */ fmuls f0, f0, f31
/* 8005D04C 00059F8C  EC 02 00 2A */ fadds f0, f2, f0
/* 8005D050 00059F90  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 8005D054 00059F94  C0 3F 00 E0 */ lfs f1, 0xe0(r31)
/* 8005D058 00059F98  C0 01 00 10 */ lfs f0, 0x10(r1)
/* 8005D05C 00059F9C  EC 00 07 F2 */ fmuls f0, f0, f31
/* 8005D060 00059FA0  EC 01 00 2A */ fadds f0, f1, f0
/* 8005D064 00059FA4  D0 01 00 1C */ stfs f0, 0x1c(r1)
/* 8005D068 00059FA8  C0 02 88 7C */ lfs f0, lbl_8045227C-_SDA2_BASE_(r2)
/* 8005D06C 00059FAC  EC 00 10 2A */ fadds f0, f0, f2
/* 8005D070 00059FB0  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 8005D074 00059FB4  D0 7D 00 00 */ stfs f3, 0(r29)
/* 8005D078 00059FB8  C0 01 00 18 */ lfs f0, 0x18(r1)
/* 8005D07C 00059FBC  D0 1D 00 04 */ stfs f0, 4(r29)
/* 8005D080 00059FC0  C0 01 00 1C */ lfs f0, 0x1c(r1)
/* 8005D084 00059FC4  D0 1D 00 08 */ stfs f0, 8(r29)
/* 8005D088 00059FC8  C0 01 00 14 */ lfs f0, 0x14(r1)
/* 8005D08C 00059FCC  D0 01 00 5C */ stfs f0, 0x5c(r1)
/* 8005D090 00059FD0  C0 01 00 18 */ lfs f0, 0x18(r1)
/* 8005D094 00059FD4  D0 01 00 60 */ stfs f0, 0x60(r1)
/* 8005D098 00059FD8  C0 01 00 1C */ lfs f0, 0x1c(r1)
/* 8005D09C 00059FDC  D0 01 00 64 */ stfs f0, 0x64(r1)
/* 8005D0A0 00059FE0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8005D0A4 00059FE4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8005D0A8 00059FE8  3B A3 0F 38 */ addi r29, r3, 0xf38
/* 8005D0AC 00059FEC  7F A3 EB 78 */ mr r3, r29
/* 8005D0B0 00059FF0  38 81 00 20 */ addi r4, r1, 0x20
/* 8005D0B4 00059FF4  48 01 83 E9 */ bl RoofChk__4dBgSFP12dBgS_RoofChk
/* 8005D0B8 00059FF8  C0 02 88 30 */ lfs f0, lbl_80452230-_SDA2_BASE_(r2)
/* 8005D0BC 00059FFC  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 8005D0C0 0005A000  41 82 00 50 */ beq lbl_8005D110
/* 8005D0C4 0005A004  3B C0 00 01 */ li r30, 1
/* 8005D0C8 0005A008  38 7D 3E C8 */ addi r3, r29, 0x3ec8
/* 8005D0CC 0005A00C  3C 80 80 38 */ lis r4, lbl_8037A578@ha
/* 8005D0D0 0005A010  38 84 A5 78 */ addi r4, r4, lbl_8037A578@l
/* 8005D0D4 0005A014  38 84 00 17 */ addi r4, r4, 0x17
/* 8005D0D8 0005A018  48 30 B8 BD */ bl strcmp
/* 8005D0DC 0005A01C  2C 03 00 00 */ cmpwi r3, 0
/* 8005D0E0 0005A020  40 82 00 30 */ bne lbl_8005D110
/* 8005D0E4 0005A024  88 0D 87 E4 */ lbz r0, lbl_80450D64-_SDA_BASE_(r13)
/* 8005D0E8 0005A028  2C 00 00 11 */ cmpwi r0, 0x11
/* 8005D0EC 0005A02C  40 82 00 24 */ bne lbl_8005D110
/* 8005D0F0 0005A030  38 61 00 20 */ addi r3, r1, 0x20
/* 8005D0F4 0005A034  38 80 FF FF */ li r4, -1
/* 8005D0F8 0005A038  48 01 BF 99 */ bl __dt__12dBgS_RoofChkFv
/* 8005D0FC 0005A03C  7F 83 E3 78 */ mr r3, r28
/* 8005D100 0005A040  38 80 FF FF */ li r4, -1
/* 8005D104 0005A044  48 01 A7 E5 */ bl __dt__18dBgS_ObjGndChk_AllFv
/* 8005D108 0005A048  38 60 00 00 */ li r3, 0
/* 8005D10C 0005A04C  48 00 00 60 */ b lbl_8005D16C
lbl_8005D110:
/* 8005D110 0005A050  C0 21 00 18 */ lfs f1, 0x18(r1)
/* 8005D114 0005A054  C0 02 88 80 */ lfs f0, lbl_80452280-_SDA2_BASE_(r2)
/* 8005D118 0005A058  EC 01 00 2A */ fadds f0, f1, f0
/* 8005D11C 0005A05C  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 8005D120 0005A060  38 61 00 70 */ addi r3, r1, 0x70
/* 8005D124 0005A064  38 81 00 14 */ addi r4, r1, 0x14
/* 8005D128 0005A068  48 20 AC 01 */ bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8005D12C 0005A06C  7F A3 EB 78 */ mr r3, r29
/* 8005D130 0005A070  38 81 00 70 */ addi r4, r1, 0x70
/* 8005D134 0005A074  48 01 73 6D */ bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8005D138 0005A078  C0 42 88 7C */ lfs f2, lbl_8045227C-_SDA2_BASE_(r2)
/* 8005D13C 0005A07C  C0 1F 00 DC */ lfs f0, 0xdc(r31)
/* 8005D140 0005A080  EC 02 00 2A */ fadds f0, f2, f0
/* 8005D144 0005A084  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8005D148 0005A088  40 81 00 08 */ ble lbl_8005D150
/* 8005D14C 0005A08C  3B C0 00 01 */ li r30, 1
lbl_8005D150:
/* 8005D150 0005A090  38 61 00 20 */ addi r3, r1, 0x20
/* 8005D154 0005A094  38 80 FF FF */ li r4, -1
/* 8005D158 0005A098  48 01 BF 39 */ bl __dt__12dBgS_RoofChkFv
/* 8005D15C 0005A09C  38 61 00 70 */ addi r3, r1, 0x70
/* 8005D160 0005A0A0  38 80 FF FF */ li r4, -1
/* 8005D164 0005A0A4  48 01 A7 85 */ bl __dt__18dBgS_ObjGndChk_AllFv
/* 8005D168 0005A0A8  7F C3 F3 78 */ mr r3, r30
lbl_8005D16C:
/* 8005D16C 0005A0AC  E3 E1 00 E8 */ psq_l f31, 232(r1), 0, 0
/* 8005D170 0005A0B0  CB E1 00 E0 */ lfd f31, 0xe0(r1)
/* 8005D174 0005A0B4  39 61 00 E0 */ addi r11, r1, 0xe0
/* 8005D178 0005A0B8  48 30 50 AD */ bl _restgpr_28
/* 8005D17C 0005A0BC  80 01 00 F4 */ lwz r0, 0xf4(r1)
/* 8005D180 0005A0C0  7C 08 03 A6 */ mtlr r0
/* 8005D184 0005A0C4  38 21 00 F0 */ addi r1, r1, 0xf0
/* 8005D188 0005A0C8  4E 80 00 20 */ blr
