/* 80201370 001FE2B0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80201374 001FE2B4  7C 08 02 A6 */ mflr r0
/* 80201378 001FE2B8  90 01 00 14 */ stw r0, 0x14(r1)
/* 8020137C 001FE2BC  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80201380 001FE2C0  93 C1 00 08 */ stw r30, 8(r1)
/* 80201384 001FE2C4  7C 7E 1B 79 */ or. r30, r3, r3
/* 80201388 001FE2C8  7C 9F 23 78 */ mr r31, r4
/* 8020138C 001FE2CC  41 82 00 24 */ beq lbl_802013B0
/* 80201390 001FE2D0  3C 80 80 3C */ lis r4, lbl_803BF258@ha
/* 80201394 001FE2D4  38 04 F2 58 */ addi r0, r4, lbl_803BF258@l
/* 80201398 001FE2D8  90 1E 00 00 */ stw r0, 0(r30)
/* 8020139C 001FE2DC  48 00 17 01 */ bl _delete__14dMeterButton_cFv
/* 802013A0 001FE2E0  7F E0 07 35 */ extsh. r0, r31
/* 802013A4 001FE2E4  40 81 00 0C */ ble lbl_802013B0
/* 802013A8 001FE2E8  7F C3 F3 78 */ mr r3, r30
/* 802013AC 001FE2EC  48 0C D9 91 */ bl __dl__FPv
lbl_802013B0:
/* 802013B0 001FE2F0  7F C3 F3 78 */ mr r3, r30
/* 802013B4 001FE2F4  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 802013B8 001FE2F8  83 C1 00 08 */ lwz r30, 8(r1)
/* 802013BC 001FE2FC  80 01 00 14 */ lwz r0, 0x14(r1)
/* 802013C0 001FE300  7C 08 03 A6 */ mtlr r0
/* 802013C4 001FE304  38 21 00 10 */ addi r1, r1, 0x10
/* 802013C8 001FE308  4E 80 00 20 */ blr
