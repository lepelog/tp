/* 80208E1C 00205D5C  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80208E20 00205D60  7C 08 02 A6 */ mflr r0
/* 80208E24 00205D64  90 01 00 24 */ stw r0, 0x24(r1)
/* 80208E28 00205D68  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 80208E2C 00205D6C  7C 7F 1B 78 */ mr r31, r3
/* 80208E30 00205D70  80 63 00 68 */ lwz r3, 0x68(r3)
/* 80208E34 00205D74  28 03 00 00 */ cmplwi r3, 0
/* 80208E38 00205D78  41 82 00 D0 */ beq lbl_80208F08
/* 80208E3C 00205D7C  48 04 C9 ED */ bl getAlphaRate__13CPaneMgrAlphaFv
/* 80208E40 00205D80  C0 02 AD 4C */ lfs f0, lbl_8045474C-_SDA2_BASE_(r2)
/* 80208E44 00205D84  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80208E48 00205D88  41 82 00 C0 */ beq lbl_80208F08
/* 80208E4C 00205D8C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80208E50 00205D90  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80208E54 00205D94  88 03 5E 4A */ lbz r0, 0x5e4a(r3)
/* 80208E58 00205D98  54 00 07 FF */ clrlwi. r0, r0, 0x1f
/* 80208E5C 00205D9C  40 82 00 10 */ bne lbl_80208E6C
/* 80208E60 00205DA0  88 03 5E 4B */ lbz r0, 0x5e4b(r3)
/* 80208E64 00205DA4  54 00 07 FF */ clrlwi. r0, r0, 0x1f
/* 80208E68 00205DA8  41 82 00 20 */ beq lbl_80208E88
lbl_80208E6C:
/* 80208E6C 00205DAC  80 7F 00 68 */ lwz r3, 0x68(r31)
/* 80208E70 00205DB0  C0 22 AD 4C */ lfs f1, lbl_8045474C-_SDA2_BASE_(r2)
/* 80208E74 00205DB4  48 04 C9 5D */ bl setAlphaRate__13CPaneMgrAlphaFf
/* 80208E78 00205DB8  38 00 00 05 */ li r0, 5
/* 80208E7C 00205DBC  80 7F 00 68 */ lwz r3, 0x68(r31)
/* 80208E80 00205DC0  B0 03 00 16 */ sth r0, 0x16(r3)
/* 80208E84 00205DC4  48 00 00 2C */ b lbl_80208EB0
lbl_80208E88:
/* 80208E88 00205DC8  80 7F 00 68 */ lwz r3, 0x68(r31)
/* 80208E8C 00205DCC  FC 20 00 90 */ fmr f1, f0
/* 80208E90 00205DD0  48 04 C9 41 */ bl setAlphaRate__13CPaneMgrAlphaFf
/* 80208E94 00205DD4  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 80208E98 00205DD8  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 80208E9C 00205DDC  80 63 00 1C */ lwz r3, 0x1c(r3)
/* 80208EA0 00205DE0  80 63 01 0C */ lwz r3, 0x10c(r3)
/* 80208EA4 00205DE4  80 9F 00 68 */ lwz r4, 0x68(r31)
/* 80208EA8 00205DE8  38 A0 00 05 */ li r5, 5
/* 80208EAC 00205DEC  48 01 1B F9 */ bl dMeter2Draw_c_NS_setAlphaAnimeMax
lbl_80208EB0:
/* 80208EB0 00205DF0  80 7F 00 68 */ lwz r3, 0x68(r31)
/* 80208EB4 00205DF4  48 04 C9 75 */ bl getAlphaRate__13CPaneMgrAlphaFv
/* 80208EB8 00205DF8  C0 42 AD 4C */ lfs f2, lbl_8045474C-_SDA2_BASE_(r2)
/* 80208EBC 00205DFC  FC 02 08 00 */ fcmpu cr0, f2, f1
/* 80208EC0 00205E00  40 82 00 48 */ bne lbl_80208F08
/* 80208EC4 00205E04  88 1F 04 D3 */ lbz r0, 0x4d3(r31)
/* 80208EC8 00205E08  28 00 00 00 */ cmplwi r0, 0
/* 80208ECC 00205E0C  40 82 00 3C */ bne lbl_80208F08
/* 80208ED0 00205E10  38 00 00 56 */ li r0, 0x56
/* 80208ED4 00205E14  90 01 00 08 */ stw r0, 8(r1)
/* 80208ED8 00205E18  80 6D 8D E8 */ lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 80208EDC 00205E1C  38 81 00 08 */ addi r4, r1, 8
/* 80208EE0 00205E20  38 A0 00 00 */ li r5, 0
/* 80208EE4 00205E24  38 C0 00 00 */ li r6, 0
/* 80208EE8 00205E28  38 E0 00 00 */ li r7, 0
/* 80208EEC 00205E2C  FC 20 10 90 */ fmr f1, f2
/* 80208EF0 00205E30  C0 62 AD 58 */ lfs f3, lbl_80454758-_SDA2_BASE_(r2)
/* 80208EF4 00205E34  FC 80 18 90 */ fmr f4, f3
/* 80208EF8 00205E38  39 00 00 00 */ li r8, 0
/* 80208EFC 00205E3C  48 0A 2A 89 */ bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80208F00 00205E40  38 00 00 01 */ li r0, 1
/* 80208F04 00205E44  98 1F 04 D3 */ stb r0, 0x4d3(r31)
lbl_80208F08:
/* 80208F08 00205E48  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 80208F0C 00205E4C  80 01 00 24 */ lwz r0, 0x24(r1)
/* 80208F10 00205E50  7C 08 03 A6 */ mtlr r0
/* 80208F14 00205E54  38 21 00 20 */ addi r1, r1, 0x20
/* 80208F18 00205E58  4E 80 00 20 */ blr
