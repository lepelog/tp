/* 8020DCE4 0020AC24  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 8020DCE8 0020AC28  7C 08 02 A6 */ mflr r0
/* 8020DCEC 0020AC2C  90 01 00 44 */ stw r0, 0x44(r1)
/* 8020DCF0 0020AC30  39 61 00 40 */ addi r11, r1, 0x40
/* 8020DCF4 0020AC34  48 15 44 E5 */ bl _savegpr_28
/* 8020DCF8 0020AC38  7C 7E 1B 78 */ mr r30, r3
/* 8020DCFC 0020AC3C  7C 9F 23 78 */ mr r31, r4
/* 8020DD00 0020AC40  88 03 00 2B */ lbz r0, 0x2b(r3)
/* 8020DD04 0020AC44  28 00 00 00 */ cmplwi r0, 0
/* 8020DD08 0020AC48  40 82 00 84 */ bne lbl_8020DD8C
/* 8020DD0C 0020AC4C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8020DD10 0020AC50  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8020DD14 0020AC54  3B 83 07 F0 */ addi r28, r3, 0x7f0
/* 8020DD18 0020AC58  7F 83 E3 78 */ mr r3, r28
/* 8020DD1C 0020AC5C  3C 80 80 3A */ lis r4, lbl_803A7288@ha
/* 8020DD20 0020AC60  3B A4 72 88 */ addi r29, r4, lbl_803A7288@l
/* 8020DD24 0020AC64  A0 9D 00 EC */ lhz r4, 0xec(r29)
/* 8020DD28 0020AC68  4B E2 6C 95 */ bl isEventBit__11dSv_event_cCFUs
/* 8020DD2C 0020AC6C  2C 03 00 00 */ cmpwi r3, 0
/* 8020DD30 0020AC70  41 82 00 5C */ beq lbl_8020DD8C
/* 8020DD34 0020AC74  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8020DD38 0020AC78  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8020DD3C 0020AC7C  38 63 4E 00 */ addi r3, r3, 0x4e00
/* 8020DD40 0020AC80  3C 80 80 3A */ lis r4, lbl_80398208@ha
/* 8020DD44 0020AC84  38 84 82 08 */ addi r4, r4, lbl_80398208@l
/* 8020DD48 0020AC88  48 15 AC 4D */ bl strcmp
/* 8020DD4C 0020AC8C  2C 03 00 00 */ cmpwi r3, 0
/* 8020DD50 0020AC90  40 82 00 1C */ bne lbl_8020DD6C
/* 8020DD54 0020AC94  7F 83 E3 78 */ mr r3, r28
/* 8020DD58 0020AC98  3C 80 80 3A */ lis r4, lbl_803A7288@ha
/* 8020DD5C 0020AC9C  38 84 72 88 */ addi r4, r4, lbl_803A7288@l
/* 8020DD60 0020ACA0  A0 84 00 EE */ lhz r4, 0xee(r4)
/* 8020DD64 0020ACA4  4B E2 6C 29 */ bl onEventBit__11dSv_event_cFUs
/* 8020DD68 0020ACA8  48 00 00 24 */ b lbl_8020DD8C
lbl_8020DD6C:
/* 8020DD6C 0020ACAC  7F 83 E3 78 */ mr r3, r28
/* 8020DD70 0020ACB0  A0 9D 00 EC */ lhz r4, 0xec(r29)
/* 8020DD74 0020ACB4  4B E2 6C 49 */ bl isEventBit__11dSv_event_cCFUs
/* 8020DD78 0020ACB8  98 7E 00 2B */ stb r3, 0x2b(r30)
/* 8020DD7C 0020ACBC  38 00 00 02 */ li r0, 2
/* 8020DD80 0020ACC0  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 8020DD84 0020ACC4  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 8020DD88 0020ACC8  98 03 00 C1 */ stb r0, 0xc1(r3)
lbl_8020DD8C:
/* 8020DD8C 0020ACCC  8B AD 87 E4 */ lbz r29, lbl_80450D64-_SDA_BASE_(r13)
/* 8020DD90 0020ACD0  7F BD 07 74 */ extsb r29, r29
/* 8020DD94 0020ACD4  93 FE 00 14 */ stw r31, 0x14(r30)
/* 8020DD98 0020ACD8  7F C3 F3 78 */ mr r3, r30
/* 8020DD9C 0020ACDC  48 00 06 C1 */ bl checkMoveStatus__11dMeterMap_cFv
/* 8020DDA0 0020ACE0  98 7E 00 2A */ stb r3, 0x2a(r30)
/* 8020DDA4 0020ACE4  88 1E 00 2A */ lbz r0, 0x2a(r30)
/* 8020DDA8 0020ACE8  28 00 00 01 */ cmplwi r0, 1
/* 8020DDAC 0020ACEC  41 82 00 50 */ beq lbl_8020DDFC
/* 8020DDB0 0020ACF0  28 00 00 02 */ cmplwi r0, 2
/* 8020DDB4 0020ACF4  41 82 00 48 */ beq lbl_8020DDFC
/* 8020DDB8 0020ACF8  28 00 00 03 */ cmplwi r0, 3
/* 8020DDBC 0020ACFC  41 82 00 40 */ beq lbl_8020DDFC
/* 8020DDC0 0020AD00  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 8020DDC4 0020AD04  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 8020DDC8 0020AD08  88 03 00 C1 */ lbz r0, 0xc1(r3)
/* 8020DDCC 0020AD0C  28 00 00 07 */ cmplwi r0, 7
/* 8020DDD0 0020AD10  41 82 00 2C */ beq lbl_8020DDFC
/* 8020DDD4 0020AD14  28 00 00 02 */ cmplwi r0, 2
/* 8020DDD8 0020AD18  41 82 00 24 */ beq lbl_8020DDFC
/* 8020DDDC 0020AD1C  28 00 00 06 */ cmplwi r0, 6
/* 8020DDE0 0020AD20  41 82 00 1C */ beq lbl_8020DDFC
/* 8020DDE4 0020AD24  28 00 00 04 */ cmplwi r0, 4
/* 8020DDE8 0020AD28  41 82 00 14 */ beq lbl_8020DDFC
/* 8020DDEC 0020AD2C  28 00 00 03 */ cmplwi r0, 3
/* 8020DDF0 0020AD30  41 82 00 0C */ beq lbl_8020DDFC
/* 8020DDF4 0020AD34  28 00 00 05 */ cmplwi r0, 5
/* 8020DDF8 0020AD38  40 82 00 0C */ bne lbl_8020DE04
lbl_8020DDFC:
/* 8020DDFC 0020AD3C  7F C3 F3 78 */ mr r3, r30
/* 8020DE00 0020AD40  48 00 02 71 */ bl ctrlShowMap__11dMeterMap_cFv
lbl_8020DE04:
/* 8020DE04 0020AD44  88 1E 00 2D */ lbz r0, 0x2d(r30)
/* 8020DE08 0020AD48  28 00 00 00 */ cmplwi r0, 0
/* 8020DE0C 0020AD4C  41 82 00 40 */ beq lbl_8020DE4C
/* 8020DE10 0020AD50  7F C3 F3 78 */ mr r3, r30
/* 8020DE14 0020AD54  4B FF F9 D1 */ bl getDispPosInside_OffsetX__11dMeterMap_cFv
/* 8020DE18 0020AD58  7C 63 07 34 */ extsh r3, r3
/* 8020DE1C 0020AD5C  A8 1E 00 28 */ lha r0, 0x28(r30)
/* 8020DE20 0020AD60  7C 00 18 00 */ cmpw r0, r3
/* 8020DE24 0020AD64  41 82 00 48 */ beq lbl_8020DE6C
/* 8020DE28 0020AD68  7F C3 F3 78 */ mr r3, r30
/* 8020DE2C 0020AD6C  4B FF F9 B9 */ bl getDispPosInside_OffsetX__11dMeterMap_cFv
/* 8020DE30 0020AD70  7C 64 1B 78 */ mr r4, r3
/* 8020DE34 0020AD74  38 7E 00 28 */ addi r3, r30, 0x28
/* 8020DE38 0020AD78  38 A0 00 02 */ li r5, 2
/* 8020DE3C 0020AD7C  38 C0 00 3C */ li r6, 0x3c
/* 8020DE40 0020AD80  38 E0 00 0A */ li r7, 0xa
/* 8020DE44 0020AD84  48 06 26 FD */ bl cLib_addCalcAngleS__FPsssss
/* 8020DE48 0020AD88  48 00 00 24 */ b lbl_8020DE6C
lbl_8020DE4C:
/* 8020DE4C 0020AD8C  7F C3 F3 78 */ mr r3, r30
/* 8020DE50 0020AD90  4B FF F9 9D */ bl getDispPosOutSide_OffsetX__11dMeterMap_cFv
/* 8020DE54 0020AD94  7C 64 1B 78 */ mr r4, r3
/* 8020DE58 0020AD98  38 7E 00 28 */ addi r3, r30, 0x28
/* 8020DE5C 0020AD9C  38 A0 00 02 */ li r5, 2
/* 8020DE60 0020ADA0  38 C0 00 3C */ li r6, 0x3c
/* 8020DE64 0020ADA4  38 E0 00 0A */ li r7, 0xa
/* 8020DE68 0020ADA8  48 06 26 D9 */ bl cLib_addCalcAngleS__FPsssss
lbl_8020DE6C:
/* 8020DE6C 0020ADAC  38 61 00 08 */ addi r3, r1, 8
/* 8020DE70 0020ADB0  4B E3 0F ED */ bl getMapPlayerPos__10dMapInfo_nFv
/* 8020DE74 0020ADB4  80 61 00 08 */ lwz r3, 8(r1)
/* 8020DE78 0020ADB8  80 01 00 0C */ lwz r0, 0xc(r1)
/* 8020DE7C 0020ADBC  90 61 00 14 */ stw r3, 0x14(r1)
/* 8020DE80 0020ADC0  90 01 00 18 */ stw r0, 0x18(r1)
/* 8020DE84 0020ADC4  80 01 00 10 */ lwz r0, 0x10(r1)
/* 8020DE88 0020ADC8  90 01 00 1C */ stw r0, 0x1c(r1)
/* 8020DE8C 0020ADCC  7F C3 F3 78 */ mr r3, r30
/* 8020DE90 0020ADD0  4B FF F8 9D */ bl getMapDispEdgeLeftX_Layout__11dMeterMap_cFv
/* 8020DE94 0020ADD4  A8 1E 00 28 */ lha r0, 0x28(r30)
/* 8020DE98 0020ADD8  C8 42 AE 28 */ lfd f2, lbl_80454828-_SDA2_BASE_(r2)
/* 8020DE9C 0020ADDC  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 8020DEA0 0020ADE0  90 01 00 24 */ stw r0, 0x24(r1)
/* 8020DEA4 0020ADE4  3C 00 43 30 */ lis r0, 0x4330
/* 8020DEA8 0020ADE8  90 01 00 20 */ stw r0, 0x20(r1)
/* 8020DEAC 0020ADEC  C8 01 00 20 */ lfd f0, 0x20(r1)
/* 8020DEB0 0020ADF0  EC 00 10 28 */ fsubs f0, f0, f2
/* 8020DEB4 0020ADF4  EC 00 08 2A */ fadds f0, f0, f1
/* 8020DEB8 0020ADF8  D0 1E 00 18 */ stfs f0, 0x18(r30)
/* 8020DEBC 0020ADFC  7F C3 F3 78 */ mr r3, r30
/* 8020DEC0 0020AE00  4B FF F7 D1 */ bl getMapDispEdgeBottomY_Layout__11dMeterMap_cFv
/* 8020DEC4 0020AE04  C0 1E 00 24 */ lfs f0, 0x24(r30)
/* 8020DEC8 0020AE08  EC 01 00 28 */ fsubs f0, f1, f0
/* 8020DECC 0020AE0C  D0 1E 00 1C */ stfs f0, 0x1c(r30)
/* 8020DED0 0020AE10  80 7E 00 08 */ lwz r3, 8(r30)
/* 8020DED4 0020AE14  C0 21 00 14 */ lfs f1, 0x14(r1)
/* 8020DED8 0020AE18  C0 41 00 1C */ lfs f2, 0x1c(r1)
/* 8020DEDC 0020AE1C  7F A4 EB 78 */ mr r4, r29
/* 8020DEE0 0020AE20  C0 61 00 18 */ lfs f3, 0x18(r1)
/* 8020DEE4 0020AE24  4B E1 C4 49 */ bl _move__6dMap_cFffif
/* 8020DEE8 0020AE28  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8020DEEC 0020AE2C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8020DEF0 0020AE30  88 63 4F AD */ lbz r3, 0x4fad(r3)
/* 8020DEF4 0020AE34  30 03 FF FF */ addic r0, r3, -1
/* 8020DEF8 0020AE38  7C 00 19 10 */ subfe r0, r0, r3
/* 8020DEFC 0020AE3C  54 00 06 3E */ clrlwi r0, r0, 0x18
/* 8020DF00 0020AE40  90 1E 00 30 */ stw r0, 0x30(r30)
/* 8020DF04 0020AE44  39 61 00 40 */ addi r11, r1, 0x40
/* 8020DF08 0020AE48  48 15 43 1D */ bl _restgpr_28
/* 8020DF0C 0020AE4C  80 01 00 44 */ lwz r0, 0x44(r1)
/* 8020DF10 0020AE50  7C 08 03 A6 */ mtlr r0
/* 8020DF14 0020AE54  38 21 00 40 */ addi r1, r1, 0x40
/* 8020DF18 0020AE58  4E 80 00 20 */ blr
