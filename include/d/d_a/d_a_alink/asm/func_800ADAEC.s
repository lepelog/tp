/* 800ADAEC 000AAA2C  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800ADAF0 000AAA30  7C 08 02 A6 */ mflr r0
/* 800ADAF4 000AAA34  90 01 00 24 */ stw r0, 0x24(r1)
/* 800ADAF8 000AAA38  DB E1 00 10 */ stfd f31, 0x10(r1)
/* 800ADAFC 000AAA3C  F3 E1 00 18 */ psq_st f31, 24(r1), 0, 0
/* 800ADB00 000AAA40  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800ADB04 000AAA44  7C 7F 1B 78 */ mr r31, r3
/* 800ADB08 000AAA48  FF E0 08 90 */ fmr f31, f1
/* 800ADB0C 000AAA4C  38 00 00 00 */ li r0, 0
/* 800ADB10 000AAA50  54 83 18 38 */ slwi r3, r4, 3
/* 800ADB14 000AAA54  7C 7F 1A 14 */ add r3, r31, r3
/* 800ADB18 000AAA58  90 03 1F 2C */ stw r0, 0x1f2c(r3)
/* 800ADB1C 000AAA5C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800ADB20 000AAA60  D0 03 1F 28 */ stfs f0, 0x1f28(r3)
/* 800ADB24 000AAA64  3C 60 00 01 */ lis r3, 0x0000FFFF@ha
/* 800ADB28 000AAA68  38 A3 FF FF */ addi r5, r3, 0x0000FFFF@l
/* 800ADB2C 000AAA6C  1C 04 00 14 */ mulli r0, r4, 0x14
/* 800ADB30 000AAA70  7C 7F 02 14 */ add r3, r31, r0
/* 800ADB34 000AAA74  B0 A3 1F 58 */ sth r5, 0x1f58(r3)
/* 800ADB38 000AAA78  1C 64 00 18 */ mulli r3, r4, 0x18
/* 800ADB3C 000AAA7C  38 63 1F D0 */ addi r3, r3, 0x1fd0
/* 800ADB40 000AAA80  7C 7F 1A 14 */ add r3, r31, r3
/* 800ADB44 000AAA84  38 80 00 00 */ li r4, 0
/* 800ADB48 000AAA88  48 27 A8 B5 */ bl init__12J3DFrameCtrlFs
/* 800ADB4C 000AAA8C  7F E3 FB 78 */ mr r3, r31
/* 800ADB50 000AAA90  FC 20 F8 90 */ fmr f1, f31
/* 800ADB54 000AAA94  4B FF FD A1 */ bl daAlink_c_NS_setUnderAnimeMorf
/* 800ADB58 000AAA98  38 60 00 01 */ li r3, 1
/* 800ADB5C 000AAA9C  E3 E1 00 18 */ psq_l f31, 24(r1), 0, 0
/* 800ADB60 000AAAA0  CB E1 00 10 */ lfd f31, 0x10(r1)
/* 800ADB64 000AAAA4  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800ADB68 000AAAA8  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800ADB6C 000AAAAC  7C 08 03 A6 */ mtlr r0
/* 800ADB70 000AAAB0  38 21 00 20 */ addi r1, r1, 0x20
/* 800ADB74 000AAAB4  4E 80 00 20 */ blr
