/* 80135668 001325A8  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8013566C 001325AC  7C 08 02 A6 */ mflr r0
/* 80135670 001325B0  90 01 00 14 */ stw r0, 0x14(r1)
/* 80135674 001325B4  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80135678 001325B8  7C 7F 1B 78 */ mr r31, r3
/* 8013567C 001325BC  38 7F 04 E6 */ addi r3, r31, 0x4e6
/* 80135680 001325C0  A8 9F 30 0C */ lha r4, 0x300c(r31)
/* 80135684 001325C4  38 A0 00 02 */ li r5, 2
/* 80135688 001325C8  38 C0 10 00 */ li r6, 0x1000
/* 8013568C 001325CC  38 E0 04 00 */ li r7, 0x400
/* 80135690 001325D0  48 13 AE B1 */ bl cLib_addCalcAngleS__FPsssss
/* 80135694 001325D4  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 80135698 001325D8  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 8013569C 001325DC  38 7F 1F D0 */ addi r3, r31, 0x1fd0
/* 801356A0 001325E0  48 02 8E 2D */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 801356A4 001325E4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 801356A8 001325E8  41 82 00 30 */ beq lbl_801356D8
/* 801356AC 001325EC  A8 1F 30 0C */ lha r0, 0x300c(r31)
/* 801356B0 001325F0  B0 1F 04 E6 */ sth r0, 0x4e6(r31)
/* 801356B4 001325F4  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 801356B8 001325F8  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 801356BC 001325FC  7F E3 FB 78 */ mr r3, r31
/* 801356C0 00132600  80 9F 31 98 */ lwz r4, 0x3198(r31)
/* 801356C4 00132604  48 00 00 2D */ bl procWolfHangWallCatchInit__9daAlink_cFi
/* 801356C8 00132608  2C 03 00 00 */ cmpwi r3, 0
/* 801356CC 0013260C  40 82 00 0C */ bne lbl_801356D8
/* 801356D0 00132610  7F E3 FB 78 */ mr r3, r31
/* 801356D4 00132614  4B F8 02 19 */ bl checkWaitAction__9daAlink_cFv
lbl_801356D8:
/* 801356D8 00132618  38 60 00 01 */ li r3, 1
/* 801356DC 0013261C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 801356E0 00132620  80 01 00 14 */ lwz r0, 0x14(r1)
/* 801356E4 00132624  7C 08 03 A6 */ mtlr r0
/* 801356E8 00132628  38 21 00 10 */ addi r1, r1, 0x10
/* 801356EC 0013262C  4E 80 00 20 */ blr
