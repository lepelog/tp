/* 800EE64C 000EB58C  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800EE650 000EB590  7C 08 02 A6 */ mflr r0
/* 800EE654 000EB594  90 01 00 24 */ stw r0, 0x24(r1)
/* 800EE658 000EB598  39 61 00 20 */ addi r11, r1, 0x20
/* 800EE65C 000EB59C  48 27 3B 7D */ bl _savegpr_28
/* 800EE660 000EB5A0  7C 7E 1B 78 */ mr r30, r3
/* 800EE664 000EB5A4  7C 9C 23 78 */ mr r28, r4
/* 800EE668 000EB5A8  83 E3 28 18 */ lwz r31, 0x2818(r3)
/* 800EE66C 000EB5AC  80 03 31 A0 */ lwz r0, 0x31a0(r3)
/* 800EE670 000EB5B0  54 1D 07 FE */ clrlwi r29, r0, 0x1f
/* 800EE674 000EB5B4  4B FF F1 19 */ bl setSyncBoarPos__9daAlink_cFv
/* 800EE678 000EB5B8  2C 03 00 00 */ cmpwi r3, 0
/* 800EE67C 000EB5BC  40 82 00 0C */ bne lbl_800EE688
/* 800EE680 000EB5C0  38 60 00 00 */ li r3, 0
/* 800EE684 000EB5C4  48 00 02 7C */ b lbl_800EE900
lbl_800EE688:
/* 800EE688 000EB5C8  C0 1F 05 2C */ lfs f0, 0x52c(r31)
/* 800EE68C 000EB5CC  FC 00 02 10 */ fabs f0, f0
/* 800EE690 000EB5D0  FC 20 00 18 */ frsp f1, f0
/* 800EE694 000EB5D4  C0 02 93 E4 */ lfs f0, lbl_80452DE4-_SDA2_BASE_(r2)
/* 800EE698 000EB5D8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EE69C 000EB5DC  40 80 00 84 */ bge lbl_800EE720
/* 800EE6A0 000EB5E0  2C 1D 00 00 */ cmpwi r29, 0
/* 800EE6A4 000EB5E4  41 82 00 7C */ beq lbl_800EE720
/* 800EE6A8 000EB5E8  C0 3E 33 AC */ lfs f1, 0x33ac(r30)
/* 800EE6AC 000EB5EC  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800EE6B0 000EB5F0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EE6B4 000EB5F4  40 81 00 6C */ ble lbl_800EE720
/* 800EE6B8 000EB5F8  7F E3 FB 78 */ mr r3, r31
/* 800EE6BC 000EB5FC  4B F4 95 C1 */ bl checkWait__10e_wb_classFv
/* 800EE6C0 000EB600  2C 03 00 00 */ cmpwi r3, 0
/* 800EE6C4 000EB604  41 82 00 5C */ beq lbl_800EE720
/* 800EE6C8 000EB608  A0 1E 2F E8 */ lhz r0, 0x2fe8(r30)
/* 800EE6CC 000EB60C  28 00 00 40 */ cmplwi r0, 0x40
/* 800EE6D0 000EB610  41 82 00 50 */ beq lbl_800EE720
/* 800EE6D4 000EB614  A8 1E 30 04 */ lha r0, 0x3004(r30)
/* 800EE6D8 000EB618  2C 00 00 00 */ cmpwi r0, 0
/* 800EE6DC 000EB61C  40 82 00 44 */ bne lbl_800EE720
/* 800EE6E0 000EB620  A8 7E 04 E6 */ lha r3, 0x4e6(r30)
/* 800EE6E4 000EB624  A8 1E 2F E2 */ lha r0, 0x2fe2(r30)
/* 800EE6E8 000EB628  7C 03 00 50 */ subf r0, r3, r0
/* 800EE6EC 000EB62C  7C 03 07 34 */ extsh r3, r0
/* 800EE6F0 000EB630  4B FC 4D A5 */ bl getDirectionFromAngle__9daAlink_cFs
/* 800EE6F4 000EB634  2C 03 00 00 */ cmpwi r3, 0
/* 800EE6F8 000EB638  41 82 00 0C */ beq lbl_800EE704
/* 800EE6FC 000EB63C  2C 03 00 01 */ cmpwi r3, 1
/* 800EE700 000EB640  40 82 00 20 */ bne lbl_800EE720
lbl_800EE704:
/* 800EE704 000EB644  3C 60 80 39 */ lis r3, lbl_8038E5A4@ha
/* 800EE708 000EB648  38 A3 E5 A4 */ addi r5, r3, lbl_8038E5A4@l
/* 800EE70C 000EB64C  A8 05 00 54 */ lha r0, 0x54(r5)
/* 800EE710 000EB650  B0 1E 30 04 */ sth r0, 0x3004(r30)
/* 800EE714 000EB654  7F C3 F3 78 */ mr r3, r30
/* 800EE718 000EB658  38 80 00 4D */ li r4, 0x4d
/* 800EE71C 000EB65C  4B FB E9 D9 */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfParam
lbl_800EE720:
/* 800EE720 000EB660  2C 1C 00 00 */ cmpwi r28, 0
/* 800EE724 000EB664  41 82 00 40 */ beq lbl_800EE764
/* 800EE728 000EB668  A8 1F 17 E2 */ lha r0, 0x17e2(r31)
/* 800EE72C 000EB66C  7C 00 07 35 */ extsh. r0, r0
/* 800EE730 000EB670  40 82 00 34 */ bne lbl_800EE764
/* 800EE734 000EB674  7F C3 F3 78 */ mr r3, r30
/* 800EE738 000EB678  4B FF E9 3D */ bl checkHorseNoUpperAnime__9daAlink_cCFv
/* 800EE73C 000EB67C  2C 03 00 00 */ cmpwi r3, 0
/* 800EE740 000EB680  41 82 00 24 */ beq lbl_800EE764
/* 800EE744 000EB684  7F C3 F3 78 */ mr r3, r30
/* 800EE748 000EB688  38 80 00 09 */ li r4, 9
/* 800EE74C 000EB68C  4B FC 4B 05 */ bl setDoStatus__9daAlink_cFUc
/* 800EE750 000EB690  88 1E 2F 8D */ lbz r0, 0x2f8d(r30)
/* 800EE754 000EB694  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800EE758 000EB698  41 82 00 0C */ beq lbl_800EE764
/* 800EE75C 000EB69C  7F C3 F3 78 */ mr r3, r30
/* 800EE760 000EB6A0  4B FF ED 59 */ bl changeBoarRunRide__9daAlink_cFv
lbl_800EE764:
/* 800EE764 000EB6A4  38 7E 1F D0 */ addi r3, r30, 0x1fd0
/* 800EE768 000EB6A8  48 06 FD 65 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800EE76C 000EB6AC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800EE770 000EB6B0  41 82 00 10 */ beq lbl_800EE780
/* 800EE774 000EB6B4  A0 1E 2F E8 */ lhz r0, 0x2fe8(r30)
/* 800EE778 000EB6B8  28 00 00 43 */ cmplwi r0, 0x43
/* 800EE77C 000EB6BC  40 82 00 30 */ bne lbl_800EE7AC
lbl_800EE780:
/* 800EE780 000EB6C0  7F C3 F3 78 */ mr r3, r30
/* 800EE784 000EB6C4  4B FF F7 09 */ bl checkHorseServiceWaitAnime__9daAlink_cFv
/* 800EE788 000EB6C8  2C 03 00 00 */ cmpwi r3, 0
/* 800EE78C 000EB6CC  41 82 00 2C */ beq lbl_800EE7B8
/* 800EE790 000EB6D0  7F C3 F3 78 */ mr r3, r30
/* 800EE794 000EB6D4  4B FC AA C1 */ bl checkNoUpperAnime__9daAlink_cCFv
/* 800EE798 000EB6D8  2C 03 00 00 */ cmpwi r3, 0
/* 800EE79C 000EB6DC  41 82 00 10 */ beq lbl_800EE7AC
/* 800EE7A0 000EB6E0  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800EE7A4 000EB6E4  54 00 07 FF */ clrlwi. r0, r0, 0x1f
/* 800EE7A8 000EB6E8  40 82 00 10 */ bne lbl_800EE7B8
lbl_800EE7AC:
/* 800EE7AC 000EB6EC  7F C3 F3 78 */ mr r3, r30
/* 800EE7B0 000EB6F0  48 00 04 E9 */ bl setBaseBoarAnime__9daAlink_cFv
/* 800EE7B4 000EB6F4  48 00 00 54 */ b lbl_800EE808
lbl_800EE7B8:
/* 800EE7B8 000EB6F8  A0 1E 1F 58 */ lhz r0, 0x1f58(r30)
/* 800EE7BC 000EB6FC  28 00 01 B3 */ cmplwi r0, 0x1b3
/* 800EE7C0 000EB700  40 82 00 24 */ bne lbl_800EE7E4
/* 800EE7C4 000EB704  38 7E 1F D0 */ addi r3, r30, 0x1fd0
/* 800EE7C8 000EB708  C0 22 93 30 */ lfs f1, lbl_80452D30-_SDA2_BASE_(r2)
/* 800EE7CC 000EB70C  48 23 9C 61 */ bl checkPass__12J3DFrameCtrlFf
/* 800EE7D0 000EB710  2C 03 00 00 */ cmpwi r3, 0
/* 800EE7D4 000EB714  41 82 00 34 */ beq lbl_800EE808
/* 800EE7D8 000EB718  7F C3 F3 78 */ mr r3, r30
/* 800EE7DC 000EB71C  4B FF EC DD */ bl changeBoarRunRide__9daAlink_cFv
/* 800EE7E0 000EB720  48 00 00 28 */ b lbl_800EE808
lbl_800EE7E4:
/* 800EE7E4 000EB724  7F C3 F3 78 */ mr r3, r30
/* 800EE7E8 000EB728  4B FF F6 A5 */ bl checkHorseServiceWaitAnime__9daAlink_cFv
/* 800EE7EC 000EB72C  2C 03 00 00 */ cmpwi r3, 0
/* 800EE7F0 000EB730  40 82 00 18 */ bne lbl_800EE808
/* 800EE7F4 000EB734  A0 1E 2F E8 */ lhz r0, 0x2fe8(r30)
/* 800EE7F8 000EB738  28 00 00 43 */ cmplwi r0, 0x43
/* 800EE7FC 000EB73C  41 82 00 0C */ beq lbl_800EE808
/* 800EE800 000EB740  7F C3 F3 78 */ mr r3, r30
/* 800EE804 000EB744  48 00 04 95 */ bl setBaseBoarAnime__9daAlink_cFv
lbl_800EE808:
/* 800EE808 000EB748  A0 1E 1F 58 */ lhz r0, 0x1f58(r30)
/* 800EE80C 000EB74C  28 00 01 B3 */ cmplwi r0, 0x1b3
/* 800EE810 000EB750  41 82 00 34 */ beq lbl_800EE844
/* 800EE814 000EB754  A8 1F 17 E2 */ lha r0, 0x17e2(r31)
/* 800EE818 000EB758  7C 00 07 35 */ extsh. r0, r0
/* 800EE81C 000EB75C  40 81 00 14 */ ble lbl_800EE830
/* 800EE820 000EB760  7F C3 F3 78 */ mr r3, r30
/* 800EE824 000EB764  38 80 00 00 */ li r4, 0
/* 800EE828 000EB768  4B FF E7 CD */ bl setHorseTurnUpperAnime__9daAlink_cFi
/* 800EE82C 000EB76C  48 00 00 18 */ b lbl_800EE844
lbl_800EE830:
/* 800EE830 000EB770  7C 00 07 35 */ extsh. r0, r0
/* 800EE834 000EB774  40 80 00 10 */ bge lbl_800EE844
/* 800EE838 000EB778  7F C3 F3 78 */ mr r3, r30
/* 800EE83C 000EB77C  38 80 00 01 */ li r4, 1
/* 800EE840 000EB780  4B FF E7 B5 */ bl setHorseTurnUpperAnime__9daAlink_cFi
lbl_800EE844:
/* 800EE844 000EB784  38 60 00 00 */ li r3, 0
/* 800EE848 000EB788  A0 1E 1F BC */ lhz r0, 0x1fbc(r30)
/* 800EE84C 000EB78C  28 00 02 4C */ cmplwi r0, 0x24c
/* 800EE850 000EB790  41 82 00 10 */ beq lbl_800EE860
/* 800EE854 000EB794  54 00 04 3E */ clrlwi r0, r0, 0x10
/* 800EE858 000EB798  28 00 02 4D */ cmplwi r0, 0x24d
/* 800EE85C 000EB79C  40 82 00 08 */ bne lbl_800EE864
lbl_800EE860:
/* 800EE860 000EB7A0  38 60 00 01 */ li r3, 1
lbl_800EE864:
/* 800EE864 000EB7A4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800EE868 000EB7A8  41 82 00 8C */ beq lbl_800EE8F4
/* 800EE86C 000EB7AC  A8 1F 17 E2 */ lha r0, 0x17e2(r31)
/* 800EE870 000EB7B0  7C 00 07 35 */ extsh. r0, r0
/* 800EE874 000EB7B4  40 82 00 20 */ bne lbl_800EE894
/* 800EE878 000EB7B8  7F C3 F3 78 */ mr r3, r30
/* 800EE87C 000EB7BC  38 80 00 02 */ li r4, 2
/* 800EE880 000EB7C0  C0 22 93 24 */ lfs f1, lbl_80452D24-_SDA2_BASE_(r2)
/* 800EE884 000EB7C4  4B FB EE A1 */ bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800EE888 000EB7C8  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800EE88C 000EB7CC  D0 1E 33 F0 */ stfs f0, 0x33f0(r30)
/* 800EE890 000EB7D0  48 00 00 6C */ b lbl_800EE8FC
lbl_800EE894:
/* 800EE894 000EB7D4  C0 42 94 C8 */ lfs f2, lbl_80452EC8-_SDA2_BASE_(r2)
/* 800EE898 000EB7D8  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 800EE89C 000EB7DC  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800EE8A0 000EB7E0  90 01 00 0C */ stw r0, 0xc(r1)
/* 800EE8A4 000EB7E4  3C 00 43 30 */ lis r0, 0x4330
/* 800EE8A8 000EB7E8  90 01 00 08 */ stw r0, 8(r1)
/* 800EE8AC 000EB7EC  C8 01 00 08 */ lfd f0, 8(r1)
/* 800EE8B0 000EB7F0  EC 00 08 28 */ fsubs f0, f0, f1
/* 800EE8B4 000EB7F4  EC 02 00 32 */ fmuls f0, f2, f0
/* 800EE8B8 000EB7F8  C0 22 92 BC */ lfs f1, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800EE8BC 000EB7FC  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 800EE8C0 000EB800  40 80 00 08 */ bge lbl_800EE8C8
/* 800EE8C4 000EB804  48 00 00 18 */ b lbl_800EE8DC
lbl_800EE8C8:
/* 800EE8C8 000EB808  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800EE8CC 000EB80C  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 800EE8D0 000EB810  40 81 00 08 */ ble lbl_800EE8D8
/* 800EE8D4 000EB814  48 00 00 08 */ b lbl_800EE8DC
lbl_800EE8D8:
/* 800EE8D8 000EB818  FC 20 00 90 */ fmr f1, f0
lbl_800EE8DC:
/* 800EE8DC 000EB81C  D0 3E 33 F0 */ stfs f1, 0x33f0(r30)
/* 800EE8E0 000EB820  C0 1E 33 F0 */ lfs f0, 0x33f0(r30)
/* 800EE8E4 000EB824  FC 00 02 10 */ fabs f0, f0
/* 800EE8E8 000EB828  FC 00 00 18 */ frsp f0, f0
/* 800EE8EC 000EB82C  D0 1E 1F 50 */ stfs f0, 0x1f50(r30)
/* 800EE8F0 000EB830  48 00 00 0C */ b lbl_800EE8FC
lbl_800EE8F4:
/* 800EE8F4 000EB834  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800EE8F8 000EB838  D0 1E 33 F0 */ stfs f0, 0x33f0(r30)
lbl_800EE8FC:
/* 800EE8FC 000EB83C  38 60 00 01 */ li r3, 1
lbl_800EE900:
/* 800EE900 000EB840  39 61 00 20 */ addi r11, r1, 0x20
/* 800EE904 000EB844  48 27 39 21 */ bl _restgpr_28
/* 800EE908 000EB848  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800EE90C 000EB84C  7C 08 03 A6 */ mtlr r0
/* 800EE910 000EB850  38 21 00 20 */ addi r1, r1, 0x20
/* 800EE914 000EB854  4E 80 00 20 */ blr
