/* 8012B724 00128664  94 21 FE 90 */ stwu r1, -0x170(r1)
/* 8012B728 00128668  7C 08 02 A6 */ mflr r0
/* 8012B72C 0012866C  90 01 01 74 */ stw r0, 0x174(r1)
/* 8012B730 00128670  DB E1 01 60 */ stfd f31, 0x160(r1)
/* 8012B734 00128674  F3 E1 01 68 */ psq_st f31, 360(r1), 0, 0
/* 8012B738 00128678  DB C1 01 50 */ stfd f30, 0x150(r1)
/* 8012B73C 0012867C  F3 C1 01 58 */ psq_st f30, 344(r1), 0, 0
/* 8012B740 00128680  DB A1 01 40 */ stfd f29, 0x140(r1)
/* 8012B744 00128684  F3 A1 01 48 */ psq_st f29, 328(r1), 0, 0
/* 8012B748 00128688  DB 81 01 30 */ stfd f28, 0x130(r1)
/* 8012B74C 0012868C  F3 81 01 38 */ psq_st f28, 312(r1), 0, 0
/* 8012B750 00128690  DB 61 01 20 */ stfd f27, 0x120(r1)
/* 8012B754 00128694  F3 61 01 28 */ psq_st f27, 296(r1), 0, 0
/* 8012B758 00128698  DB 41 01 10 */ stfd f26, 0x110(r1)
/* 8012B75C 0012869C  F3 41 01 18 */ psq_st f26, 280(r1), 0, 0
/* 8012B760 001286A0  39 61 01 10 */ addi r11, r1, 0x110
/* 8012B764 001286A4  48 23 6A 3D */ bl func_803621A0
/* 8012B768 001286A8  7C 6F 1B 78 */ mr r15, r3
/* 8012B76C 001286AC  80 63 20 60 */ lwz r3, 0x2060(r3)
/* 8012B770 001286B0  88 03 00 00 */ lbz r0, 0(r3)
/* 8012B774 001286B4  28 00 00 00 */ cmplwi r0, 0
/* 8012B778 001286B8  41 82 07 E8 */ beq lbl_8012BF60
/* 8012B77C 001286BC  80 0F 06 50 */ lwz r0, 0x650(r15)
/* 8012B780 001286C0  90 01 00 C4 */ stw r0, 0xc4(r1)
/* 8012B784 001286C4  80 0F 31 A0 */ lwz r0, 0x31a0(r15)
/* 8012B788 001286C8  54 1B 07 FE */ clrlwi r27, r0, 0x1f
/* 8012B78C 001286CC  80 61 00 C4 */ lwz r3, 0xc4(r1)
/* 8012B790 001286D0  80 63 00 84 */ lwz r3, 0x84(r3)
/* 8012B794 001286D4  80 63 00 0C */ lwz r3, 0xc(r3)
/* 8012B798 001286D8  38 63 03 90 */ addi r3, r3, 0x390
/* 8012B79C 001286DC  3C 80 80 39 */ lis r4, lbl_80391E18@ha
/* 8012B7A0 001286E0  38 84 1E 18 */ addi r4, r4, lbl_80391E18@l
/* 8012B7A4 001286E4  38 A1 00 90 */ addi r5, r1, 0x90
/* 8012B7A8 001286E8  48 21 B5 C5 */ bl PSMTXMultVec
/* 8012B7AC 001286EC  80 6F 06 50 */ lwz r3, 0x650(r15)
/* 8012B7B0 001286F0  80 63 00 84 */ lwz r3, 0x84(r3)
/* 8012B7B4 001286F4  80 63 00 0C */ lwz r3, 0xc(r3)
/* 8012B7B8 001286F8  38 63 04 80 */ addi r3, r3, 0x480
/* 8012B7BC 001286FC  3C 80 80 39 */ lis r4, lbl_80391E18@ha
/* 8012B7C0 00128700  38 84 1E 18 */ addi r4, r4, lbl_80391E18@l
/* 8012B7C4 00128704  38 A1 00 9C */ addi r5, r1, 0x9c
/* 8012B7C8 00128708  48 21 B5 A5 */ bl PSMTXMultVec
/* 8012B7CC 0012870C  80 6F 06 50 */ lwz r3, 0x650(r15)
/* 8012B7D0 00128710  80 63 00 84 */ lwz r3, 0x84(r3)
/* 8012B7D4 00128714  80 63 00 0C */ lwz r3, 0xc(r3)
/* 8012B7D8 00128718  38 63 05 D0 */ addi r3, r3, 0x5d0
/* 8012B7DC 0012871C  3C 80 80 39 */ lis r4, lbl_80391E18@ha
/* 8012B7E0 00128720  38 84 1E 18 */ addi r4, r4, lbl_80391E18@l
/* 8012B7E4 00128724  38 A1 00 A8 */ addi r5, r1, 0xa8
/* 8012B7E8 00128728  48 21 B5 85 */ bl PSMTXMultVec
/* 8012B7EC 0012872C  80 6F 06 50 */ lwz r3, 0x650(r15)
/* 8012B7F0 00128730  80 63 00 84 */ lwz r3, 0x84(r3)
/* 8012B7F4 00128734  80 63 00 0C */ lwz r3, 0xc(r3)
/* 8012B7F8 00128738  38 63 06 C0 */ addi r3, r3, 0x6c0
/* 8012B7FC 0012873C  3C 80 80 39 */ lis r4, lbl_80391E18@ha
/* 8012B800 00128740  38 84 1E 18 */ addi r4, r4, lbl_80391E18@l
/* 8012B804 00128744  38 A1 00 B4 */ addi r5, r1, 0xb4
/* 8012B808 00128748  48 21 B5 65 */ bl PSMTXMultVec
/* 8012B80C 0012874C  38 A0 00 00 */ li r5, 0
/* 8012B810 00128750  80 0F 19 9C */ lwz r0, 0x199c(r15)
/* 8012B814 00128754  54 06 06 B5 */ rlwinm. r6, r0, 0, 0x1a, 0x1a
/* 8012B818 00128758  41 82 00 18 */ beq lbl_8012B830
/* 8012B81C 0012875C  80 8F 31 A0 */ lwz r4, 0x31a0(r15)
/* 8012B820 00128760  3C 60 00 08 */ lis r3, 0x00078C52@ha
/* 8012B824 00128764  38 03 8C 52 */ addi r0, r3, 0x00078C52@l
/* 8012B828 00128768  7C 80 00 39 */ and. r0, r4, r0
/* 8012B82C 0012876C  41 82 00 08 */ beq lbl_8012B834
lbl_8012B830:
/* 8012B830 00128770  38 A0 00 01 */ li r5, 1
lbl_8012B834:
/* 8012B834 00128774  54 A0 06 3F */ clrlwi. r0, r5, 0x18
/* 8012B838 00128778  90 01 00 C0 */ stw r0, 0xc0(r1)
/* 8012B83C 0012877C  38 60 00 00 */ li r3, 0
/* 8012B840 00128780  40 82 00 1C */ bne lbl_8012B85C
/* 8012B844 00128784  28 06 00 00 */ cmplwi r6, 0
/* 8012B848 00128788  41 82 00 18 */ beq lbl_8012B860
/* 8012B84C 0012878C  C0 2F 2B A8 */ lfs f1, 0x2ba8(r15)
/* 8012B850 00128790  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8012B854 00128794  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8012B858 00128798  40 80 00 08 */ bge lbl_8012B860
lbl_8012B85C:
/* 8012B85C 0012879C  38 60 00 01 */ li r3, 1
lbl_8012B860:
/* 8012B860 001287A0  54 71 06 3E */ clrlwi r17, r3, 0x18
/* 8012B864 001287A4  3A C1 00 68 */ addi r22, r1, 0x68
/* 8012B868 001287A8  3A E1 00 90 */ addi r23, r1, 0x90
/* 8012B86C 001287AC  A8 0F 2F F0 */ lha r0, 0x2ff0(r15)
/* 8012B870 001287B0  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 8012B874 001287B4  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 8012B878 001287B8  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 8012B87C 001287BC  7C 03 04 2E */ lfsx f0, r3, r0
/* 8012B880 001287C0  FC 00 02 10 */ fabs f0, f0
/* 8012B884 001287C4  FC 20 00 18 */ frsp f1, f0
/* 8012B888 001287C8  C0 02 93 00 */ lfs f0, lbl_80452D00-_SDA2_BASE_(r2)
/* 8012B88C 001287CC  EF C0 00 72 */ fmuls f30, f0, f1
/* 8012B890 001287D0  C0 02 92 E0 */ lfs f0, lbl_80452CE0-_SDA2_BASE_(r2)
/* 8012B894 001287D4  EF A0 F0 2A */ fadds f29, f0, f30
/* 8012B898 001287D8  FF 80 E8 50 */ fneg f28, f29
/* 8012B89C 001287DC  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 8012B8A0 001287E0  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 8012B8A4 001287E4  A8 0F 04 E4 */ lha r0, 0x4e4(r15)
/* 8012B8A8 001287E8  7C 00 00 D0 */ neg r0, r0
/* 8012B8AC 001287EC  7C 04 07 34 */ extsh r4, r0
/* 8012B8B0 001287F0  4B EE 0A 95 */ bl mDoMtx_XrotS
/* 8012B8B4 001287F4  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 8012B8B8 001287F8  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 8012B8BC 001287FC  A8 0F 04 E6 */ lha r0, 0x4e6(r15)
/* 8012B8C0 00128800  7C 00 00 D0 */ neg r0, r0
/* 8012B8C4 00128804  7C 04 07 34 */ extsh r4, r0
/* 8012B8C8 00128808  4B EE 0B 6D */ bl mDoMtx_YrotM
/* 8012B8CC 0012880C  3A 60 00 00 */ li r19, 0
/* 8012B8D0 00128810  3B 00 00 00 */ li r24, 0
/* 8012B8D4 00128814  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8012B8D8 00128818  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8012B8DC 0012881C  3A A3 0F 38 */ addi r21, r3, 0xf38
/* 8012B8E0 00128820  C3 E2 93 00 */ lfs f31, lbl_80452D00-_SDA2_BASE_(r2)
/* 8012B8E4 00128824  C3 62 93 A4 */ lfs f27, lbl_80452DA4-_SDA2_BASE_(r2)
lbl_8012B8E8:
/* 8012B8E8 00128828  2C 13 00 00 */ cmpwi r19, 0
/* 8012B8EC 0012882C  40 82 00 0C */ bne lbl_8012B8F8
/* 8012B8F0 00128830  3A 8F 29 04 */ addi r20, r15, 0x2904
/* 8012B8F4 00128834  48 00 00 08 */ b lbl_8012B8FC
lbl_8012B8F8:
/* 8012B8F8 00128838  3A 8F 2A 4C */ addi r20, r15, 0x2a4c
lbl_8012B8FC:
/* 8012B8FC 0012883C  3A 40 00 00 */ li r18, 0
/* 8012B900 00128840  3B 20 00 00 */ li r25, 0
/* 8012B904 00128844  39 C1 00 08 */ addi r14, r1, 8
/* 8012B908 00128848  7D CE C2 14 */ add r14, r14, r24
lbl_8012B90C:
/* 8012B90C 0012884C  2C 11 00 00 */ cmpwi r17, 0
/* 8012B910 00128850  41 82 00 10 */ beq lbl_8012B920
/* 8012B914 00128854  38 00 00 0F */ li r0, 0xf
/* 8012B918 00128858  98 14 00 01 */ stb r0, 1(r20)
/* 8012B91C 0012885C  48 00 00 A0 */ b lbl_8012B9BC
lbl_8012B920:
/* 8012B920 00128860  38 61 00 44 */ addi r3, r1, 0x44
/* 8012B924 00128864  7E E4 BB 78 */ mr r4, r23
/* 8012B928 00128868  38 B4 00 08 */ addi r5, r20, 8
/* 8012B92C 0012886C  48 13 B2 09 */ bl __mi__4cXyzCFRC3Vec
/* 8012B930 00128870  C0 41 00 44 */ lfs f2, 0x44(r1)
/* 8012B934 00128874  D0 41 00 78 */ stfs f2, 0x78(r1)
/* 8012B938 00128878  C0 01 00 48 */ lfs f0, 0x48(r1)
/* 8012B93C 0012887C  D0 01 00 7C */ stfs f0, 0x7c(r1)
/* 8012B940 00128880  C0 21 00 4C */ lfs f1, 0x4c(r1)
/* 8012B944 00128884  D0 21 00 80 */ stfs f1, 0x80(r1)
/* 8012B948 00128888  D0 41 00 20 */ stfs f2, 0x20(r1)
/* 8012B94C 0012888C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8012B950 00128890  D0 01 00 24 */ stfs f0, 0x24(r1)
/* 8012B954 00128894  D0 21 00 28 */ stfs f1, 0x28(r1)
/* 8012B958 00128898  38 61 00 20 */ addi r3, r1, 0x20
/* 8012B95C 0012889C  48 21 B7 DD */ bl PSVECSquareMag
/* 8012B960 001288A0  C0 02 93 50 */ lfs f0, lbl_80452D50-_SDA2_BASE_(r2)
/* 8012B964 001288A4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8012B968 001288A8  40 80 00 4C */ bge lbl_8012B9B4
/* 8012B96C 001288AC  28 1B 00 00 */ cmplwi r27, 0
/* 8012B970 001288B0  41 82 00 44 */ beq lbl_8012B9B4
/* 8012B974 001288B4  88 14 00 00 */ lbz r0, 0(r20)
/* 8012B978 001288B8  28 00 00 00 */ cmplwi r0, 0
/* 8012B97C 001288BC  41 82 00 38 */ beq lbl_8012B9B4
/* 8012B980 001288C0  88 74 00 01 */ lbz r3, 1(r20)
/* 8012B984 001288C4  28 03 00 00 */ cmplwi r3, 0
/* 8012B988 001288C8  41 82 00 10 */ beq lbl_8012B998
/* 8012B98C 001288CC  38 03 FF FF */ addi r0, r3, -1
/* 8012B990 001288D0  98 14 00 01 */ stb r0, 1(r20)
/* 8012B994 001288D4  48 00 00 28 */ b lbl_8012B9BC
lbl_8012B998:
/* 8012B998 001288D8  C0 14 00 08 */ lfs f0, 8(r20)
/* 8012B99C 001288DC  D0 17 00 00 */ stfs f0, 0(r23)
/* 8012B9A0 001288E0  C0 14 00 0C */ lfs f0, 0xc(r20)
/* 8012B9A4 001288E4  D0 17 00 04 */ stfs f0, 4(r23)
/* 8012B9A8 001288E8  C0 14 00 10 */ lfs f0, 0x10(r20)
/* 8012B9AC 001288EC  D0 17 00 08 */ stfs f0, 8(r23)
/* 8012B9B0 001288F0  48 00 00 0C */ b lbl_8012B9BC
lbl_8012B9B4:
/* 8012B9B4 001288F4  38 00 00 0F */ li r0, 0xf
/* 8012B9B8 001288F8  98 14 00 01 */ stb r0, 1(r20)
lbl_8012B9BC:
/* 8012B9BC 001288FC  C0 17 00 00 */ lfs f0, 0(r23)
/* 8012B9C0 00128900  D0 14 00 08 */ stfs f0, 8(r20)
/* 8012B9C4 00128904  C0 17 00 04 */ lfs f0, 4(r23)
/* 8012B9C8 00128908  D0 14 00 0C */ stfs f0, 0xc(r20)
/* 8012B9CC 0012890C  C0 17 00 08 */ lfs f0, 8(r23)
/* 8012B9D0 00128910  D0 14 00 10 */ stfs f0, 0x10(r20)
/* 8012B9D4 00128914  C0 57 00 08 */ lfs f2, 8(r23)
/* 8012B9D8 00128918  C0 2F 04 D4 */ lfs f1, 0x4d4(r15)
/* 8012B9DC 0012891C  C0 0D 81 10 */ lfs f0, lbl_80450690-_SDA_BASE_(r13)
/* 8012B9E0 00128920  EC 01 00 2A */ fadds f0, f1, f0
/* 8012B9E4 00128924  EC 1F 00 2A */ fadds f0, f31, f0
/* 8012B9E8 00128928  EC 3E 00 2A */ fadds f1, f30, f0
/* 8012B9EC 0012892C  C0 17 00 00 */ lfs f0, 0(r23)
/* 8012B9F0 00128930  D0 01 00 84 */ stfs f0, 0x84(r1)
/* 8012B9F4 00128934  D0 21 00 88 */ stfs f1, 0x88(r1)
/* 8012B9F8 00128938  D0 41 00 8C */ stfs f2, 0x8c(r1)
/* 8012B9FC 0012893C  38 6F 1D 08 */ addi r3, r15, 0x1d08
/* 8012BA00 00128940  38 81 00 84 */ addi r4, r1, 0x84
/* 8012BA04 00128944  48 13 C3 25 */ bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8012BA08 00128948  7E A3 AB 78 */ mr r3, r21
/* 8012BA0C 0012894C  38 8F 1D 08 */ addi r4, r15, 0x1d08
/* 8012BA10 00128950  4B F4 8A 91 */ bl cBgS_NS_GroundCross
/* 8012BA14 00128954  FF 40 08 90 */ fmr f26, f1
/* 8012BA18 00128958  C0 17 00 04 */ lfs f0, 4(r23)
/* 8012BA1C 0012895C  EC 00 D0 28 */ fsubs f0, f0, f26
/* 8012BA20 00128960  FC 1B D0 00 */ fcmpu cr0, f27, f26
/* 8012BA24 00128964  41 82 00 88 */ beq lbl_8012BAAC
/* 8012BA28 00128968  FC 00 E8 40 */ fcmpo cr0, f0, f29
/* 8012BA2C 0012896C  40 80 00 80 */ bge lbl_8012BAAC
/* 8012BA30 00128970  FC 00 E0 40 */ fcmpo cr0, f0, f28
/* 8012BA34 00128974  40 81 00 78 */ ble lbl_8012BAAC
/* 8012BA38 00128978  D3 56 00 00 */ stfs f26, 0(r22)
/* 8012BA3C 0012897C  38 00 00 01 */ li r0, 1
/* 8012BA40 00128980  98 14 00 00 */ stb r0, 0(r20)
/* 8012BA44 00128984  7D E3 7B 78 */ mr r3, r15
/* 8012BA48 00128988  38 8F 1D 1C */ addi r4, r15, 0x1d1c
/* 8012BA4C 0012898C  A8 AF 04 E6 */ lha r5, 0x4e6(r15)
/* 8012BA50 00128990  4B F8 46 49 */ bl daAlink_c_NS_getGroundAngle
/* 8012BA54 00128994  7C 6E CB 2E */ sthx r3, r14, r25
/* 8012BA58 00128998  C0 37 00 08 */ lfs f1, 8(r23)
/* 8012BA5C 0012899C  C0 0F 04 D8 */ lfs f0, 0x4d8(r15)
/* 8012BA60 001289A0  EC 61 00 28 */ fsubs f3, f1, f0
/* 8012BA64 001289A4  C0 0F 04 D4 */ lfs f0, 0x4d4(r15)
/* 8012BA68 001289A8  EC 5A 00 28 */ fsubs f2, f26, f0
/* 8012BA6C 001289AC  C0 37 00 00 */ lfs f1, 0(r23)
/* 8012BA70 001289B0  C0 0F 04 D0 */ lfs f0, 0x4d0(r15)
/* 8012BA74 001289B4  EC 01 00 28 */ fsubs f0, f1, f0
/* 8012BA78 001289B8  D0 01 00 84 */ stfs f0, 0x84(r1)
/* 8012BA7C 001289BC  D0 41 00 88 */ stfs f2, 0x88(r1)
/* 8012BA80 001289C0  D0 61 00 8C */ stfs f3, 0x8c(r1)
/* 8012BA84 001289C4  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 8012BA88 001289C8  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 8012BA8C 001289CC  38 81 00 84 */ addi r4, r1, 0x84
/* 8012BA90 001289D0  38 A1 00 78 */ addi r5, r1, 0x78
/* 8012BA94 001289D4  48 21 B2 D9 */ bl PSMTXMultVec
/* 8012BA98 001289D8  C0 21 00 7C */ lfs f1, 0x7c(r1)
/* 8012BA9C 001289DC  C0 0F 04 D4 */ lfs f0, 0x4d4(r15)
/* 8012BAA0 001289E0  EC 01 00 2A */ fadds f0, f1, f0
/* 8012BAA4 001289E4  D0 16 00 00 */ stfs f0, 0(r22)
/* 8012BAA8 001289E8  48 00 00 14 */ b lbl_8012BABC
lbl_8012BAAC:
/* 8012BAAC 001289EC  C0 0F 04 D4 */ lfs f0, 0x4d4(r15)
/* 8012BAB0 001289F0  D0 16 00 00 */ stfs f0, 0(r22)
/* 8012BAB4 001289F4  38 00 00 00 */ li r0, 0
/* 8012BAB8 001289F8  98 14 00 00 */ stb r0, 0(r20)
lbl_8012BABC:
/* 8012BABC 001289FC  3A 52 00 01 */ addi r18, r18, 1
/* 8012BAC0 00128A00  2C 12 00 02 */ cmpwi r18, 2
/* 8012BAC4 00128A04  3B 39 00 02 */ addi r25, r25, 2
/* 8012BAC8 00128A08  3A 94 00 A4 */ addi r20, r20, 0xa4
/* 8012BACC 00128A0C  3A D6 00 04 */ addi r22, r22, 4
/* 8012BAD0 00128A10  3A F7 00 0C */ addi r23, r23, 0xc
/* 8012BAD4 00128A14  41 80 FE 38 */ blt lbl_8012B90C
/* 8012BAD8 00128A18  3A 73 00 01 */ addi r19, r19, 1
/* 8012BADC 00128A1C  2C 13 00 02 */ cmpwi r19, 2
/* 8012BAE0 00128A20  3B 18 00 04 */ addi r24, r24, 4
/* 8012BAE4 00128A24  41 80 FE 04 */ blt lbl_8012B8E8
/* 8012BAE8 00128A28  2C 11 00 00 */ cmpwi r17, 0
/* 8012BAEC 00128A2C  40 82 00 10 */ bne lbl_8012BAFC
/* 8012BAF0 00128A30  38 00 00 02 */ li r0, 2
/* 8012BAF4 00128A34  7C 09 03 A6 */ mtctr r0
lbl_8012BAF8:
/* 8012BAF8 00128A38  42 00 00 00 */ bdnz lbl_8012BAF8
lbl_8012BAFC:
/* 8012BAFC 00128A3C  7D E3 7B 78 */ mr r3, r15
/* 8012BB00 00128A40  4B F8 60 AD */ bl daAlink_c_NS_setSandShapeOffset
/* 8012BB04 00128A44  7D E3 7B 78 */ mr r3, r15
/* 8012BB08 00128A48  38 8F 2B A8 */ addi r4, r15, 0x2ba8
/* 8012BB0C 00128A4C  C0 2F 2B A8 */ lfs f1, 0x2ba8(r15)
/* 8012BB10 00128A50  4B F7 71 15 */ bl daAlink_c_NS_setMatrixOffset
/* 8012BB14 00128A54  7D E3 7B 78 */ mr r3, r15
/* 8012BB18 00128A58  4B F8 5C 15 */ bl daAlink_c_NS_setSandDownBgCheckWallH
/* 8012BB1C 00128A5C  7D E3 7B 78 */ mr r3, r15
/* 8012BB20 00128A60  38 8F 2B 94 */ addi r4, r15, 0x2b94
/* 8012BB24 00128A64  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8012BB28 00128A68  4B F7 70 FD */ bl daAlink_c_NS_setMatrixOffset
/* 8012BB2C 00128A6C  3A 80 00 00 */ li r20, 0
/* 8012BB30 00128A70  3B E0 00 00 */ li r31, 0
/* 8012BB34 00128A74  3B C0 00 00 */ li r30, 0
lbl_8012BB38:
/* 8012BB38 00128A78  2C 14 00 00 */ cmpwi r20, 0
/* 8012BB3C 00128A7C  40 82 00 0C */ bne lbl_8012BB48
/* 8012BB40 00128A80  3A 6F 29 04 */ addi r19, r15, 0x2904
/* 8012BB44 00128A84  48 00 00 08 */ b lbl_8012BB4C
lbl_8012BB48:
/* 8012BB48 00128A88  3A 6F 2A 4C */ addi r19, r15, 0x2a4c
lbl_8012BB4C:
/* 8012BB4C 00128A8C  3A 40 00 00 */ li r18, 0
/* 8012BB50 00128A90  3B A0 00 00 */ li r29, 0
/* 8012BB54 00128A94  3B 80 00 00 */ li r28, 0
/* 8012BB58 00128A98  3B 41 00 18 */ addi r26, r1, 0x18
/* 8012BB5C 00128A9C  7F 5A F2 14 */ add r26, r26, r30
/* 8012BB60 00128AA0  3B 21 00 10 */ addi r25, r1, 0x10
/* 8012BB64 00128AA4  7F 39 F2 14 */ add r25, r25, r30
/* 8012BB68 00128AA8  3B 01 00 68 */ addi r24, r1, 0x68
/* 8012BB6C 00128AAC  7F 18 FA 14 */ add r24, r24, r31
/* 8012BB70 00128AB0  3A E1 00 08 */ addi r23, r1, 8
/* 8012BB74 00128AB4  7E F7 F2 14 */ add r23, r23, r30
lbl_8012BB78:
/* 8012BB78 00128AB8  2C 11 00 00 */ cmpwi r17, 0
/* 8012BB7C 00128ABC  40 82 00 20 */ bne lbl_8012BB9C
/* 8012BB80 00128AC0  2C 14 00 00 */ cmpwi r20, 0
/* 8012BB84 00128AC4  40 82 00 28 */ bne lbl_8012BBAC
/* 8012BB88 00128AC8  7D E3 7B 78 */ mr r3, r15
/* 8012BB8C 00128ACC  38 80 00 72 */ li r4, 0x72
/* 8012BB90 00128AD0  4B FF CC 7D */ bl daAlink_c_NS_checkUnderMove0BckNoArcWolf
/* 8012BB94 00128AD4  2C 03 00 00 */ cmpwi r3, 0
/* 8012BB98 00128AD8  41 82 00 14 */ beq lbl_8012BBAC
lbl_8012BB9C:
/* 8012BB9C 00128ADC  38 00 00 00 */ li r0, 0
/* 8012BBA0 00128AE0  7C 1A E3 2E */ sthx r0, r26, r28
/* 8012BBA4 00128AE4  7C 19 E3 2E */ sthx r0, r25, r28
/* 8012BBA8 00128AE8  48 00 00 80 */ b lbl_8012BC28
lbl_8012BBAC:
/* 8012BBAC 00128AEC  7C 38 EC 2E */ lfsx f1, r24, r29
/* 8012BBB0 00128AF0  80 61 00 C4 */ lwz r3, 0xc4(r1)
/* 8012BBB4 00128AF4  C0 03 00 40 */ lfs f0, 0x40(r3)
/* 8012BBB8 00128AF8  EC 21 00 28 */ fsubs f1, f1, f0
/* 8012BBBC 00128AFC  C0 02 93 BC */ lfs f0, lbl_80452DBC-_SDA2_BASE_(r2)
/* 8012BBC0 00128B00  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8012BBC4 00128B04  4C 41 13 82 */ cror 2, 1, 2
/* 8012BBC8 00128B08  40 82 00 08 */ bne lbl_8012BBD0
/* 8012BBCC 00128B0C  FC 20 00 90 */ fmr f1, f0
lbl_8012BBD0:
/* 8012BBD0 00128B10  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8012BBD4 00128B14  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8012BBD8 00128B18  41 81 00 0C */ bgt lbl_8012BBE4
/* 8012BBDC 00128B1C  28 1B 00 00 */ cmplwi r27, 0
/* 8012BBE0 00128B20  41 82 00 3C */ beq lbl_8012BC1C
lbl_8012BBE4:
/* 8012BBE4 00128B24  7D E3 7B 78 */ mr r3, r15
/* 8012BBE8 00128B28  7E 64 9B 78 */ mr r4, r19
/* 8012BBEC 00128B2C  7D DA E2 14 */ add r14, r26, r28
/* 8012BBF0 00128B30  7D C5 73 78 */ mr r5, r14
/* 8012BBF4 00128B34  7E D9 E2 14 */ add r22, r25, r28
/* 8012BBF8 00128B38  7E C6 B3 78 */ mr r6, r22
/* 8012BBFC 00128B3C  38 E0 00 01 */ li r7, 1
/* 8012BC00 00128B40  4B F7 70 E1 */ bl daAlink_c_NS_setLegAngle
/* 8012BC04 00128B44  2C 03 00 00 */ cmpwi r3, 0
/* 8012BC08 00128B48  40 82 00 20 */ bne lbl_8012BC28
/* 8012BC0C 00128B4C  38 00 00 00 */ li r0, 0
/* 8012BC10 00128B50  B0 0E 00 00 */ sth r0, 0(r14)
/* 8012BC14 00128B54  B0 16 00 00 */ sth r0, 0(r22)
/* 8012BC18 00128B58  48 00 00 10 */ b lbl_8012BC28
lbl_8012BC1C:
/* 8012BC1C 00128B5C  38 00 00 00 */ li r0, 0
/* 8012BC20 00128B60  7C 1A E3 2E */ sthx r0, r26, r28
/* 8012BC24 00128B64  7C 19 E3 2E */ sthx r0, r25, r28
lbl_8012BC28:
/* 8012BC28 00128B68  38 73 00 06 */ addi r3, r19, 6
/* 8012BC2C 00128B6C  7C 9A E2 AE */ lhax r4, r26, r28
/* 8012BC30 00128B70  38 A0 00 02 */ li r5, 2
/* 8012BC34 00128B74  38 C0 18 00 */ li r6, 0x1800
/* 8012BC38 00128B78  38 E0 00 10 */ li r7, 0x10
/* 8012BC3C 00128B7C  48 14 49 05 */ bl cLib_addCalcAngleS__FPsssss
/* 8012BC40 00128B80  38 73 00 04 */ addi r3, r19, 4
/* 8012BC44 00128B84  7C 99 E2 AE */ lhax r4, r25, r28
/* 8012BC48 00128B88  38 A0 00 02 */ li r5, 2
/* 8012BC4C 00128B8C  38 C0 18 00 */ li r6, 0x1800
/* 8012BC50 00128B90  38 E0 00 10 */ li r7, 0x10
/* 8012BC54 00128B94  48 14 48 ED */ bl cLib_addCalcAngleS__FPsssss
/* 8012BC58 00128B98  A0 0F 2F E8 */ lhz r0, 0x2fe8(r15)
/* 8012BC5C 00128B9C  28 00 01 0E */ cmplwi r0, 0x10e
/* 8012BC60 00128BA0  40 82 00 0C */ bne lbl_8012BC6C
/* 8012BC64 00128BA4  A8 8F 04 E4 */ lha r4, 0x4e4(r15)
/* 8012BC68 00128BA8  48 00 00 10 */ b lbl_8012BC78
lbl_8012BC6C:
/* 8012BC6C 00128BAC  A8 0F 04 E4 */ lha r0, 0x4e4(r15)
/* 8012BC70 00128BB0  7C 00 00 D0 */ neg r0, r0
/* 8012BC74 00128BB4  7C 04 07 34 */ extsh r4, r0
lbl_8012BC78:
/* 8012BC78 00128BB8  2C 11 00 00 */ cmpwi r17, 0
/* 8012BC7C 00128BBC  40 82 00 2C */ bne lbl_8012BCA8
/* 8012BC80 00128BC0  88 13 00 00 */ lbz r0, 0(r19)
/* 8012BC84 00128BC4  28 00 00 00 */ cmplwi r0, 0
/* 8012BC88 00128BC8  41 82 00 20 */ beq lbl_8012BCA8
/* 8012BC8C 00128BCC  80 0F 31 74 */ lwz r0, 0x3174(r15)
/* 8012BC90 00128BD0  2C 00 00 08 */ cmpwi r0, 8
/* 8012BC94 00128BD4  41 82 00 14 */ beq lbl_8012BCA8
/* 8012BC98 00128BD8  28 1B 00 00 */ cmplwi r27, 0
/* 8012BC9C 00128BDC  41 82 00 0C */ beq lbl_8012BCA8
/* 8012BCA0 00128BE0  7C 17 E2 AE */ lhax r0, r23, r28
/* 8012BCA4 00128BE4  7C 84 02 14 */ add r4, r4, r0
lbl_8012BCA8:
/* 8012BCA8 00128BE8  38 73 00 02 */ addi r3, r19, 2
/* 8012BCAC 00128BEC  38 A0 00 02 */ li r5, 2
/* 8012BCB0 00128BF0  38 C0 18 00 */ li r6, 0x1800
/* 8012BCB4 00128BF4  38 E0 00 10 */ li r7, 0x10
/* 8012BCB8 00128BF8  48 14 48 89 */ bl cLib_addCalcAngleS__FPsssss
/* 8012BCBC 00128BFC  3A 52 00 01 */ addi r18, r18, 1
/* 8012BCC0 00128C00  2C 12 00 02 */ cmpwi r18, 2
/* 8012BCC4 00128C04  3B BD 00 04 */ addi r29, r29, 4
/* 8012BCC8 00128C08  3B 9C 00 02 */ addi r28, r28, 2
/* 8012BCCC 00128C0C  3A 73 00 A4 */ addi r19, r19, 0xa4
/* 8012BCD0 00128C10  41 80 FE A8 */ blt lbl_8012BB78
/* 8012BCD4 00128C14  3A 94 00 01 */ addi r20, r20, 1
/* 8012BCD8 00128C18  2C 14 00 02 */ cmpwi r20, 2
/* 8012BCDC 00128C1C  3B FF 00 08 */ addi r31, r31, 8
/* 8012BCE0 00128C20  3B DE 00 04 */ addi r30, r30, 4
/* 8012BCE4 00128C24  41 80 FE 54 */ blt lbl_8012BB38
/* 8012BCE8 00128C28  80 01 00 C0 */ lwz r0, 0xc0(r1)
/* 8012BCEC 00128C2C  2C 00 00 00 */ cmpwi r0, 0
/* 8012BCF0 00128C30  40 82 01 C8 */ bne lbl_8012BEB8
/* 8012BCF4 00128C34  38 6F 04 D0 */ addi r3, r15, 0x4d0
/* 8012BCF8 00128C38  4B EE 10 6D */ bl mDoMtx_stack_c_NS_transS
/* 8012BCFC 00128C3C  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 8012BD00 00128C40  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 8012BD04 00128C44  A8 8F 04 E6 */ lha r4, 0x4e6(r15)
/* 8012BD08 00128C48  A8 0F 30 8C */ lha r0, 0x308c(r15)
/* 8012BD0C 00128C4C  7C 04 02 14 */ add r0, r4, r0
/* 8012BD10 00128C50  7C 04 07 34 */ extsh r4, r0
/* 8012BD14 00128C54  4B EE 07 21 */ bl mDoMtx_YrotM
/* 8012BD18 00128C58  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 8012BD1C 00128C5C  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 8012BD20 00128C60  3C 80 80 39 */ lis r4, lbl_80391E24@ha
/* 8012BD24 00128C64  38 84 1E 24 */ addi r4, r4, lbl_80391E24@l
/* 8012BD28 00128C68  38 A1 00 5C */ addi r5, r1, 0x5c
/* 8012BD2C 00128C6C  48 21 B0 41 */ bl PSMTXMultVec
/* 8012BD30 00128C70  38 61 00 38 */ addi r3, r1, 0x38
/* 8012BD34 00128C74  38 8F 04 D0 */ addi r4, r15, 0x4d0
/* 8012BD38 00128C78  C0 22 93 14 */ lfs f1, lbl_80452D14-_SDA2_BASE_(r2)
/* 8012BD3C 00128C7C  48 13 AE 49 */ bl __ml__4cXyzCFf
/* 8012BD40 00128C80  38 61 00 2C */ addi r3, r1, 0x2c
/* 8012BD44 00128C84  38 81 00 38 */ addi r4, r1, 0x38
/* 8012BD48 00128C88  38 A1 00 5C */ addi r5, r1, 0x5c
/* 8012BD4C 00128C8C  48 13 AD E9 */ bl __mi__4cXyzCFRC3Vec
/* 8012BD50 00128C90  C0 01 00 2C */ lfs f0, 0x2c(r1)
/* 8012BD54 00128C94  D0 01 00 50 */ stfs f0, 0x50(r1)
/* 8012BD58 00128C98  C0 41 00 30 */ lfs f2, 0x30(r1)
/* 8012BD5C 00128C9C  D0 41 00 54 */ stfs f2, 0x54(r1)
/* 8012BD60 00128CA0  C0 01 00 34 */ lfs f0, 0x34(r1)
/* 8012BD64 00128CA4  D0 01 00 58 */ stfs f0, 0x58(r1)
/* 8012BD68 00128CA8  C0 01 00 60 */ lfs f0, 0x60(r1)
/* 8012BD6C 00128CAC  C0 22 97 54 */ lfs f1, lbl_80453154-_SDA2_BASE_(r2)
/* 8012BD70 00128CB0  EC 00 08 2A */ fadds f0, f0, f1
/* 8012BD74 00128CB4  D0 01 00 60 */ stfs f0, 0x60(r1)
/* 8012BD78 00128CB8  EC 02 08 2A */ fadds f0, f2, f1
/* 8012BD7C 00128CBC  D0 01 00 54 */ stfs f0, 0x54(r1)
/* 8012BD80 00128CC0  38 6F 1D 08 */ addi r3, r15, 0x1d08
/* 8012BD84 00128CC4  38 81 00 5C */ addi r4, r1, 0x5c
/* 8012BD88 00128CC8  48 13 BF A1 */ bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8012BD8C 00128CCC  7E A3 AB 78 */ mr r3, r21
/* 8012BD90 00128CD0  38 8F 1D 08 */ addi r4, r15, 0x1d08
/* 8012BD94 00128CD4  4B F4 87 0D */ bl cBgS_NS_GroundCross
/* 8012BD98 00128CD8  FF 80 08 90 */ fmr f28, f1
/* 8012BD9C 00128CDC  C0 2F 04 D4 */ lfs f1, 0x4d4(r15)
/* 8012BDA0 00128CE0  EC 1C 08 28 */ fsubs f0, f28, f1
/* 8012BDA4 00128CE4  FC 00 02 10 */ fabs f0, f0
/* 8012BDA8 00128CE8  FC 40 00 18 */ frsp f2, f0
/* 8012BDAC 00128CEC  C0 02 95 1C */ lfs f0, lbl_80452F1C-_SDA2_BASE_(r2)
/* 8012BDB0 00128CF0  EF 40 F0 2A */ fadds f26, f0, f30
/* 8012BDB4 00128CF4  FC 02 D0 40 */ fcmpo cr0, f2, f26
/* 8012BDB8 00128CF8  40 80 00 0C */ bge lbl_8012BDC4
/* 8012BDBC 00128CFC  D3 81 00 60 */ stfs f28, 0x60(r1)
/* 8012BDC0 00128D00  48 00 00 08 */ b lbl_8012BDC8
lbl_8012BDC4:
/* 8012BDC4 00128D04  D0 21 00 60 */ stfs f1, 0x60(r1)
lbl_8012BDC8:
/* 8012BDC8 00128D08  C0 02 93 A4 */ lfs f0, lbl_80452DA4-_SDA2_BASE_(r2)
/* 8012BDCC 00128D0C  FC 00 E0 00 */ fcmpu cr0, f0, f28
/* 8012BDD0 00128D10  41 82 00 14 */ beq lbl_8012BDE4
/* 8012BDD4 00128D14  7E A3 AB 78 */ mr r3, r21
/* 8012BDD8 00128D18  38 8F 1D 1C */ addi r4, r15, 0x1d1c
/* 8012BDDC 00128D1C  4B F4 90 75 */ bl dBgS_NS_GetPolyAtt0
/* 8012BDE0 00128D20  7C 70 1B 78 */ mr r16, r3
lbl_8012BDE4:
/* 8012BDE4 00128D24  C0 02 93 A4 */ lfs f0, lbl_80452DA4-_SDA2_BASE_(r2)
/* 8012BDE8 00128D28  FC 00 E0 00 */ fcmpu cr0, f0, f28
/* 8012BDEC 00128D2C  41 82 00 14 */ beq lbl_8012BE00
/* 8012BDF0 00128D30  2C 10 00 03 */ cmpwi r16, 3
/* 8012BDF4 00128D34  41 82 00 0C */ beq lbl_8012BE00
/* 8012BDF8 00128D38  2C 10 00 0D */ cmpwi r16, 0xd
/* 8012BDFC 00128D3C  40 82 00 14 */ bne lbl_8012BE10
lbl_8012BE00:
/* 8012BE00 00128D40  C0 21 00 60 */ lfs f1, 0x60(r1)
/* 8012BE04 00128D44  C0 0F 2B A8 */ lfs f0, 0x2ba8(r15)
/* 8012BE08 00128D48  EC 01 00 2A */ fadds f0, f1, f0
/* 8012BE0C 00128D4C  D0 01 00 60 */ stfs f0, 0x60(r1)
lbl_8012BE10:
/* 8012BE10 00128D50  38 6F 1D 08 */ addi r3, r15, 0x1d08
/* 8012BE14 00128D54  38 81 00 50 */ addi r4, r1, 0x50
/* 8012BE18 00128D58  48 13 BF 11 */ bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8012BE1C 00128D5C  7E A3 AB 78 */ mr r3, r21
/* 8012BE20 00128D60  38 8F 1D 08 */ addi r4, r15, 0x1d08
/* 8012BE24 00128D64  4B F4 86 7D */ bl cBgS_NS_GroundCross
/* 8012BE28 00128D68  FF 80 08 90 */ fmr f28, f1
/* 8012BE2C 00128D6C  C0 2F 04 D4 */ lfs f1, 0x4d4(r15)
/* 8012BE30 00128D70  EC 1C 08 28 */ fsubs f0, f28, f1
/* 8012BE34 00128D74  FC 00 02 10 */ fabs f0, f0
/* 8012BE38 00128D78  FC 00 00 18 */ frsp f0, f0
/* 8012BE3C 00128D7C  FC 00 D0 40 */ fcmpo cr0, f0, f26
/* 8012BE40 00128D80  40 80 00 0C */ bge lbl_8012BE4C
/* 8012BE44 00128D84  D3 81 00 54 */ stfs f28, 0x54(r1)
/* 8012BE48 00128D88  48 00 00 08 */ b lbl_8012BE50
lbl_8012BE4C:
/* 8012BE4C 00128D8C  D0 21 00 54 */ stfs f1, 0x54(r1)
lbl_8012BE50:
/* 8012BE50 00128D90  C0 02 93 A4 */ lfs f0, lbl_80452DA4-_SDA2_BASE_(r2)
/* 8012BE54 00128D94  FC 00 E0 00 */ fcmpu cr0, f0, f28
/* 8012BE58 00128D98  41 82 00 14 */ beq lbl_8012BE6C
/* 8012BE5C 00128D9C  7E A3 AB 78 */ mr r3, r21
/* 8012BE60 00128DA0  38 8F 1D 1C */ addi r4, r15, 0x1d1c
/* 8012BE64 00128DA4  4B F4 8F ED */ bl dBgS_NS_GetPolyAtt0
/* 8012BE68 00128DA8  7C 70 1B 78 */ mr r16, r3
lbl_8012BE6C:
/* 8012BE6C 00128DAC  C0 02 93 A4 */ lfs f0, lbl_80452DA4-_SDA2_BASE_(r2)
/* 8012BE70 00128DB0  FC 00 E0 00 */ fcmpu cr0, f0, f28
/* 8012BE74 00128DB4  41 82 00 14 */ beq lbl_8012BE88
/* 8012BE78 00128DB8  2C 10 00 03 */ cmpwi r16, 3
/* 8012BE7C 00128DBC  41 82 00 0C */ beq lbl_8012BE88
/* 8012BE80 00128DC0  2C 10 00 0D */ cmpwi r16, 0xd
/* 8012BE84 00128DC4  40 82 00 14 */ bne lbl_8012BE98
lbl_8012BE88:
/* 8012BE88 00128DC8  C0 21 00 54 */ lfs f1, 0x54(r1)
/* 8012BE8C 00128DCC  C0 0F 2B A8 */ lfs f0, 0x2ba8(r15)
/* 8012BE90 00128DD0  EC 01 00 2A */ fadds f0, f1, f0
/* 8012BE94 00128DD4  D0 01 00 54 */ stfs f0, 0x54(r1)
lbl_8012BE98:
/* 8012BE98 00128DD8  38 61 00 5C */ addi r3, r1, 0x5c
/* 8012BE9C 00128DDC  38 81 00 50 */ addi r4, r1, 0x50
/* 8012BEA0 00128DE0  7C 65 1B 78 */ mr r5, r3
/* 8012BEA4 00128DE4  48 21 B2 11 */ bl PSVECSubtract
/* 8012BEA8 00128DE8  38 61 00 5C */ addi r3, r1, 0x5c
/* 8012BEAC 00128DEC  48 13 B2 A5 */ bl atan2sY_XZ__4cXyzCFv
/* 8012BEB0 00128DF0  7C 64 1B 78 */ mr r4, r3
/* 8012BEB4 00128DF4  48 00 00 58 */ b lbl_8012BF0C
lbl_8012BEB8:
/* 8012BEB8 00128DF8  80 0F 31 A0 */ lwz r0, 0x31a0(r15)
/* 8012BEBC 00128DFC  54 00 03 9D */ rlwinm. r0, r0, 0, 0xe, 0xe
/* 8012BEC0 00128E00  40 82 00 18 */ bne lbl_8012BED8
/* 8012BEC4 00128E04  A0 0F 2F E8 */ lhz r0, 0x2fe8(r15)
/* 8012BEC8 00128E08  28 00 01 4D */ cmplwi r0, 0x14d
/* 8012BECC 00128E0C  41 82 00 0C */ beq lbl_8012BED8
/* 8012BED0 00128E10  28 00 01 18 */ cmplwi r0, 0x118
/* 8012BED4 00128E14  40 82 00 0C */ bne lbl_8012BEE0
lbl_8012BED8:
/* 8012BED8 00128E18  A8 8F 30 0C */ lha r4, 0x300c(r15)
/* 8012BEDC 00128E1C  48 00 00 30 */ b lbl_8012BF0C
lbl_8012BEE0:
/* 8012BEE0 00128E20  28 00 01 0C */ cmplwi r0, 0x10c
/* 8012BEE4 00128E24  41 82 00 1C */ beq lbl_8012BF00
/* 8012BEE8 00128E28  28 00 01 0E */ cmplwi r0, 0x10e
/* 8012BEEC 00128E2C  41 82 00 14 */ beq lbl_8012BF00
/* 8012BEF0 00128E30  28 00 01 32 */ cmplwi r0, 0x132
/* 8012BEF4 00128E34  41 82 00 0C */ beq lbl_8012BF00
/* 8012BEF8 00128E38  28 00 01 0D */ cmplwi r0, 0x10d
/* 8012BEFC 00128E3C  40 82 00 0C */ bne lbl_8012BF08
lbl_8012BF00:
/* 8012BF00 00128E40  A8 8F 2F F0 */ lha r4, 0x2ff0(r15)
/* 8012BF04 00128E44  48 00 00 08 */ b lbl_8012BF0C
lbl_8012BF08:
/* 8012BF08 00128E48  38 80 00 00 */ li r4, 0
lbl_8012BF0C:
/* 8012BF0C 00128E4C  A0 0F 2F E8 */ lhz r0, 0x2fe8(r15)
/* 8012BF10 00128E50  28 00 01 38 */ cmplwi r0, 0x138
/* 8012BF14 00128E54  41 82 00 18 */ beq lbl_8012BF2C
/* 8012BF18 00128E58  38 6F 04 E4 */ addi r3, r15, 0x4e4
/* 8012BF1C 00128E5C  38 A0 00 03 */ li r5, 3
/* 8012BF20 00128E60  38 C0 10 00 */ li r6, 0x1000
/* 8012BF24 00128E64  38 E0 03 E8 */ li r7, 0x3e8
/* 8012BF28 00128E68  48 14 46 19 */ bl cLib_addCalcAngleS__FPsssss
lbl_8012BF2C:
/* 8012BF2C 00128E6C  38 6F 30 D6 */ addi r3, r15, 0x30d6
/* 8012BF30 00128E70  80 0F 31 A0 */ lwz r0, 0x31a0(r15)
/* 8012BF34 00128E74  54 00 07 FF */ clrlwi. r0, r0, 0x1f
/* 8012BF38 00128E78  41 82 00 14 */ beq lbl_8012BF4C
/* 8012BF3C 00128E7C  A8 0F 04 E4 */ lha r0, 0x4e4(r15)
/* 8012BF40 00128E80  7C 00 00 D0 */ neg r0, r0
/* 8012BF44 00128E84  7C 04 07 34 */ extsh r4, r0
/* 8012BF48 00128E88  48 00 00 08 */ b lbl_8012BF50
lbl_8012BF4C:
/* 8012BF4C 00128E8C  38 80 00 00 */ li r4, 0
lbl_8012BF50:
/* 8012BF50 00128E90  38 A0 00 03 */ li r5, 3
/* 8012BF54 00128E94  38 C0 10 00 */ li r6, 0x1000
/* 8012BF58 00128E98  38 E0 01 00 */ li r7, 0x100
/* 8012BF5C 00128E9C  48 14 45 E5 */ bl cLib_addCalcAngleS__FPsssss
lbl_8012BF60:
/* 8012BF60 00128EA0  E3 E1 01 68 */ psq_l f31, 360(r1), 0, 0
/* 8012BF64 00128EA4  CB E1 01 60 */ lfd f31, 0x160(r1)
/* 8012BF68 00128EA8  E3 C1 01 58 */ psq_l f30, 344(r1), 0, 0
/* 8012BF6C 00128EAC  CB C1 01 50 */ lfd f30, 0x150(r1)
/* 8012BF70 00128EB0  E3 A1 01 48 */ psq_l f29, 328(r1), 0, 0
/* 8012BF74 00128EB4  CB A1 01 40 */ lfd f29, 0x140(r1)
/* 8012BF78 00128EB8  E3 81 01 38 */ psq_l f28, 312(r1), 0, 0
/* 8012BF7C 00128EBC  CB 81 01 30 */ lfd f28, 0x130(r1)
/* 8012BF80 00128EC0  E3 61 01 28 */ psq_l f27, 296(r1), 0, 0
/* 8012BF84 00128EC4  CB 61 01 20 */ lfd f27, 0x120(r1)
/* 8012BF88 00128EC8  E3 41 01 18 */ psq_l f26, 280(r1), 0, 0
/* 8012BF8C 00128ECC  CB 41 01 10 */ lfd f26, 0x110(r1)
/* 8012BF90 00128ED0  39 61 01 10 */ addi r11, r1, 0x110
/* 8012BF94 00128ED4  48 23 62 59 */ bl func_803621EC
/* 8012BF98 00128ED8  80 01 01 74 */ lwz r0, 0x174(r1)
/* 8012BF9C 00128EDC  7C 08 03 A6 */ mtlr r0
/* 8012BFA0 00128EE0  38 21 01 70 */ addi r1, r1, 0x170
/* 8012BFA4 00128EE4  4E 80 00 20 */ blr
