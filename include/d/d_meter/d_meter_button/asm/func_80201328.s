/* 80201328 001FE268  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8020132C 001FE26C  7C 08 02 A6 */ mflr r0
/* 80201330 001FE270  90 01 00 14 */ stw r0, 0x14(r1)
/* 80201334 001FE274  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80201338 001FE278  7C 7F 1B 78 */ mr r31, r3
/* 8020133C 001FE27C  3C 80 80 3A */ lis r4, lbl_803A6F88@ha
/* 80201340 001FE280  38 04 6F 88 */ addi r0, r4, lbl_803A6F88@l
/* 80201344 001FE284  90 03 00 00 */ stw r0, 0(r3)
/* 80201348 001FE288  3C 80 80 3C */ lis r4, lbl_803BF258@ha
/* 8020134C 001FE28C  38 04 F2 58 */ addi r0, r4, lbl_803BF258@l
/* 80201350 001FE290  90 03 00 00 */ stw r0, 0(r3)
/* 80201354 001FE294  48 00 00 79 */ bl _create__14dMeterButton_cFv
/* 80201358 001FE298  7F E3 FB 78 */ mr r3, r31
/* 8020135C 001FE29C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80201360 001FE2A0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80201364 001FE2A4  7C 08 03 A6 */ mtlr r0
/* 80201368 001FE2A8  38 21 00 10 */ addi r1, r1, 0x10
/* 8020136C 001FE2AC  4E 80 00 20 */ blr