/* 80030A74 0002D9B4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80030A78 0002D9B8  7C 08 02 A6 */ mflr r0
/* 80030A7C 0002D9BC  90 01 00 14 */ stw r0, 0x14(r1)
/* 80030A80 0002D9C0  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80030A84 0002D9C4  93 C1 00 08 */ stw r30, 8(r1)
/* 80030A88 0002D9C8  7C 7E 1B 79 */ or. r30, r3, r3
/* 80030A8C 0002D9CC  7C 9F 23 78 */ mr r31, r4
/* 80030A90 0002D9D0  41 82 01 30 */ beq lbl_80030BC0
/* 80030A94 0002D9D4  3C 60 80 3A */ lis r3, lbl_803A7230@ha
/* 80030A98 0002D9D8  38 03 72 30 */ addi r0, r3, lbl_803A7230@l
/* 80030A9C 0002D9DC  90 1E 02 74 */ stw r0, 0x274(r30)
/* 80030AA0 0002D9E0  34 1E 02 64 */ addic. r0, r30, 0x264
/* 80030AA4 0002D9E4  41 82 00 10 */ beq lbl_80030AB4
/* 80030AA8 0002D9E8  3C 60 80 3A */ lis r3, lbl_803A7224@ha
/* 80030AAC 0002D9EC  38 03 72 24 */ addi r0, r3, lbl_803A7224@l
/* 80030AB0 0002D9F0  90 1E 02 70 */ stw r0, 0x270(r30)
lbl_80030AB4:
/* 80030AB4 0002D9F4  34 1E 02 24 */ addic. r0, r30, 0x224
/* 80030AB8 0002D9F8  41 82 00 4C */ beq lbl_80030B04
/* 80030ABC 0002D9FC  3C 60 80 3C */ lis r3, lbl_803C3608@ha
/* 80030AC0 0002DA00  38 63 36 08 */ addi r3, r3, lbl_803C3608@l
/* 80030AC4 0002DA04  90 7E 02 40 */ stw r3, 0x240(r30)
/* 80030AC8 0002DA08  38 03 00 58 */ addi r0, r3, 0x58
/* 80030ACC 0002DA0C  90 1E 02 5C */ stw r0, 0x25c(r30)
/* 80030AD0 0002DA10  38 7E 02 44 */ addi r3, r30, 0x244
/* 80030AD4 0002DA14  38 80 00 00 */ li r4, 0
/* 80030AD8 0002DA18  48 23 E4 CD */ bl __dt__8cM3dGCpsFv
/* 80030ADC 0002DA1C  34 1E 02 24 */ addic. r0, r30, 0x224
/* 80030AE0 0002DA20  41 82 00 24 */ beq lbl_80030B04
/* 80030AE4 0002DA24  3C 60 80 3C */ lis r3, lbl_803C36D0@ha
/* 80030AE8 0002DA28  38 03 36 D0 */ addi r0, r3, lbl_803C36D0@l
/* 80030AEC 0002DA2C  90 1E 02 40 */ stw r0, 0x240(r30)
/* 80030AF0 0002DA30  34 1E 02 24 */ addic. r0, r30, 0x224
/* 80030AF4 0002DA34  41 82 00 10 */ beq lbl_80030B04
/* 80030AF8 0002DA38  3C 60 80 3A */ lis r3, lbl_803A7218@ha
/* 80030AFC 0002DA3C  38 03 72 18 */ addi r0, r3, lbl_803A7218@l
/* 80030B00 0002DA40  90 1E 02 3C */ stw r0, 0x23c(r30)
lbl_80030B04:
/* 80030B04 0002DA44  34 1E 01 C8 */ addic. r0, r30, 0x1c8
/* 80030B08 0002DA48  41 82 00 54 */ beq lbl_80030B5C
/* 80030B0C 0002DA4C  3C 60 80 3C */ lis r3, lbl_803C35A4@ha
/* 80030B10 0002DA50  38 63 35 A4 */ addi r3, r3, lbl_803C35A4@l
/* 80030B14 0002DA54  90 7E 01 E4 */ stw r3, 0x1e4(r30)
/* 80030B18 0002DA58  38 03 00 58 */ addi r0, r3, 0x58
/* 80030B1C 0002DA5C  90 1E 01 FC */ stw r0, 0x1fc(r30)
/* 80030B20 0002DA60  34 1E 01 E8 */ addic. r0, r30, 0x1e8
/* 80030B24 0002DA64  41 82 00 10 */ beq lbl_80030B34
/* 80030B28 0002DA68  3C 60 80 3A */ lis r3, lbl_803A720C@ha
/* 80030B2C 0002DA6C  38 03 72 0C */ addi r0, r3, lbl_803A720C@l
/* 80030B30 0002DA70  90 1E 01 FC */ stw r0, 0x1fc(r30)
lbl_80030B34:
/* 80030B34 0002DA74  34 1E 01 C8 */ addic. r0, r30, 0x1c8
/* 80030B38 0002DA78  41 82 00 24 */ beq lbl_80030B5C
/* 80030B3C 0002DA7C  3C 60 80 3C */ lis r3, lbl_803C36D0@ha
/* 80030B40 0002DA80  38 03 36 D0 */ addi r0, r3, lbl_803C36D0@l
/* 80030B44 0002DA84  90 1E 01 E4 */ stw r0, 0x1e4(r30)
/* 80030B48 0002DA88  34 1E 01 C8 */ addic. r0, r30, 0x1c8
/* 80030B4C 0002DA8C  41 82 00 10 */ beq lbl_80030B5C
/* 80030B50 0002DA90  3C 60 80 3A */ lis r3, lbl_803A7218@ha
/* 80030B54 0002DA94  38 03 72 18 */ addi r0, r3, lbl_803A7218@l
/* 80030B58 0002DA98  90 1E 01 E0 */ stw r0, 0x1e0(r30)
lbl_80030B5C:
/* 80030B5C 0002DA9C  38 7E 01 88 */ addi r3, r30, 0x188
/*.global __dt__12dCcMassS_ObjFv*/
/* 80030B60 0002DAA0  3C 80 80 03 */ lis r4, __dt__12dCcMassS_ObjFv@ha
/*.global __dt__12dCcMassS_ObjFv*/
/* 80030B64 0002DAA4  38 84 00 F4 */ addi r4, r4, __dt__12dCcMassS_ObjFv@l
/* 80030B68 0002DAA8  38 A0 00 20 */ li r5, 0x20
/* 80030B6C 0002DAAC  38 C0 00 02 */ li r6, 2
/* 80030B70 0002DAB0  48 33 11 79 */ bl func_80361CE8
/* 80030B74 0002DAB4  38 7E 00 44 */ addi r3, r30, 0x44
/*.global __dt__12dCcMassS_ObjFv*/
/* 80030B78 0002DAB8  3C 80 80 03 */ lis r4, __dt__12dCcMassS_ObjFv@ha
/*.global __dt__12dCcMassS_ObjFv*/
/* 80030B7C 0002DABC  38 84 00 F4 */ addi r4, r4, __dt__12dCcMassS_ObjFv@l
/* 80030B80 0002DAC0  38 A0 00 20 */ li r5, 0x20
/* 80030B84 0002DAC4  38 C0 00 0A */ li r6, 0xa
/* 80030B88 0002DAC8  48 33 11 61 */ bl func_80361CE8
/* 80030B8C 0002DACC  28 1E 00 00 */ cmplwi r30, 0
/* 80030B90 0002DAD0  41 82 00 20 */ beq lbl_80030BB0
/* 80030B94 0002DAD4  3C 60 80 3A */ lis r3, lbl_803A7200@ha
/* 80030B98 0002DAD8  38 03 72 00 */ addi r0, r3, lbl_803A7200@l
/* 80030B9C 0002DADC  90 1E 00 18 */ stw r0, 0x18(r30)
/* 80030BA0 0002DAE0  41 82 00 10 */ beq lbl_80030BB0
/* 80030BA4 0002DAE4  3C 60 80 3A */ lis r3, lbl_803A7218@ha
/* 80030BA8 0002DAE8  38 03 72 18 */ addi r0, r3, lbl_803A7218@l
/* 80030BAC 0002DAEC  90 1E 00 18 */ stw r0, 0x18(r30)
lbl_80030BB0:
/* 80030BB0 0002DAF0  7F E0 07 35 */ extsh. r0, r31
/* 80030BB4 0002DAF4  40 81 00 0C */ ble lbl_80030BC0
/* 80030BB8 0002DAF8  7F C3 F3 78 */ mr r3, r30
/* 80030BBC 0002DAFC  48 29 E1 81 */ bl __dl__FPv
lbl_80030BC0:
/* 80030BC0 0002DB00  7F C3 F3 78 */ mr r3, r30
/* 80030BC4 0002DB04  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80030BC8 0002DB08  83 C1 00 08 */ lwz r30, 8(r1)
/* 80030BCC 0002DB0C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80030BD0 0002DB10  7C 08 03 A6 */ mtlr r0
/* 80030BD4 0002DB14  38 21 00 10 */ addi r1, r1, 0x10
/* 80030BD8 0002DB18  4E 80 00 20 */ blr