/* 80057F9C 00054EDC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80057FA0 00054EE0  7C 08 02 A6 */ mflr r0
/* 80057FA4 00054EE4  90 01 00 14 */ stw r0, 0x14(r1)
/* 80057FA8 00054EE8  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80057FAC 00054EEC  93 C1 00 08 */ stw r30, 8(r1)
/* 80057FB0 00054EF0  7C 7E 1B 79 */ or. r30, r3, r3
/* 80057FB4 00054EF4  7C 9F 23 78 */ mr r31, r4
/* 80057FB8 00054EF8  41 82 00 4C */ beq lbl_80058004
/* 80057FBC 00054EFC  3C 60 80 3B */ lis r3, lbl_803A9B4C@ha
/* 80057FC0 00054F00  38 03 9B 4C */ addi r0, r3, lbl_803A9B4C@l
/* 80057FC4 00054F04  90 1E 00 00 */ stw r0, 0(r30)
/* 80057FC8 00054F08  38 7E 00 14 */ addi r3, r30, 0x14
/*.global __dt__8SNOW_EFFFv*/
/* 80057FCC 00054F0C  3C 80 80 05 */ lis r4, __dt__8SNOW_EFFFv@ha
/*.global __dt__8SNOW_EFFFv*/
/* 80057FD0 00054F10  38 84 6D 58 */ addi r4, r4, __dt__8SNOW_EFFFv@l
/* 80057FD4 00054F14  38 A0 00 38 */ li r5, 0x38
/* 80057FD8 00054F18  38 C0 01 F4 */ li r6, 0x1f4
/* 80057FDC 00054F1C  48 30 9D 0D */ bl func_80361CE8
/* 80057FE0 00054F20  28 1E 00 00 */ cmplwi r30, 0
/* 80057FE4 00054F24  41 82 00 10 */ beq lbl_80057FF4
/* 80057FE8 00054F28  3C 60 80 3D */ lis r3, lbl_803CD97C@ha
/* 80057FEC 00054F2C  38 03 D9 7C */ addi r0, r3, lbl_803CD97C@l
/* 80057FF0 00054F30  90 1E 00 00 */ stw r0, 0(r30)
lbl_80057FF4:
/* 80057FF4 00054F34  7F E0 07 35 */ extsh. r0, r31
/* 80057FF8 00054F38  40 81 00 0C */ ble lbl_80058004
/* 80057FFC 00054F3C  7F C3 F3 78 */ mr r3, r30
/* 80058000 00054F40  48 27 6D 3D */ bl __dl__FPv
lbl_80058004:
/* 80058004 00054F44  7F C3 F3 78 */ mr r3, r30
/* 80058008 00054F48  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8005800C 00054F4C  83 C1 00 08 */ lwz r30, 8(r1)
/* 80058010 00054F50  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80058014 00054F54  7C 08 03 A6 */ mtlr r0
/* 80058018 00054F58  38 21 00 10 */ addi r1, r1, 0x10
/* 8005801C 00054F5C  4E 80 00 20 */ blr