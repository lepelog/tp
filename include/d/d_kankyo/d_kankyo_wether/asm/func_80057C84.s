/* 80057C84 00054BC4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80057C88 00054BC8  7C 08 02 A6 */ mflr r0
/* 80057C8C 00054BCC  90 01 00 14 */ stw r0, 0x14(r1)
/* 80057C90 00054BD0  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80057C94 00054BD4  93 C1 00 08 */ stw r30, 8(r1)
/* 80057C98 00054BD8  7C 7E 1B 79 */ or. r30, r3, r3
/* 80057C9C 00054BDC  7C 9F 23 78 */ mr r31, r4
/* 80057CA0 00054BE0  41 82 00 4C */ beq lbl_80057CEC
/* 80057CA4 00054BE4  3C 60 80 3B */ lis r3, lbl_803A9AC0@ha
/* 80057CA8 00054BE8  38 03 9A C0 */ addi r0, r3, lbl_803A9AC0@l
/* 80057CAC 00054BEC  90 1E 00 00 */ stw r0, 0(r30)
/* 80057CB0 00054BF0  38 7E 00 1C */ addi r3, r30, 0x1c
/*.global __dt__11EF_EVIL_EFFFv*/
/* 80057CB4 00054BF4  3C 80 80 05 */ lis r4, __dt__11EF_EVIL_EFFFv@ha
/*.global __dt__11EF_EVIL_EFFFv*/
/* 80057CB8 00054BF8  38 84 70 6C */ addi r4, r4, __dt__11EF_EVIL_EFFFv@l
/* 80057CBC 00054BFC  38 A0 00 44 */ li r5, 0x44
/* 80057CC0 00054C00  38 C0 07 D0 */ li r6, 0x7d0
/* 80057CC4 00054C04  48 30 A0 25 */ bl func_80361CE8
/* 80057CC8 00054C08  28 1E 00 00 */ cmplwi r30, 0
/* 80057CCC 00054C0C  41 82 00 10 */ beq lbl_80057CDC
/* 80057CD0 00054C10  3C 60 80 3D */ lis r3, lbl_803CD97C@ha
/* 80057CD4 00054C14  38 03 D9 7C */ addi r0, r3, lbl_803CD97C@l
/* 80057CD8 00054C18  90 1E 00 00 */ stw r0, 0(r30)
lbl_80057CDC:
/* 80057CDC 00054C1C  7F E0 07 35 */ extsh. r0, r31
/* 80057CE0 00054C20  40 81 00 0C */ ble lbl_80057CEC
/* 80057CE4 00054C24  7F C3 F3 78 */ mr r3, r30
/* 80057CE8 00054C28  48 27 70 55 */ bl __dl__FPv
lbl_80057CEC:
/* 80057CEC 00054C2C  7F C3 F3 78 */ mr r3, r30
/* 80057CF0 00054C30  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80057CF4 00054C34  83 C1 00 08 */ lwz r30, 8(r1)
/* 80057CF8 00054C38  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80057CFC 00054C3C  7C 08 03 A6 */ mtlr r0
/* 80057D00 00054C40  38 21 00 10 */ addi r1, r1, 0x10
/* 80057D04 00054C44  4E 80 00 20 */ blr