/* 800A7358 000A4298  94 21 FF 60 */ stwu r1, -0xa0(r1)
/* 800A735C 000A429C  7C 08 02 A6 */ mflr r0
/* 800A7360 000A42A0  90 01 00 A4 */ stw r0, 0xa4(r1)
/* 800A7364 000A42A4  DB E1 00 90 */ stfd f31, 0x90(r1)
/* 800A7368 000A42A8  F3 E1 00 98 */ psq_st f31, 152(r1), 0, 0
/* 800A736C 000A42AC  DB C1 00 80 */ stfd f30, 0x80(r1)
/* 800A7370 000A42B0  F3 C1 00 88 */ psq_st f30, 136(r1), 0, 0
/* 800A7374 000A42B4  39 61 00 80 */ addi r11, r1, 0x80
/* 800A7378 000A42B8  48 2B AE 65 */ bl _savegpr_29
/* 800A737C 000A42BC  7C 7E 1B 78 */ mr r30, r3
/* 800A7380 000A42C0  3C 80 80 39 */ lis r4, lbl_8038D658@ha
/* 800A7384 000A42C4  3B E4 D6 58 */ addi r31, r4, lbl_8038D658@l
/* 800A7388 000A42C8  80 03 05 7C */ lwz r0, 0x57c(r3)
/* 800A738C 000A42CC  54 00 05 22 */ rlwinm r0, r0, 0, 0x14, 0x11
/* 800A7390 000A42D0  90 03 05 7C */ stw r0, 0x57c(r3)
/* 800A7394 000A42D4  48 06 E8 8D */ bl daAlink_c_NS_checkEventRun
/* 800A7398 000A42D8  2C 03 00 00 */ cmpwi r3, 0
/* 800A739C 000A42DC  41 82 00 18 */ beq lbl_800A73B4
/* 800A73A0 000A42E0  80 9E 05 70 */ lwz r4, 0x570(r30)
/* 800A73A4 000A42E4  3C 60 00 01 */ lis r3, 0x00014000@ha
/* 800A73A8 000A42E8  38 03 40 00 */ addi r0, r3, 0x00014000@l
/* 800A73AC 000A42EC  7C 80 00 39 */ and. r0, r4, r0
/* 800A73B0 000A42F0  41 82 05 5C */ beq lbl_800A790C
lbl_800A73B4:
/* 800A73B4 000A42F4  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800A73B8 000A42F8  54 00 04 E7 */ rlwinm. r0, r0, 0, 0x13, 0x13
/* 800A73BC 000A42FC  40 82 05 50 */ bne lbl_800A790C
/* 800A73C0 000A4300  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800A73C4 000A4304  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800A73C8 000A4308  90 01 00 44 */ stw r0, 0x44(r1)
/* 800A73CC 000A430C  80 1E 05 7C */ lwz r0, 0x57c(r30)
/* 800A73D0 000A4310  54 00 03 DF */ rlwinm. r0, r0, 0, 0xf, 0xf
/* 800A73D4 000A4314  41 82 00 44 */ beq lbl_800A7418
/* 800A73D8 000A4318  80 1E 05 7C */ lwz r0, 0x57c(r30)
/* 800A73DC 000A431C  54 00 04 1C */ rlwinm r0, r0, 0, 0x10, 0xe
/* 800A73E0 000A4320  90 1E 05 7C */ stw r0, 0x57c(r30)
/* 800A73E4 000A4324  C0 1E 35 A0 */ lfs f0, 0x35a0(r30)
/* 800A73E8 000A4328  D0 1E 35 94 */ stfs f0, 0x3594(r30)
/* 800A73EC 000A432C  C0 1E 35 A4 */ lfs f0, 0x35a4(r30)
/* 800A73F0 000A4330  D0 1E 35 98 */ stfs f0, 0x3598(r30)
/* 800A73F4 000A4334  C0 1E 35 A8 */ lfs f0, 0x35a8(r30)
/* 800A73F8 000A4338  D0 1E 35 9C */ stfs f0, 0x359c(r30)
/* 800A73FC 000A433C  3C 60 80 43 */ lis r3, lbl_80430CF4@ha
/* 800A7400 000A4340  C4 03 0C F4 */ lfsu f0, lbl_80430CF4@l(r3)
/* 800A7404 000A4344  D0 1E 35 A0 */ stfs f0, 0x35a0(r30)
/* 800A7408 000A4348  C0 03 00 04 */ lfs f0, 4(r3)
/* 800A740C 000A434C  D0 1E 35 A4 */ stfs f0, 0x35a4(r30)
/* 800A7410 000A4350  C0 03 00 08 */ lfs f0, 8(r3)
/* 800A7414 000A4354  D0 1E 35 A8 */ stfs f0, 0x35a8(r30)
lbl_800A7418:
/* 800A7418 000A4358  80 1E 19 9C */ lwz r0, 0x199c(r30)
/* 800A741C 000A435C  54 00 06 B5 */ rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800A7420 000A4360  41 82 00 34 */ beq lbl_800A7454
/* 800A7424 000A4364  7F C3 F3 78 */ mr r3, r30
/* 800A7428 000A4368  38 80 00 01 */ li r4, 1
/* 800A742C 000A436C  38 A0 00 01 */ li r5, 1
/* 800A7430 000A4370  48 01 40 89 */ bl daAlink_c_NS_checkHeavyStateOn
/* 800A7434 000A4374  2C 03 00 00 */ cmpwi r3, 0
/* 800A7438 000A4378  40 82 00 1C */ bne lbl_800A7454
/* 800A743C 000A437C  C0 5E 33 B4 */ lfs f2, 0x33b4(r30)
/* 800A7440 000A4380  C0 22 92 E0 */ lfs f1, lbl_80452CE0-_SDA2_BASE_(r2)
/* 800A7444 000A4384  C0 1E 04 D4 */ lfs f0, 0x4d4(r30)
/* 800A7448 000A4388  EC 01 00 2A */ fadds f0, f1, f0
/* 800A744C 000A438C  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 800A7450 000A4390  41 81 00 10 */ bgt lbl_800A7460
lbl_800A7454:
/* 800A7454 000A4394  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800A7458 000A4398  54 00 03 5B */ rlwinm. r0, r0, 0, 0xd, 0xd
/* 800A745C 000A439C  41 82 01 D8 */ beq lbl_800A7634
lbl_800A7460:
/* 800A7460 000A43A0  38 7E 04 D0 */ addi r3, r30, 0x4d0
/* 800A7464 000A43A4  38 9E 1A 60 */ addi r4, r30, 0x1a60
/* 800A7468 000A43A8  38 A1 00 28 */ addi r5, r1, 0x28
/* 800A746C 000A43AC  38 C1 00 0C */ addi r6, r1, 0xc
/* 800A7470 000A43B0  38 E0 00 00 */ li r7, 0
/* 800A7474 000A43B4  4B F7 65 35 */ bl fopAcM_getWaterStream__FPC4cXyzRC13cBgS_PolyInfoP4cXyzPii
/* 800A7478 000A43B8  2C 03 00 00 */ cmpwi r3, 0
/* 800A747C 000A43BC  41 82 00 10 */ beq lbl_800A748C
/* 800A7480 000A43C0  80 1E 05 7C */ lwz r0, 0x57c(r30)
/* 800A7484 000A43C4  60 00 20 00 */ ori r0, r0, 0x2000
/* 800A7488 000A43C8  90 1E 05 7C */ stw r0, 0x57c(r30)
lbl_800A748C:
/* 800A748C 000A43CC  7F C3 F3 78 */ mr r3, r30
/* 800A7490 000A43D0  38 80 00 01 */ li r4, 1
/* 800A7494 000A43D4  38 A0 00 01 */ li r5, 1
/* 800A7498 000A43D8  48 01 40 21 */ bl daAlink_c_NS_checkHeavyStateOn
/* 800A749C 000A43DC  2C 03 00 00 */ cmpwi r3, 0
/* 800A74A0 000A43E0  41 82 00 28 */ beq lbl_800A74C8
/* 800A74A4 000A43E4  3C 60 80 43 */ lis r3, lbl_80430CF4@ha
/* 800A74A8 000A43E8  C4 03 0C F4 */ lfsu f0, lbl_80430CF4@l(r3)
/* 800A74AC 000A43EC  D0 01 00 28 */ stfs f0, 0x28(r1)
/* 800A74B0 000A43F0  C0 03 00 04 */ lfs f0, 4(r3)
/* 800A74B4 000A43F4  D0 01 00 2C */ stfs f0, 0x2c(r1)
/* 800A74B8 000A43F8  C0 03 00 08 */ lfs f0, 8(r3)
/* 800A74BC 000A43FC  D0 01 00 30 */ stfs f0, 0x30(r1)
/* 800A74C0 000A4400  C0 42 92 98 */ lfs f2, lbl_80452C98-_SDA2_BASE_(r2)
/* 800A74C4 000A4404  48 00 01 58 */ b lbl_800A761C
lbl_800A74C8:
/* 800A74C8 000A4408  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800A74CC 000A440C  54 00 03 5B */ rlwinm. r0, r0, 0, 0xd, 0xd
/* 800A74D0 000A4410  40 82 00 F8 */ bne lbl_800A75C8
/* 800A74D4 000A4414  80 1E 05 7C */ lwz r0, 0x57c(r30)
/* 800A74D8 000A4418  60 00 10 00 */ ori r0, r0, 0x1000
/* 800A74DC 000A441C  90 1E 05 7C */ stw r0, 0x57c(r30)
/* 800A74E0 000A4420  C0 3E 33 98 */ lfs f1, 0x3398(r30)
/* 800A74E4 000A4424  38 7F 00 64 */ addi r3, r31, 0x64
/* 800A74E8 000A4428  C0 03 00 30 */ lfs f0, 0x30(r3)
/* 800A74EC 000A442C  EC 01 00 24 */ fdivs f0, f1, f0
/* 800A74F0 000A4430  FC 00 02 10 */ fabs f0, f0
/* 800A74F4 000A4434  FC 20 00 18 */ frsp f1, f0
/* 800A74F8 000A4438  FF E0 08 90 */ fmr f31, f1
/* 800A74FC 000A443C  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800A7500 000A4440  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800A7504 000A4444  40 81 00 08 */ ble lbl_800A750C
/* 800A7508 000A4448  FF E0 00 90 */ fmr f31, f0
lbl_800A750C:
/* 800A750C 000A444C  38 61 00 28 */ addi r3, r1, 0x28
/* 800A7510 000A4450  48 1B FC 19 */ bl atan2sX_Z__4cXyzCFv
/* 800A7514 000A4454  A8 1E 04 DE */ lha r0, 0x4de(r30)
/* 800A7518 000A4458  7C 60 18 50 */ subf r3, r0, r3
/* 800A751C 000A445C  3C 63 00 01 */ addis r3, r3, 1
/* 800A7520 000A4460  38 03 80 00 */ addi r0, r3, -32768
/* 800A7524 000A4464  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800A7528 000A4468  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 800A752C 000A446C  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800A7530 000A4470  7C 63 02 14 */ add r3, r3, r0
/* 800A7534 000A4474  C0 03 00 04 */ lfs f0, 4(r3)
/* 800A7538 000A4478  EF FF 00 32 */ fmuls f31, f31, f0
/* 800A753C 000A447C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800A7540 000A4480  FC 1F 00 40 */ fcmpo cr0, f31, f0
/* 800A7544 000A4484  40 80 00 08 */ bge lbl_800A754C
/* 800A7548 000A4488  FF E0 00 90 */ fmr f31, f0
lbl_800A754C:
/* 800A754C 000A448C  C0 42 93 F8 */ lfs f2, lbl_80452DF8-_SDA2_BASE_(r2)
/* 800A7550 000A4490  80 01 00 0C */ lwz r0, 0xc(r1)
/* 800A7554 000A4494  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 800A7558 000A4498  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800A755C 000A449C  90 01 00 4C */ stw r0, 0x4c(r1)
/* 800A7560 000A44A0  3C 00 43 30 */ lis r0, 0x4330
/* 800A7564 000A44A4  90 01 00 48 */ stw r0, 0x48(r1)
/* 800A7568 000A44A8  C8 01 00 48 */ lfd f0, 0x48(r1)
/* 800A756C 000A44AC  EC 00 08 28 */ fsubs f0, f0, f1
/* 800A7570 000A44B0  EC 02 00 32 */ fmuls f0, f2, f0
/* 800A7574 000A44B4  EF FF 00 32 */ fmuls f31, f31, f0
/* 800A7578 000A44B8  C0 02 92 98 */ lfs f0, lbl_80452C98-_SDA2_BASE_(r2)
/* 800A757C 000A44BC  FC 1F 00 40 */ fcmpo cr0, f31, f0
/* 800A7580 000A44C0  40 81 00 08 */ ble lbl_800A7588
/* 800A7584 000A44C4  FF E0 00 90 */ fmr f31, f0
lbl_800A7588:
/* 800A7588 000A44C8  38 61 00 28 */ addi r3, r1, 0x28
/* 800A758C 000A44CC  7C 64 1B 78 */ mr r4, r3
/* 800A7590 000A44D0  C0 1E 33 98 */ lfs f0, 0x3398(r30)
/* 800A7594 000A44D4  EC 3F 00 32 */ fmuls f1, f31, f0
/* 800A7598 000A44D8  48 29 FB 41 */ bl PSVECScale
/* 800A759C 000A44DC  38 61 00 28 */ addi r3, r1, 0x28
/* 800A75A0 000A44E0  48 29 FB 99 */ bl PSVECSquareMag
/* 800A75A4 000A44E4  FF E0 08 90 */ fmr f31, f1
/* 800A75A8 000A44E8  38 7E 35 94 */ addi r3, r30, 0x3594
/* 800A75AC 000A44EC  48 29 FB 8D */ bl PSVECSquareMag
/* 800A75B0 000A44F0  FC 01 F8 40 */ fcmpo cr0, f1, f31
/* 800A75B4 000A44F4  40 81 00 0C */ ble lbl_800A75C0
/* 800A75B8 000A44F8  C0 42 93 3C */ lfs f2, lbl_80452D3C-_SDA2_BASE_(r2)
/* 800A75BC 000A44FC  48 00 00 60 */ b lbl_800A761C
lbl_800A75C0:
/* 800A75C0 000A4500  C0 42 92 C4 */ lfs f2, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800A75C4 000A4504  48 00 00 58 */ b lbl_800A761C
lbl_800A75C8:
/* 800A75C8 000A4508  38 61 00 28 */ addi r3, r1, 0x28
/* 800A75CC 000A450C  7C 64 1B 78 */ mr r4, r3
/* 800A75D0 000A4510  80 01 00 0C */ lwz r0, 0xc(r1)
/* 800A75D4 000A4514  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 800A75D8 000A4518  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800A75DC 000A451C  90 01 00 4C */ stw r0, 0x4c(r1)
/* 800A75E0 000A4520  3C 00 43 30 */ lis r0, 0x4330
/* 800A75E4 000A4524  90 01 00 48 */ stw r0, 0x48(r1)
/* 800A75E8 000A4528  C8 01 00 48 */ lfd f0, 0x48(r1)
/* 800A75EC 000A452C  EC 20 08 28 */ fsubs f1, f0, f1
/* 800A75F0 000A4530  48 29 FA E9 */ bl PSVECScale
/* 800A75F4 000A4534  38 61 00 28 */ addi r3, r1, 0x28
/* 800A75F8 000A4538  48 29 FB 41 */ bl PSVECSquareMag
/* 800A75FC 000A453C  FF E0 08 90 */ fmr f31, f1
/* 800A7600 000A4540  38 7E 35 94 */ addi r3, r30, 0x3594
/* 800A7604 000A4544  48 29 FB 35 */ bl PSVECSquareMag
/* 800A7608 000A4548  FC 01 F8 40 */ fcmpo cr0, f1, f31
/* 800A760C 000A454C  40 81 00 0C */ ble lbl_800A7618
/* 800A7610 000A4550  C0 42 92 C4 */ lfs f2, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800A7614 000A4554  48 00 00 08 */ b lbl_800A761C
lbl_800A7618:
/* 800A7618 000A4558  C0 42 92 B8 */ lfs f2, lbl_80452CB8-_SDA2_BASE_(r2)
lbl_800A761C:
/* 800A761C 000A455C  38 7E 35 94 */ addi r3, r30, 0x3594
/* 800A7620 000A4560  38 81 00 28 */ addi r4, r1, 0x28
/* 800A7624 000A4564  C0 22 92 98 */ lfs f1, lbl_80452C98-_SDA2_BASE_(r2)
/* 800A7628 000A4568  FC 60 08 90 */ fmr f3, f1
/* 800A762C 000A456C  48 1C 84 8D */ bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 800A7630 000A4570  48 00 02 CC */ b lbl_800A78FC
lbl_800A7634:
/* 800A7634 000A4574  88 1E 2F BD */ lbz r0, 0x2fbd(r30)
/* 800A7638 000A4578  28 00 00 04 */ cmplwi r0, 4
/* 800A763C 000A457C  40 82 02 A4 */ bne lbl_800A78E0
/* 800A7640 000A4580  80 1E 19 9C */ lwz r0, 0x199c(r30)
/* 800A7644 000A4584  54 00 06 B5 */ rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800A7648 000A4588  41 82 02 98 */ beq lbl_800A78E0
/* 800A764C 000A458C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800A7650 000A4590  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800A7654 000A4594  3B A3 0F 38 */ addi r29, r3, 0xf38
/* 800A7658 000A4598  7F A3 EB 78 */ mr r3, r29
/* 800A765C 000A459C  38 9E 1A 60 */ addi r4, r30, 0x1a60
/* 800A7660 000A45A0  4B FC D0 01 */ bl cBgS_NS_ChkPolySafe
/* 800A7664 000A45A4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800A7668 000A45A8  41 82 02 78 */ beq lbl_800A78E0
/* 800A766C 000A45AC  7F A3 EB 78 */ mr r3, r29
/* 800A7670 000A45B0  38 9E 1A 60 */ addi r4, r30, 0x1a60
/* 800A7674 000A45B4  38 A1 00 34 */ addi r5, r1, 0x34
/* 800A7678 000A45B8  4B FC D0 CD */ bl cBgS_NS_GetTriPla
/* 800A767C 000A45BC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800A7680 000A45C0  41 82 02 60 */ beq lbl_800A78E0
/* 800A7684 000A45C4  C3 E1 00 38 */ lfs f31, 0x38(r1)
/* 800A7688 000A45C8  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800A768C 000A45CC  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 800A7690 000A45D0  C0 03 15 44 */ lfs f0, 0x1544(r3)
/* 800A7694 000A45D4  FC 1F 00 40 */ fcmpo cr0, f31, f0
/* 800A7698 000A45D8  4C 40 13 82 */ cror 2, 0, 2
/* 800A769C 000A45DC  40 82 02 44 */ bne lbl_800A78E0
/* 800A76A0 000A45E0  C0 01 00 34 */ lfs f0, 0x34(r1)
/* 800A76A4 000A45E4  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 800A76A8 000A45E8  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800A76AC 000A45EC  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 800A76B0 000A45F0  C0 01 00 3C */ lfs f0, 0x3c(r1)
/* 800A76B4 000A45F4  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 800A76B8 000A45F8  38 61 00 10 */ addi r3, r1, 0x10
/* 800A76BC 000A45FC  48 29 FA 7D */ bl PSVECSquareMag
/* 800A76C0 000A4600  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800A76C4 000A4604  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800A76C8 000A4608  40 81 00 58 */ ble lbl_800A7720
/* 800A76CC 000A460C  FC 00 08 34 */ frsqrte f0, f1
/* 800A76D0 000A4610  C8 82 92 E8 */ lfd f4, lbl_80452CE8-_SDA2_BASE_(r2)
/* 800A76D4 000A4614  FC 44 00 32 */ fmul f2, f4, f0
/* 800A76D8 000A4618  C8 62 92 F0 */ lfd f3, lbl_80452CF0-_SDA2_BASE_(r2)
/* 800A76DC 000A461C  FC 00 00 32 */ fmul f0, f0, f0
/* 800A76E0 000A4620  FC 01 00 32 */ fmul f0, f1, f0
/* 800A76E4 000A4624  FC 03 00 28 */ fsub f0, f3, f0
/* 800A76E8 000A4628  FC 02 00 32 */ fmul f0, f2, f0
/* 800A76EC 000A462C  FC 44 00 32 */ fmul f2, f4, f0
/* 800A76F0 000A4630  FC 00 00 32 */ fmul f0, f0, f0
/* 800A76F4 000A4634  FC 01 00 32 */ fmul f0, f1, f0
/* 800A76F8 000A4638  FC 03 00 28 */ fsub f0, f3, f0
/* 800A76FC 000A463C  FC 02 00 32 */ fmul f0, f2, f0
/* 800A7700 000A4640  FC 44 00 32 */ fmul f2, f4, f0
/* 800A7704 000A4644  FC 00 00 32 */ fmul f0, f0, f0
/* 800A7708 000A4648  FC 01 00 32 */ fmul f0, f1, f0
/* 800A770C 000A464C  FC 03 00 28 */ fsub f0, f3, f0
/* 800A7710 000A4650  FC 02 00 32 */ fmul f0, f2, f0
/* 800A7714 000A4654  FC 21 00 32 */ fmul f1, f1, f0
/* 800A7718 000A4658  FC 20 08 18 */ frsp f1, f1
/* 800A771C 000A465C  48 00 00 88 */ b lbl_800A77A4
lbl_800A7720:
/* 800A7720 000A4660  C8 02 92 F8 */ lfd f0, lbl_80452CF8-_SDA2_BASE_(r2)
/* 800A7724 000A4664  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800A7728 000A4668  40 80 00 10 */ bge lbl_800A7738
/* 800A772C 000A466C  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 800A7730 000A4670  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 800A7734 000A4674  48 00 00 70 */ b lbl_800A77A4
lbl_800A7738:
/* 800A7738 000A4678  D0 21 00 08 */ stfs f1, 8(r1)
/* 800A773C 000A467C  80 81 00 08 */ lwz r4, 8(r1)
/* 800A7740 000A4680  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 800A7744 000A4684  3C 00 7F 80 */ lis r0, 0x7f80
/* 800A7748 000A4688  7C 03 00 00 */ cmpw r3, r0
/* 800A774C 000A468C  41 82 00 14 */ beq lbl_800A7760
/* 800A7750 000A4690  40 80 00 40 */ bge lbl_800A7790
/* 800A7754 000A4694  2C 03 00 00 */ cmpwi r3, 0
/* 800A7758 000A4698  41 82 00 20 */ beq lbl_800A7778
/* 800A775C 000A469C  48 00 00 34 */ b lbl_800A7790
lbl_800A7760:
/* 800A7760 000A46A0  54 80 02 7F */ clrlwi. r0, r4, 9
/* 800A7764 000A46A4  41 82 00 0C */ beq lbl_800A7770
/* 800A7768 000A46A8  38 00 00 01 */ li r0, 1
/* 800A776C 000A46AC  48 00 00 28 */ b lbl_800A7794
lbl_800A7770:
/* 800A7770 000A46B0  38 00 00 02 */ li r0, 2
/* 800A7774 000A46B4  48 00 00 20 */ b lbl_800A7794
lbl_800A7778:
/* 800A7778 000A46B8  54 80 02 7F */ clrlwi. r0, r4, 9
/* 800A777C 000A46BC  41 82 00 0C */ beq lbl_800A7788
/* 800A7780 000A46C0  38 00 00 05 */ li r0, 5
/* 800A7784 000A46C4  48 00 00 10 */ b lbl_800A7794
lbl_800A7788:
/* 800A7788 000A46C8  38 00 00 03 */ li r0, 3
/* 800A778C 000A46CC  48 00 00 08 */ b lbl_800A7794
lbl_800A7790:
/* 800A7790 000A46D0  38 00 00 04 */ li r0, 4
lbl_800A7794:
/* 800A7794 000A46D4  2C 00 00 01 */ cmpwi r0, 1
/* 800A7798 000A46D8  40 82 00 0C */ bne lbl_800A77A4
/* 800A779C 000A46DC  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 800A77A0 000A46E0  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_800A77A4:
/* 800A77A4 000A46E4  C0 41 00 38 */ lfs f2, 0x38(r1)
/* 800A77A8 000A46E8  48 1B FE CD */ bl cM_atan2s__Fff
/* 800A77AC 000A46EC  7C 60 07 34 */ extsh r0, r3
/* 800A77B0 000A46F0  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 800A77B4 000A46F4  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800A77B8 000A46F8  90 01 00 4C */ stw r0, 0x4c(r1)
/* 800A77BC 000A46FC  3C 00 43 30 */ lis r0, 0x4330
/* 800A77C0 000A4700  90 01 00 48 */ stw r0, 0x48(r1)
/* 800A77C4 000A4704  C8 01 00 48 */ lfd f0, 0x48(r1)
/* 800A77C8 000A4708  EC 20 08 28 */ fsubs f1, f0, f1
/* 800A77CC 000A470C  C0 02 98 38 */ lfs f0, lbl_80453238-_SDA2_BASE_(r2)
/* 800A77D0 000A4710  EC 20 00 72 */ fmuls f1, f0, f1
/* 800A77D4 000A4714  C0 02 98 3C */ lfs f0, lbl_8045323C-_SDA2_BASE_(r2)
/* 800A77D8 000A4718  EF C1 00 28 */ fsubs f30, f1, f0
/* 800A77DC 000A471C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800A77E0 000A4720  D0 01 00 38 */ stfs f0, 0x38(r1)
/* 800A77E4 000A4724  38 61 00 1C */ addi r3, r1, 0x1c
/* 800A77E8 000A4728  38 81 00 34 */ addi r4, r1, 0x34
/* 800A77EC 000A472C  48 1B F7 5D */ bl normalizeZP__4cXyzFv
/* 800A77F0 000A4730  C0 42 94 D4 */ lfs f2, lbl_80452ED4-_SDA2_BASE_(r2)
/* 800A77F4 000A4734  A8 1E 31 22 */ lha r0, 0x3122(r30)
/* 800A77F8 000A4738  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 800A77FC 000A473C  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800A7800 000A4740  90 01 00 54 */ stw r0, 0x54(r1)
/* 800A7804 000A4744  3C 60 43 30 */ lis r3, 0x4330
/* 800A7808 000A4748  90 61 00 50 */ stw r3, 0x50(r1)
/* 800A780C 000A474C  C8 01 00 50 */ lfd f0, 0x50(r1)
/* 800A7810 000A4750  EC 00 08 28 */ fsubs f0, f0, f1
/* 800A7814 000A4754  EC 02 00 32 */ fmuls f0, f2, f0
/* 800A7818 000A4758  FC 00 00 1E */ fctiwz f0, f0
/* 800A781C 000A475C  D8 01 00 58 */ stfd f0, 0x58(r1)
/* 800A7820 000A4760  80 01 00 5C */ lwz r0, 0x5c(r1)
/* 800A7824 000A4764  7C 00 07 34 */ extsh r0, r0
/* 800A7828 000A4768  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800A782C 000A476C  90 01 00 64 */ stw r0, 0x64(r1)
/* 800A7830 000A4770  90 61 00 60 */ stw r3, 0x60(r1)
/* 800A7834 000A4774  C8 01 00 60 */ lfd f0, 0x60(r1)
/* 800A7838 000A4778  EC 20 08 28 */ fsubs f1, f0, f1
/* 800A783C 000A477C  C0 02 98 3C */ lfs f0, lbl_8045323C-_SDA2_BASE_(r2)
/* 800A7840 000A4780  EC 01 00 28 */ fsubs f0, f1, f0
/* 800A7844 000A4784  FC 1E 00 40 */ fcmpo cr0, f30, f0
/* 800A7848 000A4788  40 80 00 28 */ bge lbl_800A7870
/* 800A784C 000A478C  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 800A7850 000A4790  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800A7854 000A4794  41 82 00 10 */ beq lbl_800A7864
/* 800A7858 000A4798  38 7F 18 D0 */ addi r3, r31, 0x18d0
/* 800A785C 000A479C  C0 43 00 08 */ lfs f2, 8(r3)
/* 800A7860 000A47A0  48 00 00 30 */ b lbl_800A7890
lbl_800A7864:
/* 800A7864 000A47A4  38 7F 00 64 */ addi r3, r31, 0x64
/* 800A7868 000A47A8  C0 43 00 30 */ lfs f2, 0x30(r3)
/* 800A786C 000A47AC  48 00 00 24 */ b lbl_800A7890
lbl_800A7870:
/* 800A7870 000A47B0  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 800A7874 000A47B4  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800A7878 000A47B8  41 82 00 10 */ beq lbl_800A7888
/* 800A787C 000A47BC  38 7F 1D 98 */ addi r3, r31, 0x1d98
/* 800A7880 000A47C0  C0 43 00 70 */ lfs f2, 0x70(r3)
/* 800A7884 000A47C4  48 00 00 0C */ b lbl_800A7890
lbl_800A7888:
/* 800A7888 000A47C8  38 7F 02 74 */ addi r3, r31, 0x274
/* 800A788C 000A47CC  C0 43 00 64 */ lfs f2, 0x64(r3)
lbl_800A7890:
/* 800A7890 000A47D0  C0 22 98 40 */ lfs f1, lbl_80453240-_SDA2_BASE_(r2)
/* 800A7894 000A47D4  EC 1E 07 F2 */ fmuls f0, f30, f31
/* 800A7898 000A47D8  EC 61 00 32 */ fmuls f3, f1, f0
/* 800A789C 000A47DC  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800A78A0 000A47E0  FC 03 00 40 */ fcmpo cr0, f3, f0
/* 800A78A4 000A47E4  40 81 00 08 */ ble lbl_800A78AC
/* 800A78A8 000A47E8  FC 60 00 90 */ fmr f3, f0
lbl_800A78AC:
/* 800A78AC 000A47EC  38 61 00 34 */ addi r3, r1, 0x34
/* 800A78B0 000A47F0  7C 64 1B 78 */ mr r4, r3
/* 800A78B4 000A47F4  C0 22 92 98 */ lfs f1, lbl_80452C98-_SDA2_BASE_(r2)
/* 800A78B8 000A47F8  EC 02 00 F2 */ fmuls f0, f2, f3
/* 800A78BC 000A47FC  EC 21 00 2A */ fadds f1, f1, f0
/* 800A78C0 000A4800  48 29 F8 19 */ bl PSVECScale
/* 800A78C4 000A4804  38 7E 35 94 */ addi r3, r30, 0x3594
/* 800A78C8 000A4808  38 81 00 34 */ addi r4, r1, 0x34
/* 800A78CC 000A480C  C0 22 92 98 */ lfs f1, lbl_80452C98-_SDA2_BASE_(r2)
/* 800A78D0 000A4810  C0 42 92 B8 */ lfs f2, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800A78D4 000A4814  C0 62 93 F8 */ lfs f3, lbl_80452DF8-_SDA2_BASE_(r2)
/* 800A78D8 000A4818  48 1C 81 E1 */ bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 800A78DC 000A481C  48 00 00 20 */ b lbl_800A78FC
lbl_800A78E0:
/* 800A78E0 000A4820  3C 60 80 43 */ lis r3, lbl_80430CF4@ha
/* 800A78E4 000A4824  C4 03 0C F4 */ lfsu f0, lbl_80430CF4@l(r3)
/* 800A78E8 000A4828  D0 1E 35 94 */ stfs f0, 0x3594(r30)
/* 800A78EC 000A482C  C0 03 00 04 */ lfs f0, 4(r3)
/* 800A78F0 000A4830  D0 1E 35 98 */ stfs f0, 0x3598(r30)
/* 800A78F4 000A4834  C0 03 00 08 */ lfs f0, 8(r3)
/* 800A78F8 000A4838  D0 1E 35 9C */ stfs f0, 0x359c(r30)
lbl_800A78FC:
/* 800A78FC 000A483C  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800A7900 000A4840  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800A7904 000A4844  90 01 00 44 */ stw r0, 0x44(r1)
/* 800A7908 000A4848  48 00 00 20 */ b lbl_800A7928
lbl_800A790C:
/* 800A790C 000A484C  3C 60 80 43 */ lis r3, lbl_80430CF4@ha
/* 800A7910 000A4850  C4 03 0C F4 */ lfsu f0, lbl_80430CF4@l(r3)
/* 800A7914 000A4854  D0 1E 35 94 */ stfs f0, 0x3594(r30)
/* 800A7918 000A4858  C0 03 00 04 */ lfs f0, 4(r3)
/* 800A791C 000A485C  D0 1E 35 98 */ stfs f0, 0x3598(r30)
/* 800A7920 000A4860  C0 03 00 08 */ lfs f0, 8(r3)
/* 800A7924 000A4864  D0 1E 35 9C */ stfs f0, 0x359c(r30)
lbl_800A7928:
/* 800A7928 000A4868  E3 E1 00 98 */ psq_l f31, 152(r1), 0, 0
/* 800A792C 000A486C  CB E1 00 90 */ lfd f31, 0x90(r1)
/* 800A7930 000A4870  E3 C1 00 88 */ psq_l f30, 136(r1), 0, 0
/* 800A7934 000A4874  CB C1 00 80 */ lfd f30, 0x80(r1)
/* 800A7938 000A4878  39 61 00 80 */ addi r11, r1, 0x80
/* 800A793C 000A487C  48 2B A8 ED */ bl _restgpr_29
/* 800A7940 000A4880  80 01 00 A4 */ lwz r0, 0xa4(r1)
/* 800A7944 000A4884  7C 08 03 A6 */ mtlr r0
/* 800A7948 000A4888  38 21 00 A0 */ addi r1, r1, 0xa0
/* 800A794C 000A488C  4E 80 00 20 */ blr
