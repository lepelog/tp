/* 801A5BD4 001A2B14  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 801A5BD8 001A2B18  7C 08 02 A6 */ mflr r0
/* 801A5BDC 001A2B1C  90 01 00 14 */ stw r0, 0x14(r1)
/* 801A5BE0 001A2B20  4B FF 8A B5 */ bl plight_init
/* 801A5BE4 001A2B24  3C 60 80 43 */ lis r3, lbl_8042DD70@ha
/* 801A5BE8 001A2B28  38 63 DD 70 */ addi r3, r3, lbl_8042DD70@l
/* 801A5BEC 001A2B2C  48 12 0D AD */ bl resetScene__10Z2EnvSeMgrFv
/* 801A5BF0 001A2B30  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 801A5BF4 001A2B34  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 801A5BF8 001A2B38  80 63 0F 38 */ lwz r3, 0xf38(r3)
/* 801A5BFC 001A2B3C  28 03 00 00 */ cmplwi r3, 0
/* 801A5C00 001A2B40  41 82 00 08 */ beq lbl_801A5C08
/* 801A5C04 001A2B44  4B E6 95 89 */ bl mDoExt_destroySolidHeap
lbl_801A5C08:
/* 801A5C08 001A2B48  38 60 00 01 */ li r3, 1
/* 801A5C0C 001A2B4C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 801A5C10 001A2B50  7C 08 03 A6 */ mtlr r0
/* 801A5C14 001A2B54  38 21 00 10 */ addi r1, r1, 0x10
/* 801A5C18 001A2B58  4E 80 00 20 */ blr