/* 800AC754 000A9694  94 21 FF 50 */ stwu r1, -0xb0(r1)
/* 800AC758 000A9698  7C 08 02 A6 */ mflr r0
/* 800AC75C 000A969C  90 01 00 B4 */ stw r0, 0xb4(r1)
/* 800AC760 000A96A0  DB E1 00 A0 */ stfd f31, 0xa0(r1)
/* 800AC764 000A96A4  F3 E1 00 A8 */ psq_st f31, 168(r1), 0, 0
/* 800AC768 000A96A8  DB C1 00 90 */ stfd f30, 0x90(r1)
/* 800AC76C 000A96AC  F3 C1 00 98 */ psq_st f30, 152(r1), 0, 0
/* 800AC770 000A96B0  DB A1 00 80 */ stfd f29, 0x80(r1)
/* 800AC774 000A96B4  F3 A1 00 88 */ psq_st f29, 136(r1), 0, 0
/* 800AC778 000A96B8  DB 81 00 70 */ stfd f28, 0x70(r1)
/* 800AC77C 000A96BC  F3 81 00 78 */ psq_st f28, 120(r1), 0, 0
/* 800AC780 000A96C0  DB 61 00 60 */ stfd f27, 0x60(r1)
/* 800AC784 000A96C4  F3 61 00 68 */ psq_st f27, 104(r1), 0, 0
/* 800AC788 000A96C8  DB 41 00 50 */ stfd f26, 0x50(r1)
/* 800AC78C 000A96CC  F3 41 00 58 */ psq_st f26, 88(r1), 0, 0
/* 800AC790 000A96D0  39 61 00 50 */ addi r11, r1, 0x50
/* 800AC794 000A96D4  48 2B 5A 35 */ bl _savegpr_24
/* 800AC798 000A96D8  7C 78 1B 78 */ mr r24, r3
/* 800AC79C 000A96DC  7C 99 23 78 */ mr r25, r4
/* 800AC7A0 000A96E0  7C BA 2B 78 */ mr r26, r5
/* 800AC7A4 000A96E4  7C DB 33 78 */ mr r27, r6
/* 800AC7A8 000A96E8  7C FC 3B 78 */ mr r28, r7
/* 800AC7AC 000A96EC  FF 40 08 90 */ fmr f26, f1
/* 800AC7B0 000A96F0  FF 60 10 90 */ fmr f27, f2
/* 800AC7B4 000A96F4  FF A0 18 90 */ fmr f29, f3
/* 800AC7B8 000A96F8  7D 1D 43 78 */ mr r29, r8
/* 800AC7BC 000A96FC  3B F8 1F D0 */ addi r31, r24, 0x1fd0
/* 800AC7C0 000A9700  3B D8 1F E8 */ addi r30, r24, 0x1fe8
/* 800AC7C4 000A9704  88 03 2F 8C */ lbz r0, 0x2f8c(r3)
/* 800AC7C8 000A9708  28 00 00 00 */ cmplwi r0, 0
/* 800AC7CC 000A970C  40 82 00 0C */ bne lbl_800AC7D8
/* 800AC7D0 000A9710  C3 E2 92 C0 */ lfs f31, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800AC7D4 000A9714  48 00 00 2C */ b lbl_800AC800
lbl_800AC7D8:
/* 800AC7D8 000A9718  C0 5F 00 10 */ lfs f2, 0x10(r31)
/* 800AC7DC 000A971C  A8 1F 00 08 */ lha r0, 8(r31)
/* 800AC7E0 000A9720  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 800AC7E4 000A9724  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800AC7E8 000A9728  90 01 00 0C */ stw r0, 0xc(r1)
/* 800AC7EC 000A972C  3C 00 43 30 */ lis r0, 0x4330
/* 800AC7F0 000A9730  90 01 00 08 */ stw r0, 8(r1)
/* 800AC7F4 000A9734  C8 01 00 08 */ lfd f0, 8(r1)
/* 800AC7F8 000A9738  EC 00 08 28 */ fsubs f0, f0, f1
/* 800AC7FC 000A973C  EF E2 00 24 */ fdivs f31, f2, f0
lbl_800AC800:
/* 800AC800 000A9740  7F 03 C3 78 */ mr r3, r24
/* 800AC804 000A9744  FC 20 D0 90 */ fmr f1, f26
/* 800AC808 000A9748  4B FF FF 31 */ bl setDoubleAnimeBlendRatio__9daAlink_cFf
/* 800AC80C 000A974C  A8 19 00 06 */ lha r0, 6(r25)
/* 800AC810 000A9750  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 800AC814 000A9754  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800AC818 000A9758  90 01 00 14 */ stw r0, 0x14(r1)
/* 800AC81C 000A975C  3C 60 43 30 */ lis r3, 0x4330
/* 800AC820 000A9760  90 61 00 10 */ stw r3, 0x10(r1)
/* 800AC824 000A9764  C8 01 00 10 */ lfd f0, 0x10(r1)
/* 800AC828 000A9768  EC 40 08 28 */ fsubs f2, f0, f1
/* 800AC82C 000A976C  A8 1B 00 06 */ lha r0, 6(r27)
/* 800AC830 000A9770  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800AC834 000A9774  90 01 00 1C */ stw r0, 0x1c(r1)
/* 800AC838 000A9778  90 61 00 18 */ stw r3, 0x18(r1)
/* 800AC83C 000A977C  C8 01 00 18 */ lfd f0, 0x18(r1)
/* 800AC840 000A9780  EF 80 08 28 */ fsubs f28, f0, f1
/* 800AC844 000A9784  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800AC848 000A9788  EF C0 10 24 */ fdivs f30, f0, f2
/* 800AC84C 000A978C  EC 1D 00 B2 */ fmuls f0, f29, f2
/* 800AC850 000A9790  EC 00 E0 24 */ fdivs f0, f0, f28
/* 800AC854 000A9794  EC 00 D8 28 */ fsubs f0, f0, f27
/* 800AC858 000A9798  EC 1A 00 32 */ fmuls f0, f26, f0
/* 800AC85C 000A979C  EF BB 00 2A */ fadds f29, f27, f0
/* 800AC860 000A97A0  7F 03 C3 78 */ mr r3, r24
/* 800AC864 000A97A4  7F E4 FB 78 */ mr r4, r31
/* 800AC868 000A97A8  88 B9 00 04 */ lbz r5, 4(r25)
/* 800AC86C 000A97AC  38 C0 00 00 */ li r6, 0
/* 800AC870 000A97B0  FC 00 10 1E */ fctiwz f0, f2
/* 800AC874 000A97B4  D8 01 00 20 */ stfd f0, 0x20(r1)
/* 800AC878 000A97B8  80 E1 00 24 */ lwz r7, 0x24(r1)
/* 800AC87C 000A97BC  FC 20 E8 90 */ fmr f1, f29
/* 800AC880 000A97C0  EC 5F 00 B2 */ fmuls f2, f31, f2
/* 800AC884 000A97C4  4B FF FB 11 */ bl setFrameCtrl__9daAlink_cFP16daPy_frameCtrl_cUcssff
/* 800AC888 000A97C8  C0 1F 00 10 */ lfs f0, 0x10(r31)
/* 800AC88C 000A97CC  D0 19 00 08 */ stfs f0, 8(r25)
/* 800AC890 000A97D0  7F 03 C3 78 */ mr r3, r24
/* 800AC894 000A97D4  7F C4 F3 78 */ mr r4, r30
/* 800AC898 000A97D8  88 BB 00 04 */ lbz r5, 4(r27)
/* 800AC89C 000A97DC  38 C0 00 00 */ li r6, 0
/* 800AC8A0 000A97E0  FC 00 E0 1E */ fctiwz f0, f28
/* 800AC8A4 000A97E4  D8 01 00 28 */ stfd f0, 0x28(r1)
/* 800AC8A8 000A97E8  80 E1 00 2C */ lwz r7, 0x2c(r1)
/* 800AC8AC 000A97EC  EC 1D 07 32 */ fmuls f0, f29, f28
/* 800AC8B0 000A97F0  EC 3E 00 32 */ fmuls f1, f30, f0
/* 800AC8B4 000A97F4  EC 5F 07 32 */ fmuls f2, f31, f28
/* 800AC8B8 000A97F8  4B FF FA DD */ bl setFrameCtrl__9daAlink_cFP16daPy_frameCtrl_cUcssff
/* 800AC8BC 000A97FC  C0 1E 00 10 */ lfs f0, 0x10(r30)
/* 800AC8C0 000A9800  D0 1B 00 08 */ stfs f0, 8(r27)
/* 800AC8C4 000A9804  93 38 1F 2C */ stw r25, 0x1f2c(r24)
/* 800AC8C8 000A9808  93 78 1F 34 */ stw r27, 0x1f34(r24)
/* 800AC8CC 000A980C  28 1A 00 00 */ cmplwi r26, 0
/* 800AC8D0 000A9810  41 82 00 60 */ beq lbl_800AC930
/* 800AC8D4 000A9814  A8 1A 00 06 */ lha r0, 6(r26)
/* 800AC8D8 000A9818  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 800AC8DC 000A981C  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800AC8E0 000A9820  90 01 00 2C */ stw r0, 0x2c(r1)
/* 800AC8E4 000A9824  3C 00 43 30 */ lis r0, 0x4330
/* 800AC8E8 000A9828  90 01 00 28 */ stw r0, 0x28(r1)
/* 800AC8EC 000A982C  C8 01 00 28 */ lfd f0, 0x28(r1)
/* 800AC8F0 000A9830  EC 40 08 28 */ fsubs f2, f0, f1
/* 800AC8F4 000A9834  93 58 1F 44 */ stw r26, 0x1f44(r24)
/* 800AC8F8 000A9838  7F 03 C3 78 */ mr r3, r24
/* 800AC8FC 000A983C  38 98 20 18 */ addi r4, r24, 0x2018
/* 800AC900 000A9840  88 BA 00 04 */ lbz r5, 4(r26)
/* 800AC904 000A9844  38 C0 00 00 */ li r6, 0
/* 800AC908 000A9848  FC 00 10 1E */ fctiwz f0, f2
/* 800AC90C 000A984C  D8 01 00 20 */ stfd f0, 0x20(r1)
/* 800AC910 000A9850  80 E1 00 24 */ lwz r7, 0x24(r1)
/* 800AC914 000A9854  EC 1D 00 B2 */ fmuls f0, f29, f2
/* 800AC918 000A9858  EC 3E 00 32 */ fmuls f1, f30, f0
/* 800AC91C 000A985C  EC 5F 00 B2 */ fmuls f2, f31, f2
/* 800AC920 000A9860  4B FF FA 75 */ bl setFrameCtrl__9daAlink_cFP16daPy_frameCtrl_cUcssff
/* 800AC924 000A9864  C0 18 20 28 */ lfs f0, 0x2028(r24)
/* 800AC928 000A9868  D0 1A 00 08 */ stfs f0, 8(r26)
/* 800AC92C 000A986C  48 00 00 08 */ b lbl_800AC934
lbl_800AC930:
/* 800AC930 000A9870  93 38 1F 44 */ stw r25, 0x1f44(r24)
lbl_800AC934:
/* 800AC934 000A9874  28 1C 00 00 */ cmplwi r28, 0
/* 800AC938 000A9878  41 82 00 60 */ beq lbl_800AC998
/* 800AC93C 000A987C  A8 1C 00 06 */ lha r0, 6(r28)
/* 800AC940 000A9880  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 800AC944 000A9884  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800AC948 000A9888  90 01 00 2C */ stw r0, 0x2c(r1)
/* 800AC94C 000A988C  3C 00 43 30 */ lis r0, 0x4330
/* 800AC950 000A9890  90 01 00 28 */ stw r0, 0x28(r1)
/* 800AC954 000A9894  C8 01 00 28 */ lfd f0, 0x28(r1)
/* 800AC958 000A9898  EC 40 08 28 */ fsubs f2, f0, f1
/* 800AC95C 000A989C  93 98 1F 4C */ stw r28, 0x1f4c(r24)
/* 800AC960 000A98A0  7F 03 C3 78 */ mr r3, r24
/* 800AC964 000A98A4  38 98 20 30 */ addi r4, r24, 0x2030
/* 800AC968 000A98A8  88 BC 00 04 */ lbz r5, 4(r28)
/* 800AC96C 000A98AC  38 C0 00 00 */ li r6, 0
/* 800AC970 000A98B0  FC 00 10 1E */ fctiwz f0, f2
/* 800AC974 000A98B4  D8 01 00 20 */ stfd f0, 0x20(r1)
/* 800AC978 000A98B8  80 E1 00 24 */ lwz r7, 0x24(r1)
/* 800AC97C 000A98BC  EC 1D 00 B2 */ fmuls f0, f29, f2
/* 800AC980 000A98C0  EC 3E 00 32 */ fmuls f1, f30, f0
/* 800AC984 000A98C4  EC 5F 00 B2 */ fmuls f2, f31, f2
/* 800AC988 000A98C8  4B FF FA 0D */ bl setFrameCtrl__9daAlink_cFP16daPy_frameCtrl_cUcssff
/* 800AC98C 000A98CC  C0 18 20 40 */ lfs f0, 0x2040(r24)
/* 800AC990 000A98D0  D0 1C 00 08 */ stfs f0, 8(r28)
/* 800AC994 000A98D4  48 00 00 08 */ b lbl_800AC99C
lbl_800AC998:
/* 800AC998 000A98D8  93 78 1F 4C */ stw r27, 0x1f4c(r24)
lbl_800AC99C:
/* 800AC99C 000A98DC  2C 1D 00 04 */ cmpwi r29, 4
/* 800AC9A0 000A98E0  41 82 00 0C */ beq lbl_800AC9AC
/* 800AC9A4 000A98E4  2C 1D 00 02 */ cmpwi r29, 2
/* 800AC9A8 000A98E8  40 82 00 14 */ bne lbl_800AC9BC
lbl_800AC9AC:
/* 800AC9AC 000A98EC  7F 03 C3 78 */ mr r3, r24
/* 800AC9B0 000A98F0  38 80 00 00 */ li r4, 0
/* 800AC9B4 000A98F4  48 01 28 51 */ bl setBasAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDER
/* 800AC9B8 000A98F8  48 00 00 10 */ b lbl_800AC9C8
lbl_800AC9BC:
/* 800AC9BC 000A98FC  7F 03 C3 78 */ mr r3, r24
/* 800AC9C0 000A9900  38 80 00 01 */ li r4, 1
/* 800AC9C4 000A9904  48 01 28 41 */ bl setBasAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDER
lbl_800AC9C8:
/* 800AC9C8 000A9908  9B B8 2F 8C */ stb r29, 0x2f8c(r24)
/* 800AC9CC 000A990C  E3 E1 00 A8 */ psq_l f31, 168(r1), 0, 0
/* 800AC9D0 000A9910  CB E1 00 A0 */ lfd f31, 0xa0(r1)
/* 800AC9D4 000A9914  E3 C1 00 98 */ psq_l f30, 152(r1), 0, 0
/* 800AC9D8 000A9918  CB C1 00 90 */ lfd f30, 0x90(r1)
/* 800AC9DC 000A991C  E3 A1 00 88 */ psq_l f29, 136(r1), 0, 0
/* 800AC9E0 000A9920  CB A1 00 80 */ lfd f29, 0x80(r1)
/* 800AC9E4 000A9924  E3 81 00 78 */ psq_l f28, 120(r1), 0, 0
/* 800AC9E8 000A9928  CB 81 00 70 */ lfd f28, 0x70(r1)
/* 800AC9EC 000A992C  E3 61 00 68 */ psq_l f27, 104(r1), 0, 0
/* 800AC9F0 000A9930  CB 61 00 60 */ lfd f27, 0x60(r1)
/* 800AC9F4 000A9934  E3 41 00 58 */ psq_l f26, 88(r1), 0, 0
/* 800AC9F8 000A9938  CB 41 00 50 */ lfd f26, 0x50(r1)
/* 800AC9FC 000A993C  39 61 00 50 */ addi r11, r1, 0x50
/* 800ACA00 000A9940  48 2B 58 15 */ bl _restgpr_24
/* 800ACA04 000A9944  80 01 00 B4 */ lwz r0, 0xb4(r1)
/* 800ACA08 000A9948  7C 08 03 A6 */ mtlr r0
/* 800ACA0C 000A994C  38 21 00 B0 */ addi r1, r1, 0xb0
/* 800ACA10 000A9950  4E 80 00 20 */ blr
