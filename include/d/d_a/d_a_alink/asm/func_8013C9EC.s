/* 8013C9EC 0013992C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8013C9F0 00139930  7C 08 02 A6 */ mflr r0
/* 8013C9F4 00139934  90 01 00 14 */ stw r0, 0x14(r1)
/* 8013C9F8 00139938  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8013C9FC 0013993C  93 C1 00 08 */ stw r30, 8(r1)
/* 8013CA00 00139940  7C 7F 1B 78 */ mr r31, r3
/* 8013CA04 00139944  4B FE D0 7D */ bl checkWolfGroundSpecialMode__9daAlink_cFv
/* 8013CA08 00139948  2C 03 00 00 */ cmpwi r3, 0
/* 8013CA0C 0013994C  41 82 00 0C */ beq lbl_8013CA18
/* 8013CA10 00139950  38 60 00 01 */ li r3, 1
/* 8013CA14 00139954  48 00 01 1C */ b lbl_8013CB30
lbl_8013CA18:
/* 8013CA18 00139958  3B DF 1F D0 */ addi r30, r31, 0x1fd0
/* 8013CA1C 0013995C  38 00 00 04 */ li r0, 4
/* 8013CA20 00139960  98 1F 2F 99 */ stb r0, 0x2f99(r31)
/* 8013CA24 00139964  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 8013CA28 00139968  54 03 07 BD */ rlwinm. r3, r0, 0, 0x1e, 0x1e
/* 8013CA2C 0013996C  40 82 00 7C */ bne lbl_8013CAA8
/* 8013CA30 00139970  7F C3 F3 78 */ mr r3, r30
/* 8013CA34 00139974  C0 22 92 E0 */ lfs f1, lbl_80452CE0-_SDA2_BASE_(r2)
/* 8013CA38 00139978  48 1E B9 F5 */ bl checkPass__12J3DFrameCtrlFf
/* 8013CA3C 0013997C  2C 03 00 00 */ cmpwi r3, 0
/* 8013CA40 00139980  41 82 00 20 */ beq lbl_8013CA60
/* 8013CA44 00139984  7F E3 FB 78 */ mr r3, r31
/* 8013CA48 00139988  3C 80 00 01 */ lis r4, 0x0001003F@ha
/* 8013CA4C 0013998C  38 84 00 3F */ addi r4, r4, 0x0001003F@l
/* 8013CA50 00139990  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 8013CA54 00139994  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 8013CA58 00139998  7D 89 03 A6 */ mtctr r12
/* 8013CA5C 0013999C  4E 80 04 21 */ bctrl
lbl_8013CA60:
/* 8013CA60 001399A0  7F C3 F3 78 */ mr r3, r30
/* 8013CA64 001399A4  48 02 1A 69 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013CA68 001399A8  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8013CA6C 001399AC  41 82 00 14 */ beq lbl_8013CA80
/* 8013CA70 001399B0  7F E3 FB 78 */ mr r3, r31
/* 8013CA74 001399B4  38 80 00 00 */ li r4, 0
/* 8013CA78 001399B8  4B FE D0 CD */ bl checkNextAction__9daAlink_cFiWolf
/* 8013CA7C 001399BC  48 00 00 B0 */ b lbl_8013CB2C
lbl_8013CA80:
/* 8013CA80 001399C0  C0 3E 00 10 */ lfs f1, 0x10(r30)
/* 8013CA84 001399C4  3C 60 80 39 */ lis r3, lbl_8038F7A4@ha
/* 8013CA88 001399C8  38 63 F7 A4 */ addi r3, r3, lbl_8038F7A4@l
/* 8013CA8C 001399CC  C0 03 00 10 */ lfs f0, 0x10(r3)
/* 8013CA90 001399D0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8013CA94 001399D4  40 81 00 98 */ ble lbl_8013CB2C
/* 8013CA98 001399D8  7F E3 FB 78 */ mr r3, r31
/* 8013CA9C 001399DC  38 80 00 01 */ li r4, 1
/* 8013CAA0 001399E0  4B FE D0 A5 */ bl checkNextAction__9daAlink_cFiWolf
/* 8013CAA4 001399E4  48 00 00 88 */ b lbl_8013CB2C
lbl_8013CAA8:
/* 8013CAA8 001399E8  80 1F 19 9C */ lwz r0, 0x199c(r31)
/* 8013CAAC 001399EC  54 00 06 B5 */ rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8013CAB0 001399F0  40 82 00 10 */ bne lbl_8013CAC0
/* 8013CAB4 001399F4  80 1F 05 90 */ lwz r0, 0x590(r31)
/* 8013CAB8 001399F8  54 00 05 EF */ rlwinm. r0, r0, 0, 0x17, 0x17
/* 8013CABC 001399FC  41 82 00 70 */ beq lbl_8013CB2C
lbl_8013CAC0:
/* 8013CAC0 00139A00  28 03 00 00 */ cmplwi r3, 0
/* 8013CAC4 00139A04  41 82 00 68 */ beq lbl_8013CB2C
/* 8013CAC8 00139A08  7F E3 FB 78 */ mr r3, r31
/* 8013CACC 00139A0C  38 80 00 00 */ li r4, 0
/* 8013CAD0 00139A10  4B FE CD AD */ bl checkWolfLandAction__9daAlink_cFi
/* 8013CAD4 00139A14  2C 03 00 00 */ cmpwi r3, 0
/* 8013CAD8 00139A18  41 82 00 0C */ beq lbl_8013CAE4
/* 8013CADC 00139A1C  38 60 00 01 */ li r3, 1
/* 8013CAE0 00139A20  48 00 00 50 */ b lbl_8013CB30
lbl_8013CAE4:
/* 8013CAE4 00139A24  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8013CAE8 00139A28  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 8013CAEC 00139A2C  7F E3 FB 78 */ mr r3, r31
/* 8013CAF0 00139A30  38 80 00 75 */ li r4, 0x75
/* 8013CAF4 00139A34  3C A0 80 39 */ lis r5, lbl_8038F7A4@ha
/* 8013CAF8 00139A38  38 A5 F7 A4 */ addi r5, r5, lbl_8038F7A4@l
/* 8013CAFC 00139A3C  4B FE CD 4D */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfWolfParam
/* 8013CB00 00139A40  7F E3 FB 78 */ mr r3, r31
/* 8013CB04 00139A44  38 80 00 9B */ li r4, 0x9b
/* 8013CB08 00139A48  4B F7 2D 99 */ bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 8013CB0C 00139A4C  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 8013CB10 00139A50  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 8013CB14 00139A54  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 8013CB18 00139A58  54 00 07 FA */ rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8013CB1C 00139A5C  90 1F 31 A0 */ stw r0, 0x31a0(r31)
/* 8013CB20 00139A60  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 8013CB24 00139A64  60 00 00 01 */ ori r0, r0, 1
/* 8013CB28 00139A68  90 1F 31 A0 */ stw r0, 0x31a0(r31)
lbl_8013CB2C:
/* 8013CB2C 00139A6C  38 60 00 01 */ li r3, 1
lbl_8013CB30:
/* 8013CB30 00139A70  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8013CB34 00139A74  83 C1 00 08 */ lwz r30, 8(r1)
/* 8013CB38 00139A78  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8013CB3C 00139A7C  7C 08 03 A6 */ mtlr r0
/* 8013CB40 00139A80  38 21 00 10 */ addi r1, r1, 0x10
/* 8013CB44 00139A84  4E 80 00 20 */ blr
