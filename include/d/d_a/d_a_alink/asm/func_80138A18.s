/* 80138A18 00135958  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80138A1C 0013595C  7C 08 02 A6 */ mflr r0
/* 80138A20 00135960  90 01 00 24 */ stw r0, 0x24(r1)
/* 80138A24 00135964  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 80138A28 00135968  93 C1 00 18 */ stw r30, 0x18(r1)
/* 80138A2C 0013596C  7C 7E 1B 78 */ mr r30, r3
/* 80138A30 00135970  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 80138A34 00135974  80 63 06 50 */ lwz r3, 0x650(r3)
/* 80138A38 00135978  80 63 00 84 */ lwz r3, 0x84(r3)
/* 80138A3C 0013597C  80 63 00 0C */ lwz r3, 0xc(r3)
/* 80138A40 00135980  C0 03 00 9C */ lfs f0, 0x9c(r3)
/* 80138A44 00135984  D0 1E 37 C8 */ stfs f0, 0x37c8(r30)
/* 80138A48 00135988  C0 03 00 AC */ lfs f0, 0xac(r3)
/* 80138A4C 0013598C  D0 1E 37 CC */ stfs f0, 0x37cc(r30)
/* 80138A50 00135990  C0 03 00 BC */ lfs f0, 0xbc(r3)
/* 80138A54 00135994  D0 1E 37 D0 */ stfs f0, 0x37d0(r30)
/* 80138A58 00135998  7F E3 FB 78 */ mr r3, r31
/* 80138A5C 0013599C  C0 22 93 44 */ lfs f1, lbl_80452D44-_SDA2_BASE_(r2)
/* 80138A60 001359A0  48 1E F9 CD */ bl checkPass__12J3DFrameCtrlFf
/* 80138A64 001359A4  2C 03 00 00 */ cmpwi r3, 0
/* 80138A68 001359A8  41 82 00 4C */ beq lbl_80138AB4
/* 80138A6C 001359AC  A8 1E 30 0C */ lha r0, 0x300c(r30)
/* 80138A70 001359B0  2C 00 00 00 */ cmpwi r0, 0
/* 80138A74 001359B4  40 82 00 24 */ bne lbl_80138A98
/* 80138A78 001359B8  7F C3 F3 78 */ mr r3, r30
/* 80138A7C 001359BC  3C 80 00 02 */ lis r4, 0x0002000C@ha
/* 80138A80 001359C0  38 84 00 0C */ addi r4, r4, 0x0002000C@l
/* 80138A84 001359C4  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 80138A88 001359C8  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 80138A8C 001359CC  7D 89 03 A6 */ mtctr r12
/* 80138A90 001359D0  4E 80 04 21 */ bctrl
/* 80138A94 001359D4  48 00 00 20 */ b lbl_80138AB4
lbl_80138A98:
/* 80138A98 001359D8  7F C3 F3 78 */ mr r3, r30
/* 80138A9C 001359DC  3C 80 00 02 */ lis r4, 0x00020053@ha
/* 80138AA0 001359E0  38 84 00 53 */ addi r4, r4, 0x00020053@l
/* 80138AA4 001359E4  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 80138AA8 001359E8  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 80138AAC 001359EC  7D 89 03 A6 */ mtctr r12
/* 80138AB0 001359F0  4E 80 04 21 */ bctrl
lbl_80138AB4:
/* 80138AB4 001359F4  38 00 00 00 */ li r0, 0
/* 80138AB8 001359F8  90 01 00 0C */ stw r0, 0xc(r1)
/* 80138ABC 001359FC  90 01 00 08 */ stw r0, 8(r1)
/* 80138AC0 00135A00  7F C3 F3 78 */ mr r3, r30
/* 80138AC4 00135A04  38 81 00 0C */ addi r4, r1, 0xc
/* 80138AC8 00135A08  38 A1 00 08 */ addi r5, r1, 8
/* 80138ACC 00135A0C  4B FE B1 25 */ bl setWolfSwimEndEffect__9daAlink_cFPP14JPABaseEmitterPP14JPABaseEmitter
/* 80138AD0 00135A10  7F E3 FB 78 */ mr r3, r31
/* 80138AD4 00135A14  48 02 59 F9 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80138AD8 00135A18  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80138ADC 00135A1C  41 82 00 14 */ beq lbl_80138AF0
/* 80138AE0 00135A20  7F C3 F3 78 */ mr r3, r30
/* 80138AE4 00135A24  38 80 00 00 */ li r4, 0
/* 80138AE8 00135A28  4B FF 10 5D */ bl checkNextAction__9daAlink_cFiWolf
/* 80138AEC 00135A2C  48 00 00 28 */ b lbl_80138B14
lbl_80138AF0:
/* 80138AF0 00135A30  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 80138AF4 00135A34  3C 60 80 39 */ lis r3, lbl_8038F8B4@ha
/* 80138AF8 00135A38  38 63 F8 B4 */ addi r3, r3, lbl_8038F8B4@l
/* 80138AFC 00135A3C  C0 03 00 24 */ lfs f0, 0x24(r3)
/* 80138B00 00135A40  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80138B04 00135A44  40 81 00 10 */ ble lbl_80138B14
/* 80138B08 00135A48  7F C3 F3 78 */ mr r3, r30
/* 80138B0C 00135A4C  38 80 00 01 */ li r4, 1
/* 80138B10 00135A50  4B FF 10 35 */ bl checkNextAction__9daAlink_cFiWolf
lbl_80138B14:
/* 80138B14 00135A54  A0 1E 2F E8 */ lhz r0, 0x2fe8(r30)
/* 80138B18 00135A58  28 00 01 2A */ cmplwi r0, 0x12a
/* 80138B1C 00135A5C  41 82 00 34 */ beq lbl_80138B50
/* 80138B20 00135A60  80 61 00 0C */ lwz r3, 0xc(r1)
/* 80138B24 00135A64  28 03 00 00 */ cmplwi r3, 0
/* 80138B28 00135A68  41 82 00 10 */ beq lbl_80138B38
/* 80138B2C 00135A6C  80 03 00 F4 */ lwz r0, 0xf4(r3)
/* 80138B30 00135A70  60 00 00 04 */ ori r0, r0, 4
/* 80138B34 00135A74  90 03 00 F4 */ stw r0, 0xf4(r3)
lbl_80138B38:
/* 80138B38 00135A78  80 61 00 08 */ lwz r3, 8(r1)
/* 80138B3C 00135A7C  28 03 00 00 */ cmplwi r3, 0
/* 80138B40 00135A80  41 82 00 10 */ beq lbl_80138B50
/* 80138B44 00135A84  80 03 00 F4 */ lwz r0, 0xf4(r3)
/* 80138B48 00135A88  60 00 00 04 */ ori r0, r0, 4
/* 80138B4C 00135A8C  90 03 00 F4 */ stw r0, 0xf4(r3)
lbl_80138B50:
/* 80138B50 00135A90  38 60 00 01 */ li r3, 1
/* 80138B54 00135A94  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 80138B58 00135A98  83 C1 00 18 */ lwz r30, 0x18(r1)
/* 80138B5C 00135A9C  80 01 00 24 */ lwz r0, 0x24(r1)
/* 80138B60 00135AA0  7C 08 03 A6 */ mtlr r0
/* 80138B64 00135AA4  38 21 00 20 */ addi r1, r1, 0x20
/* 80138B68 00135AA8  4E 80 00 20 */ blr