/* 80219174 002160B4  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 80219178 002160B8  7C 08 02 A6 */ mflr r0
/* 8021917C 002160BC  90 01 00 34 */ stw r0, 0x34(r1)
/* 80219180 002160C0  DB E1 00 20 */ stfd f31, 0x20(r1)
/* 80219184 002160C4  F3 E1 00 28 */ psq_st f31, 40(r1), 0, 0
/* 80219188 002160C8  39 61 00 20 */ addi r11, r1, 0x20
/* 8021918C 002160CC  48 14 90 49 */ bl _savegpr_27
/* 80219190 002160D0  7C 7B 1B 78 */ mr r27, r3
/* 80219194 002160D4  80 63 03 00 */ lwz r3, 0x300(r3)
/* 80219198 002160D8  48 03 C6 91 */ bl getAlphaRate__13CPaneMgrAlphaFv
/* 8021919C 002160DC  C0 02 AE 80 */ lfs f0, lbl_80454880-_SDA2_BASE_(r2)
/* 802191A0 002160E0  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 802191A4 002160E4  41 82 00 38 */ beq lbl_802191DC
/* 802191A8 002160E8  80 7B 03 00 */ lwz r3, 0x300(r27)
/* 802191AC 002160EC  3C 80 80 43 */ lis r4, lbl_8042EBC8@ha
/* 802191B0 002160F0  38 84 EB C8 */ addi r4, r4, lbl_8042EBC8@l
/* 802191B4 002160F4  C0 44 00 A8 */ lfs f2, 0xa8(r4)
/* 802191B8 002160F8  C0 24 00 18 */ lfs f1, 0x18(r4)
/* 802191BC 002160FC  C0 04 00 84 */ lfs f0, 0x84(r4)
/* 802191C0 00216100  EC 01 00 32 */ fmuls f0, f1, f0
/* 802191C4 00216104  EC 22 00 32 */ fmuls f1, f2, f0
/* 802191C8 00216108  48 03 C6 09 */ bl setAlphaRate__13CPaneMgrAlphaFf
/* 802191CC 0021610C  7F 63 DB 78 */ mr r3, r27
/* 802191D0 00216110  80 9B 03 00 */ lwz r4, 0x300(r27)
/* 802191D4 00216114  38 A0 00 05 */ li r5, 5
/* 802191D8 00216118  48 00 17 F1 */ bl dMeter2Draw_c_NS_setAlphaAnimeMin
lbl_802191DC:
/* 802191DC 0021611C  3B 80 00 00 */ li r28, 0
/* 802191E0 00216120  3B E0 00 00 */ li r31, 0
/* 802191E4 00216124  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 802191E8 00216128  3B C3 EB C8 */ addi r30, r3, lbl_8042EBC8@l
/* 802191EC 0021612C  C3 E2 AE 80 */ lfs f31, lbl_80454880-_SDA2_BASE_(r2)
lbl_802191F0:
/* 802191F0 00216130  3B BF 00 C0 */ addi r29, r31, 0xc0
/* 802191F4 00216134  7C 7B E8 2E */ lwzx r3, r27, r29
/* 802191F8 00216138  48 03 C6 31 */ bl getAlphaRate__13CPaneMgrAlphaFv
/* 802191FC 0021613C  FC 1F 08 00 */ fcmpu cr0, f31, f1
/* 80219200 00216140  41 82 00 28 */ beq lbl_80219228
/* 80219204 00216144  7C 7B E8 2E */ lwzx r3, r27, r29
/* 80219208 00216148  C0 3E 00 18 */ lfs f1, 0x18(r30)
/* 8021920C 0021614C  C0 1E 00 84 */ lfs f0, 0x84(r30)
/* 80219210 00216150  EC 21 00 32 */ fmuls f1, f1, f0
/* 80219214 00216154  48 03 C5 BD */ bl setAlphaRate__13CPaneMgrAlphaFf
/* 80219218 00216158  7F 63 DB 78 */ mr r3, r27
/* 8021921C 0021615C  7C 9B E8 2E */ lwzx r4, r27, r29
/* 80219220 00216160  38 A0 00 05 */ li r5, 5
/* 80219224 00216164  48 00 17 A5 */ bl dMeter2Draw_c_NS_setAlphaAnimeMin
lbl_80219228:
/* 80219228 00216168  3B 9C 00 01 */ addi r28, r28, 1
/* 8021922C 0021616C  2C 1C 00 05 */ cmpwi r28, 5
/* 80219230 00216170  3B FF 00 04 */ addi r31, r31, 4
/* 80219234 00216174  41 80 FF BC */ blt lbl_802191F0
/* 80219238 00216178  E3 E1 00 28 */ psq_l f31, 40(r1), 0, 0
/* 8021923C 0021617C  CB E1 00 20 */ lfd f31, 0x20(r1)
/* 80219240 00216180  39 61 00 20 */ addi r11, r1, 0x20
/* 80219244 00216184  48 14 8F DD */ bl _restgpr_27
/* 80219248 00216188  80 01 00 34 */ lwz r0, 0x34(r1)
/* 8021924C 0021618C  7C 08 03 A6 */ mtlr r0
/* 80219250 00216190  38 21 00 30 */ addi r1, r1, 0x30
/* 80219254 00216194  4E 80 00 20 */ blr
