/* 8013DE70 0013ADB0  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8013DE74 0013ADB4  7C 08 02 A6 */ mflr r0
/* 8013DE78 0013ADB8  90 01 00 24 */ stw r0, 0x24(r1)
/* 8013DE7C 0013ADBC  39 61 00 20 */ addi r11, r1, 0x20
/* 8013DE80 0013ADC0  48 22 43 5D */ bl _savegpr_29
/* 8013DE84 0013ADC4  7C 7D 1B 78 */ mr r29, r3
/* 8013DE88 0013ADC8  3B FD 1F D0 */ addi r31, r29, 0x1fd0
/* 8013DE8C 0013ADCC  38 80 00 96 */ li r4, 0x96
/* 8013DE90 0013ADD0  38 A0 00 02 */ li r5, 2
/* 8013DE94 0013ADD4  4B FA A0 3D */ bl setWallGrabStatus__9daAlink_cFUcUc
/* 8013DE98 0013ADD8  7F E3 FB 78 */ mr r3, r31
/* 8013DE9C 0013ADDC  48 02 06 31 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013DEA0 0013ADE0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8013DEA4 0013ADE4  40 82 00 2C */ bne lbl_8013DED0
/* 8013DEA8 0013ADE8  C0 3D 33 AC */ lfs f1, 0x33ac(r29)
/* 8013DEAC 0013ADEC  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 8013DEB0 0013ADF0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8013DEB4 0013ADF4  40 81 00 60 */ ble lbl_8013DF14
/* 8013DEB8 0013ADF8  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 8013DEBC 0013ADFC  3C 60 80 39 */ lis r3, lbl_8038F95C@ha
/* 8013DEC0 0013AE00  38 63 F9 5C */ addi r3, r3, lbl_8038F95C@l
/* 8013DEC4 0013AE04  C0 03 00 38 */ lfs f0, 0x38(r3)
/* 8013DEC8 0013AE08  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8013DECC 0013AE0C  40 81 00 48 */ ble lbl_8013DF14
lbl_8013DED0:
/* 8013DED0 0013AE10  8B DD 2F A3 */ lbz r30, 0x2fa3(r29)
/* 8013DED4 0013AE14  83 FD 28 48 */ lwz r31, 0x2848(r29)
/* 8013DED8 0013AE18  7F A3 EB 78 */ mr r3, r29
/* 8013DEDC 0013AE1C  4B FE F2 CD */ bl procWolfWaitInit__9daAlink_cFv
/* 8013DEE0 0013AE20  7F A3 EB 78 */ mr r3, r29
/* 8013DEE4 0013AE24  3C 80 80 39 */ lis r4, lbl_80391010@ha
/* 8013DEE8 0013AE28  38 84 10 10 */ addi r4, r4, lbl_80391010@l
/* 8013DEEC 0013AE2C  A0 84 04 50 */ lhz r4, 0x450(r4)
/* 8013DEF0 0013AE30  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8013DEF4 0013AE34  C0 42 92 C4 */ lfs f2, lbl_80452CC4-_SDA2_BASE_(r2)
/* 8013DEF8 0013AE38  4B F6 F4 B1 */ bl setUpperAnimeBase__9daAlink_cFUsSpeed
/* 8013DEFC 0013AE3C  28 1F 00 00 */ cmplwi r31, 0
/* 8013DF00 0013AE40  41 82 00 14 */ beq lbl_8013DF14
/* 8013DF04 0013AE44  9B DD 2F A3 */ stb r30, 0x2fa3(r29)
/* 8013DF08 0013AE48  38 7D 28 44 */ addi r3, r29, 0x2844
/* 8013DF0C 0013AE4C  7F E4 FB 78 */ mr r4, r31
/* 8013DF10 0013AE50  48 02 0D A9 */ bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
lbl_8013DF14:
/* 8013DF14 0013AE54  38 60 00 01 */ li r3, 1
/* 8013DF18 0013AE58  39 61 00 20 */ addi r11, r1, 0x20
/* 8013DF1C 0013AE5C  48 22 43 0D */ bl _restgpr_29
/* 8013DF20 0013AE60  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8013DF24 0013AE64  7C 08 03 A6 */ mtlr r0
/* 8013DF28 0013AE68  38 21 00 20 */ addi r1, r1, 0x20
/* 8013DF2C 0013AE6C  4E 80 00 20 */ blr
