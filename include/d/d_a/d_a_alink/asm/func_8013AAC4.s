/* 8013AAC4 00137A04  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8013AAC8 00137A08  7C 08 02 A6 */ mflr r0
/* 8013AACC 00137A0C  90 01 00 14 */ stw r0, 0x14(r1)
/* 8013AAD0 00137A10  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8013AAD4 00137A14  93 C1 00 08 */ stw r30, 8(r1)
/* 8013AAD8 00137A18  7C 7E 1B 78 */ mr r30, r3
/* 8013AADC 00137A1C  4B FE EF A5 */ bl checkWolfGroundSpecialMode__9daAlink_cFv
/* 8013AAE0 00137A20  2C 03 00 00 */ cmpwi r3, 0
/* 8013AAE4 00137A24  41 82 00 0C */ beq lbl_8013AAF0
/* 8013AAE8 00137A28  38 60 00 01 */ li r3, 1
/* 8013AAEC 00137A2C  48 00 01 40 */ b lbl_8013AC2C
lbl_8013AAF0:
/* 8013AAF0 00137A30  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 8013AAF4 00137A34  38 00 00 04 */ li r0, 4
/* 8013AAF8 00137A38  98 1E 2F 99 */ stb r0, 0x2f99(r30)
/* 8013AAFC 00137A3C  38 7E 33 98 */ addi r3, r30, 0x3398
/* 8013AB00 00137A40  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8013AB04 00137A44  C0 42 94 A8 */ lfs f2, lbl_80452EA8-_SDA2_BASE_(r2)
/* 8013AB08 00137A48  3C 80 80 39 */ lis r4, lbl_8038F618@ha
/* 8013AB0C 00137A4C  38 84 F6 18 */ addi r4, r4, lbl_8038F618@l
/* 8013AB10 00137A50  C0 64 00 3C */ lfs f3, 0x3c(r4)
/* 8013AB14 00137A54  C0 82 92 98 */ lfs f4, lbl_80452C98-_SDA2_BASE_(r2)
/* 8013AB18 00137A58  48 13 4E 65 */ bl cLib_addCalc__FPfffff
/* 8013AB1C 00137A5C  A8 1E 30 10 */ lha r0, 0x3010(r30)
/* 8013AB20 00137A60  2C 00 00 00 */ cmpwi r0, 0
/* 8013AB24 00137A64  41 82 00 10 */ beq lbl_8013AB34
/* 8013AB28 00137A68  7F C3 F3 78 */ mr r3, r30
/* 8013AB2C 00137A6C  38 80 00 00 */ li r4, 0
/* 8013AB30 00137A70  4B F7 8C 05 */ bl setShapeAngleToAtnActor__9daAlink_cFi
lbl_8013AB34:
/* 8013AB34 00137A74  7F C3 F3 78 */ mr r3, r30
/* 8013AB38 00137A78  4B F9 75 C5 */ bl setComboReserb__9daAlink_cFv
/* 8013AB3C 00137A7C  7F C3 F3 78 */ mr r3, r30
/* 8013AB40 00137A80  4B F9 7B 45 */ bl checkCutTurnCharge__9daAlink_cFv
/* 8013AB44 00137A84  7F E3 FB 78 */ mr r3, r31
/* 8013AB48 00137A88  48 02 39 85 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013AB4C 00137A8C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8013AB50 00137A90  41 82 00 48 */ beq lbl_8013AB98
/* 8013AB54 00137A94  7F C3 F3 78 */ mr r3, r30
/* 8013AB58 00137A98  4B F7 8D AD */ bl checkZeroSpeedF__9daAlink_cCFv
/* 8013AB5C 00137A9C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8013AB60 00137AA0  41 82 00 C8 */ beq lbl_8013AC28
/* 8013AB64 00137AA4  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 8013AB68 00137AA8  B0 1E 04 DE */ sth r0, 0x4de(r30)
/* 8013AB6C 00137AAC  A8 1E 30 08 */ lha r0, 0x3008(r30)
/* 8013AB70 00137AB0  2C 00 00 00 */ cmpwi r0, 0
/* 8013AB74 00137AB4  41 82 00 14 */ beq lbl_8013AB88
/* 8013AB78 00137AB8  7F C3 F3 78 */ mr r3, r30
/* 8013AB7C 00137ABC  38 80 00 03 */ li r4, 3
/* 8013AB80 00137AC0  4B FF F2 61 */ bl procWolfJumpAttackInit__9daAlink_cFi
/* 8013AB84 00137AC4  48 00 00 A4 */ b lbl_8013AC28
lbl_8013AB88:
/* 8013AB88 00137AC8  7F C3 F3 78 */ mr r3, r30
/* 8013AB8C 00137ACC  38 80 00 00 */ li r4, 0
/* 8013AB90 00137AD0  4B FE EF B5 */ bl checkNextAction__9daAlink_cFiWolf
/* 8013AB94 00137AD4  48 00 00 94 */ b lbl_8013AC28
lbl_8013AB98:
/* 8013AB98 00137AD8  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 8013AB9C 00137ADC  C0 1E 34 78 */ lfs f0, 0x3478(r30)
/* 8013ABA0 00137AE0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8013ABA4 00137AE4  40 81 00 5C */ ble lbl_8013AC00
/* 8013ABA8 00137AE8  C0 3E 33 98 */ lfs f1, 0x3398(r30)
/* 8013ABAC 00137AEC  C0 02 93 3C */ lfs f0, lbl_80452D3C-_SDA2_BASE_(r2)
/* 8013ABB0 00137AF0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8013ABB4 00137AF4  4C 40 13 82 */ cror 2, 0, 2
/* 8013ABB8 00137AF8  40 82 00 48 */ bne lbl_8013AC00
/* 8013ABBC 00137AFC  AB FE 04 DE */ lha r31, 0x4de(r30)
/* 8013ABC0 00137B00  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 8013ABC4 00137B04  B0 1E 04 DE */ sth r0, 0x4de(r30)
/* 8013ABC8 00137B08  A8 1E 30 08 */ lha r0, 0x3008(r30)
/* 8013ABCC 00137B0C  2C 00 00 00 */ cmpwi r0, 0
/* 8013ABD0 00137B10  41 82 00 14 */ beq lbl_8013ABE4
/* 8013ABD4 00137B14  7F C3 F3 78 */ mr r3, r30
/* 8013ABD8 00137B18  38 80 00 03 */ li r4, 3
/* 8013ABDC 00137B1C  4B FF F2 05 */ bl procWolfJumpAttackInit__9daAlink_cFi
/* 8013ABE0 00137B20  48 00 00 48 */ b lbl_8013AC28
lbl_8013ABE4:
/* 8013ABE4 00137B24  7F C3 F3 78 */ mr r3, r30
/* 8013ABE8 00137B28  38 80 00 01 */ li r4, 1
/* 8013ABEC 00137B2C  4B FE EF 59 */ bl checkNextAction__9daAlink_cFiWolf
/* 8013ABF0 00137B30  2C 03 00 00 */ cmpwi r3, 0
/* 8013ABF4 00137B34  40 82 00 34 */ bne lbl_8013AC28
/* 8013ABF8 00137B38  B3 FE 04 DE */ sth r31, 0x4de(r30)
/* 8013ABFC 00137B3C  48 00 00 2C */ b lbl_8013AC28
lbl_8013AC00:
/* 8013AC00 00137B40  C0 3E 33 98 */ lfs f1, 0x3398(r30)
/* 8013AC04 00137B44  C0 02 93 3C */ lfs f0, lbl_80452D3C-_SDA2_BASE_(r2)
/* 8013AC08 00137B48  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8013AC0C 00137B4C  40 81 00 1C */ ble lbl_8013AC28
/* 8013AC10 00137B50  38 00 00 04 */ li r0, 4
/* 8013AC14 00137B54  98 1E 2F 9D */ stb r0, 0x2f9d(r30)
/* 8013AC18 00137B58  7F C3 F3 78 */ mr r3, r30
/* 8013AC1C 00137B5C  3C 80 00 03 */ lis r4, 0x00030018@ha
/* 8013AC20 00137B60  38 84 00 18 */ addi r4, r4, 0x00030018@l
/* 8013AC24 00137B64  4B F8 45 A9 */ bl seStartMapInfo__9daAlink_cFUlLevel
lbl_8013AC28:
/* 8013AC28 00137B68  38 60 00 01 */ li r3, 1
lbl_8013AC2C:
/* 8013AC2C 00137B6C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8013AC30 00137B70  83 C1 00 08 */ lwz r30, 8(r1)
/* 8013AC34 00137B74  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8013AC38 00137B78  7C 08 03 A6 */ mtlr r0
/* 8013AC3C 00137B7C  38 21 00 10 */ addi r1, r1, 0x10
/* 8013AC40 00137B80  4E 80 00 20 */ blr
