/* 802C10B4 002BDFF4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 802C10B8 002BDFF8  7C 08 02 A6 */ mflr r0
/* 802C10BC 002BDFFC  90 01 00 14 */ stw r0, 0x14(r1)
/* 802C10C0 002BE000  4B FF F4 F1 */ bl init__10Z2CreatureFP3VecP3VecUcUc_X1_
/* 802C10C4 002BE004  80 01 00 14 */ lwz r0, 0x14(r1)
/* 802C10C8 002BE008  7C 08 03 A6 */ mtlr r0
/* 802C10CC 002BE00C  38 21 00 10 */ addi r1, r1, 0x10
/* 802C10D0 002BE010  4E 80 00 20 */ blr