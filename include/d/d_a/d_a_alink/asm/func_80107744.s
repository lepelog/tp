/* 80107744 00104684  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80107748 00104688  7C 08 02 A6 */ mflr r0
/* 8010774C 0010468C  90 01 00 14 */ stw r0, 0x14(r1)
/* 80107750 00104690  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80107754 00104694  93 C1 00 08 */ stw r30, 8(r1)
/* 80107758 00104698  7C 7F 1B 78 */ mr r31, r3
/* 8010775C 0010469C  38 80 00 01 */ li r4, 1
/* 80107760 001046A0  4B FF E3 F9 */ bl daAlink_c_NS_boardCommon
/* 80107764 001046A4  2C 03 00 00 */ cmpwi r3, 0
/* 80107768 001046A8  41 82 00 0C */ beq lbl_80107774
/* 8010776C 001046AC  38 60 00 01 */ li r3, 1
/* 80107770 001046B0  48 00 01 78 */ b lbl_801078E8
lbl_80107774:
/* 80107774 001046B4  3B DF 1F D0 */ addi r30, r31, 0x1fd0
/* 80107778 001046B8  C0 3F 1F E0 */ lfs f1, 0x1fe0(r31)
/* 8010777C 001046BC  C0 02 93 24 */ lfs f0, lbl_80452D24-_SDA2_BASE_(r2)
/* 80107780 001046C0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80107784 001046C4  4C 41 13 82 */ cror 2, 1, 2
/* 80107788 001046C8  40 82 00 64 */ bne lbl_801077EC
/* 8010778C 001046CC  C0 02 93 48 */ lfs f0, lbl_80452D48-_SDA2_BASE_(r2)
/* 80107790 001046D0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80107794 001046D4  40 80 00 58 */ bge lbl_801077EC
/* 80107798 001046D8  80 1F 05 70 */ lwz r0, 0x570(r31)
/* 8010779C 001046DC  54 00 06 73 */ rlwinm. r0, r0, 0, 0x19, 0x19
/* 801077A0 001046E0  40 82 00 14 */ bne lbl_801077B4
/* 801077A4 001046E4  7F E3 FB 78 */ mr r3, r31
/* 801077A8 001046E8  3C 80 00 02 */ lis r4, 0x00020005@ha
/* 801077AC 001046EC  38 84 00 05 */ addi r4, r4, 0x00020005@l
/* 801077B0 001046F0  4B FB 79 3D */ bl daAlink_c_NS_seStartSwordCut
lbl_801077B4:
/* 801077B4 001046F4  80 1F 05 80 */ lwz r0, 0x580(r31)
/* 801077B8 001046F8  60 00 00 02 */ ori r0, r0, 2
/* 801077BC 001046FC  90 1F 05 80 */ stw r0, 0x580(r31)
/* 801077C0 00104700  38 7F 34 7C */ addi r3, r31, 0x347c
/* 801077C4 00104704  C0 3F 34 78 */ lfs f1, 0x3478(r31)
/* 801077C8 00104708  C0 42 93 78 */ lfs f2, lbl_80452D78-_SDA2_BASE_(r2)
/* 801077CC 0010470C  48 16 8F 75 */ bl cLib_chaseF__FPfff
/* 801077D0 00104710  38 7F 10 DC */ addi r3, r31, 0x10dc
/* 801077D4 00104714  C0 3F 34 7C */ lfs f1, 0x347c(r31)
/* 801077D8 00104718  48 16 7F 31 */ bl SetR__8cM3dGSphFf
/* 801077DC 0010471C  80 1F 05 84 */ lwz r0, 0x584(r31)
/* 801077E0 00104720  60 00 00 40 */ ori r0, r0, 0x40
/* 801077E4 00104724  90 1F 05 84 */ stw r0, 0x584(r31)
/* 801077E8 00104728  48 00 00 0C */ b lbl_801077F4
lbl_801077EC:
/* 801077EC 0010472C  38 00 00 00 */ li r0, 0
/* 801077F0 00104730  B0 1F 30 12 */ sth r0, 0x3012(r31)
lbl_801077F4:
/* 801077F4 00104734  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 801077F8 00104738  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 801077FC 0010473C  40 82 00 C0 */ bne lbl_801078BC
/* 80107800 00104740  80 1F 31 98 */ lwz r0, 0x3198(r31)
/* 80107804 00104744  2C 00 00 00 */ cmpwi r0, 0
/* 80107808 00104748  41 82 00 1C */ beq lbl_80107824
/* 8010780C 0010474C  7F E3 FB 78 */ mr r3, r31
/* 80107810 00104750  4B FF EE DD */ bl daAlink_c_NS_setBoardLandAnime
/* 80107814 00104754  7F E3 FB 78 */ mr r3, r31
/* 80107818 00104758  38 80 00 00 */ li r4, 0
/* 8010781C 0010475C  4B FF F2 1D */ bl daAlink_c_NS_procBoardWaitInit
/* 80107820 00104760  48 00 00 C4 */ b lbl_801078E4
lbl_80107824:
/* 80107824 00104764  C0 3E 00 10 */ lfs f1, 0x10(r30)
/* 80107828 00104768  C0 02 92 C4 */ lfs f0, lbl_80452CC4-_SDA2_BASE_(r2)
/* 8010782C 0010476C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80107830 00104770  4C 41 13 82 */ cror 2, 1, 2
/* 80107834 00104774  40 82 00 B0 */ bne lbl_801078E4
/* 80107838 00104778  A8 1F 04 E4 */ lha r0, 0x4e4(r31)
/* 8010783C 0010477C  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 80107840 00104780  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 80107844 00104784  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 80107848 00104788  7C 03 04 2E */ lfsx f0, r3, r0
/* 8010784C 0010478C  C0 3F 33 98 */ lfs f1, 0x3398(r31)
/* 80107850 00104790  FC 00 00 50 */ fneg f0, f0
/* 80107854 00104794  EC 01 00 32 */ fmuls f0, f1, f0
/* 80107858 00104798  D0 1F 04 FC */ stfs f0, 0x4fc(r31)
/* 8010785C 0010479C  C0 3F 04 FC */ lfs f1, 0x4fc(r31)
/* 80107860 001047A0  3C 60 80 39 */ lis r3, lbl_8038E870@ha
/* 80107864 001047A4  38 63 E8 70 */ addi r3, r3, lbl_8038E870@l
/* 80107868 001047A8  C0 03 00 90 */ lfs f0, 0x90(r3)
/* 8010786C 001047AC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80107870 001047B0  40 80 00 0C */ bge lbl_8010787C
/* 80107874 001047B4  D0 1F 04 FC */ stfs f0, 0x4fc(r31)
/* 80107878 001047B8  48 00 00 14 */ b lbl_8010788C
lbl_8010787C:
/* 8010787C 001047BC  C0 03 00 94 */ lfs f0, 0x94(r3)
/* 80107880 001047C0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80107884 001047C4  40 81 00 08 */ ble lbl_8010788C
/* 80107888 001047C8  D0 1F 04 FC */ stfs f0, 0x4fc(r31)
lbl_8010788C:
/* 8010788C 001047CC  7F E3 FB 78 */ mr r3, r31
/* 80107890 001047D0  4B FA D0 41 */ bl daAlink_c_NS_setJumpMode
/* 80107894 001047D4  7F E3 FB 78 */ mr r3, r31
/* 80107898 001047D8  3C 80 00 02 */ lis r4, 0x00020093@ha
/* 8010789C 001047DC  38 84 00 93 */ addi r4, r4, 0x00020093@l
/* 801078A0 001047E0  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 801078A4 001047E4  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 801078A8 001047E8  7D 89 03 A6 */ mtctr r12
/* 801078AC 001047EC  4E 80 04 21 */ bctrl
/* 801078B0 001047F0  38 00 00 01 */ li r0, 1
/* 801078B4 001047F4  90 1F 31 98 */ stw r0, 0x3198(r31)
/* 801078B8 001047F8  48 00 00 2C */ b lbl_801078E4
lbl_801078BC:
/* 801078BC 001047FC  38 00 00 01 */ li r0, 1
/* 801078C0 00104800  90 1F 31 98 */ stw r0, 0x3198(r31)
/* 801078C4 00104804  7F C3 F3 78 */ mr r3, r30
/* 801078C8 00104808  48 05 6C 05 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 801078CC 0010480C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 801078D0 00104810  41 82 00 14 */ beq lbl_801078E4
/* 801078D4 00104814  7F E3 FB 78 */ mr r3, r31
/* 801078D8 00104818  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 801078DC 0010481C  38 80 00 01 */ li r4, 1
/* 801078E0 00104820  4B FF F9 39 */ bl daAlink_c_NS_procBoardJumpInit
lbl_801078E4:
/* 801078E4 00104824  38 60 00 01 */ li r3, 1
lbl_801078E8:
/* 801078E8 00104828  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 801078EC 0010482C  83 C1 00 08 */ lwz r30, 8(r1)
/* 801078F0 00104830  80 01 00 14 */ lwz r0, 0x14(r1)
/* 801078F4 00104834  7C 08 03 A6 */ mtlr r0
/* 801078F8 00104838  38 21 00 10 */ addi r1, r1, 0x10
/* 801078FC 0010483C  4E 80 00 20 */ blr