/* 800DB6A4 000D85E4  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800DB6A8 000D85E8  7C 08 02 A6 */ mflr r0
/* 800DB6AC 000D85EC  90 01 00 24 */ stw r0, 0x24(r1)
/* 800DB6B0 000D85F0  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 800DB6B4 000D85F4  93 C1 00 18 */ stw r30, 0x18(r1)
/* 800DB6B8 000D85F8  7C 7F 1B 78 */ mr r31, r3
/* 800DB6BC 000D85FC  7C 9E 23 78 */ mr r30, r4
/* 800DB6C0 000D8600  38 80 00 78 */ li r4, 0x78
/* 800DB6C4 000D8604  4B FE 76 E1 */ bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800DB6C8 000D8608  2C 03 00 00 */ cmpwi r3, 0
/* 800DB6CC 000D860C  40 82 00 0C */ bne lbl_800DB6D8
/* 800DB6D0 000D8610  38 60 00 00 */ li r3, 0
/* 800DB6D4 000D8614  48 00 01 74 */ b lbl_800DB848
lbl_800DB6D8:
/* 800DB6D8 000D8618  7F E3 FB 78 */ mr r3, r31
/* 800DB6DC 000D861C  4B FD 82 29 */ bl checkZeroSpeedF__9daAlink_cCFv
/* 800DB6E0 000D8620  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800DB6E4 000D8624  41 82 00 10 */ beq lbl_800DB6F4
/* 800DB6E8 000D8628  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 800DB6EC 000D862C  60 00 00 01 */ ori r0, r0, 1
/* 800DB6F0 000D8630  90 1F 31 A0 */ stw r0, 0x31a0(r31)
lbl_800DB6F4:
/* 800DB6F4 000D8634  7F E3 FB 78 */ mr r3, r31
/* 800DB6F8 000D8638  38 80 01 13 */ li r4, 0x113
/* 800DB6FC 000D863C  4B FD 18 85 */ bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800DB700 000D8640  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 800DB704 000D8644  60 00 00 01 */ ori r0, r0, 1
/* 800DB708 000D8648  90 1F 05 74 */ stw r0, 0x574(r31)
/* 800DB70C 000D864C  93 DF 28 F8 */ stw r30, 0x28f8(r31)
/* 800DB710 000D8650  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800DB714 000D8654  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 800DB718 000D8658  3C 60 80 39 */ lis r3, lbl_8038E49C@ha
/* 800DB71C 000D865C  38 63 E4 9C */ addi r3, r3, lbl_8038E49C@l
/* 800DB720 000D8660  A8 03 00 14 */ lha r0, 0x14(r3)
/* 800DB724 000D8664  B0 1F 30 08 */ sth r0, 0x3008(r31)
/* 800DB728 000D8668  80 1F 28 F8 */ lwz r0, 0x28f8(r31)
/* 800DB72C 000D866C  90 01 00 0C */ stw r0, 0xc(r1)
/*.global fpcSch_JudgeByID*/
/* 800DB730 000D8670  3C 60 80 02 */ lis r3, fpcSch_JudgeByID@ha
/*.global fpcSch_JudgeByID*/
/* 800DB734 000D8674  38 63 35 90 */ addi r3, r3, fpcSch_JudgeByID@l
/* 800DB738 000D8678  38 81 00 0C */ addi r4, r1, 0xc
/* 800DB73C 000D867C  4B F3 E0 BD */ bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800DB740 000D8680  28 03 00 00 */ cmplwi r3, 0
/* 800DB744 000D8684  41 82 00 F8 */ beq lbl_800DB83C
/* 800DB748 000D8688  38 63 04 A8 */ addi r3, r3, 0x4a8
/* 800DB74C 000D868C  38 9F 04 D0 */ addi r4, r31, 0x4d0
/* 800DB750 000D8690  48 26 BC 4D */ bl PSVECSquareDistance
/* 800DB754 000D8694  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800DB758 000D8698  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800DB75C 000D869C  40 81 00 58 */ ble lbl_800DB7B4
/* 800DB760 000D86A0  FC 00 08 34 */ frsqrte f0, f1
/* 800DB764 000D86A4  C8 82 92 E8 */ lfd f4, lbl_80452CE8-_SDA2_BASE_(r2)
/* 800DB768 000D86A8  FC 44 00 32 */ fmul f2, f4, f0
/* 800DB76C 000D86AC  C8 62 92 F0 */ lfd f3, lbl_80452CF0-_SDA2_BASE_(r2)
/* 800DB770 000D86B0  FC 00 00 32 */ fmul f0, f0, f0
/* 800DB774 000D86B4  FC 01 00 32 */ fmul f0, f1, f0
/* 800DB778 000D86B8  FC 03 00 28 */ fsub f0, f3, f0
/* 800DB77C 000D86BC  FC 02 00 32 */ fmul f0, f2, f0
/* 800DB780 000D86C0  FC 44 00 32 */ fmul f2, f4, f0
/* 800DB784 000D86C4  FC 00 00 32 */ fmul f0, f0, f0
/* 800DB788 000D86C8  FC 01 00 32 */ fmul f0, f1, f0
/* 800DB78C 000D86CC  FC 03 00 28 */ fsub f0, f3, f0
/* 800DB790 000D86D0  FC 02 00 32 */ fmul f0, f2, f0
/* 800DB794 000D86D4  FC 44 00 32 */ fmul f2, f4, f0
/* 800DB798 000D86D8  FC 00 00 32 */ fmul f0, f0, f0
/* 800DB79C 000D86DC  FC 01 00 32 */ fmul f0, f1, f0
/* 800DB7A0 000D86E0  FC 03 00 28 */ fsub f0, f3, f0
/* 800DB7A4 000D86E4  FC 02 00 32 */ fmul f0, f2, f0
/* 800DB7A8 000D86E8  FC 21 00 32 */ fmul f1, f1, f0
/* 800DB7AC 000D86EC  FC 20 08 18 */ frsp f1, f1
/* 800DB7B0 000D86F0  48 00 00 88 */ b lbl_800DB838
lbl_800DB7B4:
/* 800DB7B4 000D86F4  C8 02 92 F8 */ lfd f0, lbl_80452CF8-_SDA2_BASE_(r2)
/* 800DB7B8 000D86F8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800DB7BC 000D86FC  40 80 00 10 */ bge lbl_800DB7CC
/* 800DB7C0 000D8700  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 800DB7C4 000D8704  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 800DB7C8 000D8708  48 00 00 70 */ b lbl_800DB838
lbl_800DB7CC:
/* 800DB7CC 000D870C  D0 21 00 08 */ stfs f1, 8(r1)
/* 800DB7D0 000D8710  80 81 00 08 */ lwz r4, 8(r1)
/* 800DB7D4 000D8714  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 800DB7D8 000D8718  3C 00 7F 80 */ lis r0, 0x7f80
/* 800DB7DC 000D871C  7C 03 00 00 */ cmpw r3, r0
/* 800DB7E0 000D8720  41 82 00 14 */ beq lbl_800DB7F4
/* 800DB7E4 000D8724  40 80 00 40 */ bge lbl_800DB824
/* 800DB7E8 000D8728  2C 03 00 00 */ cmpwi r3, 0
/* 800DB7EC 000D872C  41 82 00 20 */ beq lbl_800DB80C
/* 800DB7F0 000D8730  48 00 00 34 */ b lbl_800DB824
lbl_800DB7F4:
/* 800DB7F4 000D8734  54 80 02 7F */ clrlwi. r0, r4, 9
/* 800DB7F8 000D8738  41 82 00 0C */ beq lbl_800DB804
/* 800DB7FC 000D873C  38 00 00 01 */ li r0, 1
/* 800DB800 000D8740  48 00 00 28 */ b lbl_800DB828
lbl_800DB804:
/* 800DB804 000D8744  38 00 00 02 */ li r0, 2
/* 800DB808 000D8748  48 00 00 20 */ b lbl_800DB828
lbl_800DB80C:
/* 800DB80C 000D874C  54 80 02 7F */ clrlwi. r0, r4, 9
/* 800DB810 000D8750  41 82 00 0C */ beq lbl_800DB81C
/* 800DB814 000D8754  38 00 00 05 */ li r0, 5
/* 800DB818 000D8758  48 00 00 10 */ b lbl_800DB828
lbl_800DB81C:
/* 800DB81C 000D875C  38 00 00 03 */ li r0, 3
/* 800DB820 000D8760  48 00 00 08 */ b lbl_800DB828
lbl_800DB824:
/* 800DB824 000D8764  38 00 00 04 */ li r0, 4
lbl_800DB828:
/* 800DB828 000D8768  2C 00 00 01 */ cmpwi r0, 1
/* 800DB82C 000D876C  40 82 00 0C */ bne lbl_800DB838
/* 800DB830 000D8770  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 800DB834 000D8774  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_800DB838:
/* 800DB838 000D8778  D0 3F 34 78 */ stfs f1, 0x3478(r31)
lbl_800DB83C:
/* 800DB83C 000D877C  C0 02 93 84 */ lfs f0, lbl_80452D84-_SDA2_BASE_(r2)
/* 800DB840 000D8780  D0 1F 05 94 */ stfs f0, 0x594(r31)
/* 800DB844 000D8784  38 60 00 01 */ li r3, 1
lbl_800DB848:
/* 800DB848 000D8788  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 800DB84C 000D878C  83 C1 00 18 */ lwz r30, 0x18(r1)
/* 800DB850 000D8790  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800DB854 000D8794  7C 08 03 A6 */ mtlr r0
/* 800DB858 000D8798  38 21 00 20 */ addi r1, r1, 0x20
/* 800DB85C 000D879C  4E 80 00 20 */ blr