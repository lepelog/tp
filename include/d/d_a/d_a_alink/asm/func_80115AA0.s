/* 80115AA0 001129E0  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80115AA4 001129E4  7C 08 02 A6 */ mflr r0
/* 80115AA8 001129E8  90 01 00 24 */ stw r0, 0x24(r1)
/* 80115AAC 001129EC  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 80115AB0 001129F0  93 C1 00 18 */ stw r30, 0x18(r1)
/* 80115AB4 001129F4  7C 7F 1B 78 */ mr r31, r3
/* 80115AB8 001129F8  3B DF 1F D0 */ addi r30, r31, 0x1fd0
/* 80115ABC 001129FC  A0 03 2F DC */ lhz r0, 0x2fdc(r3)
/* 80115AC0 00112A00  28 00 00 42 */ cmplwi r0, 0x42
/* 80115AC4 00112A04  41 82 00 0C */ beq lbl_80115AD0
/* 80115AC8 00112A08  4B F9 FE 25 */ bl daAlink_c_NS_checkWaitAction
/* 80115ACC 00112A0C  48 00 01 3C */ b lbl_80115C08
lbl_80115AD0:
/* 80115AD0 00112A10  38 00 00 04 */ li r0, 4
/* 80115AD4 00112A14  98 1F 2F 99 */ stb r0, 0x2f99(r31)
/* 80115AD8 00112A18  A8 1F 30 18 */ lha r0, 0x3018(r31)
/* 80115ADC 00112A1C  2C 00 00 08 */ cmpwi r0, 8
/* 80115AE0 00112A20  40 82 00 80 */ bne lbl_80115B60
/* 80115AE4 00112A24  A8 1F 30 0C */ lha r0, 0x300c(r31)
/* 80115AE8 00112A28  2C 00 00 00 */ cmpwi r0, 0
/* 80115AEC 00112A2C  40 82 00 74 */ bne lbl_80115B60
/* 80115AF0 00112A30  38 00 00 01 */ li r0, 1
/* 80115AF4 00112A34  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 80115AF8 00112A38  38 80 01 66 */ li r4, 0x166
/* 80115AFC 00112A3C  3C A0 80 39 */ lis r5, lbl_8038EA70@ha
/* 80115B00 00112A40  38 A5 EA 70 */ addi r5, r5, lbl_8038EA70@l
/* 80115B04 00112A44  4B F9 75 F1 */ bl daAlink_c_NS_setSingleAnimeParam
/* 80115B08 00112A48  38 00 00 0C */ li r0, 0xc
/* 80115B0C 00112A4C  98 1F 2F 99 */ stb r0, 0x2f99(r31)
/* 80115B10 00112A50  7F E3 FB 78 */ mr r3, r31
/* 80115B14 00112A54  3C 80 00 02 */ lis r4, 0x00020034@ha
/* 80115B18 00112A58  38 84 00 34 */ addi r4, r4, 0x00020034@l
/* 80115B1C 00112A5C  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 80115B20 00112A60  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 80115B24 00112A64  7D 89 03 A6 */ mtctr r12
/* 80115B28 00112A68  4E 80 04 21 */ bctrl
/* 80115B2C 00112A6C  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80115B30 00112A70  D0 21 00 08 */ stfs f1, 8(r1)
/* 80115B34 00112A74  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 80115B38 00112A78  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 80115B3C 00112A7C  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 80115B40 00112A80  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80115B44 00112A84  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80115B48 00112A88  38 63 5B D4 */ addi r3, r3, 0x5bd4
/* 80115B4C 00112A8C  38 80 00 03 */ li r4, 3
/* 80115B50 00112A90  38 A0 00 01 */ li r5, 1
/* 80115B54 00112A94  38 C1 00 08 */ addi r6, r1, 8
/* 80115B58 00112A98  4B F5 9E CD */ bl StartShock__12dVibration_cFii4cXyz
/* 80115B5C 00112A9C  48 00 00 A8 */ b lbl_80115C04
lbl_80115B60:
/* 80115B60 00112AA0  7F C3 F3 78 */ mr r3, r30
/* 80115B64 00112AA4  48 04 89 69 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80115B68 00112AA8  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80115B6C 00112AAC  41 82 00 34 */ beq lbl_80115BA0
/* 80115B70 00112AB0  A8 1F 30 18 */ lha r0, 0x3018(r31)
/* 80115B74 00112AB4  2C 00 00 08 */ cmpwi r0, 8
/* 80115B78 00112AB8  40 82 00 8C */ bne lbl_80115C04
/* 80115B7C 00112ABC  38 00 00 00 */ li r0, 0
/* 80115B80 00112AC0  B0 1F 30 18 */ sth r0, 0x3018(r31)
/* 80115B84 00112AC4  7F E3 FB 78 */ mr r3, r31
/* 80115B88 00112AC8  38 80 00 01 */ li r4, 1
/* 80115B8C 00112ACC  4B FF C9 DD */ bl daAlink_c_NS_setIronBallWaitUpperAnime
/* 80115B90 00112AD0  7F E3 FB 78 */ mr r3, r31
/* 80115B94 00112AD4  38 80 00 00 */ li r4, 0
/* 80115B98 00112AD8  4B FA 45 39 */ bl daAlink_c_NS_checkNextAction
/* 80115B9C 00112ADC  48 00 00 68 */ b lbl_80115C04
lbl_80115BA0:
/* 80115BA0 00112AE0  A8 1F 30 18 */ lha r0, 0x3018(r31)
/* 80115BA4 00112AE4  2C 00 00 08 */ cmpwi r0, 8
/* 80115BA8 00112AE8  40 82 00 5C */ bne lbl_80115C04
/* 80115BAC 00112AEC  C0 3E 00 10 */ lfs f1, 0x10(r30)
/* 80115BB0 00112AF0  3C 60 80 39 */ lis r3, lbl_8038EA70@ha
/* 80115BB4 00112AF4  38 63 EA 70 */ addi r3, r3, lbl_8038EA70@l
/* 80115BB8 00112AF8  C0 03 00 10 */ lfs f0, 0x10(r3)
/* 80115BBC 00112AFC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80115BC0 00112B00  40 81 00 44 */ ble lbl_80115C04
/* 80115BC4 00112B04  38 00 00 00 */ li r0, 0
/* 80115BC8 00112B08  B0 1F 30 18 */ sth r0, 0x3018(r31)
/* 80115BCC 00112B0C  7F E3 FB 78 */ mr r3, r31
/* 80115BD0 00112B10  38 80 00 01 */ li r4, 1
/* 80115BD4 00112B14  4B FF C9 95 */ bl daAlink_c_NS_setIronBallWaitUpperAnime
/* 80115BD8 00112B18  7F E3 FB 78 */ mr r3, r31
/* 80115BDC 00112B1C  38 80 00 01 */ li r4, 1
/* 80115BE0 00112B20  4B FA 44 F1 */ bl daAlink_c_NS_checkNextAction
/* 80115BE4 00112B24  2C 03 00 00 */ cmpwi r3, 0
/* 80115BE8 00112B28  40 82 00 1C */ bne lbl_80115C04
/* 80115BEC 00112B2C  38 00 00 08 */ li r0, 8
/* 80115BF0 00112B30  B0 1F 30 18 */ sth r0, 0x3018(r31)
/* 80115BF4 00112B34  7F E3 FB 78 */ mr r3, r31
/* 80115BF8 00112B38  38 80 00 02 */ li r4, 2
/* 80115BFC 00112B3C  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80115C00 00112B40  4B F9 7B 25 */ bl daAlink_c_NS_resetUpperAnime
lbl_80115C04:
/* 80115C04 00112B44  38 60 00 01 */ li r3, 1
lbl_80115C08:
/* 80115C08 00112B48  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 80115C0C 00112B4C  83 C1 00 18 */ lwz r30, 0x18(r1)
/* 80115C10 00112B50  80 01 00 24 */ lwz r0, 0x24(r1)
/* 80115C14 00112B54  7C 08 03 A6 */ mtlr r0
/* 80115C18 00112B58  38 21 00 20 */ addi r1, r1, 0x20
/* 80115C1C 00112B5C  4E 80 00 20 */ blr
