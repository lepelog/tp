/* 80106774 001036B4  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 80106778 001036B8  7C 08 02 A6 */ mflr r0
/* 8010677C 001036BC  90 01 00 44 */ stw r0, 0x44(r1)
/* 80106780 001036C0  93 E1 00 3C */ stw r31, 0x3c(r1)
/* 80106784 001036C4  7C 7F 1B 78 */ mr r31, r3
/* 80106788 001036C8  38 80 00 A6 */ li r4, 0xa6
/* 8010678C 001036CC  4B FB B7 E1 */ bl daAlink_c_NS_commonProcInit
/* 80106790 001036D0  7F E3 FB 78 */ mr r3, r31
/* 80106794 001036D4  38 80 00 D7 */ li r4, 0xd7
/* 80106798 001036D8  3C A0 80 39 */ lis r5, lbl_8038E11C@ha
/* 8010679C 001036DC  38 C5 E1 1C */ addi r6, r5, lbl_8038E11C@l
/* 801067A0 001036E0  C0 26 00 04 */ lfs f1, 4(r6)
/* 801067A4 001036E4  C0 42 93 44 */ lfs f2, lbl_80452D44-_SDA2_BASE_(r2)
/* 801067A8 001036E8  A8 A6 00 00 */ lha r5, 0(r6)
/* 801067AC 001036EC  C0 66 00 0C */ lfs f3, 0xc(r6)
/* 801067B0 001036F0  4B FA 68 5D */ bl daAlink_c_NS_setSingleAnime
/* 801067B4 001036F4  7F E3 FB 78 */ mr r3, r31
/* 801067B8 001036F8  38 80 00 00 */ li r4, 0
/* 801067BC 001036FC  4B FD BD C5 */ bl daAlink_c_NS_setHeavyBoots
/* 801067C0 00103700  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 801067C4 00103704  28 00 01 03 */ cmplwi r0, 0x103
/* 801067C8 00103708  41 82 00 18 */ beq lbl_801067E0
/* 801067CC 0010370C  7F E3 FB 78 */ mr r3, r31
/* 801067D0 00103710  38 80 00 01 */ li r4, 1
/* 801067D4 00103714  38 A0 00 01 */ li r5, 1
/* 801067D8 00103718  4B FB AB 05 */ bl daAlink_c_NS_deleteEquipItem
/* 801067DC 0010371C  48 00 00 0C */ b lbl_801067E8
lbl_801067E0:
/* 801067E0 00103720  7F E3 FB 78 */ mr r3, r31
/* 801067E4 00103724  48 00 A0 5D */ bl daAlink_c_NS_offKandelaarModel
lbl_801067E8:
/* 801067E8 00103728  7F E3 FB 78 */ mr r3, r31
/* 801067EC 0010372C  3C 80 00 01 */ lis r4, 0x00010005@ha
/* 801067F0 00103730  38 84 00 05 */ addi r4, r4, 0x00010005@l
/* 801067F4 00103734  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 801067F8 00103738  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 801067FC 0010373C  7D 89 03 A6 */ mtctr r12
/* 80106800 00103740  4E 80 04 21 */ bctrl
/* 80106804 00103744  38 00 00 0F */ li r0, 0xf
/* 80106808 00103748  98 1F 2F 99 */ stb r0, 0x2f99(r31)
/* 8010680C 0010374C  38 61 00 18 */ addi r3, r1, 0x18
/* 80106810 00103750  80 9F 27 F4 */ lwz r4, 0x27f4(r31)
/* 80106814 00103754  38 84 04 D0 */ addi r4, r4, 0x4d0
/* 80106818 00103758  38 BF 04 D0 */ addi r5, r31, 0x4d0
/* 8010681C 0010375C  48 16 03 19 */ bl __mi__4cXyzCFRC3Vec
/* 80106820 00103760  C0 01 00 18 */ lfs f0, 0x18(r1)
/* 80106824 00103764  D0 01 00 24 */ stfs f0, 0x24(r1)
/* 80106828 00103768  C0 01 00 1C */ lfs f0, 0x1c(r1)
/* 8010682C 0010376C  D0 01 00 28 */ stfs f0, 0x28(r1)
/* 80106830 00103770  C0 01 00 20 */ lfs f0, 0x20(r1)
/* 80106834 00103774  D0 01 00 2C */ stfs f0, 0x2c(r1)
/* 80106838 00103778  C0 02 93 20 */ lfs f0, lbl_80452D20-_SDA2_BASE_(r2)
/* 8010683C 0010377C  D0 1F 04 FC */ stfs f0, 0x4fc(r31)
/* 80106840 00103780  38 61 00 24 */ addi r3, r1, 0x24
/* 80106844 00103784  48 16 08 E5 */ bl atan2sX_Z__4cXyzCFv
/* 80106848 00103788  B0 7F 04 E6 */ sth r3, 0x4e6(r31)
/* 8010684C 0010378C  C0 01 00 24 */ lfs f0, 0x24(r1)
/* 80106850 00103790  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 80106854 00103794  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80106858 00103798  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 8010685C 0010379C  C0 01 00 2C */ lfs f0, 0x2c(r1)
/* 80106860 001037A0  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 80106864 001037A4  38 61 00 0C */ addi r3, r1, 0xc
/* 80106868 001037A8  48 24 08 D1 */ bl PSVECSquareMag
/* 8010686C 001037AC  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80106870 001037B0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80106874 001037B4  40 81 00 58 */ ble lbl_801068CC
/* 80106878 001037B8  FC 00 08 34 */ frsqrte f0, f1
/* 8010687C 001037BC  C8 82 92 E8 */ lfd f4, lbl_80452CE8-_SDA2_BASE_(r2)
/* 80106880 001037C0  FC 44 00 32 */ fmul f2, f4, f0
/* 80106884 001037C4  C8 62 92 F0 */ lfd f3, lbl_80452CF0-_SDA2_BASE_(r2)
/* 80106888 001037C8  FC 00 00 32 */ fmul f0, f0, f0
/* 8010688C 001037CC  FC 01 00 32 */ fmul f0, f1, f0
/* 80106890 001037D0  FC 03 00 28 */ fsub f0, f3, f0
/* 80106894 001037D4  FC 02 00 32 */ fmul f0, f2, f0
/* 80106898 001037D8  FC 44 00 32 */ fmul f2, f4, f0
/* 8010689C 001037DC  FC 00 00 32 */ fmul f0, f0, f0
/* 801068A0 001037E0  FC 01 00 32 */ fmul f0, f1, f0
/* 801068A4 001037E4  FC 03 00 28 */ fsub f0, f3, f0
/* 801068A8 001037E8  FC 02 00 32 */ fmul f0, f2, f0
/* 801068AC 001037EC  FC 44 00 32 */ fmul f2, f4, f0
/* 801068B0 001037F0  FC 00 00 32 */ fmul f0, f0, f0
/* 801068B4 001037F4  FC 01 00 32 */ fmul f0, f1, f0
/* 801068B8 001037F8  FC 03 00 28 */ fsub f0, f3, f0
/* 801068BC 001037FC  FC 02 00 32 */ fmul f0, f2, f0
/* 801068C0 00103800  FC 21 00 32 */ fmul f1, f1, f0
/* 801068C4 00103804  FC 20 08 18 */ frsp f1, f1
/* 801068C8 00103808  48 00 00 88 */ b lbl_80106950
lbl_801068CC:
/* 801068CC 0010380C  C8 02 92 F8 */ lfd f0, lbl_80452CF8-_SDA2_BASE_(r2)
/* 801068D0 00103810  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801068D4 00103814  40 80 00 10 */ bge lbl_801068E4
/* 801068D8 00103818  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 801068DC 0010381C  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 801068E0 00103820  48 00 00 70 */ b lbl_80106950
lbl_801068E4:
/* 801068E4 00103824  D0 21 00 08 */ stfs f1, 8(r1)
/* 801068E8 00103828  80 81 00 08 */ lwz r4, 8(r1)
/* 801068EC 0010382C  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 801068F0 00103830  3C 00 7F 80 */ lis r0, 0x7f80
/* 801068F4 00103834  7C 03 00 00 */ cmpw r3, r0
/* 801068F8 00103838  41 82 00 14 */ beq lbl_8010690C
/* 801068FC 0010383C  40 80 00 40 */ bge lbl_8010693C
/* 80106900 00103840  2C 03 00 00 */ cmpwi r3, 0
/* 80106904 00103844  41 82 00 20 */ beq lbl_80106924
/* 80106908 00103848  48 00 00 34 */ b lbl_8010693C
lbl_8010690C:
/* 8010690C 0010384C  54 80 02 7F */ clrlwi. r0, r4, 9
/* 80106910 00103850  41 82 00 0C */ beq lbl_8010691C
/* 80106914 00103854  38 00 00 01 */ li r0, 1
/* 80106918 00103858  48 00 00 28 */ b lbl_80106940
lbl_8010691C:
/* 8010691C 0010385C  38 00 00 02 */ li r0, 2
/* 80106920 00103860  48 00 00 20 */ b lbl_80106940
lbl_80106924:
/* 80106924 00103864  54 80 02 7F */ clrlwi. r0, r4, 9
/* 80106928 00103868  41 82 00 0C */ beq lbl_80106934
/* 8010692C 0010386C  38 00 00 05 */ li r0, 5
/* 80106930 00103870  48 00 00 10 */ b lbl_80106940
lbl_80106934:
/* 80106934 00103874  38 00 00 03 */ li r0, 3
/* 80106938 00103878  48 00 00 08 */ b lbl_80106940
lbl_8010693C:
/* 8010693C 0010387C  38 00 00 04 */ li r0, 4
lbl_80106940:
/* 80106940 00103880  2C 00 00 01 */ cmpwi r0, 1
/* 80106944 00103884  40 82 00 0C */ bne lbl_80106950
/* 80106948 00103888  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8010694C 0010388C  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_80106950:
/* 80106950 00103890  C0 42 95 F8 */ lfs f2, lbl_80452FF8-_SDA2_BASE_(r2)
/* 80106954 00103894  C0 1F 05 30 */ lfs f0, 0x530(r31)
/* 80106958 00103898  FC 00 00 50 */ fneg f0, f0
/* 8010695C 0010389C  EC 00 00 72 */ fmuls f0, f0, f1
/* 80106960 001038A0  EC 02 00 32 */ fmuls f0, f2, f0
/* 80106964 001038A4  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 80106968 001038A8  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 8010696C 001038AC  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 80106970 001038B0  3C 60 80 42 */ lis r3, lbl_80425514@ha
/* 80106974 001038B4  C4 03 55 14 */ lfsu f0, lbl_80425514@l(r3)
/* 80106978 001038B8  D0 1F 35 88 */ stfs f0, 0x3588(r31)
/* 8010697C 001038BC  C0 03 00 04 */ lfs f0, 4(r3)
/* 80106980 001038C0  D0 1F 35 8C */ stfs f0, 0x358c(r31)
/* 80106984 001038C4  C0 03 00 08 */ lfs f0, 8(r3)
/* 80106988 001038C8  D0 1F 35 90 */ stfs f0, 0x3590(r31)
/* 8010698C 001038CC  C0 1F 35 8C */ lfs f0, 0x358c(r31)
/* 80106990 001038D0  D0 1F 33 B0 */ stfs f0, 0x33b0(r31)
/* 80106994 001038D4  C0 03 00 00 */ lfs f0, 0(r3)
/* 80106998 001038D8  D0 1F 34 D4 */ stfs f0, 0x34d4(r31)
/* 8010699C 001038DC  C0 03 00 04 */ lfs f0, 4(r3)
/* 801069A0 001038E0  D0 1F 34 D8 */ stfs f0, 0x34d8(r31)
/* 801069A4 001038E4  C0 03 00 08 */ lfs f0, 8(r3)
/* 801069A8 001038E8  D0 1F 34 DC */ stfs f0, 0x34dc(r31)
/* 801069AC 001038EC  38 7F 28 0C */ addi r3, r31, 0x280c
/* 801069B0 001038F0  80 9F 27 F4 */ lwz r4, 0x27f4(r31)
/* 801069B4 001038F4  48 05 83 05 */ bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 801069B8 001038F8  38 60 00 01 */ li r3, 1
/* 801069BC 001038FC  83 E1 00 3C */ lwz r31, 0x3c(r1)
/* 801069C0 00103900  80 01 00 44 */ lwz r0, 0x44(r1)
/* 801069C4 00103904  7C 08 03 A6 */ mtlr r0
/* 801069C8 00103908  38 21 00 40 */ addi r1, r1, 0x40
/* 801069CC 0010390C  4E 80 00 20 */ blr