/* 800DD3E4 000DA324  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 800DD3E8 000DA328  7C 08 02 A6 */ mflr r0
/* 800DD3EC 000DA32C  90 01 00 34 */ stw r0, 0x34(r1)
/* 800DD3F0 000DA330  39 61 00 30 */ addi r11, r1, 0x30
/* 800DD3F4 000DA334  48 28 4D DD */ bl _savegpr_26
/* 800DD3F8 000DA338  7C 7A 1B 78 */ mr r26, r3
/* 800DD3FC 000DA33C  7C 9B 23 78 */ mr r27, r4
/* 800DD400 000DA340  7C BC 2B 78 */ mr r28, r5
/* 800DD404 000DA344  A0 03 2F E8 */ lhz r0, 0x2fe8(r3)
/* 800DD408 000DA348  28 00 00 1D */ cmplwi r0, 0x1d
/* 800DD40C 000DA34C  40 82 00 0C */ bne lbl_800DD418
/* 800DD410 000DA350  38 60 00 00 */ li r3, 0
/* 800DD414 000DA354  48 00 04 68 */ b lbl_800DD87C
lbl_800DD418:
/* 800DD418 000DA358  88 9A 2F D5 */ lbz r4, 0x2fd5(r26)
/* 800DD41C 000DA35C  38 04 00 01 */ addi r0, r4, 1
/* 800DD420 000DA360  98 1A 2F D5 */ stb r0, 0x2fd5(r26)
/* 800DD424 000DA364  88 1A 2F D5 */ lbz r0, 0x2fd5(r26)
/* 800DD428 000DA368  28 00 00 04 */ cmplwi r0, 4
/* 800DD42C 000DA36C  40 82 00 14 */ bne lbl_800DD440
/* 800DD430 000DA370  38 00 00 00 */ li r0, 0
/* 800DD434 000DA374  98 1A 2F D5 */ stb r0, 0x2fd5(r26)
/* 800DD438 000DA378  48 00 0A 21 */ bl daAlink_c_NS_procGuardBreakInit
/* 800DD43C 000DA37C  48 00 04 40 */ b lbl_800DD87C
lbl_800DD440:
/* 800DD440 000DA380  38 80 00 1D */ li r4, 0x1d
/* 800DD444 000DA384  4B FE 4B 29 */ bl daAlink_c_NS_commonProcInit
/* 800DD448 000DA388  38 00 00 03 */ li r0, 3
/* 800DD44C 000DA38C  98 1A 2F D4 */ stb r0, 0x2fd4(r26)
/* 800DD450 000DA390  7F 43 D3 78 */ mr r3, r26
/* 800DD454 000DA394  7F 84 E3 78 */ mr r4, r28
/* 800DD458 000DA398  4B FF A0 9D */ bl daAlink_c_NS_getDamageVec
/* 800DD45C 000DA39C  7C 7F 1B 78 */ mr r31, r3
/* 800DD460 000DA3A0  48 18 9C C9 */ bl cXyz_NS_atan2sX_Z
/* 800DD464 000DA3A4  B0 7A 04 DE */ sth r3, 0x4de(r26)
/* 800DD468 000DA3A8  A0 1A 2F DC */ lhz r0, 0x2fdc(r26)
/* 800DD46C 000DA3AC  28 00 00 42 */ cmplwi r0, 0x42
/* 800DD470 000DA3B0  40 82 00 38 */ bne lbl_800DD4A8
/* 800DD474 000DA3B4  7F 43 D3 78 */ mr r3, r26
/* 800DD478 000DA3B8  38 80 01 67 */ li r4, 0x167
/* 800DD47C 000DA3BC  4B FC FB 05 */ bl daAlink_c_NS_setSingleAnimeBase
/* 800DD480 000DA3C0  7F 43 D3 78 */ mr r3, r26
/* 800DD484 000DA3C4  38 80 00 01 */ li r4, 1
/* 800DD488 000DA3C8  48 03 50 E1 */ bl daAlink_c_NS_setIronBallWaitUpperAnime
/* 800DD48C 000DA3CC  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800DD490 000DA3D0  D0 1A 1F 50 */ stfs f0, 0x1f50(r26)
/* 800DD494 000DA3D4  38 00 00 00 */ li r0, 0
/* 800DD498 000DA3D8  B0 1A 30 0A */ sth r0, 0x300a(r26)
/* 800DD49C 000DA3DC  B0 1A 30 0C */ sth r0, 0x300c(r26)
/* 800DD4A0 000DA3E0  B0 1A 30 0E */ sth r0, 0x300e(r26)
/* 800DD4A4 000DA3E4  48 00 02 68 */ b lbl_800DD70C
lbl_800DD4A8:
/* 800DD4A8 000DA3E8  3C 60 80 39 */ lis r3, lbl_8038DF9C@ha
/* 800DD4AC 000DA3EC  38 A3 DF 9C */ addi r5, r3, lbl_8038DF9C@l
/* 800DD4B0 000DA3F0  7F 43 D3 78 */ mr r3, r26
/* 800DD4B4 000DA3F4  88 1A 2F 98 */ lbz r0, 0x2f98(r26)
/* 800DD4B8 000DA3F8  28 00 00 02 */ cmplwi r0, 2
/* 800DD4BC 000DA3FC  38 80 00 2C */ li r4, 0x2c
/* 800DD4C0 000DA400  40 82 00 08 */ bne lbl_800DD4C8
/* 800DD4C4 000DA404  38 80 00 2B */ li r4, 0x2b
lbl_800DD4C8:
/* 800DD4C8 000DA408  4B FC FC 2D */ bl daAlink_c_NS_setSingleAnimeParam
/* 800DD4CC 000DA40C  7F 43 D3 78 */ mr r3, r26
/* 800DD4D0 000DA410  C0 22 92 BC */ lfs f1, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800DD4D4 000DA414  4B FF FB 35 */ bl daAlink_c_NS_setUpperGuardAnime
/* 800DD4D8 000DA418  A8 9A 04 E6 */ lha r4, 0x4e6(r26)
/* 800DD4DC 000DA41C  A8 7A 04 DE */ lha r3, 0x4de(r26)
/* 800DD4E0 000DA420  3C 63 00 01 */ addis r3, r3, 1
/* 800DD4E4 000DA424  38 03 80 00 */ addi r0, r3, -32768
/* 800DD4E8 000DA428  7C 04 00 50 */ subf r0, r4, r0
/* 800DD4EC 000DA42C  B0 1A 30 0C */ sth r0, 0x300c(r26)
/* 800DD4F0 000DA430  A8 7A 30 0C */ lha r3, 0x300c(r26)
/* 800DD4F4 000DA434  48 28 7B DD */ bl func_803650D0
/* 800DD4F8 000DA438  2C 03 70 00 */ cmpwi r3, 0x7000
/* 800DD4FC 000DA43C  40 81 00 10 */ ble lbl_800DD50C
/* 800DD500 000DA440  38 00 00 00 */ li r0, 0
/* 800DD504 000DA444  B0 1A 30 0C */ sth r0, 0x300c(r26)
/* 800DD508 000DA448  48 00 00 44 */ b lbl_800DD54C
lbl_800DD50C:
/* 800DD50C 000DA44C  3C 60 80 39 */ lis r3, lbl_8038DF9C@ha
/* 800DD510 000DA450  38 63 DF 9C */ addi r3, r3, lbl_8038DF9C@l
/* 800DD514 000DA454  A8 A3 00 50 */ lha r5, 0x50(r3)
/* 800DD518 000DA458  7C 05 00 D0 */ neg r0, r5
/* 800DD51C 000DA45C  7C 00 07 34 */ extsh r0, r0
/* 800DD520 000DA460  A8 9A 30 0C */ lha r4, 0x300c(r26)
/* 800DD524 000DA464  7C 04 00 00 */ cmpw r4, r0
/* 800DD528 000DA468  40 80 00 08 */ bge lbl_800DD530
/* 800DD52C 000DA46C  48 00 00 1C */ b lbl_800DD548
lbl_800DD530:
/* 800DD530 000DA470  7C 83 07 34 */ extsh r3, r4
/* 800DD534 000DA474  7C A0 07 34 */ extsh r0, r5
/* 800DD538 000DA478  7C 03 00 00 */ cmpw r3, r0
/* 800DD53C 000DA47C  40 81 00 08 */ ble lbl_800DD544
/* 800DD540 000DA480  7C A4 2B 78 */ mr r4, r5
lbl_800DD544:
/* 800DD544 000DA484  7C 80 23 78 */ mr r0, r4
lbl_800DD548:
/* 800DD548 000DA488  B0 1A 30 0C */ sth r0, 0x300c(r26)
lbl_800DD54C:
/* 800DD54C 000DA48C  3C 60 80 39 */ lis r3, lbl_8038DF9C@ha
/* 800DD550 000DA490  38 63 DF 9C */ addi r3, r3, lbl_8038DF9C@l
/* 800DD554 000DA494  AB A3 00 52 */ lha r29, 0x52(r3)
/* 800DD558 000DA498  7C 1D 00 D0 */ neg r0, r29
/* 800DD55C 000DA49C  7C 1E 07 34 */ extsh r30, r0
/* 800DD560 000DA4A0  C0 3F 00 08 */ lfs f1, 8(r31)
/* 800DD564 000DA4A4  C0 1F 00 00 */ lfs f0, 0(r31)
/* 800DD568 000DA4A8  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 800DD56C 000DA4AC  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800DD570 000DA4B0  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 800DD574 000DA4B4  D0 21 00 14 */ stfs f1, 0x14(r1)
/* 800DD578 000DA4B8  38 61 00 0C */ addi r3, r1, 0xc
/* 800DD57C 000DA4BC  48 26 9B BD */ bl PSVECSquareMag
/* 800DD580 000DA4C0  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800DD584 000DA4C4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800DD588 000DA4C8  40 81 00 58 */ ble lbl_800DD5E0
/* 800DD58C 000DA4CC  FC 00 08 34 */ frsqrte f0, f1
/* 800DD590 000DA4D0  C8 82 92 E8 */ lfd f4, lbl_80452CE8-_SDA2_BASE_(r2)
/* 800DD594 000DA4D4  FC 44 00 32 */ fmul f2, f4, f0
/* 800DD598 000DA4D8  C8 62 92 F0 */ lfd f3, lbl_80452CF0-_SDA2_BASE_(r2)
/* 800DD59C 000DA4DC  FC 00 00 32 */ fmul f0, f0, f0
/* 800DD5A0 000DA4E0  FC 01 00 32 */ fmul f0, f1, f0
/* 800DD5A4 000DA4E4  FC 03 00 28 */ fsub f0, f3, f0
/* 800DD5A8 000DA4E8  FC 02 00 32 */ fmul f0, f2, f0
/* 800DD5AC 000DA4EC  FC 44 00 32 */ fmul f2, f4, f0
/* 800DD5B0 000DA4F0  FC 00 00 32 */ fmul f0, f0, f0
/* 800DD5B4 000DA4F4  FC 01 00 32 */ fmul f0, f1, f0
/* 800DD5B8 000DA4F8  FC 03 00 28 */ fsub f0, f3, f0
/* 800DD5BC 000DA4FC  FC 02 00 32 */ fmul f0, f2, f0
/* 800DD5C0 000DA500  FC 44 00 32 */ fmul f2, f4, f0
/* 800DD5C4 000DA504  FC 00 00 32 */ fmul f0, f0, f0
/* 800DD5C8 000DA508  FC 01 00 32 */ fmul f0, f1, f0
/* 800DD5CC 000DA50C  FC 03 00 28 */ fsub f0, f3, f0
/* 800DD5D0 000DA510  FC 02 00 32 */ fmul f0, f2, f0
/* 800DD5D4 000DA514  FC 41 00 32 */ fmul f2, f1, f0
/* 800DD5D8 000DA518  FC 40 10 18 */ frsp f2, f2
/* 800DD5DC 000DA51C  48 00 00 90 */ b lbl_800DD66C
lbl_800DD5E0:
/* 800DD5E0 000DA520  C8 02 92 F8 */ lfd f0, lbl_80452CF8-_SDA2_BASE_(r2)
/* 800DD5E4 000DA524  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800DD5E8 000DA528  40 80 00 10 */ bge lbl_800DD5F8
/* 800DD5EC 000DA52C  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 800DD5F0 000DA530  C0 43 0A E0 */ lfs f2, lbl_80450AE0@l(r3)
/* 800DD5F4 000DA534  48 00 00 78 */ b lbl_800DD66C
lbl_800DD5F8:
/* 800DD5F8 000DA538  D0 21 00 08 */ stfs f1, 8(r1)
/* 800DD5FC 000DA53C  80 81 00 08 */ lwz r4, 8(r1)
/* 800DD600 000DA540  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 800DD604 000DA544  3C 00 7F 80 */ lis r0, 0x7f80
/* 800DD608 000DA548  7C 03 00 00 */ cmpw r3, r0
/* 800DD60C 000DA54C  41 82 00 14 */ beq lbl_800DD620
/* 800DD610 000DA550  40 80 00 40 */ bge lbl_800DD650
/* 800DD614 000DA554  2C 03 00 00 */ cmpwi r3, 0
/* 800DD618 000DA558  41 82 00 20 */ beq lbl_800DD638
/* 800DD61C 000DA55C  48 00 00 34 */ b lbl_800DD650
lbl_800DD620:
/* 800DD620 000DA560  54 80 02 7F */ clrlwi. r0, r4, 9
/* 800DD624 000DA564  41 82 00 0C */ beq lbl_800DD630
/* 800DD628 000DA568  38 00 00 01 */ li r0, 1
/* 800DD62C 000DA56C  48 00 00 28 */ b lbl_800DD654
lbl_800DD630:
/* 800DD630 000DA570  38 00 00 02 */ li r0, 2
/* 800DD634 000DA574  48 00 00 20 */ b lbl_800DD654
lbl_800DD638:
/* 800DD638 000DA578  54 80 02 7F */ clrlwi. r0, r4, 9
/* 800DD63C 000DA57C  41 82 00 0C */ beq lbl_800DD648
/* 800DD640 000DA580  38 00 00 05 */ li r0, 5
/* 800DD644 000DA584  48 00 00 10 */ b lbl_800DD654
lbl_800DD648:
/* 800DD648 000DA588  38 00 00 03 */ li r0, 3
/* 800DD64C 000DA58C  48 00 00 08 */ b lbl_800DD654
lbl_800DD650:
/* 800DD650 000DA590  38 00 00 04 */ li r0, 4
lbl_800DD654:
/* 800DD654 000DA594  2C 00 00 01 */ cmpwi r0, 1
/* 800DD658 000DA598  40 82 00 10 */ bne lbl_800DD668
/* 800DD65C 000DA59C  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 800DD660 000DA5A0  C0 43 0A E0 */ lfs f2, lbl_80450AE0@l(r3)
/* 800DD664 000DA5A4  48 00 00 08 */ b lbl_800DD66C
lbl_800DD668:
/* 800DD668 000DA5A8  FC 40 08 90 */ fmr f2, f1
lbl_800DD66C:
/* 800DD66C 000DA5AC  C0 3F 00 04 */ lfs f1, 4(r31)
/* 800DD670 000DA5B0  48 18 A0 05 */ bl cM_atan2s__Fff
/* 800DD674 000DA5B4  7C 64 07 34 */ extsh r4, r3
/* 800DD678 000DA5B8  7C 04 F0 00 */ cmpw r4, r30
/* 800DD67C 000DA5BC  40 80 00 08 */ bge lbl_800DD684
/* 800DD680 000DA5C0  48 00 00 18 */ b lbl_800DD698
lbl_800DD684:
/* 800DD684 000DA5C4  7F A0 07 34 */ extsh r0, r29
/* 800DD688 000DA5C8  7C 04 00 00 */ cmpw r4, r0
/* 800DD68C 000DA5CC  40 81 00 08 */ ble lbl_800DD694
/* 800DD690 000DA5D0  7F A3 EB 78 */ mr r3, r29
lbl_800DD694:
/* 800DD694 000DA5D4  7C 7E 1B 78 */ mr r30, r3
lbl_800DD698:
/* 800DD698 000DA5D8  B3 DA 30 0E */ sth r30, 0x300e(r26)
/* 800DD69C 000DA5DC  3C 60 80 39 */ lis r3, lbl_8038DF9C@ha
/* 800DD6A0 000DA5E0  38 63 DF 9C */ addi r3, r3, lbl_8038DF9C@l
/* 800DD6A4 000DA5E4  A8 63 00 54 */ lha r3, 0x54(r3)
/* 800DD6A8 000DA5E8  38 03 00 01 */ addi r0, r3, 1
/* 800DD6AC 000DA5EC  B0 1A 30 0A */ sth r0, 0x300a(r26)
/* 800DD6B0 000DA5F0  A8 7A 05 9E */ lha r3, 0x59e(r26)
/* 800DD6B4 000DA5F4  A8 1A 30 0C */ lha r0, 0x300c(r26)
/* 800DD6B8 000DA5F8  7C 63 00 50 */ subf r3, r3, r0
/* 800DD6BC 000DA5FC  A8 1A 30 0A */ lha r0, 0x300a(r26)
/* 800DD6C0 000DA600  7C 03 03 D6 */ divw r0, r3, r0
/* 800DD6C4 000DA604  B0 1A 30 0C */ sth r0, 0x300c(r26)
/* 800DD6C8 000DA608  A8 7A 05 9C */ lha r3, 0x59c(r26)
/* 800DD6CC 000DA60C  A8 1A 30 0E */ lha r0, 0x300e(r26)
/* 800DD6D0 000DA610  7C 63 00 50 */ subf r3, r3, r0
/* 800DD6D4 000DA614  A8 1A 30 0A */ lha r0, 0x300a(r26)
/* 800DD6D8 000DA618  7C 03 03 D6 */ divw r0, r3, r0
/* 800DD6DC 000DA61C  B0 1A 30 0E */ sth r0, 0x300e(r26)
/* 800DD6E0 000DA620  A8 7A 30 0A */ lha r3, 0x300a(r26)
/* 800DD6E4 000DA624  38 03 FF FF */ addi r0, r3, -1
/* 800DD6E8 000DA628  B0 1A 30 0A */ sth r0, 0x300a(r26)
/* 800DD6EC 000DA62C  A8 7A 05 9E */ lha r3, 0x59e(r26)
/* 800DD6F0 000DA630  A8 1A 30 0C */ lha r0, 0x300c(r26)
/* 800DD6F4 000DA634  7C 03 02 14 */ add r0, r3, r0
/* 800DD6F8 000DA638  B0 1A 05 9E */ sth r0, 0x59e(r26)
/* 800DD6FC 000DA63C  A8 7A 05 9C */ lha r3, 0x59c(r26)
/* 800DD700 000DA640  A8 1A 30 0E */ lha r0, 0x300e(r26)
/* 800DD704 000DA644  7C 03 02 14 */ add r0, r3, r0
/* 800DD708 000DA648  B0 1A 05 9C */ sth r0, 0x59c(r26)
lbl_800DD70C:
/* 800DD70C 000DA64C  38 00 00 00 */ li r0, 0
/* 800DD710 000DA650  B0 1A 30 10 */ sth r0, 0x3010(r26)
/* 800DD714 000DA654  B0 1A 30 12 */ sth r0, 0x3012(r26)
/* 800DD718 000DA658  28 1C 00 00 */ cmplwi r28, 0
/* 800DD71C 000DA65C  41 82 00 98 */ beq lbl_800DD7B4
/* 800DD720 000DA660  38 7C 00 9C */ addi r3, r28, 0x9c
/* 800DD724 000DA664  4B FA 5F 65 */ bl dCcD_GAtTgCoCommonBase_NS_GetAc
/* 800DD728 000DA668  28 03 00 00 */ cmplwi r3, 0
/* 800DD72C 000DA66C  41 82 00 88 */ beq lbl_800DD7B4
/* 800DD730 000DA670  38 7C 00 9C */ addi r3, r28, 0x9c
/* 800DD734 000DA674  4B FA 5F 55 */ bl dCcD_GAtTgCoCommonBase_NS_GetAc
/* 800DD738 000DA678  A8 03 00 08 */ lha r0, 8(r3)
/* 800DD73C 000DA67C  2C 00 02 EE */ cmpwi r0, 0x2ee
/* 800DD740 000DA680  40 82 00 74 */ bne lbl_800DD7B4
/* 800DD744 000DA684  38 7C 00 9C */ addi r3, r28, 0x9c
/* 800DD748 000DA688  4B FA 5F 41 */ bl dCcD_GAtTgCoCommonBase_NS_GetAc
/* 800DD74C 000DA68C  88 03 04 99 */ lbz r0, 0x499(r3)
/* 800DD750 000DA690  2C 00 00 01 */ cmpwi r0, 1
/* 800DD754 000DA694  40 82 00 60 */ bne lbl_800DD7B4
/* 800DD758 000DA698  7F 43 D3 78 */ mr r3, r26
/* 800DD75C 000DA69C  81 9A 06 28 */ lwz r12, 0x628(r26)
/* 800DD760 000DA6A0  81 8C 02 80 */ lwz r12, 0x280(r12)
/* 800DD764 000DA6A4  7D 89 03 A6 */ mtctr r12
/* 800DD768 000DA6A8  4E 80 04 21 */ bctrl
/* 800DD76C 000DA6AC  2C 03 00 00 */ cmpwi r3, 0
/* 800DD770 000DA6B0  41 82 00 20 */ beq lbl_800DD790
/* 800DD774 000DA6B4  3C 60 80 39 */ lis r3, lbl_8038DF9C@ha
/* 800DD778 000DA6B8  38 63 DF 9C */ addi r3, r3, lbl_8038DF9C@l
/* 800DD77C 000DA6BC  C0 03 00 7C */ lfs f0, 0x7c(r3)
/* 800DD780 000DA6C0  D0 1A 33 98 */ stfs f0, 0x3398(r26)
/* 800DD784 000DA6C4  38 00 00 01 */ li r0, 1
/* 800DD788 000DA6C8  B0 1A 30 12 */ sth r0, 0x3012(r26)
/* 800DD78C 000DA6CC  48 00 00 1C */ b lbl_800DD7A8
lbl_800DD790:
/* 800DD790 000DA6D0  3C 60 80 39 */ lis r3, lbl_8038DF9C@ha
/* 800DD794 000DA6D4  38 63 DF 9C */ addi r3, r3, lbl_8038DF9C@l
/* 800DD798 000DA6D8  C0 03 00 78 */ lfs f0, 0x78(r3)
/* 800DD79C 000DA6DC  D0 1A 33 98 */ stfs f0, 0x3398(r26)
/* 800DD7A0 000DA6E0  38 00 00 00 */ li r0, 0
/* 800DD7A4 000DA6E4  B0 1A 30 12 */ sth r0, 0x3012(r26)
lbl_800DD7A8:
/* 800DD7A8 000DA6E8  38 00 00 01 */ li r0, 1
/* 800DD7AC 000DA6EC  B0 1A 30 10 */ sth r0, 0x3010(r26)
/* 800DD7B0 000DA6F0  48 00 00 B4 */ b lbl_800DD864
lbl_800DD7B4:
/* 800DD7B4 000DA6F4  7F 43 D3 78 */ mr r3, r26
/* 800DD7B8 000DA6F8  7F 64 DB 78 */ mr r4, r27
/* 800DD7BC 000DA6FC  4B FF A4 2D */ bl daAlink_c_NS_checkHugeAttack
/* 800DD7C0 000DA700  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800DD7C4 000DA704  41 82 00 68 */ beq lbl_800DD82C
/* 800DD7C8 000DA708  7F 43 D3 78 */ mr r3, r26
/* 800DD7CC 000DA70C  81 9A 06 28 */ lwz r12, 0x628(r26)
/* 800DD7D0 000DA710  81 8C 02 80 */ lwz r12, 0x280(r12)
/* 800DD7D4 000DA714  7D 89 03 A6 */ mtctr r12
/* 800DD7D8 000DA718  4E 80 04 21 */ bctrl
/* 800DD7DC 000DA71C  2C 03 00 00 */ cmpwi r3, 0
/* 800DD7E0 000DA720  40 82 00 14 */ bne lbl_800DD7F4
/* 800DD7E4 000DA724  7F 43 D3 78 */ mr r3, r26
/* 800DD7E8 000DA728  4B FF 95 DD */ bl daAlink_c_NS_checkMiddleBossGoronRoom
/* 800DD7EC 000DA72C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800DD7F0 000DA730  40 82 00 1C */ bne lbl_800DD80C
lbl_800DD7F4:
/* 800DD7F4 000DA734  3C 60 80 39 */ lis r3, lbl_80392094@ha
/* 800DD7F8 000DA738  38 63 20 94 */ addi r3, r3, lbl_80392094@l
/* 800DD7FC 000DA73C  38 63 00 48 */ addi r3, r3, 0x48
/* 800DD800 000DA740  4B FC 02 61 */ bl checkStageName__9daAlink_cFPCc
/* 800DD804 000DA744  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800DD808 000DA748  41 82 00 10 */ beq lbl_800DD818
lbl_800DD80C:
/* 800DD80C 000DA74C  C0 02 93 D4 */ lfs f0, lbl_80452DD4-_SDA2_BASE_(r2)
/* 800DD810 000DA750  D0 1A 33 98 */ stfs f0, 0x3398(r26)
/* 800DD814 000DA754  48 00 00 50 */ b lbl_800DD864
lbl_800DD818:
/* 800DD818 000DA758  3C 60 80 39 */ lis r3, lbl_8038DF9C@ha
/* 800DD81C 000DA75C  38 63 DF 9C */ addi r3, r3, lbl_8038DF9C@l
/* 800DD820 000DA760  C0 03 00 6C */ lfs f0, 0x6c(r3)
/* 800DD824 000DA764  D0 1A 33 98 */ stfs f0, 0x3398(r26)
/* 800DD828 000DA768  48 00 00 3C */ b lbl_800DD864
lbl_800DD82C:
/* 800DD82C 000DA76C  7F 43 D3 78 */ mr r3, r26
/* 800DD830 000DA770  7F 64 DB 78 */ mr r4, r27
/* 800DD834 000DA774  4B FF A3 E1 */ bl daAlink_c_NS_checkLargeAttack
/* 800DD838 000DA778  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800DD83C 000DA77C  41 82 00 18 */ beq lbl_800DD854
/* 800DD840 000DA780  3C 60 80 39 */ lis r3, lbl_8038DF9C@ha
/* 800DD844 000DA784  38 63 DF 9C */ addi r3, r3, lbl_8038DF9C@l
/* 800DD848 000DA788  C0 03 00 68 */ lfs f0, 0x68(r3)
/* 800DD84C 000DA78C  D0 1A 33 98 */ stfs f0, 0x3398(r26)
/* 800DD850 000DA790  48 00 00 14 */ b lbl_800DD864
lbl_800DD854:
/* 800DD854 000DA794  3C 60 80 39 */ lis r3, lbl_8038DF9C@ha
/* 800DD858 000DA798  38 63 DF 9C */ addi r3, r3, lbl_8038DF9C@l
/* 800DD85C 000DA79C  C0 03 00 64 */ lfs f0, 0x64(r3)
/* 800DD860 000DA7A0  D0 1A 33 98 */ stfs f0, 0x3398(r26)
lbl_800DD864:
/* 800DD864 000DA7A4  38 00 00 60 */ li r0, 0x60
/* 800DD868 000DA7A8  98 1A 2F 9D */ stb r0, 0x2f9d(r26)
/* 800DD86C 000DA7AC  7F 43 D3 78 */ mr r3, r26
/* 800DD870 000DA7B0  38 80 00 01 */ li r4, 1
/* 800DD874 000DA7B4  48 04 39 4D */ bl daAlink_c_NS_setFootEffectProcType
/* 800DD878 000DA7B8  38 60 00 01 */ li r3, 1
lbl_800DD87C:
/* 800DD87C 000DA7BC  39 61 00 30 */ addi r11, r1, 0x30
/* 800DD880 000DA7C0  48 28 49 9D */ bl _restgpr_26
/* 800DD884 000DA7C4  80 01 00 34 */ lwz r0, 0x34(r1)
/* 800DD888 000DA7C8  7C 08 03 A6 */ mtlr r0
/* 800DD88C 000DA7CC  38 21 00 30 */ addi r1, r1, 0x30
/* 800DD890 000DA7D0  4E 80 00 20 */ blr