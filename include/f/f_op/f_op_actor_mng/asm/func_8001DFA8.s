/* 8001DFA8 0001AEE8  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8001DFAC 0001AEEC  7C 08 02 A6 */ mflr r0
/* 8001DFB0 0001AEF0  90 01 00 14 */ stw r0, 0x14(r1)
/* 8001DFB4 0001AEF4  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8001DFB8 0001AEF8  93 C1 00 08 */ stw r30, 8(r1)
/* 8001DFBC 0001AEFC  7C 7E 1B 79 */ or. r30, r3, r3
/* 8001DFC0 0001AF00  7C 9F 23 78 */ mr r31, r4
/* 8001DFC4 0001AF04  41 82 00 40 */ beq lbl_8001E004
/* 8001DFC8 0001AF08  3C 80 80 3A */ lis r4, lbl_803A37CC@ha
/* 8001DFCC 0001AF0C  38 84 37 CC */ addi r4, r4, lbl_803A37CC@l
/* 8001DFD0 0001AF10  90 9E 00 0C */ stw r4, 0xc(r30)
/* 8001DFD4 0001AF14  38 04 00 0C */ addi r0, r4, 0xc
/* 8001DFD8 0001AF18  90 1E 00 20 */ stw r0, 0x20(r30)
/* 8001DFDC 0001AF1C  38 04 00 18 */ addi r0, r4, 0x18
/* 8001DFE0 0001AF20  90 1E 00 24 */ stw r0, 0x24(r30)
/* 8001DFE4 0001AF24  38 04 00 24 */ addi r0, r4, 0x24
/* 8001DFE8 0001AF28  90 1E 00 34 */ stw r0, 0x34(r30)
/* 8001DFEC 0001AF2C  38 80 00 00 */ li r4, 0
/* 8001DFF0 0001AF30  48 05 B0 A1 */ bl __dt__12dBgS_RoofChkFv
/* 8001DFF4 0001AF34  7F E0 07 35 */ extsh. r0, r31
/* 8001DFF8 0001AF38  40 81 00 0C */ ble lbl_8001E004
/* 8001DFFC 0001AF3C  7F C3 F3 78 */ mr r3, r30
/* 8001E000 0001AF40  48 2B 0D 3D */ bl __dl__FPv
lbl_8001E004:
/* 8001E004 0001AF44  7F C3 F3 78 */ mr r3, r30
/* 8001E008 0001AF48  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8001E00C 0001AF4C  83 C1 00 08 */ lwz r30, 8(r1)
/* 8001E010 0001AF50  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8001E014 0001AF54  7C 08 03 A6 */ mtlr r0
/* 8001E018 0001AF58  38 21 00 10 */ addi r1, r1, 0x10
/* 8001E01C 0001AF5C  4E 80 00 20 */ blr