/* 8013C7A4 001396E4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8013C7A8 001396E8  7C 08 02 A6 */ mflr r0
/* 8013C7AC 001396EC  90 01 00 14 */ stw r0, 0x14(r1)
/* 8013C7B0 001396F0  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8013C7B4 001396F4  7C 7F 1B 78 */ mr r31, r3
/* 8013C7B8 001396F8  38 00 00 04 */ li r0, 4
/* 8013C7BC 001396FC  98 03 2F 99 */ stb r0, 0x2f99(r3)
/* 8013C7C0 00139700  A8 03 30 12 */ lha r0, 0x3012(r3)
/* 8013C7C4 00139704  2C 00 00 00 */ cmpwi r0, 0
/* 8013C7C8 00139708  41 82 00 18 */ beq lbl_8013C7E0
/* 8013C7CC 0013970C  C0 1F 04 D4 */ lfs f0, 0x4d4(r31)
/* 8013C7D0 00139710  C0 3F 33 B4 */ lfs f1, 0x33b4(r31)
/* 8013C7D4 00139714  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 8013C7D8 00139718  40 80 00 08 */ bge lbl_8013C7E0
/* 8013C7DC 0013971C  D0 3F 04 D4 */ stfs f1, 0x4d4(r31)
lbl_8013C7E0:
/* 8013C7E0 00139720  88 1F 2F B1 */ lbz r0, 0x2fb1(r31)
/* 8013C7E4 00139724  28 00 00 00 */ cmplwi r0, 0
/* 8013C7E8 00139728  41 82 00 44 */ beq lbl_8013C82C
/* 8013C7EC 0013972C  38 7F 04 D0 */ addi r3, r31, 0x4d0
/* 8013C7F0 00139730  80 9F 07 C8 */ lwz r4, 0x7c8(r31)
/* 8013C7F4 00139734  38 84 05 38 */ addi r4, r4, 0x538
/* 8013C7F8 00139738  48 13 44 0D */ bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8013C7FC 0013973C  7C 64 1B 78 */ mr r4, r3
/* 8013C800 00139740  A8 1F 30 0C */ lha r0, 0x300c(r31)
/* 8013C804 00139744  2C 00 00 00 */ cmpwi r0, 0
/* 8013C808 00139748  41 82 00 10 */ beq lbl_8013C818
/* 8013C80C 0013974C  3C 64 00 01 */ addis r3, r4, 1
/* 8013C810 00139750  38 03 80 00 */ addi r0, r3, -32768
/* 8013C814 00139754  7C 04 07 34 */ extsh r4, r0
lbl_8013C818:
/* 8013C818 00139758  38 7F 04 E6 */ addi r3, r31, 0x4e6
/* 8013C81C 0013975C  38 A0 00 02 */ li r5, 2
/* 8013C820 00139760  38 C0 20 00 */ li r6, 0x2000
/* 8013C824 00139764  38 E0 08 00 */ li r7, 0x800
/* 8013C828 00139768  48 13 3D 19 */ bl cLib_addCalcAngleS__FPsssss
lbl_8013C82C:
/* 8013C82C 0013976C  38 7F 33 98 */ addi r3, r31, 0x3398
/* 8013C830 00139770  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8013C834 00139774  C0 42 94 A8 */ lfs f2, lbl_80452EA8-_SDA2_BASE_(r2)
/* 8013C838 00139778  C0 62 93 3C */ lfs f3, lbl_80452D3C-_SDA2_BASE_(r2)
/* 8013C83C 0013977C  C0 82 92 B8 */ lfs f4, lbl_80452CB8-_SDA2_BASE_(r2)
/* 8013C840 00139780  48 13 31 3D */ bl cLib_addCalc__FPfffff
/* 8013C844 00139784  38 7F 1F D0 */ addi r3, r31, 0x1fd0
/* 8013C848 00139788  48 02 1C 85 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013C84C 0013978C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8013C850 00139790  41 82 00 60 */ beq lbl_8013C8B0
/* 8013C854 00139794  88 1F 2F B1 */ lbz r0, 0x2fb1(r31)
/* 8013C858 00139798  28 00 00 00 */ cmplwi r0, 0
/* 8013C85C 0013979C  41 82 00 14 */ beq lbl_8013C870
/* 8013C860 001397A0  7F E3 FB 78 */ mr r3, r31
/* 8013C864 001397A4  A8 9F 30 0A */ lha r4, 0x300a(r31)
/* 8013C868 001397A8  4B FF F5 BD */ bl procWolfLockAttackInit__9daAlink_cFi
/* 8013C86C 001397AC  48 00 00 44 */ b lbl_8013C8B0
lbl_8013C870:
/* 8013C870 001397B0  7F E3 FB 78 */ mr r3, r31
/* 8013C874 001397B4  4B F7 70 91 */ bl checkZeroSpeedF__9daAlink_cCFv
/* 8013C878 001397B8  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8013C87C 001397BC  41 82 00 1C */ beq lbl_8013C898
/* 8013C880 001397C0  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 8013C884 001397C4  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 8013C888 001397C8  7F E3 FB 78 */ mr r3, r31
/* 8013C88C 001397CC  38 80 00 00 */ li r4, 0
/* 8013C890 001397D0  4B FE D2 B5 */ bl checkNextAction__9daAlink_cFiWolf
/* 8013C894 001397D4  48 00 00 1C */ b lbl_8013C8B0
lbl_8013C898:
/* 8013C898 001397D8  38 00 00 04 */ li r0, 4
/* 8013C89C 001397DC  98 1F 2F 9D */ stb r0, 0x2f9d(r31)
/* 8013C8A0 001397E0  7F E3 FB 78 */ mr r3, r31
/* 8013C8A4 001397E4  3C 80 00 03 */ lis r4, 0x00030018@ha
/* 8013C8A8 001397E8  38 84 00 18 */ addi r4, r4, 0x00030018@l
/* 8013C8AC 001397EC  4B F8 29 21 */ bl seStartMapInfo__9daAlink_cFUlLevel
lbl_8013C8B0:
/* 8013C8B0 001397F0  38 60 00 01 */ li r3, 1
/* 8013C8B4 001397F4  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8013C8B8 001397F8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8013C8BC 001397FC  7C 08 03 A6 */ mtlr r0
/* 8013C8C0 00139800  38 21 00 10 */ addi r1, r1, 0x10
/* 8013C8C4 00139804  4E 80 00 20 */ blr
