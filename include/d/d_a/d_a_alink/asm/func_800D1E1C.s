/* 800D1E1C 000CED5C  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800D1E20 000CED60  7C 08 02 A6 */ mflr r0
/* 800D1E24 000CED64  90 01 00 24 */ stw r0, 0x24(r1)
/* 800D1E28 000CED68  39 61 00 20 */ addi r11, r1, 0x20
/* 800D1E2C 000CED6C  48 29 03 B1 */ bl _savegpr_29
/* 800D1E30 000CED70  7C 7F 1B 78 */ mr r31, r3
/* 800D1E34 000CED74  7C BD 2B 78 */ mr r29, r5
/* 800D1E38 000CED78  3C A0 80 39 */ lis r5, lbl_8038D658@ha
/* 800D1E3C 000CED7C  3B C5 D6 58 */ addi r30, r5, lbl_8038D658@l
/* 800D1E40 000CED80  2C 04 00 00 */ cmpwi r4, 0
/* 800D1E44 000CED84  40 82 00 18 */ bne lbl_800D1E5C
/* 800D1E48 000CED88  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 800D1E4C 000CED8C  54 00 01 4B */ rlwinm. r0, r0, 0, 5, 5
/* 800D1E50 000CED90  41 82 00 0C */ beq lbl_800D1E5C
/* 800D1E54 000CED94  48 00 05 6D */ bl checkCutAction__9daAlink_cFv
/* 800D1E58 000CED98  48 00 02 44 */ b lbl_800D209C
lbl_800D1E5C:
/* 800D1E5C 000CED9C  38 00 00 05 */ li r0, 5
/* 800D1E60 000CEDA0  98 1F 2F CE */ stb r0, 0x2fce(r31)
/* 800D1E64 000CEDA4  7F E3 FB 78 */ mr r3, r31
/* 800D1E68 000CEDA8  38 80 00 00 */ li r4, 0
/* 800D1E6C 000CEDAC  4B FF F5 C5 */ bl resetCombo__9daAlink_cFi
/* 800D1E70 000CEDB0  80 1F 05 78 */ lwz r0, 0x578(r31)
/* 800D1E74 000CEDB4  54 00 07 FA */ rlwinm r0, r0, 0, 0x1f, 0x1d
/* 800D1E78 000CEDB8  90 1F 05 78 */ stw r0, 0x578(r31)
/* 800D1E7C 000CEDBC  7F E3 FB 78 */ mr r3, r31
/* 800D1E80 000CEDC0  38 80 00 00 */ li r4, 0
/* 800D1E84 000CEDC4  38 A0 00 07 */ li r5, 7
/* 800D1E88 000CEDC8  38 C0 00 10 */ li r6, 0x10
/* 800D1E8C 000CEDCC  38 E0 00 01 */ li r7, 1
/* 800D1E90 000CEDD0  39 1E 08 34 */ addi r8, r30, 0x834
/* 800D1E94 000CEDD4  C0 28 00 84 */ lfs f1, 0x84(r8)
/* 800D1E98 000CEDD8  C0 48 00 88 */ lfs f2, 0x88(r8)
/* 800D1E9C 000CEDDC  4B FF F7 ED */ bl setSwordAtParam__9daAlink_cF11dCcG_At_SplUcUciff
/* 800D1EA0 000CEDE0  38 00 00 02 */ li r0, 2
/* 800D1EA4 000CEDE4  98 1F 2F D0 */ stb r0, 0x2fd0(r31)
/* 800D1EA8 000CEDE8  88 7F 2F A1 */ lbz r3, 0x2fa1(r31)
/* 800D1EAC 000CEDEC  38 03 00 01 */ addi r0, r3, 1
/* 800D1EB0 000CEDF0  98 1F 2F A1 */ stb r0, 0x2fa1(r31)
/* 800D1EB4 000CEDF4  2C 1D 00 00 */ cmpwi r29, 0
/* 800D1EB8 000CEDF8  41 82 00 68 */ beq lbl_800D1F20
/* 800D1EBC 000CEDFC  7F E3 FB 78 */ mr r3, r31
/* 800D1EC0 000CEE00  38 80 00 82 */ li r4, 0x82
/* 800D1EC4 000CEE04  38 A0 00 02 */ li r5, 2
/* 800D1EC8 000CEE08  38 DE 06 D0 */ addi r6, r30, 0x6d0
/* 800D1ECC 000CEE0C  4B FD B8 25 */ bl setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsfParam
/* 800D1ED0 000CEE10  7F E3 FB 78 */ mr r3, r31
/* 800D1ED4 000CEE14  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800D1ED8 000CEE18  81 8C 01 94 */ lwz r12, 0x194(r12)
/* 800D1EDC 000CEE1C  7D 89 03 A6 */ mtctr r12
/* 800D1EE0 000CEE20  4E 80 04 21 */ bctrl
/* 800D1EE4 000CEE24  28 03 00 00 */ cmplwi r3, 0
/* 800D1EE8 000CEE28  41 82 00 14 */ beq lbl_800D1EFC
/* 800D1EEC 000CEE2C  7F E3 FB 78 */ mr r3, r31
/* 800D1EF0 000CEE30  38 80 00 0D */ li r4, 0xd
/* 800D1EF4 000CEE34  4B FF F6 39 */ bl setCutType__9daAlink_cFUc
/* 800D1EF8 000CEE38  48 00 00 10 */ b lbl_800D1F08
lbl_800D1EFC:
/* 800D1EFC 000CEE3C  7F E3 FB 78 */ mr r3, r31
/* 800D1F00 000CEE40  38 80 00 38 */ li r4, 0x38
/* 800D1F04 000CEE44  4B FF F6 29 */ bl setCutType__9daAlink_cFUc
lbl_800D1F08:
/* 800D1F08 000CEE48  88 1F 2F A1 */ lbz r0, 0x2fa1(r31)
/* 800D1F0C 000CEE4C  28 00 00 03 */ cmplwi r0, 3
/* 800D1F10 000CEE50  40 82 01 18 */ bne lbl_800D2028
/* 800D1F14 000CEE54  38 00 00 01 */ li r0, 1
/* 800D1F18 000CEE58  98 1F 2F A1 */ stb r0, 0x2fa1(r31)
/* 800D1F1C 000CEE5C  48 00 01 0C */ b lbl_800D2028
lbl_800D1F20:
/* 800D1F20 000CEE60  88 1F 2F A1 */ lbz r0, 0x2fa1(r31)
/* 800D1F24 000CEE64  28 00 00 01 */ cmplwi r0, 1
/* 800D1F28 000CEE68  41 82 00 0C */ beq lbl_800D1F34
/* 800D1F2C 000CEE6C  28 00 00 03 */ cmplwi r0, 3
/* 800D1F30 000CEE70  40 82 00 84 */ bne lbl_800D1FB4
lbl_800D1F34:
/* 800D1F34 000CEE74  7F E3 FB 78 */ mr r3, r31
/* 800D1F38 000CEE78  38 80 00 80 */ li r4, 0x80
/* 800D1F3C 000CEE7C  38 A0 00 02 */ li r5, 2
/* 800D1F40 000CEE80  38 DE 06 98 */ addi r6, r30, 0x698
/* 800D1F44 000CEE84  4B FD B7 AD */ bl setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsfParam
/* 800D1F48 000CEE88  7F E3 FB 78 */ mr r3, r31
/* 800D1F4C 000CEE8C  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800D1F50 000CEE90  81 8C 01 94 */ lwz r12, 0x194(r12)
/* 800D1F54 000CEE94  7D 89 03 A6 */ mtctr r12
/* 800D1F58 000CEE98  4E 80 04 21 */ bctrl
/* 800D1F5C 000CEE9C  28 03 00 00 */ cmplwi r3, 0
/* 800D1F60 000CEEA0  41 82 00 14 */ beq lbl_800D1F74
/* 800D1F64 000CEEA4  7F E3 FB 78 */ mr r3, r31
/* 800D1F68 000CEEA8  38 80 00 0B */ li r4, 0xb
/* 800D1F6C 000CEEAC  4B FF F5 C1 */ bl setCutType__9daAlink_cFUc
/* 800D1F70 000CEEB0  48 00 00 2C */ b lbl_800D1F9C
lbl_800D1F74:
/* 800D1F74 000CEEB4  A0 1F 2F E8 */ lhz r0, 0x2fe8(r31)
/* 800D1F78 000CEEB8  28 00 00 0A */ cmplwi r0, 0xa
/* 800D1F7C 000CEEBC  40 82 00 14 */ bne lbl_800D1F90
/* 800D1F80 000CEEC0  7F E3 FB 78 */ mr r3, r31
/* 800D1F84 000CEEC4  38 80 00 10 */ li r4, 0x10
/* 800D1F88 000CEEC8  4B FF F5 A5 */ bl setCutType__9daAlink_cFUc
/* 800D1F8C 000CEECC  48 00 00 10 */ b lbl_800D1F9C
lbl_800D1F90:
/* 800D1F90 000CEED0  7F E3 FB 78 */ mr r3, r31
/* 800D1F94 000CEED4  38 80 00 25 */ li r4, 0x25
/* 800D1F98 000CEED8  4B FF F5 95 */ bl setCutType__9daAlink_cFUc
lbl_800D1F9C:
/* 800D1F9C 000CEEDC  38 00 00 01 */ li r0, 1
/* 800D1FA0 000CEEE0  98 1F 2F A1 */ stb r0, 0x2fa1(r31)
/* 800D1FA4 000CEEE4  7F E3 FB 78 */ mr r3, r31
/* 800D1FA8 000CEEE8  38 80 00 13 */ li r4, 0x13
/* 800D1FAC 000CEEEC  4B FD DA FD */ bl setFacePriTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 800D1FB0 000CEEF0  48 00 00 78 */ b lbl_800D2028
lbl_800D1FB4:
/* 800D1FB4 000CEEF4  7F E3 FB 78 */ mr r3, r31
/* 800D1FB8 000CEEF8  38 80 00 81 */ li r4, 0x81
/* 800D1FBC 000CEEFC  38 A0 00 02 */ li r5, 2
/* 800D1FC0 000CEF00  38 DE 06 B4 */ addi r6, r30, 0x6b4
/* 800D1FC4 000CEF04  4B FD B7 2D */ bl setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsfParam
/* 800D1FC8 000CEF08  7F E3 FB 78 */ mr r3, r31
/* 800D1FCC 000CEF0C  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800D1FD0 000CEF10  81 8C 01 94 */ lwz r12, 0x194(r12)
/* 800D1FD4 000CEF14  7D 89 03 A6 */ mtctr r12
/* 800D1FD8 000CEF18  4E 80 04 21 */ bctrl
/* 800D1FDC 000CEF1C  28 03 00 00 */ cmplwi r3, 0
/* 800D1FE0 000CEF20  41 82 00 14 */ beq lbl_800D1FF4
/* 800D1FE4 000CEF24  7F E3 FB 78 */ mr r3, r31
/* 800D1FE8 000CEF28  38 80 00 0C */ li r4, 0xc
/* 800D1FEC 000CEF2C  4B FF F5 41 */ bl setCutType__9daAlink_cFUc
/* 800D1FF0 000CEF30  48 00 00 2C */ b lbl_800D201C
lbl_800D1FF4:
/* 800D1FF4 000CEF34  A0 1F 2F E8 */ lhz r0, 0x2fe8(r31)
/* 800D1FF8 000CEF38  28 00 00 0A */ cmplwi r0, 0xa
/* 800D1FFC 000CEF3C  40 82 00 14 */ bne lbl_800D2010
/* 800D2000 000CEF40  7F E3 FB 78 */ mr r3, r31
/* 800D2004 000CEF44  38 80 00 11 */ li r4, 0x11
/* 800D2008 000CEF48  4B FF F5 25 */ bl setCutType__9daAlink_cFUc
/* 800D200C 000CEF4C  48 00 00 10 */ b lbl_800D201C
lbl_800D2010:
/* 800D2010 000CEF50  7F E3 FB 78 */ mr r3, r31
/* 800D2014 000CEF54  38 80 00 26 */ li r4, 0x26
/* 800D2018 000CEF58  4B FF F5 15 */ bl setCutType__9daAlink_cFUc
lbl_800D201C:
/* 800D201C 000CEF5C  7F E3 FB 78 */ mr r3, r31
/* 800D2020 000CEF60  38 80 00 14 */ li r4, 0x14
/* 800D2024 000CEF64  4B FD DA 85 */ bl setFacePriTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
lbl_800D2028:
/* 800D2028 000CEF68  7F E3 FB 78 */ mr r3, r31
/* 800D202C 000CEF6C  38 80 01 04 */ li r4, 0x104
/* 800D2030 000CEF70  38 A0 00 01 */ li r5, 1
/* 800D2034 000CEF74  3C C0 00 01 */ lis r6, 0x0000FFFF@ha
/* 800D2038 000CEF78  38 C6 FF FF */ addi r6, r6, 0x0000FFFF@l
/* 800D203C 000CEF7C  4B FD D4 75 */ bl setFaceBck__9daAlink_cFUsiUs
/* 800D2040 000CEF80  38 00 00 02 */ li r0, 2
/* 800D2044 000CEF84  98 1F 2F 96 */ stb r0, 0x2f96(r31)
/* 800D2048 000CEF88  38 7E 08 34 */ addi r3, r30, 0x834
/* 800D204C 000CEF8C  A8 03 00 52 */ lha r0, 0x52(r3)
/* 800D2050 000CEF90  B0 1F 30 7E */ sth r0, 0x307e(r31)
/* 800D2054 000CEF94  7F E3 FB 78 */ mr r3, r31
/* 800D2058 000CEF98  3C 80 00 01 */ lis r4, 0x0001001C@ha
/* 800D205C 000CEF9C  38 84 00 1C */ addi r4, r4, 0x0001001C@l
/* 800D2060 000CEFA0  48 00 02 25 */ bl setSwordVoiceSe__9daAlink_cFUl
/* 800D2064 000CEFA4  4B FF EE F9 */ bl getSwordAtType__9daAlink_cFv
/* 800D2068 000CEFA8  7C 64 1B 78 */ mr r4, r3
/* 800D206C 000CEFAC  7F E3 FB 78 */ mr r3, r31
/* 800D2070 000CEFB0  38 A0 00 00 */ li r5, 0
/* 800D2074 000CEFB4  38 C0 00 07 */ li r6, 7
/* 800D2078 000CEFB8  38 E0 00 10 */ li r7, 0x10
/* 800D207C 000CEFBC  39 00 00 01 */ li r8, 1
/* 800D2080 000CEFC0  C0 22 93 00 */ lfs f1, lbl_80452D00-_SDA2_BASE_(r2)
/* 800D2084 000CEFC4  C0 42 93 04 */ lfs f2, lbl_80452D04-_SDA2_BASE_(r2)
/* 800D2088 000CEFC8  4B FF F4 B9 */ bl setCylAtParam__9daAlink_cFUl11dCcG_At_SplUcUciff
/* 800D208C 000CEFCC  7F E3 FB 78 */ mr r3, r31
/* 800D2090 000CEFD0  48 05 20 B5 */ bl setCutWaterDropEffect__9daAlink_cFv
/* 800D2094 000CEFD4  38 00 00 00 */ li r0, 0
/* 800D2098 000CEFD8  98 1F 2F B7 */ stb r0, 0x2fb7(r31)
lbl_800D209C:
/* 800D209C 000CEFDC  39 61 00 20 */ addi r11, r1, 0x20
/* 800D20A0 000CEFE0  48 29 01 89 */ bl _restgpr_29
/* 800D20A4 000CEFE4  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800D20A8 000CEFE8  7C 08 03 A6 */ mtlr r0
/* 800D20AC 000CEFEC  38 21 00 20 */ addi r1, r1, 0x20
/* 800D20B0 000CEFF0  4E 80 00 20 */ blr
