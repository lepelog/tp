/* 8003054C 0002D48C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80030550 0002D490  7C 08 02 A6 */ mflr r0
/* 80030554 0002D494  90 01 00 14 */ stw r0, 0x14(r1)
/* 80030558 0002D498  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8003055C 0002D49C  93 C1 00 08 */ stw r30, 8(r1)
/* 80030560 0002D4A0  7C 7E 1B 79 */ or. r30, r3, r3
/* 80030564 0002D4A4  7C 9F 23 78 */ mr r31, r4
/* 80030568 0002D4A8  41 82 01 1C */ beq lbl_80030684
/* 8003056C 0002D4AC  34 1E 01 4C */ addic. r0, r30, 0x14c
/* 80030570 0002D4B0  41 82 00 20 */ beq lbl_80030590
/* 80030574 0002D4B4  34 1E 01 4C */ addic. r0, r30, 0x14c
/* 80030578 0002D4B8  41 82 00 18 */ beq lbl_80030590
/* 8003057C 0002D4BC  34 1E 01 4C */ addic. r0, r30, 0x14c
/* 80030580 0002D4C0  41 82 00 10 */ beq lbl_80030590
/* 80030584 0002D4C4  3C 60 80 3A */ lis r3, lbl_803A3354@ha
/* 80030588 0002D4C8  38 03 33 54 */ addi r0, r3, lbl_803A3354@l
/* 8003058C 0002D4CC  90 1E 01 4C */ stw r0, 0x14c(r30)
lbl_80030590:
/* 80030590 0002D4D0  34 1E 01 34 */ addic. r0, r30, 0x134
/* 80030594 0002D4D4  41 82 00 20 */ beq lbl_800305B4
/* 80030598 0002D4D8  34 1E 01 34 */ addic. r0, r30, 0x134
/* 8003059C 0002D4DC  41 82 00 18 */ beq lbl_800305B4
/* 800305A0 0002D4E0  34 1E 01 34 */ addic. r0, r30, 0x134
/* 800305A4 0002D4E4  41 82 00 10 */ beq lbl_800305B4
/* 800305A8 0002D4E8  3C 60 80 3A */ lis r3, lbl_803A3354@ha
/* 800305AC 0002D4EC  38 03 33 54 */ addi r0, r3, lbl_803A3354@l
/* 800305B0 0002D4F0  90 1E 01 34 */ stw r0, 0x134(r30)
lbl_800305B4:
/* 800305B4 0002D4F4  34 1E 01 1C */ addic. r0, r30, 0x11c
/* 800305B8 0002D4F8  41 82 00 20 */ beq lbl_800305D8
/* 800305BC 0002D4FC  34 1E 01 1C */ addic. r0, r30, 0x11c
/* 800305C0 0002D500  41 82 00 18 */ beq lbl_800305D8
/* 800305C4 0002D504  34 1E 01 1C */ addic. r0, r30, 0x11c
/* 800305C8 0002D508  41 82 00 10 */ beq lbl_800305D8
/* 800305CC 0002D50C  3C 60 80 3A */ lis r3, lbl_803A3354@ha
/* 800305D0 0002D510  38 03 33 54 */ addi r0, r3, lbl_803A3354@l
/* 800305D4 0002D514  90 1E 01 1C */ stw r0, 0x11c(r30)
lbl_800305D8:
/* 800305D8 0002D518  34 1E 01 00 */ addic. r0, r30, 0x100
/* 800305DC 0002D51C  41 82 00 20 */ beq lbl_800305FC
/* 800305E0 0002D520  34 1E 01 00 */ addic. r0, r30, 0x100
/* 800305E4 0002D524  41 82 00 18 */ beq lbl_800305FC
/* 800305E8 0002D528  34 1E 01 00 */ addic. r0, r30, 0x100
/* 800305EC 0002D52C  41 82 00 10 */ beq lbl_800305FC
/* 800305F0 0002D530  3C 60 80 3A */ lis r3, lbl_803A3354@ha
/* 800305F4 0002D534  38 03 33 54 */ addi r0, r3, lbl_803A3354@l
/* 800305F8 0002D538  90 1E 01 00 */ stw r0, 0x100(r30)
lbl_800305FC:
/* 800305FC 0002D53C  38 7E 00 D0 */ addi r3, r30, 0xd0
/*.global __dt__13mDoExt_btkAnmFv*/
/* 80030600 0002D540  3C 80 80 03 */ lis r4, __dt__13mDoExt_btkAnmFv@ha
/*.global __dt__13mDoExt_btkAnmFv*/
/* 80030604 0002D544  38 84 07 9C */ addi r4, r4, __dt__13mDoExt_btkAnmFv@l
/* 80030608 0002D548  38 A0 00 18 */ li r5, 0x18
/* 8003060C 0002D54C  38 C0 00 02 */ li r6, 2
/* 80030610 0002D550  48 33 16 D9 */ bl __destroy_arr
/* 80030614 0002D554  38 7E 00 A0 */ addi r3, r30, 0xa0
/*.global __dt__13mDoExt_brkAnmFv*/
/* 80030618 0002D558  3C 80 80 03 */ lis r4, __dt__13mDoExt_brkAnmFv@ha
/*.global __dt__13mDoExt_brkAnmFv*/
/* 8003061C 0002D55C  38 84 07 48 */ addi r4, r4, __dt__13mDoExt_brkAnmFv@l
/* 80030620 0002D560  38 A0 00 18 */ li r5, 0x18
/* 80030624 0002D564  38 C0 00 02 */ li r6, 2
/* 80030628 0002D568  48 33 16 C1 */ bl __destroy_arr
/* 8003062C 0002D56C  38 7E 00 70 */ addi r3, r30, 0x70
/*.global __dt__13mDoExt_brkAnmFv*/
/* 80030630 0002D570  3C 80 80 03 */ lis r4, __dt__13mDoExt_brkAnmFv@ha
/*.global __dt__13mDoExt_brkAnmFv*/
/* 80030634 0002D574  38 84 07 48 */ addi r4, r4, __dt__13mDoExt_brkAnmFv@l
/* 80030638 0002D578  38 A0 00 18 */ li r5, 0x18
/* 8003063C 0002D57C  38 C0 00 02 */ li r6, 2
/* 80030640 0002D580  48 33 16 A9 */ bl __destroy_arr
/* 80030644 0002D584  38 7E 00 40 */ addi r3, r30, 0x40
/*.global __dt__13mDoExt_bpkAnmFv*/
/* 80030648 0002D588  3C 80 80 03 */ lis r4, __dt__13mDoExt_bpkAnmFv@ha
/*.global __dt__13mDoExt_bpkAnmFv*/
/* 8003064C 0002D58C  38 84 06 F4 */ addi r4, r4, __dt__13mDoExt_bpkAnmFv@l
/* 80030650 0002D590  38 A0 00 18 */ li r5, 0x18
/* 80030654 0002D594  38 C0 00 02 */ li r6, 2
/* 80030658 0002D598  48 33 16 91 */ bl __destroy_arr
/* 8003065C 0002D59C  38 7E 00 08 */ addi r3, r30, 8
/*.global __dt__13mDoExt_bckAnmFv*/
/* 80030660 0002D5A0  3C 80 80 03 */ lis r4, __dt__13mDoExt_bckAnmFv@ha
/*.global __dt__13mDoExt_bckAnmFv*/
/* 80030664 0002D5A4  38 84 06 A0 */ addi r4, r4, __dt__13mDoExt_bckAnmFv@l
/* 80030668 0002D5A8  38 A0 00 1C */ li r5, 0x1c
/* 8003066C 0002D5AC  38 C0 00 02 */ li r6, 2
/* 80030670 0002D5B0  48 33 16 79 */ bl __destroy_arr
/* 80030674 0002D5B4  7F E0 07 35 */ extsh. r0, r31
/* 80030678 0002D5B8  40 81 00 0C */ ble lbl_80030684
/* 8003067C 0002D5BC  7F C3 F3 78 */ mr r3, r30
/* 80030680 0002D5C0  48 29 E6 BD */ bl __dl__FPv
lbl_80030684:
/* 80030684 0002D5C4  7F C3 F3 78 */ mr r3, r30
/* 80030688 0002D5C8  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8003068C 0002D5CC  83 C1 00 08 */ lwz r30, 8(r1)
/* 80030690 0002D5D0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80030694 0002D5D4  7C 08 03 A6 */ mtlr r0
/* 80030698 0002D5D8  38 21 00 10 */ addi r1, r1, 0x10
/* 8003069C 0002D5DC  4E 80 00 20 */ blr