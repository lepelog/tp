/* 80140D80 0013DCC0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80140D84 0013DCC4  7C 08 02 A6 */ mflr r0
/* 80140D88 0013DCC8  90 01 00 14 */ stw r0, 0x14(r1)
/* 80140D8C 0013DCCC  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80140D90 0013DCD0  7C 7F 1B 78 */ mr r31, r3
/* 80140D94 0013DCD4  3C 80 80 3A */ lis r4, lbl_803A3354@ha
/* 80140D98 0013DCD8  38 04 33 54 */ addi r0, r4, lbl_803A3354@l
/* 80140D9C 0013DCDC  90 03 00 00 */ stw r0, 0(r3)
/* 80140DA0 0013DCE0  38 80 00 00 */ li r4, 0
/* 80140DA4 0013DCE4  48 1E 76 59 */ bl init__12J3DFrameCtrlFs
/* 80140DA8 0013DCE8  3C 60 80 3B */ lis r3, lbl_803B2E20@ha
/* 80140DAC 0013DCEC  38 03 2E 20 */ addi r0, r3, lbl_803B2E20@l
/* 80140DB0 0013DCF0  90 1F 00 00 */ stw r0, 0(r31)
/* 80140DB4 0013DCF4  7F E3 FB 78 */ mr r3, r31
/* 80140DB8 0013DCF8  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80140DBC 0013DCFC  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80140DC0 0013DD00  7C 08 03 A6 */ mtlr r0
/* 80140DC4 0013DD04  38 21 00 10 */ addi r1, r1, 0x10
/* 80140DC8 0013DD08  4E 80 00 20 */ blr