/* 80057E94 00054DD4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80057E98 00054DD8  7C 08 02 A6 */ mflr r0
/* 80057E9C 00054DDC  90 01 00 14 */ stw r0, 0x14(r1)
/* 80057EA0 00054DE0  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80057EA4 00054DE4  93 C1 00 08 */ stw r30, 8(r1)
/* 80057EA8 00054DE8  7C 7E 1B 79 */ or. r30, r3, r3
/* 80057EAC 00054DEC  7C 9F 23 78 */ mr r31, r4
/* 80057EB0 00054DF0  41 82 00 4C */ beq lbl_80057EFC
/* 80057EB4 00054DF4  3C 60 80 3B */ lis r3, lbl_803A9B10@ha
/* 80057EB8 00054DF8  38 03 9B 10 */ addi r0, r3, lbl_803A9B10@l
/* 80057EBC 00054DFC  90 1E 00 00 */ stw r0, 0(r30)
/* 80057EC0 00054E00  38 7E 00 20 */ addi r3, r30, 0x20
/*.global __dt__9HOUSI_EFFFv*/
/* 80057EC4 00054E04  3C 80 80 05 */ lis r4, __dt__9HOUSI_EFFFv@ha
/*.global __dt__9HOUSI_EFFFv*/
/* 80057EC8 00054E08  38 84 6E A8 */ addi r4, r4, __dt__9HOUSI_EFFFv@l
/* 80057ECC 00054E0C  38 A0 00 50 */ li r5, 0x50
/* 80057ED0 00054E10  38 C0 01 2C */ li r6, 0x12c
/* 80057ED4 00054E14  48 30 9E 15 */ bl func_80361CE8
/* 80057ED8 00054E18  28 1E 00 00 */ cmplwi r30, 0
/* 80057EDC 00054E1C  41 82 00 10 */ beq lbl_80057EEC
/* 80057EE0 00054E20  3C 60 80 3D */ lis r3, lbl_803CD97C@ha
/* 80057EE4 00054E24  38 03 D9 7C */ addi r0, r3, lbl_803CD97C@l
/* 80057EE8 00054E28  90 1E 00 00 */ stw r0, 0(r30)
lbl_80057EEC:
/* 80057EEC 00054E2C  7F E0 07 35 */ extsh. r0, r31
/* 80057EF0 00054E30  40 81 00 0C */ ble lbl_80057EFC
/* 80057EF4 00054E34  7F C3 F3 78 */ mr r3, r30
/* 80057EF8 00054E38  48 27 6E 45 */ bl __dl__FPv
lbl_80057EFC:
/* 80057EFC 00054E3C  7F C3 F3 78 */ mr r3, r30
/* 80057F00 00054E40  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80057F04 00054E44  83 C1 00 08 */ lwz r30, 8(r1)
/* 80057F08 00054E48  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80057F0C 00054E4C  7C 08 03 A6 */ mtlr r0
/* 80057F10 00054E50  38 21 00 10 */ addi r1, r1, 0x10
/* 80057F14 00054E54  4E 80 00 20 */ blr