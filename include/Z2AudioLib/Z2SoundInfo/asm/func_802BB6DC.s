/* 802BB6DC 002B861C  94 21 FF B0 */ stwu r1, -0x50(r1)
/* 802BB6E0 002B8620  7C 08 02 A6 */ mflr r0
/* 802BB6E4 002B8624  90 01 00 54 */ stw r0, 0x54(r1)
/* 802BB6E8 002B8628  DB E1 00 40 */ stfd f31, 0x40(r1)
/* 802BB6EC 002B862C  F3 E1 00 48 */ psq_st f31, 72(r1), 0, 0
/* 802BB6F0 002B8630  39 61 00 40 */ addi r11, r1, 0x40
/* 802BB6F4 002B8634  48 0A 6A E1 */ bl _savegpr_27
/* 802BB6F8 002B8638  7C 7B 1B 78 */ mr r27, r3
/* 802BB6FC 002B863C  7C 9C 23 78 */ mr r28, r4
/* 802BB700 002B8640  7C BD 2B 79 */ or. r29, r5, r5
/* 802BB704 002B8644  41 82 00 08 */ beq lbl_802BB70C
/* 802BB708 002B8648  38 A5 00 10 */ addi r5, r5, 0x10
lbl_802BB70C:
/* 802BB70C 002B864C  80 1C 00 00 */ lwz r0, 0(r28)
/* 802BB710 002B8650  90 01 00 18 */ stw r0, 0x18(r1)
/* 802BB714 002B8654  7F 63 DB 78 */ mr r3, r27
/* 802BB718 002B8658  38 81 00 18 */ addi r4, r1, 0x18
/* 802BB71C 002B865C  48 00 04 2D */ bl Z2SoundInfo_NS_getSoundInfo_
/* 802BB720 002B8660  80 1C 00 00 */ lwz r0, 0(r28)
/* 802BB724 002B8664  90 01 00 14 */ stw r0, 0x14(r1)
/* 802BB728 002B8668  80 6D 85 D8 */ lwz r3, lbl_80450B58-_SDA_BASE_(r13)
/* 802BB72C 002B866C  38 81 00 14 */ addi r4, r1, 0x14
/* 802BB730 002B8670  4B FE BB 5D */ bl getData__13JAUSoundTableCF10JAISoundID
/* 802BB734 002B8674  7C 7F 1B 78 */ mr r31, r3
/* 802BB738 002B8678  80 1C 00 00 */ lwz r0, 0(r28)
/* 802BB73C 002B867C  90 01 00 10 */ stw r0, 0x10(r1)
/* 802BB740 002B8680  80 6D 85 D8 */ lwz r3, lbl_80450B58-_SDA_BASE_(r13)
/* 802BB744 002B8684  38 81 00 10 */ addi r4, r1, 0x10
/* 802BB748 002B8688  4B FE BA 19 */ bl getTypeID__13JAUSoundTableCF10JAISoundID
/* 802BB74C 002B868C  28 1F 00 00 */ cmplwi r31, 0
/* 802BB750 002B8690  41 82 01 44 */ beq lbl_802BB894
/* 802BB754 002B8694  54 60 06 3E */ clrlwi r0, r3, 0x18
/* 802BB758 002B8698  2C 00 00 51 */ cmpwi r0, 0x51
/* 802BB75C 002B869C  41 82 00 08 */ beq lbl_802BB764
/* 802BB760 002B86A0  48 00 01 34 */ b lbl_802BB894
lbl_802BB764:
/* 802BB764 002B86A4  3B DD 00 54 */ addi r30, r29, 0x54
/* 802BB768 002B86A8  C0 3D 00 54 */ lfs f1, 0x54(r29)
/* 802BB76C 002B86AC  C0 1F 00 08 */ lfs f0, 8(r31)
/* 802BB770 002B86B0  EC 01 00 32 */ fmuls f0, f1, f0
/* 802BB774 002B86B4  D0 1D 00 54 */ stfs f0, 0x54(r29)
/* 802BB778 002B86B8  80 1C 00 00 */ lwz r0, 0(r28)
/* 802BB77C 002B86BC  90 01 00 0C */ stw r0, 0xc(r1)
/* 802BB780 002B86C0  7F 63 DB 78 */ mr r3, r27
/* 802BB784 002B86C4  38 81 00 0C */ addi r4, r1, 0xc
/* 802BB788 002B86C8  48 00 03 41 */ bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BB78C 002B86CC  54 7F E7 3E */ rlwinm r31, r3, 0x1c, 0x1c, 0x1f
/* 802BB790 002B86D0  28 1F 00 08 */ cmplwi r31, 8
/* 802BB794 002B86D4  40 81 00 58 */ ble lbl_802BB7EC
/* 802BB798 002B86D8  4B FE E1 3D */ bl getRandom_0_1__6Z2CalcFv
/* 802BB79C 002B86DC  FF E0 08 90 */ fmr f31, f1
/* 802BB7A0 002B86E0  C8 22 C0 88 */ lfd f1, lbl_80455A88-_SDA2_BASE_(r2)
/* 802BB7A4 002B86E4  93 E1 00 24 */ stw r31, 0x24(r1)
/* 802BB7A8 002B86E8  3C 00 43 30 */ lis r0, 0x4330
/* 802BB7AC 002B86EC  90 01 00 20 */ stw r0, 0x20(r1)
/* 802BB7B0 002B86F0  C8 01 00 20 */ lfd f0, 0x20(r1)
/* 802BB7B4 002B86F4  EC 20 08 28 */ fsubs f1, f0, f1
/* 802BB7B8 002B86F8  C0 42 C0 68 */ lfs f2, lbl_80455A68-_SDA2_BASE_(r2)
/* 802BB7BC 002B86FC  C0 62 C0 6C */ lfs f3, lbl_80455A6C-_SDA2_BASE_(r2)
/* 802BB7C0 002B8700  C0 82 C0 70 */ lfs f4, lbl_80455A70-_SDA2_BASE_(r2)
/* 802BB7C4 002B8704  C0 A2 C0 74 */ lfs f5, lbl_80455A74-_SDA2_BASE_(r2)
/* 802BB7C8 002B8708  38 60 00 01 */ li r3, 1
/* 802BB7CC 002B870C  4B FE DE C1 */ bl linearTransform__6Z2CalcFfffffb
/* 802BB7D0 002B8710  C0 02 C0 78 */ lfs f0, lbl_80455A78-_SDA2_BASE_(r2)
/* 802BB7D4 002B8714  EC 01 00 24 */ fdivs f0, f1, f0
/* 802BB7D8 002B8718  EC 20 07 F2 */ fmuls f1, f0, f31
/* 802BB7DC 002B871C  C0 1E 00 00 */ lfs f0, 0(r30)
/* 802BB7E0 002B8720  EC 00 08 2A */ fadds f0, f0, f1
/* 802BB7E4 002B8724  D0 1E 00 00 */ stfs f0, 0(r30)
/* 802BB7E8 002B8728  48 00 00 38 */ b lbl_802BB820
lbl_802BB7EC:
/* 802BB7EC 002B872C  4B FE E0 E9 */ bl getRandom_0_1__6Z2CalcFv
/* 802BB7F0 002B8730  C8 42 C0 88 */ lfd f2, lbl_80455A88-_SDA2_BASE_(r2)
/* 802BB7F4 002B8734  93 E1 00 24 */ stw r31, 0x24(r1)
/* 802BB7F8 002B8738  3C 00 43 30 */ lis r0, 0x4330
/* 802BB7FC 002B873C  90 01 00 20 */ stw r0, 0x20(r1)
/* 802BB800 002B8740  C8 01 00 20 */ lfd f0, 0x20(r1)
/* 802BB804 002B8744  EC 40 10 28 */ fsubs f2, f0, f2
/* 802BB808 002B8748  C0 02 C0 78 */ lfs f0, lbl_80455A78-_SDA2_BASE_(r2)
/* 802BB80C 002B874C  EC 02 00 24 */ fdivs f0, f2, f0
/* 802BB810 002B8750  EC 20 00 72 */ fmuls f1, f0, f1
/* 802BB814 002B8754  C0 1E 00 00 */ lfs f0, 0(r30)
/* 802BB818 002B8758  EC 00 08 2A */ fadds f0, f0, f1
/* 802BB81C 002B875C  D0 1E 00 00 */ stfs f0, 0(r30)
lbl_802BB820:
/* 802BB820 002B8760  80 1C 00 00 */ lwz r0, 0(r28)
/* 802BB824 002B8764  90 01 00 08 */ stw r0, 8(r1)
/* 802BB828 002B8768  7F 63 DB 78 */ mr r3, r27
/* 802BB82C 002B876C  38 81 00 08 */ addi r4, r1, 8
/* 802BB830 002B8770  48 00 02 99 */ bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BB834 002B8774  54 7E 27 3F */ rlwinm. r30, r3, 4, 0x1c, 0x1f
/* 802BB838 002B8778  41 82 00 5C */ beq lbl_802BB894
/* 802BB83C 002B877C  4B FE E0 99 */ bl getRandom_0_1__6Z2CalcFv
/* 802BB840 002B8780  C8 42 C0 88 */ lfd f2, lbl_80455A88-_SDA2_BASE_(r2)
/* 802BB844 002B8784  93 C1 00 24 */ stw r30, 0x24(r1)
/* 802BB848 002B8788  3C 00 43 30 */ lis r0, 0x4330
/* 802BB84C 002B878C  90 01 00 20 */ stw r0, 0x20(r1)
/* 802BB850 002B8790  C8 01 00 20 */ lfd f0, 0x20(r1)
/* 802BB854 002B8794  EC 40 10 28 */ fsubs f2, f0, f2
/* 802BB858 002B8798  C0 02 C0 6C */ lfs f0, lbl_80455A6C-_SDA2_BASE_(r2)
/* 802BB85C 002B879C  EC 02 00 24 */ fdivs f0, f2, f0
/* 802BB860 002B87A0  EC 00 00 72 */ fmuls f0, f0, f1
/* 802BB864 002B87A4  C0 22 C0 7C */ lfs f1, lbl_80455A7C-_SDA2_BASE_(r2)
/* 802BB868 002B87A8  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 802BB86C 002B87AC  40 80 00 08 */ bge lbl_802BB874
/* 802BB870 002B87B0  48 00 00 18 */ b lbl_802BB888
lbl_802BB874:
/* 802BB874 002B87B4  C0 22 C0 80 */ lfs f1, lbl_80455A80-_SDA2_BASE_(r2)
/* 802BB878 002B87B8  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 802BB87C 002B87BC  40 81 00 08 */ ble lbl_802BB884
/* 802BB880 002B87C0  48 00 00 08 */ b lbl_802BB888
lbl_802BB884:
/* 802BB884 002B87C4  FC 20 00 90 */ fmr f1, f0
lbl_802BB888:
/* 802BB888 002B87C8  C0 1D 00 4C */ lfs f0, 0x4c(r29)
/* 802BB88C 002B87CC  EC 00 08 28 */ fsubs f0, f0, f1
/* 802BB890 002B87D0  D0 1D 00 4C */ stfs f0, 0x4c(r29)
lbl_802BB894:
/* 802BB894 002B87D4  E3 E1 00 48 */ psq_l f31, 72(r1), 0, 0
/* 802BB898 002B87D8  CB E1 00 40 */ lfd f31, 0x40(r1)
/* 802BB89C 002B87DC  39 61 00 40 */ addi r11, r1, 0x40
/* 802BB8A0 002B87E0  48 0A 69 81 */ bl _restgpr_27
/* 802BB8A4 002B87E4  80 01 00 54 */ lwz r0, 0x54(r1)
/* 802BB8A8 002B87E8  7C 08 03 A6 */ mtlr r0
/* 802BB8AC 002B87EC  38 21 00 50 */ addi r1, r1, 0x50
/* 802BB8B0 002B87F0  4E 80 00 20 */ blr