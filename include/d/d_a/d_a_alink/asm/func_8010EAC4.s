/* 8010EAC4 0010BA04  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 8010EAC8 0010BA08  7C 08 02 A6 */ mflr r0
/* 8010EACC 0010BA0C  90 01 00 34 */ stw r0, 0x34(r1)
/* 8010EAD0 0010BA10  39 61 00 30 */ addi r11, r1, 0x30
/* 8010EAD4 0010BA14  48 25 37 05 */ bl _savegpr_28
/* 8010EAD8 0010BA18  7C 7D 1B 78 */ mr r29, r3
/* 8010EADC 0010BA1C  7C 9E 23 78 */ mr r30, r4
/* 8010EAE0 0010BA20  80 63 07 18 */ lwz r3, 0x718(r3)
/* 8010EAE4 0010BA24  4B F9 A7 65 */ bl daAlink_c_NS_simpleAnmPlay
/* 8010EAE8 0010BA28  80 7D 07 1C */ lwz r3, 0x71c(r29)
/* 8010EAEC 0010BA2C  4B F9 A7 5D */ bl daAlink_c_NS_simpleAnmPlay
/* 8010EAF0 0010BA30  2C 1E 00 00 */ cmpwi r30, 0
/* 8010EAF4 0010BA34  40 82 00 10 */ bne lbl_8010EB04
/* 8010EAF8 0010BA38  A0 1D 1F BC */ lhz r0, 0x1fbc(r29)
/* 8010EAFC 0010BA3C  28 00 02 47 */ cmplwi r0, 0x247
/* 8010EB00 0010BA40  40 82 00 10 */ bne lbl_8010EB10
lbl_8010EB04:
/* 8010EB04 0010BA44  3B FD 20 48 */ addi r31, r29, 0x2048
/* 8010EB08 0010BA48  A3 9D 1F BC */ lhz r28, 0x1fbc(r29)
/* 8010EB0C 0010BA4C  48 00 00 0C */ b lbl_8010EB18
lbl_8010EB10:
/* 8010EB10 0010BA50  3B FD 1F D0 */ addi r31, r29, 0x1fd0
/* 8010EB14 0010BA54  A3 9D 1F 58 */ lhz r28, 0x1f58(r29)
lbl_8010EB18:
/* 8010EB18 0010BA58  7F A3 EB 78 */ mr r3, r29
/* 8010EB1C 0010BA5C  38 80 01 00 */ li r4, 0x100
/* 8010EB20 0010BA60  4B F9 D9 31 */ bl daAlink_c_NS_getMainBckData
/* 8010EB24 0010BA64  A0 63 00 00 */ lhz r3, 0(r3)
/* 8010EB28 0010BA68  57 80 04 3E */ clrlwi r0, r28, 0x10
/* 8010EB2C 0010BA6C  7C 00 18 40 */ cmplw r0, r3
/* 8010EB30 0010BA70  40 82 02 B8 */ bne lbl_8010EDE8
/* 8010EB34 0010BA74  7F E3 FB 78 */ mr r3, r31
/* 8010EB38 0010BA78  48 04 F9 95 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8010EB3C 0010BA7C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8010EB40 0010BA80  41 82 02 70 */ beq lbl_8010EDB0
/* 8010EB44 0010BA84  2C 1E 00 00 */ cmpwi r30, 0
/* 8010EB48 0010BA88  41 82 00 30 */ beq lbl_8010EB78
/* 8010EB4C 0010BA8C  7F A3 EB 78 */ mr r3, r29
/* 8010EB50 0010BA90  38 80 01 01 */ li r4, 0x101
/* 8010EB54 0010BA94  4B F9 D8 FD */ bl daAlink_c_NS_getMainBckData
/* 8010EB58 0010BA98  A0 83 00 02 */ lhz r4, 2(r3)
/* 8010EB5C 0010BA9C  7F A3 EB 78 */ mr r3, r29
/* 8010EB60 0010BAA0  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8010EB64 0010BAA4  4B F9 E8 11 */ bl daAlink_c_NS_setUpperAnimeBaseMorf
/* 8010EB68 0010BAA8  7F A3 EB 78 */ mr r3, r29
/* 8010EB6C 0010BAAC  38 80 01 01 */ li r4, 0x101
/* 8010EB70 0010BAB0  4B FA 0F A5 */ bl daAlink_c_NS_setFacePriAnime
/* 8010EB74 0010BAB4  48 00 00 14 */ b lbl_8010EB88
lbl_8010EB78:
/* 8010EB78 0010BAB8  7F A3 EB 78 */ mr r3, r29
/* 8010EB7C 0010BABC  38 80 01 01 */ li r4, 0x101
/* 8010EB80 0010BAC0  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8010EB84 0010BAC4  4B F9 E4 2D */ bl daAlink_c_NS_setSingleAnimeBaseMorf
lbl_8010EB88:
/* 8010EB88 0010BAC8  38 00 00 00 */ li r0, 0
/* 8010EB8C 0010BACC  B0 1D 30 18 */ sth r0, 0x3018(r29)
/* 8010EB90 0010BAD0  A0 7D 2F DC */ lhz r3, 0x2fdc(r29)
/* 8010EB94 0010BAD4  28 03 00 6A */ cmplwi r3, 0x6a
/* 8010EB98 0010BAD8  41 82 01 F8 */ beq lbl_8010ED90
/* 8010EB9C 0010BADC  28 03 00 9F */ cmplwi r3, 0x9f
/* 8010EBA0 0010BAE0  41 82 01 F0 */ beq lbl_8010ED90
/* 8010EBA4 0010BAE4  28 03 00 7C */ cmplwi r3, 0x7c
/* 8010EBA8 0010BAE8  41 82 01 E8 */ beq lbl_8010ED90
/* 8010EBAC 0010BAEC  28 03 00 7D */ cmplwi r3, 0x7d
/* 8010EBB0 0010BAF0  40 82 00 24 */ bne lbl_8010EBD4
/* 8010EBB4 0010BAF4  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8010EBB8 0010BAF8  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8010EBBC 0010BAFC  C0 23 5D C0 */ lfs f1, 0x5dc0(r3)
/* 8010EBC0 0010BB00  C0 02 93 8C */ lfs f0, lbl_80452D8C-_SDA2_BASE_(r2)
/* 8010EBC4 0010BB04  EC 01 00 2A */ fadds f0, f1, f0
/* 8010EBC8 0010BB08  D0 03 5D C0 */ stfs f0, 0x5dc0(r3)
/* 8010EBCC 0010BB0C  98 03 5E B6 */ stb r0, 0x5eb6(r3)
/* 8010EBD0 0010BB10  48 00 01 C0 */ b lbl_8010ED90
lbl_8010EBD4:
/* 8010EBD4 0010BB14  28 03 00 7E */ cmplwi r3, 0x7e
/* 8010EBD8 0010BB18  40 82 00 24 */ bne lbl_8010EBFC
/* 8010EBDC 0010BB1C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8010EBE0 0010BB20  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8010EBE4 0010BB24  C0 23 5D C0 */ lfs f1, 0x5dc0(r3)
/* 8010EBE8 0010BB28  C0 02 94 04 */ lfs f0, lbl_80452E04-_SDA2_BASE_(r2)
/* 8010EBEC 0010BB2C  EC 01 00 2A */ fadds f0, f1, f0
/* 8010EBF0 0010BB30  D0 03 5D C0 */ stfs f0, 0x5dc0(r3)
/* 8010EBF4 0010BB34  98 03 5E B6 */ stb r0, 0x5eb6(r3)
/* 8010EBF8 0010BB38  48 00 01 98 */ b lbl_8010ED90
lbl_8010EBFC:
/* 8010EBFC 0010BB3C  28 03 00 7F */ cmplwi r3, 0x7f
/* 8010EC00 0010BB40  40 82 00 24 */ bne lbl_8010EC24
/* 8010EC04 0010BB44  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8010EC08 0010BB48  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8010EC0C 0010BB4C  C0 23 5D C0 */ lfs f1, 0x5dc0(r3)
/* 8010EC10 0010BB50  C0 02 94 28 */ lfs f0, lbl_80452E28-_SDA2_BASE_(r2)
/* 8010EC14 0010BB54  EC 01 00 2A */ fadds f0, f1, f0
/* 8010EC18 0010BB58  D0 03 5D C0 */ stfs f0, 0x5dc0(r3)
/* 8010EC1C 0010BB5C  98 03 5E B6 */ stb r0, 0x5eb6(r3)
/* 8010EC20 0010BB60  48 00 01 70 */ b lbl_8010ED90
lbl_8010EC24:
/* 8010EC24 0010BB64  28 03 00 76 */ cmplwi r3, 0x76
/* 8010EC28 0010BB68  40 82 00 54 */ bne lbl_8010EC7C
/* 8010EC2C 0010BB6C  38 00 00 03 */ li r0, 3
/* 8010EC30 0010BB70  98 1D 2F D3 */ stb r0, 0x2fd3(r29)
/* 8010EC34 0010BB74  88 7D 2F 9C */ lbz r3, 0x2f9c(r29)
/* 8010EC38 0010BB78  4B F1 F9 89 */ bl dComIfGp_getSelectItemNum
/* 8010EC3C 0010BB7C  7C 60 07 34 */ extsh r0, r3
/* 8010EC40 0010BB80  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 8010EC44 0010BB84  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 8010EC48 0010BB88  90 01 00 14 */ stw r0, 0x14(r1)
/* 8010EC4C 0010BB8C  3C 00 43 30 */ lis r0, 0x4330
/* 8010EC50 0010BB90  90 01 00 10 */ stw r0, 0x10(r1)
/* 8010EC54 0010BB94  C8 01 00 10 */ lfd f0, 0x10(r1)
/* 8010EC58 0010BB98  EC 20 08 28 */ fsubs f1, f0, f1
/* 8010EC5C 0010BB9C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8010EC60 0010BBA0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8010EC64 0010BBA4  C0 03 5D C0 */ lfs f0, 0x5dc0(r3)
/* 8010EC68 0010BBA8  EC 00 08 2A */ fadds f0, f0, f1
/* 8010EC6C 0010BBAC  D0 03 5D C0 */ stfs f0, 0x5dc0(r3)
/* 8010EC70 0010BBB0  38 00 00 00 */ li r0, 0
/* 8010EC74 0010BBB4  98 03 5E B6 */ stb r0, 0x5eb6(r3)
/* 8010EC78 0010BBB8  48 00 01 18 */ b lbl_8010ED90
lbl_8010EC7C:
/* 8010EC7C 0010BBBC  28 03 00 61 */ cmplwi r3, 0x61
/* 8010EC80 0010BBC0  41 82 00 14 */ beq lbl_8010EC94
/* 8010EC84 0010BBC4  28 03 00 78 */ cmplwi r3, 0x78
/* 8010EC88 0010BBC8  41 82 00 0C */ beq lbl_8010EC94
/* 8010EC8C 0010BBCC  28 03 00 69 */ cmplwi r3, 0x69
/* 8010EC90 0010BBD0  40 82 00 28 */ bne lbl_8010ECB8
lbl_8010EC94:
/* 8010EC94 0010BBD4  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8010EC98 0010BBD8  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8010EC9C 0010BBDC  C0 23 5D C0 */ lfs f1, 0x5dc0(r3)
/* 8010ECA0 0010BBE0  C0 02 94 28 */ lfs f0, lbl_80452E28-_SDA2_BASE_(r2)
/* 8010ECA4 0010BBE4  EC 01 00 2A */ fadds f0, f1, f0
/* 8010ECA8 0010BBE8  D0 03 5D C0 */ stfs f0, 0x5dc0(r3)
/* 8010ECAC 0010BBEC  38 00 00 00 */ li r0, 0
/* 8010ECB0 0010BBF0  98 03 5E B6 */ stb r0, 0x5eb6(r3)
/* 8010ECB4 0010BBF4  48 00 00 DC */ b lbl_8010ED90
lbl_8010ECB8:
/* 8010ECB8 0010BBF8  28 03 00 64 */ cmplwi r3, 0x64
/* 8010ECBC 0010BBFC  41 82 00 0C */ beq lbl_8010ECC8
/* 8010ECC0 0010BC00  28 03 00 65 */ cmplwi r3, 0x65
/* 8010ECC4 0010BC04  40 82 00 28 */ bne lbl_8010ECEC
lbl_8010ECC8:
/* 8010ECC8 0010BC08  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8010ECCC 0010BC0C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8010ECD0 0010BC10  C0 23 5D C0 */ lfs f1, 0x5dc0(r3)
/* 8010ECD4 0010BC14  C0 02 93 1C */ lfs f0, lbl_80452D1C-_SDA2_BASE_(r2)
/* 8010ECD8 0010BC18  EC 01 00 2A */ fadds f0, f1, f0
/* 8010ECDC 0010BC1C  D0 03 5D C0 */ stfs f0, 0x5dc0(r3)
/* 8010ECE0 0010BC20  38 00 00 00 */ li r0, 0
/* 8010ECE4 0010BC24  98 03 5E B6 */ stb r0, 0x5eb6(r3)
/* 8010ECE8 0010BC28  48 00 00 A8 */ b lbl_8010ED90
lbl_8010ECEC:
/* 8010ECEC 0010BC2C  28 03 00 63 */ cmplwi r3, 0x63
/* 8010ECF0 0010BC30  41 82 00 14 */ beq lbl_8010ED04
/* 8010ECF4 0010BC34  28 03 00 79 */ cmplwi r3, 0x79
/* 8010ECF8 0010BC38  41 82 00 0C */ beq lbl_8010ED04
/* 8010ECFC 0010BC3C  28 03 00 6B */ cmplwi r3, 0x6b
/* 8010ED00 0010BC40  40 82 00 44 */ bne lbl_8010ED44
lbl_8010ED04:
/* 8010ED04 0010BC44  4B F1 EF A5 */ bl dComIfGs_getMaxLifeGauge
/* 8010ED08 0010BC48  54 60 04 3E */ clrlwi r0, r3, 0x10
/* 8010ED0C 0010BC4C  C8 22 96 08 */ lfd f1, lbl_80453008-_SDA2_BASE_(r2)
/* 8010ED10 0010BC50  90 01 00 14 */ stw r0, 0x14(r1)
/* 8010ED14 0010BC54  3C 00 43 30 */ lis r0, 0x4330
/* 8010ED18 0010BC58  90 01 00 10 */ stw r0, 0x10(r1)
/* 8010ED1C 0010BC5C  C8 01 00 10 */ lfd f0, 0x10(r1)
/* 8010ED20 0010BC60  EC 20 08 28 */ fsubs f1, f0, f1
/* 8010ED24 0010BC64  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8010ED28 0010BC68  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8010ED2C 0010BC6C  C0 03 5D C0 */ lfs f0, 0x5dc0(r3)
/* 8010ED30 0010BC70  EC 00 08 2A */ fadds f0, f0, f1
/* 8010ED34 0010BC74  D0 03 5D C0 */ stfs f0, 0x5dc0(r3)
/* 8010ED38 0010BC78  38 00 00 00 */ li r0, 0
/* 8010ED3C 0010BC7C  98 03 5E B6 */ stb r0, 0x5eb6(r3)
/* 8010ED40 0010BC80  48 00 00 50 */ b lbl_8010ED90
lbl_8010ED44:
/* 8010ED44 0010BC84  28 03 00 77 */ cmplwi r3, 0x77
/* 8010ED48 0010BC88  41 82 00 0C */ beq lbl_8010ED54
/* 8010ED4C 0010BC8C  28 03 00 73 */ cmplwi r3, 0x73
/* 8010ED50 0010BC90  40 82 00 40 */ bne lbl_8010ED90
lbl_8010ED54:
/* 8010ED54 0010BC94  4B F1 EF 55 */ bl dComIfGs_getMaxLifeGauge
/* 8010ED58 0010BC98  54 60 04 3E */ clrlwi r0, r3, 0x10
/* 8010ED5C 0010BC9C  C8 22 96 08 */ lfd f1, lbl_80453008-_SDA2_BASE_(r2)
/* 8010ED60 0010BCA0  90 01 00 14 */ stw r0, 0x14(r1)
/* 8010ED64 0010BCA4  3C 00 43 30 */ lis r0, 0x4330
/* 8010ED68 0010BCA8  90 01 00 10 */ stw r0, 0x10(r1)
/* 8010ED6C 0010BCAC  C8 01 00 10 */ lfd f0, 0x10(r1)
/* 8010ED70 0010BCB0  EC 20 08 28 */ fsubs f1, f0, f1
/* 8010ED74 0010BCB4  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8010ED78 0010BCB8  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8010ED7C 0010BCBC  C0 03 5D C0 */ lfs f0, 0x5dc0(r3)
/* 8010ED80 0010BCC0  EC 00 08 2A */ fadds f0, f0, f1
/* 8010ED84 0010BCC4  D0 03 5D C0 */ stfs f0, 0x5dc0(r3)
/* 8010ED88 0010BCC8  38 00 00 00 */ li r0, 0
/* 8010ED8C 0010BCCC  98 03 5E B6 */ stb r0, 0x5eb6(r3)
lbl_8010ED90:
/* 8010ED90 0010BCD0  7F A3 EB 78 */ mr r3, r29
/* 8010ED94 0010BCD4  3C 80 00 01 */ lis r4, 0x00010019@ha
/* 8010ED98 0010BCD8  38 84 00 19 */ addi r4, r4, 0x00010019@l
/* 8010ED9C 0010BCDC  81 9D 06 28 */ lwz r12, 0x628(r29)
/* 8010EDA0 0010BCE0  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 8010EDA4 0010BCE4  7D 89 03 A6 */ mtctr r12
/* 8010EDA8 0010BCE8  4E 80 04 21 */ bctrl
/* 8010EDAC 0010BCEC  48 00 06 94 */ b lbl_8010F440
lbl_8010EDB0:
/* 8010EDB0 0010BCF0  7F E3 FB 78 */ mr r3, r31
/* 8010EDB4 0010BCF4  C0 22 93 00 */ lfs f1, lbl_80452D00-_SDA2_BASE_(r2)
/* 8010EDB8 0010BCF8  48 21 96 75 */ bl checkPass__12J3DFrameCtrlFf
/* 8010EDBC 0010BCFC  2C 03 00 00 */ cmpwi r3, 0
/* 8010EDC0 0010BD00  41 82 06 80 */ beq lbl_8010F440
/* 8010EDC4 0010BD04  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8010EDC8 0010BD08  80 7D 07 1C */ lwz r3, 0x71c(r29)
/* 8010EDCC 0010BD0C  D0 03 00 08 */ stfs f0, 8(r3)
/* 8010EDD0 0010BD10  80 7D 07 08 */ lwz r3, 0x708(r29)
/* 8010EDD4 0010BD14  80 63 00 04 */ lwz r3, 4(r3)
/* 8010EDD8 0010BD18  38 63 00 58 */ addi r3, r3, 0x58
/* 8010EDDC 0010BD1C  80 9D 07 1C */ lwz r4, 0x71c(r29)
/* 8010EDE0 0010BD20  48 22 0E E5 */ bl entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 8010EDE4 0010BD24  48 00 06 5C */ b lbl_8010F440
lbl_8010EDE8:
/* 8010EDE8 0010BD28  7F A3 EB 78 */ mr r3, r29
/* 8010EDEC 0010BD2C  38 80 01 01 */ li r4, 0x101
/* 8010EDF0 0010BD30  4B F9 D6 61 */ bl daAlink_c_NS_getMainBckData
/* 8010EDF4 0010BD34  A0 63 00 00 */ lhz r3, 0(r3)
/* 8010EDF8 0010BD38  57 80 04 3E */ clrlwi r0, r28, 0x10
/* 8010EDFC 0010BD3C  7C 00 18 40 */ cmplw r0, r3
/* 8010EE00 0010BD40  40 82 03 20 */ bne lbl_8010F120
/* 8010EE04 0010BD44  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8010EE08 0010BD48  3B E3 61 C0 */ addi r31, r3, g_dComIfG_gameInfo@l
/* 8010EE0C 0010BD4C  A0 7F 00 02 */ lhz r3, 2(r31)
/* 8010EE10 0010BD50  A0 1F 5E 16 */ lhz r0, 0x5e16(r31)
/* 8010EE14 0010BD54  7C 00 18 40 */ cmplw r0, r3
/* 8010EE18 0010BD58  40 82 06 28 */ bne lbl_8010F440
/* 8010EE1C 0010BD5C  38 00 00 00 */ li r0, 0
/* 8010EE20 0010BD60  90 1D 07 0C */ stw r0, 0x70c(r29)
/* 8010EE24 0010BD64  A0 1D 2F DC */ lhz r0, 0x2fdc(r29)
/* 8010EE28 0010BD68  28 00 00 64 */ cmplwi r0, 0x64
/* 8010EE2C 0010BD6C  40 82 00 90 */ bne lbl_8010EEBC
/* 8010EE30 0010BD70  2C 1E 00 00 */ cmpwi r30, 0
/* 8010EE34 0010BD74  41 82 00 3C */ beq lbl_8010EE70
/* 8010EE38 0010BD78  7F A3 EB 78 */ mr r3, r29
/* 8010EE3C 0010BD7C  38 80 01 02 */ li r4, 0x102
/* 8010EE40 0010BD80  4B F9 D6 11 */ bl daAlink_c_NS_getMainBckData
/* 8010EE44 0010BD84  A0 83 00 02 */ lhz r4, 2(r3)
/* 8010EE48 0010BD88  7F A3 EB 78 */ mr r3, r29
/* 8010EE4C 0010BD8C  38 A0 00 02 */ li r5, 2
/* 8010EE50 0010BD90  3C C0 80 39 */ lis r6, lbl_8038E90C@ha
/* 8010EE54 0010BD94  38 C6 E9 0C */ addi r6, r6, lbl_8038E90C@l
/* 8010EE58 0010BD98  38 C6 00 14 */ addi r6, r6, 0x14
/* 8010EE5C 0010BD9C  4B F9 E8 95 */ bl daAlink_c_NS_setUpperAnimeParam
/* 8010EE60 0010BDA0  7F A3 EB 78 */ mr r3, r29
/* 8010EE64 0010BDA4  38 80 01 02 */ li r4, 0x102
/* 8010EE68 0010BDA8  4B FA 0C AD */ bl daAlink_c_NS_setFacePriAnime
/* 8010EE6C 0010BDAC  48 00 00 1C */ b lbl_8010EE88
lbl_8010EE70:
/* 8010EE70 0010BDB0  7F A3 EB 78 */ mr r3, r29
/* 8010EE74 0010BDB4  38 80 01 02 */ li r4, 0x102
/* 8010EE78 0010BDB8  3C A0 80 39 */ lis r5, lbl_8038E90C@ha
/* 8010EE7C 0010BDBC  38 A5 E9 0C */ addi r5, r5, lbl_8038E90C@l
/* 8010EE80 0010BDC0  38 A5 00 14 */ addi r5, r5, 0x14
/* 8010EE84 0010BDC4  4B F9 E2 71 */ bl daAlink_c_NS_setSingleAnimeParam
lbl_8010EE88:
/* 8010EE88 0010BDC8  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 8010EE8C 0010BDCC  80 7D 07 2C */ lwz r3, 0x72c(r29)
/* 8010EE90 0010BDD0  D0 03 00 08 */ stfs f0, 8(r3)
/* 8010EE94 0010BDD4  A0 1D 06 04 */ lhz r0, 0x604(r29)
/* 8010EE98 0010BDD8  2C 00 00 05 */ cmpwi r0, 5
/* 8010EE9C 0010BDDC  40 82 05 A4 */ bne lbl_8010F440
/* 8010EEA0 0010BDE0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8010EEA4 0010BDE4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8010EEA8 0010BDE8  38 63 00 9C */ addi r3, r3, 0x9c
/* 8010EEAC 0010BDEC  88 9D 2F 9C */ lbz r4, 0x2f9c(r29)
/* 8010EEB0 0010BDF0  38 A0 00 65 */ li r5, 0x65
/* 8010EEB4 0010BDF4  4B F2 46 E5 */ bl setEquipBottleItemIn__17dSv_player_item_cFUcUc
/* 8010EEB8 0010BDF8  48 00 05 88 */ b lbl_8010F440
lbl_8010EEBC:
/* 8010EEBC 0010BDFC  A8 1D 30 0C */ lha r0, 0x300c(r29)
/* 8010EEC0 0010BE00  2C 00 00 00 */ cmpwi r0, 0
/* 8010EEC4 0010BE04  40 82 00 24 */ bne lbl_8010EEE8
/* 8010EEC8 0010BE08  38 00 00 01 */ li r0, 1
/* 8010EECC 0010BE0C  B0 1D 30 0C */ sth r0, 0x300c(r29)
/* 8010EED0 0010BE10  80 7D 07 08 */ lwz r3, 0x708(r29)
/* 8010EED4 0010BE14  80 63 00 04 */ lwz r3, 4(r3)
/* 8010EED8 0010BE18  38 63 00 58 */ addi r3, r3, 0x58
/* 8010EEDC 0010BE1C  80 9D 07 20 */ lwz r4, 0x720(r29)
/* 8010EEE0 0010BE20  48 22 0D E5 */ bl entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 8010EEE4 0010BE24  48 00 05 5C */ b lbl_8010F440
lbl_8010EEE8:
/* 8010EEE8 0010BE28  80 7D 07 20 */ lwz r3, 0x720(r29)
/* 8010EEEC 0010BE2C  4B F9 A3 5D */ bl daAlink_c_NS_simpleAnmPlay
/* 8010EEF0 0010BE30  2C 03 00 00 */ cmpwi r3, 0
/* 8010EEF4 0010BE34  41 82 05 4C */ beq lbl_8010F440
/* 8010EEF8 0010BE38  A0 1D 2F DC */ lhz r0, 0x2fdc(r29)
/* 8010EEFC 0010BE3C  28 00 00 6A */ cmplwi r0, 0x6a
/* 8010EF00 0010BE40  40 82 00 78 */ bne lbl_8010EF78
/* 8010EF04 0010BE44  A3 FF 00 02 */ lhz r31, 2(r31)
/* 8010EF08 0010BE48  57 E0 04 3E */ clrlwi r0, r31, 0x10
/* 8010EF0C 0010BE4C  28 00 00 02 */ cmplwi r0, 2
/* 8010EF10 0010BE50  41 81 00 10 */ bgt lbl_8010EF20
/* 8010EF14 0010BE54  4B F1 ED 95 */ bl dComIfGs_getMaxLifeGauge
/* 8010EF18 0010BE58  B0 7D 30 18 */ sth r3, 0x3018(r29)
/* 8010EF1C 0010BE5C  48 00 00 EC */ b lbl_8010F008
lbl_8010EF20:
/* 8010EF20 0010BE60  28 00 00 04 */ cmplwi r0, 4
/* 8010EF24 0010BE64  41 81 00 18 */ bgt lbl_8010EF3C
/* 8010EF28 0010BE68  4B F1 ED 81 */ bl dComIfGs_getMaxLifeGauge
/* 8010EF2C 0010BE6C  54 60 FC 7E */ rlwinm r0, r3, 0x1f, 0x11, 0x1f
/* 8010EF30 0010BE70  7C 1F 00 50 */ subf r0, r31, r0
/* 8010EF34 0010BE74  B0 1D 30 18 */ sth r0, 0x3018(r29)
/* 8010EF38 0010BE78  48 00 00 D0 */ b lbl_8010F008
lbl_8010EF3C:
/* 8010EF3C 0010BE7C  4B F1 ED 6D */ bl dComIfGs_getMaxLifeGauge
/* 8010EF40 0010BE80  54 63 04 3E */ clrlwi r3, r3, 0x10
/* 8010EF44 0010BE84  57 E0 04 3E */ clrlwi r0, r31, 0x10
/* 8010EF48 0010BE88  7C 00 18 40 */ cmplw r0, r3
/* 8010EF4C 0010BE8C  41 82 00 14 */ beq lbl_8010EF60
/* 8010EF50 0010BE90  48 15 89 1D */ bl cM_rnd__Fv
/* 8010EF54 0010BE94  C0 02 92 98 */ lfs f0, lbl_80452C98-_SDA2_BASE_(r2)
/* 8010EF58 0010BE98  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8010EF5C 0010BE9C  40 80 00 10 */ bge lbl_8010EF6C
lbl_8010EF60:
/* 8010EF60 0010BEA0  38 00 FF FC */ li r0, -4
/* 8010EF64 0010BEA4  B0 1D 30 18 */ sth r0, 0x3018(r29)
/* 8010EF68 0010BEA8  48 00 00 A0 */ b lbl_8010F008
lbl_8010EF6C:
/* 8010EF6C 0010BEAC  38 00 00 04 */ li r0, 4
/* 8010EF70 0010BEB0  B0 1D 30 18 */ sth r0, 0x3018(r29)
/* 8010EF74 0010BEB4  48 00 00 94 */ b lbl_8010F008
lbl_8010EF78:
/* 8010EF78 0010BEB8  28 00 00 7C */ cmplwi r0, 0x7c
/* 8010EF7C 0010BEBC  40 82 00 7C */ bne lbl_8010EFF8
/* 8010EF80 0010BEC0  C0 22 93 44 */ lfs f1, lbl_80452D44-_SDA2_BASE_(r2)
/* 8010EF84 0010BEC4  48 15 89 D1 */ bl cM_rndF__Ff
/* 8010EF88 0010BEC8  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 8010EF8C 0010BECC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8010EF90 0010BED0  40 80 00 10 */ bge lbl_8010EFA0
/* 8010EF94 0010BED4  4B F1 ED 15 */ bl dComIfGs_getMaxLifeGauge
/* 8010EF98 0010BED8  B0 7D 30 18 */ sth r3, 0x3018(r29)
/* 8010EF9C 0010BEDC  48 00 00 6C */ b lbl_8010F008
lbl_8010EFA0:
/* 8010EFA0 0010BEE0  C0 02 93 14 */ lfs f0, lbl_80452D14-_SDA2_BASE_(r2)
/* 8010EFA4 0010BEE4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8010EFA8 0010BEE8  40 80 00 2C */ bge lbl_8010EFD4
/* 8010EFAC 0010BEEC  A0 7F 00 02 */ lhz r3, 2(r31)
/* 8010EFB0 0010BEF0  38 03 FF FF */ addi r0, r3, -1
/* 8010EFB4 0010BEF4  7C 00 00 D0 */ neg r0, r0
/* 8010EFB8 0010BEF8  B0 1D 30 18 */ sth r0, 0x3018(r29)
/* 8010EFBC 0010BEFC  A8 1D 30 18 */ lha r0, 0x3018(r29)
/* 8010EFC0 0010BF00  2C 00 00 00 */ cmpwi r0, 0
/* 8010EFC4 0010BF04  40 82 00 44 */ bne lbl_8010F008
/* 8010EFC8 0010BF08  38 00 FF FF */ li r0, -1
/* 8010EFCC 0010BF0C  B0 1D 30 18 */ sth r0, 0x3018(r29)
/* 8010EFD0 0010BF10  48 00 00 38 */ b lbl_8010F008
lbl_8010EFD4:
/* 8010EFD4 0010BF14  C0 02 93 24 */ lfs f0, lbl_80452D24-_SDA2_BASE_(r2)
/* 8010EFD8 0010BF18  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8010EFDC 0010BF1C  40 80 00 10 */ bge lbl_8010EFEC
/* 8010EFE0 0010BF20  38 00 FF FC */ li r0, -4
/* 8010EFE4 0010BF24  B0 1D 30 18 */ sth r0, 0x3018(r29)
/* 8010EFE8 0010BF28  48 00 00 20 */ b lbl_8010F008
lbl_8010EFEC:
/* 8010EFEC 0010BF2C  38 00 00 04 */ li r0, 4
/* 8010EFF0 0010BF30  B0 1D 30 18 */ sth r0, 0x3018(r29)
/* 8010EFF4 0010BF34  48 00 00 14 */ b lbl_8010F008
lbl_8010EFF8:
/* 8010EFF8 0010BF38  28 00 00 9F */ cmplwi r0, 0x9f
/* 8010EFFC 0010BF3C  40 82 00 0C */ bne lbl_8010F008
/* 8010F000 0010BF40  38 00 FF FC */ li r0, -4
/* 8010F004 0010BF44  B0 1D 30 18 */ sth r0, 0x3018(r29)
lbl_8010F008:
/* 8010F008 0010BF48  A8 1D 30 18 */ lha r0, 0x3018(r29)
/* 8010F00C 0010BF4C  2C 00 00 00 */ cmpwi r0, 0
/* 8010F010 0010BF50  41 80 00 10 */ blt lbl_8010F020
/* 8010F014 0010BF54  A0 1D 2F DC */ lhz r0, 0x2fdc(r29)
/* 8010F018 0010BF58  28 00 00 76 */ cmplwi r0, 0x76
/* 8010F01C 0010BF5C  40 82 00 60 */ bne lbl_8010F07C
lbl_8010F020:
/* 8010F020 0010BF60  2C 1E 00 00 */ cmpwi r30, 0
/* 8010F024 0010BF64  41 82 00 3C */ beq lbl_8010F060
/* 8010F028 0010BF68  7F A3 EB 78 */ mr r3, r29
/* 8010F02C 0010BF6C  38 80 01 03 */ li r4, 0x103
/* 8010F030 0010BF70  4B F9 D4 21 */ bl daAlink_c_NS_getMainBckData
/* 8010F034 0010BF74  A0 83 00 02 */ lhz r4, 2(r3)
/* 8010F038 0010BF78  7F A3 EB 78 */ mr r3, r29
/* 8010F03C 0010BF7C  38 A0 00 02 */ li r5, 2
/* 8010F040 0010BF80  3C C0 80 39 */ lis r6, lbl_8038E90C@ha
/* 8010F044 0010BF84  38 C6 E9 0C */ addi r6, r6, lbl_8038E90C@l
/* 8010F048 0010BF88  38 C6 00 8C */ addi r6, r6, 0x8c
/* 8010F04C 0010BF8C  4B F9 E6 A5 */ bl daAlink_c_NS_setUpperAnimeParam
/* 8010F050 0010BF90  7F A3 EB 78 */ mr r3, r29
/* 8010F054 0010BF94  38 80 01 03 */ li r4, 0x103
/* 8010F058 0010BF98  4B FA 0A BD */ bl daAlink_c_NS_setFacePriAnime
/* 8010F05C 0010BF9C  48 00 00 78 */ b lbl_8010F0D4
lbl_8010F060:
/* 8010F060 0010BFA0  7F A3 EB 78 */ mr r3, r29
/* 8010F064 0010BFA4  38 80 01 03 */ li r4, 0x103
/* 8010F068 0010BFA8  3C A0 80 39 */ lis r5, lbl_8038E90C@ha
/* 8010F06C 0010BFAC  38 A5 E9 0C */ addi r5, r5, lbl_8038E90C@l
/* 8010F070 0010BFB0  38 A5 00 8C */ addi r5, r5, 0x8c
/* 8010F074 0010BFB4  4B F9 E0 81 */ bl daAlink_c_NS_setSingleAnimeParam
/* 8010F078 0010BFB8  48 00 00 5C */ b lbl_8010F0D4
lbl_8010F07C:
/* 8010F07C 0010BFBC  2C 1E 00 00 */ cmpwi r30, 0
/* 8010F080 0010BFC0  41 82 00 3C */ beq lbl_8010F0BC
/* 8010F084 0010BFC4  7F A3 EB 78 */ mr r3, r29
/* 8010F088 0010BFC8  38 80 01 02 */ li r4, 0x102
/* 8010F08C 0010BFCC  4B F9 D3 C5 */ bl daAlink_c_NS_getMainBckData
/* 8010F090 0010BFD0  A0 83 00 02 */ lhz r4, 2(r3)
/* 8010F094 0010BFD4  7F A3 EB 78 */ mr r3, r29
/* 8010F098 0010BFD8  38 A0 00 02 */ li r5, 2
/* 8010F09C 0010BFDC  3C C0 80 39 */ lis r6, lbl_8038E90C@ha
/* 8010F0A0 0010BFE0  38 C6 E9 0C */ addi r6, r6, lbl_8038E90C@l
/* 8010F0A4 0010BFE4  38 C6 00 14 */ addi r6, r6, 0x14
/* 8010F0A8 0010BFE8  4B F9 E6 49 */ bl daAlink_c_NS_setUpperAnimeParam
/* 8010F0AC 0010BFEC  7F A3 EB 78 */ mr r3, r29
/* 8010F0B0 0010BFF0  38 80 01 02 */ li r4, 0x102
/* 8010F0B4 0010BFF4  4B FA 0A 61 */ bl daAlink_c_NS_setFacePriAnime
/* 8010F0B8 0010BFF8  48 00 00 1C */ b lbl_8010F0D4
lbl_8010F0BC:
/* 8010F0BC 0010BFFC  7F A3 EB 78 */ mr r3, r29
/* 8010F0C0 0010C000  38 80 01 02 */ li r4, 0x102
/* 8010F0C4 0010C004  3C A0 80 39 */ lis r5, lbl_8038E90C@ha
/* 8010F0C8 0010C008  38 A5 E9 0C */ addi r5, r5, lbl_8038E90C@l
/* 8010F0CC 0010C00C  38 A5 00 14 */ addi r5, r5, 0x14
/* 8010F0D0 0010C010  4B F9 E0 25 */ bl daAlink_c_NS_setSingleAnimeParam
lbl_8010F0D4:
/* 8010F0D4 0010C014  C0 02 93 14 */ lfs f0, lbl_80452D14-_SDA2_BASE_(r2)
/* 8010F0D8 0010C018  80 7D 07 2C */ lwz r3, 0x72c(r29)
/* 8010F0DC 0010C01C  D0 03 00 08 */ stfs f0, 8(r3)
/* 8010F0E0 0010C020  A0 1D 06 04 */ lhz r0, 0x604(r29)
/* 8010F0E4 0010C024  2C 00 00 05 */ cmpwi r0, 5
/* 8010F0E8 0010C028  40 82 00 18 */ bne lbl_8010F100
/* 8010F0EC 0010C02C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8010F0F0 0010C030  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8010F0F4 0010C034  38 63 00 9C */ addi r3, r3, 0x9c
/* 8010F0F8 0010C038  88 9D 2F 9C */ lbz r4, 0x2f9c(r29)
/* 8010F0FC 0010C03C  4B F2 45 C1 */ bl setEquipBottleItemEmpty__17dSv_player_item_cFUc
lbl_8010F100:
/* 8010F100 0010C040  A0 1D 2F DC */ lhz r0, 0x2fdc(r29)
/* 8010F104 0010C044  28 00 00 77 */ cmplwi r0, 0x77
/* 8010F108 0010C048  41 82 00 0C */ beq lbl_8010F114
/* 8010F10C 0010C04C  28 00 00 73 */ cmplwi r0, 0x73
/* 8010F110 0010C050  40 82 03 30 */ bne lbl_8010F440
lbl_8010F114:
/* 8010F114 0010C054  38 00 01 FE */ li r0, 0x1fe
/* 8010F118 0010C058  B0 1D 05 6E */ sth r0, 0x56e(r29)
/* 8010F11C 0010C05C  48 00 03 24 */ b lbl_8010F440
lbl_8010F120:
/* 8010F120 0010C060  7F A3 EB 78 */ mr r3, r29
/* 8010F124 0010C064  38 80 01 02 */ li r4, 0x102
/* 8010F128 0010C068  4B F9 D3 29 */ bl daAlink_c_NS_getMainBckData
/* 8010F12C 0010C06C  A0 63 00 00 */ lhz r3, 0(r3)
/* 8010F130 0010C070  57 80 04 3E */ clrlwi r0, r28, 0x10
/* 8010F134 0010C074  7C 00 18 40 */ cmplw r0, r3
/* 8010F138 0010C078  41 82 00 20 */ beq lbl_8010F158
/* 8010F13C 0010C07C  7F A3 EB 78 */ mr r3, r29
/* 8010F140 0010C080  38 80 01 03 */ li r4, 0x103
/* 8010F144 0010C084  4B F9 D3 0D */ bl daAlink_c_NS_getMainBckData
/* 8010F148 0010C088  A0 63 00 00 */ lhz r3, 0(r3)
/* 8010F14C 0010C08C  57 80 04 3E */ clrlwi r0, r28, 0x10
/* 8010F150 0010C090  7C 00 18 40 */ cmplw r0, r3
/* 8010F154 0010C094  40 82 02 20 */ bne lbl_8010F374
lbl_8010F158:
/* 8010F158 0010C098  7F E3 FB 78 */ mr r3, r31
/* 8010F15C 0010C09C  48 04 F3 71 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8010F160 0010C0A0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8010F164 0010C0A4  41 82 00 48 */ beq lbl_8010F1AC
/* 8010F168 0010C0A8  80 1D 06 14 */ lwz r0, 0x614(r29)
/* 8010F16C 0010C0AC  28 00 00 2A */ cmplwi r0, 0x2a
/* 8010F170 0010C0B0  40 82 00 20 */ bne lbl_8010F190
/* 8010F174 0010C0B4  7F A3 EB 78 */ mr r3, r29
/* 8010F178 0010C0B8  38 80 00 EE */ li r4, 0xee
/* 8010F17C 0010C0BC  3C A0 80 39 */ lis r5, lbl_8038E840@ha
/* 8010F180 0010C0C0  38 A5 E8 40 */ addi r5, r5, lbl_8038E840@l
/* 8010F184 0010C0C4  38 A5 00 14 */ addi r5, r5, 0x14
/* 8010F188 0010C0C8  4B F9 DF 6D */ bl daAlink_c_NS_setSingleAnimeParam
/* 8010F18C 0010C0CC  48 00 02 B4 */ b lbl_8010F440
lbl_8010F190:
/* 8010F190 0010C0D0  7F A3 EB 78 */ mr r3, r29
/* 8010F194 0010C0D4  A0 1D 30 CE */ lhz r0, 0x30ce(r29)
/* 8010F198 0010C0D8  20 00 00 48 */ subfic r0, r0, 0x48
/* 8010F19C 0010C0DC  7C 00 00 34 */ cntlzw r0, r0
/* 8010F1A0 0010C0E0  54 04 DE 3E */ rlwinm r4, r0, 0x1b, 0x18, 0x1f
/* 8010F1A4 0010C0E4  4B FA A6 99 */ bl daAlink_c_NS_allUnequip
/* 8010F1A8 0010C0E8  48 00 02 98 */ b lbl_8010F440
lbl_8010F1AC:
/* 8010F1AC 0010C0EC  7F E3 FB 78 */ mr r3, r31
/* 8010F1B0 0010C0F0  C0 22 94 B4 */ lfs f1, lbl_80452EB4-_SDA2_BASE_(r2)
/* 8010F1B4 0010C0F4  48 21 92 79 */ bl checkPass__12J3DFrameCtrlFf
/* 8010F1B8 0010C0F8  2C 03 00 00 */ cmpwi r3, 0
/* 8010F1BC 0010C0FC  41 82 00 1C */ beq lbl_8010F1D8
/* 8010F1C0 0010C100  80 7D 07 08 */ lwz r3, 0x708(r29)
/* 8010F1C4 0010C104  80 63 00 04 */ lwz r3, 4(r3)
/* 8010F1C8 0010C108  38 63 00 58 */ addi r3, r3, 0x58
/* 8010F1CC 0010C10C  80 9D 07 18 */ lwz r4, 0x718(r29)
/* 8010F1D0 0010C110  48 22 0A F5 */ bl entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 8010F1D4 0010C114  48 00 02 6C */ b lbl_8010F440
lbl_8010F1D8:
/* 8010F1D8 0010C118  A8 1D 30 18 */ lha r0, 0x3018(r29)
/* 8010F1DC 0010C11C  2C 00 00 00 */ cmpwi r0, 0
/* 8010F1E0 0010C120  41 80 00 7C */ blt lbl_8010F25C
/* 8010F1E4 0010C124  7F E3 FB 78 */ mr r3, r31
/* 8010F1E8 0010C128  C0 22 93 F0 */ lfs f1, lbl_80452DF0-_SDA2_BASE_(r2)
/* 8010F1EC 0010C12C  48 21 92 41 */ bl checkPass__12J3DFrameCtrlFf
/* 8010F1F0 0010C130  2C 03 00 00 */ cmpwi r3, 0
/* 8010F1F4 0010C134  41 82 00 68 */ beq lbl_8010F25C
/* 8010F1F8 0010C138  A8 9D 30 18 */ lha r4, 0x3018(r29)
/* 8010F1FC 0010C13C  7C 80 07 35 */ extsh. r0, r4
/* 8010F200 0010C140  40 81 00 3C */ ble lbl_8010F23C
/* 8010F204 0010C144  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8010F208 0010C148  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8010F20C 0010C14C  C0 43 5D C0 */ lfs f2, 0x5dc0(r3)
/* 8010F210 0010C150  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 8010F214 0010C154  6C 80 80 00 */ xoris r0, r4, 0x8000
/* 8010F218 0010C158  90 01 00 14 */ stw r0, 0x14(r1)
/* 8010F21C 0010C15C  3C 00 43 30 */ lis r0, 0x4330
/* 8010F220 0010C160  90 01 00 10 */ stw r0, 0x10(r1)
/* 8010F224 0010C164  C8 01 00 10 */ lfd f0, 0x10(r1)
/* 8010F228 0010C168  EC 00 08 28 */ fsubs f0, f0, f1
/* 8010F22C 0010C16C  EC 02 00 2A */ fadds f0, f2, f0
/* 8010F230 0010C170  D0 03 5D C0 */ stfs f0, 0x5dc0(r3)
/* 8010F234 0010C174  38 00 00 00 */ li r0, 0
/* 8010F238 0010C178  98 03 5E B6 */ stb r0, 0x5eb6(r3)
lbl_8010F23C:
/* 8010F23C 0010C17C  7F A3 EB 78 */ mr r3, r29
/* 8010F240 0010C180  3C 80 00 01 */ lis r4, 0x0001001A@ha
/* 8010F244 0010C184  38 84 00 1A */ addi r4, r4, 0x0001001A@l
/* 8010F248 0010C188  81 9D 06 28 */ lwz r12, 0x628(r29)
/* 8010F24C 0010C18C  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 8010F250 0010C190  7D 89 03 A6 */ mtctr r12
/* 8010F254 0010C194  4E 80 04 21 */ bctrl
/* 8010F258 0010C198  48 00 01 E8 */ b lbl_8010F440
lbl_8010F25C:
/* 8010F25C 0010C19C  A8 1D 30 18 */ lha r0, 0x3018(r29)
/* 8010F260 0010C1A0  2C 00 00 00 */ cmpwi r0, 0
/* 8010F264 0010C1A4  40 80 01 DC */ bge lbl_8010F440
/* 8010F268 0010C1A8  7F E3 FB 78 */ mr r3, r31
/* 8010F26C 0010C1AC  C0 22 92 9C */ lfs f1, lbl_80452C9C-_SDA2_BASE_(r2)
/* 8010F270 0010C1B0  48 21 91 BD */ bl checkPass__12J3DFrameCtrlFf
/* 8010F274 0010C1B4  2C 03 00 00 */ cmpwi r3, 0
/* 8010F278 0010C1B8  41 82 00 24 */ beq lbl_8010F29C
/* 8010F27C 0010C1BC  7F A3 EB 78 */ mr r3, r29
/* 8010F280 0010C1C0  3C 80 00 01 */ lis r4, 0x00010026@ha
/* 8010F284 0010C1C4  38 84 00 26 */ addi r4, r4, 0x00010026@l
/* 8010F288 0010C1C8  81 9D 06 28 */ lwz r12, 0x628(r29)
/* 8010F28C 0010C1CC  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 8010F290 0010C1D0  7D 89 03 A6 */ mtctr r12
/* 8010F294 0010C1D4  4E 80 04 21 */ bctrl
/* 8010F298 0010C1D8  48 00 01 A8 */ b lbl_8010F440
lbl_8010F29C:
/* 8010F29C 0010C1DC  7F E3 FB 78 */ mr r3, r31
/* 8010F2A0 0010C1E0  C0 22 94 94 */ lfs f1, lbl_80452E94-_SDA2_BASE_(r2)
/* 8010F2A4 0010C1E4  48 21 91 89 */ bl checkPass__12J3DFrameCtrlFf
/* 8010F2A8 0010C1E8  2C 03 00 00 */ cmpwi r3, 0
/* 8010F2AC 0010C1EC  41 82 01 94 */ beq lbl_8010F440
/* 8010F2B0 0010C1F0  3C 60 00 02 */ lis r3, 0x00020061@ha
/* 8010F2B4 0010C1F4  38 03 00 61 */ addi r0, r3, 0x00020061@l
/* 8010F2B8 0010C1F8  90 01 00 08 */ stw r0, 8(r1)
/* 8010F2BC 0010C1FC  80 6D 8D E8 */ lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 8010F2C0 0010C200  38 81 00 08 */ addi r4, r1, 8
/* 8010F2C4 0010C204  38 A0 00 00 */ li r5, 0
/* 8010F2C8 0010C208  38 C0 00 00 */ li r6, 0
/* 8010F2CC 0010C20C  38 E0 00 00 */ li r7, 0
/* 8010F2D0 0010C210  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 8010F2D4 0010C214  FC 40 08 90 */ fmr f2, f1
/* 8010F2D8 0010C218  C0 62 92 BC */ lfs f3, lbl_80452CBC-_SDA2_BASE_(r2)
/* 8010F2DC 0010C21C  FC 80 18 90 */ fmr f4, f3
/* 8010F2E0 0010C220  39 00 00 00 */ li r8, 0
/* 8010F2E4 0010C224  48 19 C6 A1 */ bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8010F2E8 0010C228  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8010F2EC 0010C22C  38 83 61 C0 */ addi r4, r3, g_dComIfG_gameInfo@l
/* 8010F2F0 0010C230  A0 64 00 02 */ lhz r3, 2(r4)
/* 8010F2F4 0010C234  A8 BD 30 18 */ lha r5, 0x3018(r29)
/* 8010F2F8 0010C238  7C 05 00 D0 */ neg r0, r5
/* 8010F2FC 0010C23C  7C 03 00 00 */ cmpw r3, r0
/* 8010F300 0010C240  41 81 00 40 */ bgt lbl_8010F340
/* 8010F304 0010C244  C0 44 5D C0 */ lfs f2, 0x5dc0(r4)
/* 8010F308 0010C248  38 03 FF FF */ addi r0, r3, -1
/* 8010F30C 0010C24C  7C 00 00 D0 */ neg r0, r0
/* 8010F310 0010C250  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 8010F314 0010C254  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 8010F318 0010C258  90 01 00 14 */ stw r0, 0x14(r1)
/* 8010F31C 0010C25C  3C 00 43 30 */ lis r0, 0x4330
/* 8010F320 0010C260  90 01 00 10 */ stw r0, 0x10(r1)
/* 8010F324 0010C264  C8 01 00 10 */ lfd f0, 0x10(r1)
/* 8010F328 0010C268  EC 00 08 28 */ fsubs f0, f0, f1
/* 8010F32C 0010C26C  EC 02 00 2A */ fadds f0, f2, f0
/* 8010F330 0010C270  D0 04 5D C0 */ stfs f0, 0x5dc0(r4)
/* 8010F334 0010C274  38 00 00 00 */ li r0, 0
/* 8010F338 0010C278  98 04 5E B6 */ stb r0, 0x5eb6(r4)
/* 8010F33C 0010C27C  48 00 01 04 */ b lbl_8010F440
lbl_8010F340:
/* 8010F340 0010C280  C0 44 5D C0 */ lfs f2, 0x5dc0(r4)
/* 8010F344 0010C284  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 8010F348 0010C288  6C A0 80 00 */ xoris r0, r5, 0x8000
/* 8010F34C 0010C28C  90 01 00 14 */ stw r0, 0x14(r1)
/* 8010F350 0010C290  3C 00 43 30 */ lis r0, 0x4330
/* 8010F354 0010C294  90 01 00 10 */ stw r0, 0x10(r1)
/* 8010F358 0010C298  C8 01 00 10 */ lfd f0, 0x10(r1)
/* 8010F35C 0010C29C  EC 00 08 28 */ fsubs f0, f0, f1
/* 8010F360 0010C2A0  EC 02 00 2A */ fadds f0, f2, f0
/* 8010F364 0010C2A4  D0 04 5D C0 */ stfs f0, 0x5dc0(r4)
/* 8010F368 0010C2A8  38 00 00 00 */ li r0, 0
/* 8010F36C 0010C2AC  98 04 5E B6 */ stb r0, 0x5eb6(r4)
/* 8010F370 0010C2B0  48 00 00 D0 */ b lbl_8010F440
lbl_8010F374:
/* 8010F374 0010C2B4  7F A3 EB 78 */ mr r3, r29
/* 8010F378 0010C2B8  38 80 00 EE */ li r4, 0xee
/* 8010F37C 0010C2BC  4B F9 D0 D5 */ bl daAlink_c_NS_getMainBckData
/* 8010F380 0010C2C0  A0 63 00 00 */ lhz r3, 0(r3)
/* 8010F384 0010C2C4  57 80 04 3E */ clrlwi r0, r28, 0x10
/* 8010F388 0010C2C8  7C 00 18 40 */ cmplw r0, r3
/* 8010F38C 0010C2CC  40 82 00 6C */ bne lbl_8010F3F8
/* 8010F390 0010C2D0  7F E3 FB 78 */ mr r3, r31
/* 8010F394 0010C2D4  48 04 F1 39 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8010F398 0010C2D8  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8010F39C 0010C2DC  41 82 00 3C */ beq lbl_8010F3D8
/* 8010F3A0 0010C2E0  7F A3 EB 78 */ mr r3, r29
/* 8010F3A4 0010C2E4  38 80 00 02 */ li r4, 2
/* 8010F3A8 0010C2E8  C0 22 92 C4 */ lfs f1, lbl_80452CC4-_SDA2_BASE_(r2)
/* 8010F3AC 0010C2EC  4B F9 E3 79 */ bl daAlink_c_NS_resetUpperAnime
/* 8010F3B0 0010C2F0  28 1D 00 00 */ cmplwi r29, 0
/* 8010F3B4 0010C2F4  41 82 00 0C */ beq lbl_8010F3C0
/* 8010F3B8 0010C2F8  83 BD 00 04 */ lwz r29, 4(r29)
/* 8010F3BC 0010C2FC  48 00 00 08 */ b lbl_8010F3C4
lbl_8010F3C0:
/* 8010F3C0 0010C300  3B A0 FF FF */ li r29, -1
lbl_8010F3C4:
/* 8010F3C4 0010C304  48 07 22 7D */ bl dCam_getBody
/* 8010F3C8 0010C308  7F A4 EB 78 */ mr r4, r29
/* 8010F3CC 0010C30C  4B F7 97 F1 */ bl EndEventCamera__9dCamera_cFi
/* 8010F3D0 0010C310  38 60 00 01 */ li r3, 1
/* 8010F3D4 0010C314  48 00 00 70 */ b lbl_8010F444
lbl_8010F3D8:
/* 8010F3D8 0010C318  7F E3 FB 78 */ mr r3, r31
/* 8010F3DC 0010C31C  C0 22 93 34 */ lfs f1, lbl_80452D34-_SDA2_BASE_(r2)
/* 8010F3E0 0010C320  48 21 90 4D */ bl checkPass__12J3DFrameCtrlFf
/* 8010F3E4 0010C324  2C 03 00 00 */ cmpwi r3, 0
/* 8010F3E8 0010C328  41 82 00 58 */ beq lbl_8010F440
/* 8010F3EC 0010C32C  7F A3 EB 78 */ mr r3, r29
/* 8010F3F0 0010C330  4B FB 04 95 */ bl daAlink_c_NS_returnKeepItemData
/* 8010F3F4 0010C334  48 00 00 4C */ b lbl_8010F440
lbl_8010F3F8:
/* 8010F3F8 0010C338  A0 1D 2F DC */ lhz r0, 0x2fdc(r29)
/* 8010F3FC 0010C33C  28 00 00 FF */ cmplwi r0, 0xff
/* 8010F400 0010C340  41 82 00 0C */ beq lbl_8010F40C
/* 8010F404 0010C344  28 00 00 48 */ cmplwi r0, 0x48
/* 8010F408 0010C348  40 82 00 38 */ bne lbl_8010F440
lbl_8010F40C:
/* 8010F40C 0010C34C  7F A3 EB 78 */ mr r3, r29
/* 8010F410 0010C350  38 80 00 02 */ li r4, 2
/* 8010F414 0010C354  C0 22 92 C4 */ lfs f1, lbl_80452CC4-_SDA2_BASE_(r2)
/* 8010F418 0010C358  4B F9 E3 0D */ bl daAlink_c_NS_resetUpperAnime
/* 8010F41C 0010C35C  A0 1D 2F DC */ lhz r0, 0x2fdc(r29)
/* 8010F420 0010C360  28 00 00 FF */ cmplwi r0, 0xff
/* 8010F424 0010C364  40 82 00 0C */ bne lbl_8010F430
/* 8010F428 0010C368  7F A3 EB 78 */ mr r3, r29
/* 8010F42C 0010C36C  4B FB 04 59 */ bl daAlink_c_NS_returnKeepItemData
lbl_8010F430:
/* 8010F430 0010C370  7F A3 EB 78 */ mr r3, r29
/* 8010F434 0010C374  48 00 88 5D */ bl daAlink_c_NS_resetSpecialEvent
/* 8010F438 0010C378  38 60 00 01 */ li r3, 1
/* 8010F43C 0010C37C  48 00 00 08 */ b lbl_8010F444
lbl_8010F440:
/* 8010F440 0010C380  38 60 00 00 */ li r3, 0
lbl_8010F444:
/* 8010F444 0010C384  39 61 00 30 */ addi r11, r1, 0x30
/* 8010F448 0010C388  48 25 2D DD */ bl _restgpr_28
/* 8010F44C 0010C38C  80 01 00 34 */ lwz r0, 0x34(r1)
/* 8010F450 0010C390  7C 08 03 A6 */ mtlr r0
/* 8010F454 0010C394  38 21 00 30 */ addi r1, r1, 0x30
/* 8010F458 0010C398  4E 80 00 20 */ blr
