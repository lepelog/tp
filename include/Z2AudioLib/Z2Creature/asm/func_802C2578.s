/* 802C2578 002BF4B8  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 802C257C 002BF4BC  7C 08 02 A6 */ mflr r0
/* 802C2580 002BF4C0  90 01 00 14 */ stw r0, 0x14(r1)
/* 802C2584 002BF4C4  93 E1 00 0C */ stw r31, 0xc(r1)
/* 802C2588 002BF4C8  7C 7F 1B 78 */ mr r31, r3
/* 802C258C 002BF4CC  4B FF E9 D9 */ bl __ct__15Z2CreatureEnemyFv
/* 802C2590 002BF4D0  3C 60 80 3D */ lis r3, lbl_803CB780@ha
/* 802C2594 002BF4D4  38 03 B7 80 */ addi r0, r3, lbl_803CB780@l
/* 802C2598 002BF4D8  90 1F 00 00 */ stw r0, 0(r31)
/* 802C259C 002BF4DC  38 7F 00 A4 */ addi r3, r31, 0xa4
/* 802C25A0 002BF4E0  4B FF C2 A5 */ bl __ct__16Z2SoundObjSimpleFv
/* 802C25A4 002BF4E4  38 7F 00 C4 */ addi r3, r31, 0xc4
/* 802C25A8 002BF4E8  4B FF C2 9D */ bl __ct__16Z2SoundObjSimpleFv
/* 802C25AC 002BF4EC  38 7F 00 E4 */ addi r3, r31, 0xe4
/* 802C25B0 002BF4F0  4B FF C2 95 */ bl __ct__16Z2SoundObjSimpleFv
/* 802C25B4 002BF4F4  38 7F 01 04 */ addi r3, r31, 0x104
/* 802C25B8 002BF4F8  3C 80 80 2C */ lis r4, __ct__16Z2SoundObjSimpleFv@ha
/* 802C25BC 002BF4FC  38 84 E8 44 */ addi r4, r4, __ct__16Z2SoundObjSimpleFv@l
/*.global __dt__16Z2SoundObjSimpleFv*/
/* 802C25C0 002BF500  3C A0 80 16 */ lis r5, __dt__16Z2SoundObjSimpleFv@ha
/*.global __dt__16Z2SoundObjSimpleFv*/
/* 802C25C4 002BF504  38 A5 BA 3C */ addi r5, r5, __dt__16Z2SoundObjSimpleFv@l
/* 802C25C8 002BF508  38 C0 00 20 */ li r6, 0x20
/* 802C25CC 002BF50C  38 E0 00 08 */ li r7, 8
/* 802C25D0 002BF510  48 09 F7 91 */ bl __construct_array
/* 802C25D4 002BF514  7F E3 FB 78 */ mr r3, r31
/* 802C25D8 002BF518  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 802C25DC 002BF51C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 802C25E0 002BF520  7C 08 03 A6 */ mtlr r0
/* 802C25E4 002BF524  38 21 00 10 */ addi r1, r1, 0x10
/* 802C25E8 002BF528  4E 80 00 20 */ blr