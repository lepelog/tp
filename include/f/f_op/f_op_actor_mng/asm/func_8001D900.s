/* 8001D900 0001A840  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 8001D904 0001A844  7C 08 02 A6 */ mflr r0
/* 8001D908 0001A848  90 01 00 34 */ stw r0, 0x34(r1)
/* 8001D90C 0001A84C  93 E1 00 2C */ stw r31, 0x2c(r1)
/* 8001D910 0001A850  93 C1 00 28 */ stw r30, 0x28(r1)
/* 8001D914 0001A854  7C 66 1B 78 */ mr r6, r3
/* 8001D918 0001A858  7C BE 2B 78 */ mr r30, r5
/* 8001D91C 0001A85C  A8 03 04 E6 */ lha r0, 0x4e6(r3)
/* 8001D920 0001A860  7C 00 00 D0 */ neg r0, r0
/* 8001D924 0001A864  7C 1F 07 34 */ extsh r31, r0
/* 8001D928 0001A868  38 61 00 08 */ addi r3, r1, 8
/* 8001D92C 0001A86C  38 A6 04 D0 */ addi r5, r6, 0x4d0
/* 8001D930 0001A870  48 24 92 05 */ bl __mi__4cXyzCFRC3Vec
/* 8001D934 0001A874  C0 81 00 08 */ lfs f4, 8(r1)
/* 8001D938 0001A878  D0 81 00 14 */ stfs f4, 0x14(r1)
/* 8001D93C 0001A87C  C0 61 00 0C */ lfs f3, 0xc(r1)
/* 8001D940 0001A880  D0 61 00 18 */ stfs f3, 0x18(r1)
/* 8001D944 0001A884  C0 41 00 10 */ lfs f2, 0x10(r1)
/* 8001D948 0001A888  D0 41 00 1C */ stfs f2, 0x1c(r1)
/* 8001D94C 0001A88C  57 E0 04 38 */ rlwinm r0, r31, 0, 0x10, 0x1c
/* 8001D950 0001A890  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 8001D954 0001A894  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 8001D958 0001A898  7C 03 04 2E */ lfsx f0, r3, r0
/* 8001D95C 0001A89C  EC 22 00 32 */ fmuls f1, f2, f0
/* 8001D960 0001A8A0  7C 83 02 14 */ add r4, r3, r0
/* 8001D964 0001A8A4  C0 04 00 04 */ lfs f0, 4(r4)
/* 8001D968 0001A8A8  EC 04 00 32 */ fmuls f0, f4, f0
/* 8001D96C 0001A8AC  EC 01 00 2A */ fadds f0, f1, f0
/* 8001D970 0001A8B0  D0 1E 00 00 */ stfs f0, 0(r30)
/* 8001D974 0001A8B4  D0 7E 00 04 */ stfs f3, 4(r30)
/* 8001D978 0001A8B8  C0 04 00 04 */ lfs f0, 4(r4)
/* 8001D97C 0001A8BC  EC 22 00 32 */ fmuls f1, f2, f0
/* 8001D980 0001A8C0  7C 03 04 2E */ lfsx f0, r3, r0
/* 8001D984 0001A8C4  EC 04 00 32 */ fmuls f0, f4, f0
/* 8001D988 0001A8C8  EC 01 00 28 */ fsubs f0, f1, f0
/* 8001D98C 0001A8CC  D0 1E 00 08 */ stfs f0, 8(r30)
/* 8001D990 0001A8D0  83 E1 00 2C */ lwz r31, 0x2c(r1)
/* 8001D994 0001A8D4  83 C1 00 28 */ lwz r30, 0x28(r1)
/* 8001D998 0001A8D8  80 01 00 34 */ lwz r0, 0x34(r1)
/* 8001D99C 0001A8DC  7C 08 03 A6 */ mtlr r0
/* 8001D9A0 0001A8E0  38 21 00 30 */ addi r1, r1, 0x30
/* 8001D9A4 0001A8E4  4E 80 00 20 */ blr
