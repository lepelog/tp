/* 800C3DA0 000C0CE0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800C3DA4 000C0CE4  7C 08 02 A6 */ mflr r0
/* 800C3DA8 000C0CE8  90 01 00 14 */ stw r0, 0x14(r1)
/* 800C3DAC 000C0CEC  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800C3DB0 000C0CF0  93 C1 00 08 */ stw r30, 8(r1)
/* 800C3DB4 000C0CF4  7C 7F 1B 78 */ mr r31, r3
/* 800C3DB8 000C0CF8  7C 9E 23 78 */ mr r30, r4
/* 800C3DBC 000C0CFC  2C 1E 00 01 */ cmpwi r30, 1
/* 800C3DC0 000C0D00  40 82 00 64 */ bne lbl_800C3E24
/* 800C3DC4 000C0D04  38 80 00 01 */ li r4, 1
/* 800C3DC8 000C0D08  38 A0 00 01 */ li r5, 1
/* 800C3DCC 000C0D0C  4B FF 76 ED */ bl checkHeavyStateOn__9daAlink_cFii
/* 800C3DD0 000C0D10  2C 03 00 00 */ cmpwi r3, 0
/* 800C3DD4 000C0D14  40 82 00 50 */ bne lbl_800C3E24
/* 800C3DD8 000C0D18  7F E3 FB 78 */ mr r3, r31
/* 800C3DDC 000C0D1C  4B FF 54 79 */ bl checkNoUpperAnime__9daAlink_cCFv
/* 800C3DE0 000C0D20  2C 03 00 00 */ cmpwi r3, 0
/* 800C3DE4 000C0D24  40 82 00 30 */ bne lbl_800C3E14
/* 800C3DE8 000C0D28  7F E3 FB 78 */ mr r3, r31
/* 800C3DEC 000C0D2C  4B FF 55 55 */ bl checkEquipAnime__9daAlink_cCFv
/* 800C3DF0 000C0D30  2C 03 00 00 */ cmpwi r3, 0
/* 800C3DF4 000C0D34  40 82 00 20 */ bne lbl_800C3E14
/* 800C3DF8 000C0D38  88 1F 2F CC */ lbz r0, 0x2fcc(r31)
/* 800C3DFC 000C0D3C  28 00 00 00 */ cmplwi r0, 0
/* 800C3E00 000C0D40  41 82 00 24 */ beq lbl_800C3E24
/* 800C3E04 000C0D44  7F E3 FB 78 */ mr r3, r31
/* 800C3E08 000C0D48  48 01 8F E9 */ bl checkUpperGuardAnime__9daAlink_cCFv
/* 800C3E0C 000C0D4C  2C 03 00 00 */ cmpwi r3, 0
/* 800C3E10 000C0D50  41 82 00 14 */ beq lbl_800C3E24
lbl_800C3E14:
/* 800C3E14 000C0D54  7F E3 FB 78 */ mr r3, r31
/* 800C3E18 000C0D58  38 80 00 00 */ li r4, 0
/* 800C3E1C 000C0D5C  48 00 19 89 */ bl procBackJumpInit__9daAlink_cFi
/* 800C3E20 000C0D60  48 00 01 28 */ b lbl_800C3F48
lbl_800C3E24:
/* 800C3E24 000C0D64  7F E3 FB 78 */ mr r3, r31
/* 800C3E28 000C0D68  38 80 00 0A */ li r4, 0xa
/* 800C3E2C 000C0D6C  4B FF E1 41 */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C3E30 000C0D70  9B DF 2F 98 */ stb r30, 0x2f98(r31)
/* 800C3E34 000C0D74  88 1F 2F 98 */ lbz r0, 0x2f98(r31)
/* 800C3E38 000C0D78  28 00 00 01 */ cmplwi r0, 1
/* 800C3E3C 000C0D7C  40 82 00 50 */ bne lbl_800C3E8C
/* 800C3E40 000C0D80  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 800C3E44 000C0D84  3C 63 00 01 */ addis r3, r3, 1
/* 800C3E48 000C0D88  38 03 80 00 */ addi r0, r3, -32768
/* 800C3E4C 000C0D8C  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 800C3E50 000C0D90  7F E3 FB 78 */ mr r3, r31
/* 800C3E54 000C0D94  38 80 00 21 */ li r4, 0x21
/* 800C3E58 000C0D98  3C A0 80 39 */ lis r5, lbl_8038D864@ha
/* 800C3E5C 000C0D9C  38 A5 D8 64 */ addi r5, r5, lbl_8038D864@l
/* 800C3E60 000C0DA0  38 A5 00 28 */ addi r5, r5, 0x28
/* 800C3E64 000C0DA4  4B FE 92 91 */ bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800C3E68 000C0DA8  3C 60 80 39 */ lis r3, lbl_8038D864@ha
/* 800C3E6C 000C0DAC  38 63 D8 64 */ addi r3, r3, lbl_8038D864@l
/* 800C3E70 000C0DB0  C0 03 00 58 */ lfs f0, 0x58(r3)
/* 800C3E74 000C0DB4  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 800C3E78 000C0DB8  C0 03 00 5C */ lfs f0, 0x5c(r3)
/* 800C3E7C 000C0DBC  D0 1F 04 FC */ stfs f0, 0x4fc(r31)
/* 800C3E80 000C0DC0  38 00 00 00 */ li r0, 0
/* 800C3E84 000C0DC4  B0 1F 30 0A */ sth r0, 0x300a(r31)
/* 800C3E88 000C0DC8  48 00 00 60 */ b lbl_800C3EE8
lbl_800C3E8C:
/* 800C3E8C 000C0DCC  28 00 00 02 */ cmplwi r0, 2
/* 800C3E90 000C0DD0  40 82 00 18 */ bne lbl_800C3EA8
/* 800C3E94 000C0DD4  38 80 00 1D */ li r4, 0x1d
/* 800C3E98 000C0DD8  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 800C3E9C 000C0DDC  38 03 40 00 */ addi r0, r3, 0x4000
/* 800C3EA0 000C0DE0  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 800C3EA4 000C0DE4  48 00 00 14 */ b lbl_800C3EB8
lbl_800C3EA8:
/* 800C3EA8 000C0DE8  38 80 00 1E */ li r4, 0x1e
/* 800C3EAC 000C0DEC  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 800C3EB0 000C0DF0  38 03 C0 00 */ addi r0, r3, -16384
/* 800C3EB4 000C0DF4  B0 1F 04 DE */ sth r0, 0x4de(r31)
lbl_800C3EB8:
/* 800C3EB8 000C0DF8  7F E3 FB 78 */ mr r3, r31
/* 800C3EBC 000C0DFC  3C A0 80 39 */ lis r5, lbl_8038D864@ha
/* 800C3EC0 000C0E00  38 A5 D8 64 */ addi r5, r5, lbl_8038D864@l
/* 800C3EC4 000C0E04  4B FE 92 31 */ bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800C3EC8 000C0E08  3C 60 80 39 */ lis r3, lbl_8038D864@ha
/* 800C3ECC 000C0E0C  38 63 D8 64 */ addi r3, r3, lbl_8038D864@l
/* 800C3ED0 000C0E10  C0 03 00 50 */ lfs f0, 0x50(r3)
/* 800C3ED4 000C0E14  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 800C3ED8 000C0E18  C0 03 00 54 */ lfs f0, 0x54(r3)
/* 800C3EDC 000C0E1C  D0 1F 04 FC */ stfs f0, 0x4fc(r31)
/* 800C3EE0 000C0E20  38 00 00 01 */ li r0, 1
/* 800C3EE4 000C0E24  B0 1F 30 0A */ sth r0, 0x300a(r31)
lbl_800C3EE8:
/* 800C3EE8 000C0E28  80 1F 05 70 */ lwz r0, 0x570(r31)
/* 800C3EEC 000C0E2C  54 00 02 11 */ rlwinm. r0, r0, 0, 8, 8
/* 800C3EF0 000C0E30  41 82 00 2C */ beq lbl_800C3F1C
/* 800C3EF4 000C0E34  C0 3F 33 98 */ lfs f1, 0x3398(r31)
/* 800C3EF8 000C0E38  3C 60 80 39 */ lis r3, lbl_8038E7F4@ha
/* 800C3EFC 000C0E3C  38 63 E7 F4 */ addi r3, r3, lbl_8038E7F4@l
/* 800C3F00 000C0E40  C0 03 00 3C */ lfs f0, 0x3c(r3)
/* 800C3F04 000C0E44  EC 01 00 32 */ fmuls f0, f1, f0
/* 800C3F08 000C0E48  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 800C3F0C 000C0E4C  C0 3F 04 FC */ lfs f1, 0x4fc(r31)
/* 800C3F10 000C0E50  C0 03 00 38 */ lfs f0, 0x38(r3)
/* 800C3F14 000C0E54  EC 01 00 32 */ fmuls f0, f1, f0
/* 800C3F18 000C0E58  D0 1F 04 FC */ stfs f0, 0x4fc(r31)
lbl_800C3F1C:
/* 800C3F1C 000C0E5C  7F E3 FB 78 */ mr r3, r31
/* 800C3F20 000C0E60  3C 80 00 01 */ lis r4, 0x00010005@ha
/* 800C3F24 000C0E64  38 84 00 05 */ addi r4, r4, 0x00010005@l
/* 800C3F28 000C0E68  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800C3F2C 000C0E6C  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 800C3F30 000C0E70  7D 89 03 A6 */ mtctr r12
/* 800C3F34 000C0E74  4E 80 04 21 */ bctrl
/* 800C3F38 000C0E78  38 00 00 00 */ li r0, 0
/* 800C3F3C 000C0E7C  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 800C3F40 000C0E80  B0 1F 30 0E */ sth r0, 0x300e(r31)
/* 800C3F44 000C0E84  38 60 00 01 */ li r3, 1
lbl_800C3F48:
/* 800C3F48 000C0E88  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800C3F4C 000C0E8C  83 C1 00 08 */ lwz r30, 8(r1)
/* 800C3F50 000C0E90  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800C3F54 000C0E94  7C 08 03 A6 */ mtlr r0
/* 800C3F58 000C0E98  38 21 00 10 */ addi r1, r1, 0x10
/* 800C3F5C 000C0E9C  4E 80 00 20 */ blr