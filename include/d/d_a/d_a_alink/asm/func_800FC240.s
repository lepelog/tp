/* 800FC240 000F9180  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800FC244 000F9184  7C 08 02 A6 */ mflr r0
/* 800FC248 000F9188  90 01 00 14 */ stw r0, 0x14(r1)
/* 800FC24C 000F918C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800FC250 000F9190  7C 7F 1B 78 */ mr r31, r3
/* 800FC254 000F9194  38 7F 04 E6 */ addi r3, r31, 0x4e6
/* 800FC258 000F9198  A8 9F 30 0C */ lha r4, 0x300c(r31)
/* 800FC25C 000F919C  38 A0 00 02 */ li r5, 2
/* 800FC260 000F91A0  38 C0 10 00 */ li r6, 0x1000
/* 800FC264 000F91A4  38 E0 04 00 */ li r7, 0x400
/* 800FC268 000F91A8  48 17 42 D9 */ bl cLib_addCalcAngleS__FPsssss
/* 800FC26C 000F91AC  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 800FC270 000F91B0  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 800FC274 000F91B4  38 7F 1F D0 */ addi r3, r31, 0x1fd0
/* 800FC278 000F91B8  48 06 22 55 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800FC27C 000F91BC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800FC280 000F91C0  41 82 00 5C */ beq lbl_800FC2DC
/* 800FC284 000F91C4  A8 1F 30 0C */ lha r0, 0x300c(r31)
/* 800FC288 000F91C8  B0 1F 04 E6 */ sth r0, 0x4e6(r31)
/* 800FC28C 000F91CC  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 800FC290 000F91D0  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 800FC294 000F91D4  80 1F 31 98 */ lwz r0, 0x3198(r31)
/* 800FC298 000F91D8  2C 00 00 03 */ cmpwi r0, 3
/* 800FC29C 000F91DC  40 82 00 14 */ bne lbl_800FC2B0
/* 800FC2A0 000F91E0  7F E3 FB 78 */ mr r3, r31
/* 800FC2A4 000F91E4  38 80 00 01 */ li r4, 1
/* 800FC2A8 000F91E8  48 00 31 A9 */ bl daAlink_c_NS_procClimbUpStartInit
/* 800FC2AC 000F91EC  48 00 00 20 */ b lbl_800FC2CC
lbl_800FC2B0:
/* 800FC2B0 000F91F0  2C 00 00 09 */ cmpwi r0, 9
/* 800FC2B4 000F91F4  40 82 00 10 */ bne lbl_800FC2C4
/* 800FC2B8 000F91F8  7F E3 FB 78 */ mr r3, r31
/* 800FC2BC 000F91FC  4B FF E7 C1 */ bl daAlink_c_NS_procHangStartInit
/* 800FC2C0 000F9200  48 00 00 0C */ b lbl_800FC2CC
lbl_800FC2C4:
/* 800FC2C4 000F9204  7F E3 FB 78 */ mr r3, r31
/* 800FC2C8 000F9208  4B FF FB 3D */ bl daAlink_c_NS_procHangWallCatchInit
lbl_800FC2CC:
/* 800FC2CC 000F920C  2C 03 00 00 */ cmpwi r3, 0
/* 800FC2D0 000F9210  40 82 00 0C */ bne lbl_800FC2DC
/* 800FC2D4 000F9214  7F E3 FB 78 */ mr r3, r31
/* 800FC2D8 000F9218  4B FC 70 E1 */ bl daAlink_c_NS_procWaitInit
lbl_800FC2DC:
/* 800FC2DC 000F921C  38 60 00 01 */ li r3, 1
/* 800FC2E0 000F9220  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800FC2E4 000F9224  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800FC2E8 000F9228  7C 08 03 A6 */ mtlr r0
/* 800FC2EC 000F922C  38 21 00 10 */ addi r1, r1, 0x10
/* 800FC2F0 000F9230  4E 80 00 20 */ blr
