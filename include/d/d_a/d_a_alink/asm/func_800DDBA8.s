/* 800DDBA8 000DAAE8  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 800DDBAC 000DAAEC  7C 08 02 A6 */ mflr r0
/* 800DDBB0 000DAAF0  90 01 00 34 */ stw r0, 0x34(r1)
/* 800DDBB4 000DAAF4  39 61 00 30 */ addi r11, r1, 0x30
/* 800DDBB8 000DAAF8  48 28 46 25 */ bl _savegpr_29
/* 800DDBBC 000DAAFC  7C 7E 1B 78 */ mr r30, r3
/* 800DDBC0 000DAB00  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 800DDBC4 000DAB04  C0 22 92 BC */ lfs f1, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800DDBC8 000DAB08  4B FF F4 41 */ bl daAlink_c_NS_setUpperGuardAnime
/* 800DDBCC 000DAB0C  38 00 00 04 */ li r0, 4
/* 800DDBD0 000DAB10  98 1E 2F 99 */ stb r0, 0x2f99(r30)
/* 800DDBD4 000DAB14  38 7E 33 98 */ addi r3, r30, 0x3398
/* 800DDBD8 000DAB18  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800DDBDC 000DAB1C  3C 80 80 39 */ lis r4, lbl_8038D6BC@ha
/* 800DDBE0 000DAB20  38 84 D6 BC */ addi r4, r4, lbl_8038D6BC@l
/* 800DDBE4 000DAB24  C0 44 00 38 */ lfs f2, 0x38(r4)
/* 800DDBE8 000DAB28  48 19 2B 59 */ bl cLib_chaseF__FPfff
/* 800DDBEC 000DAB2C  7F C3 F3 78 */ mr r3, r30
/* 800DDBF0 000DAB30  38 80 00 01 */ li r4, 1
/* 800DDBF4 000DAB34  4B FD 5B 41 */ bl daAlink_c_NS_setShapeAngleToAtnActor
/* 800DDBF8 000DAB38  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 800DDBFC 000DAB3C  B0 1E 04 DE */ sth r0, 0x4de(r30)
/* 800DDC00 000DAB40  7F C3 F3 78 */ mr r3, r30
/* 800DDC04 000DAB44  4B FF 44 B1 */ bl daAlink_c_NS_checkForceSwordSwing
/* 800DDC08 000DAB48  2C 03 00 00 */ cmpwi r3, 0
/* 800DDC0C 000DAB4C  41 82 00 0C */ beq lbl_800DDC18
/* 800DDC10 000DAB50  38 00 00 01 */ li r0, 1
/* 800DDC14 000DAB54  B0 1E 30 0C */ sth r0, 0x300c(r30)
lbl_800DDC18:
/* 800DDC18 000DAB58  A0 1E 2F DC */ lhz r0, 0x2fdc(r30)
/* 800DDC1C 000DAB5C  28 00 01 03 */ cmplwi r0, 0x103
/* 800DDC20 000DAB60  40 82 00 2C */ bne lbl_800DDC4C
/* 800DDC24 000DAB64  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800DDC28 000DAB68  54 00 04 E7 */ rlwinm. r0, r0, 0, 0x13, 0x13
/* 800DDC2C 000DAB6C  40 82 00 20 */ bne lbl_800DDC4C
/* 800DDC30 000DAB70  3B A0 00 01 */ li r29, 1
/* 800DDC34 000DAB74  88 1E 2F 8D */ lbz r0, 0x2f8d(r30)
/* 800DDC38 000DAB78  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800DDC3C 000DAB7C  41 82 00 14 */ beq lbl_800DDC50
/* 800DDC40 000DAB80  38 00 00 01 */ li r0, 1
/* 800DDC44 000DAB84  B0 1E 30 0E */ sth r0, 0x300e(r30)
/* 800DDC48 000DAB88  48 00 00 08 */ b lbl_800DDC50
lbl_800DDC4C:
/* 800DDC4C 000DAB8C  3B A0 00 00 */ li r29, 0
lbl_800DDC50:
/* 800DDC50 000DAB90  A8 1E 30 08 */ lha r0, 0x3008(r30)
/* 800DDC54 000DAB94  2C 00 00 00 */ cmpwi r0, 0
/* 800DDC58 000DAB98  40 82 00 4C */ bne lbl_800DDCA4
/* 800DDC5C 000DAB9C  38 7E 15 F8 */ addi r3, r30, 0x15f8
/* 800DDC60 000DABA0  4B FA 66 61 */ bl ChkAtHit__12dCcD_GObjInfFv
/* 800DDC64 000DABA4  28 03 00 00 */ cmplwi r3, 0
/* 800DDC68 000DABA8  41 82 00 3C */ beq lbl_800DDCA4
/* 800DDC6C 000DABAC  38 00 00 01 */ li r0, 1
/* 800DDC70 000DABB0  B0 1E 30 08 */ sth r0, 0x3008(r30)
/* 800DDC74 000DABB4  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800DDC78 000DABB8  D0 21 00 08 */ stfs f1, 8(r1)
/* 800DDC7C 000DABBC  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800DDC80 000DABC0  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 800DDC84 000DABC4  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 800DDC88 000DABC8  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800DDC8C 000DABCC  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800DDC90 000DABD0  38 63 5B D4 */ addi r3, r3, 0x5bd4
/* 800DDC94 000DABD4  38 80 00 03 */ li r4, 3
/* 800DDC98 000DABD8  38 A0 00 01 */ li r5, 1
/* 800DDC9C 000DABDC  38 C1 00 08 */ addi r6, r1, 8
/* 800DDCA0 000DABE0  4B F9 1D 85 */ bl StartShock__12dVibration_cFii4cXyz
lbl_800DDCA4:
/* 800DDCA4 000DABE4  A8 1E 30 12 */ lha r0, 0x3012(r30)
/* 800DDCA8 000DABE8  2C 00 00 00 */ cmpwi r0, 0
/* 800DDCAC 000DABEC  41 82 00 6C */ beq lbl_800DDD18
/* 800DDCB0 000DABF0  7F C3 F3 78 */ mr r3, r30
/* 800DDCB4 000DABF4  38 9E 38 34 */ addi r4, r30, 0x3834
/* 800DDCB8 000DABF8  38 BE 05 D4 */ addi r5, r30, 0x5d4
/* 800DDCBC 000DABFC  4B FC 44 DD */ bl daAlink_c_NS_commonLineCheck
/* 800DDCC0 000DAC00  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800DDCC4 000DAC04  41 82 00 54 */ beq lbl_800DDD18
/* 800DDCC8 000DAC08  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800DDCCC 000DAC0C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800DDCD0 000DAC10  38 63 0F 38 */ addi r3, r3, 0xf38
/* 800DDCD4 000DAC14  38 9E 1B 5C */ addi r4, r30, 0x1b5c
/* 800DDCD8 000DAC18  4B F9 71 29 */ bl GetWallCode__4dBgSFRC13cBgS_PolyInfo
/* 800DDCDC 000DAC1C  2C 03 00 07 */ cmpwi r3, 7
/* 800DDCE0 000DAC20  41 82 00 38 */ beq lbl_800DDD18
/* 800DDCE4 000DAC24  38 7E 1B 5C */ addi r3, r30, 0x1b5c
/* 800DDCE8 000DAC28  48 0C D7 D9 */ bl dKy_pol_sound_get
/* 800DDCEC 000DAC2C  54 65 06 3E */ clrlwi r5, r3, 0x18
/* 800DDCF0 000DAC30  38 7E 2C A8 */ addi r3, r30, 0x2ca8
/* 800DDCF4 000DAC34  3C 80 00 04 */ lis r4, 0x00040002@ha
/* 800DDCF8 000DAC38  38 84 00 02 */ addi r4, r4, 0x00040002@l
/* 800DDCFC 000DAC3C  38 C0 00 00 */ li r6, 0
/* 800DDD00 000DAC40  C0 22 92 BC */ lfs f1, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800DDD04 000DAC44  48 1E 6B 11 */ bl startHitItemSE__14Z2CreatureLinkFUlUlP14Z2SoundObjBasef
/* 800DDD08 000DAC48  7F C3 F3 78 */ mr r3, r30
/* 800DDD0C 000DAC4C  38 80 00 2F */ li r4, 0x2f
/* 800DDD10 000DAC50  4B FF 63 59 */ bl daAlink_c_NS_procCutReverseInit
/* 800DDD14 000DAC54  48 00 01 2C */ b lbl_800DDE40
lbl_800DDD18:
/* 800DDD18 000DAC58  2C 1D 00 00 */ cmpwi r29, 0
/* 800DDD1C 000DAC5C  41 82 00 30 */ beq lbl_800DDD4C
/* 800DDD20 000DAC60  7F C3 F3 78 */ mr r3, r30
/* 800DDD24 000DAC64  4B FF 4B D1 */ bl daAlink_c_NS_checkCutHeadState
/* 800DDD28 000DAC68  2C 03 00 00 */ cmpwi r3, 0
/* 800DDD2C 000DAC6C  41 82 00 14 */ beq lbl_800DDD40
/* 800DDD30 000DAC70  7F C3 F3 78 */ mr r3, r30
/* 800DDD34 000DAC74  38 80 00 77 */ li r4, 0x77
/* 800DDD38 000DAC78  4B FD 55 31 */ bl setDoStatusEmphasys__9daAlink_cFUc
/* 800DDD3C 000DAC7C  48 00 00 10 */ b lbl_800DDD4C
lbl_800DDD40:
/* 800DDD40 000DAC80  7F C3 F3 78 */ mr r3, r30
/* 800DDD44 000DAC84  38 80 00 86 */ li r4, 0x86
/* 800DDD48 000DAC88  4B FD 55 09 */ bl setDoStatus__9daAlink_cFUc
lbl_800DDD4C:
/* 800DDD4C 000DAC8C  7F E3 FB 78 */ mr r3, r31
/* 800DDD50 000DAC90  48 08 07 7D */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800DDD54 000DAC94  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800DDD58 000DAC98  41 82 00 38 */ beq lbl_800DDD90
/* 800DDD5C 000DAC9C  80 1E 06 14 */ lwz r0, 0x614(r30)
/* 800DDD60 000DACA0  28 00 00 4B */ cmplwi r0, 0x4b
/* 800DDD64 000DACA4  40 82 00 1C */ bne lbl_800DDD80
/* 800DDD68 000DACA8  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800DDD6C 000DACAC  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800DDD70 000DACB0  38 63 4F F8 */ addi r3, r3, 0x4ff8
/* 800DDD74 000DACB4  80 9E 31 84 */ lwz r4, 0x3184(r30)
/* 800DDD78 000DACB8  4B F6 A4 05 */ bl cutEnd__16dEvent_manager_cFi
/* 800DDD7C 000DACBC  48 00 00 C0 */ b lbl_800DDE3C
lbl_800DDD80:
/* 800DDD80 000DACC0  7F C3 F3 78 */ mr r3, r30
/* 800DDD84 000DACC4  38 80 00 00 */ li r4, 0
/* 800DDD88 000DACC8  4B FD C3 49 */ bl daAlink_c_NS_checkNextAction
/* 800DDD8C 000DACCC  48 00 00 B0 */ b lbl_800DDE3C
lbl_800DDD90:
/* 800DDD90 000DACD0  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800DDD94 000DACD4  C0 1E 34 88 */ lfs f0, 0x3488(r30)
/* 800DDD98 000DACD8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800DDD9C 000DACDC  40 81 00 34 */ ble lbl_800DDDD0
/* 800DDDA0 000DACE0  A8 1E 30 0E */ lha r0, 0x300e(r30)
/* 800DDDA4 000DACE4  2C 00 00 00 */ cmpwi r0, 0
/* 800DDDA8 000DACE8  41 82 00 10 */ beq lbl_800DDDB8
/* 800DDDAC 000DACEC  7F C3 F3 78 */ mr r3, r30
/* 800DDDB0 000DACF0  4B FF 4A 35 */ bl daAlink_c_NS_checkDoCutAction
/* 800DDDB4 000DACF4  48 00 00 8C */ b lbl_800DDE40
lbl_800DDDB8:
/* 800DDDB8 000DACF8  A8 1E 30 0C */ lha r0, 0x300c(r30)
/* 800DDDBC 000DACFC  2C 00 00 00 */ cmpwi r0, 0
/* 800DDDC0 000DAD00  41 82 00 10 */ beq lbl_800DDDD0
/* 800DDDC4 000DAD04  7F C3 F3 78 */ mr r3, r30
/* 800DDDC8 000DAD08  4B FF 45 F9 */ bl daAlink_c_NS_checkCutAction
/* 800DDDCC 000DAD0C  48 00 00 74 */ b lbl_800DDE40
lbl_800DDDD0:
/* 800DDDD0 000DAD10  C0 1E 34 84 */ lfs f0, 0x3484(r30)
/* 800DDDD4 000DAD14  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800DDDD8 000DAD18  40 81 00 20 */ ble lbl_800DDDF8
/* 800DDDDC 000DAD1C  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800DDDE0 000DAD20  60 00 00 04 */ ori r0, r0, 4
/* 800DDDE4 000DAD24  90 1E 31 A0 */ stw r0, 0x31a0(r30)
/* 800DDDE8 000DAD28  7F C3 F3 78 */ mr r3, r30
/* 800DDDEC 000DAD2C  38 80 00 01 */ li r4, 1
/* 800DDDF0 000DAD30  4B FD C2 E1 */ bl daAlink_c_NS_checkNextAction
/* 800DDDF4 000DAD34  48 00 00 48 */ b lbl_800DDE3C
lbl_800DDDF8:
/* 800DDDF8 000DAD38  C0 1E 34 78 */ lfs f0, 0x3478(r30)
/* 800DDDFC 000DAD3C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800DDE00 000DAD40  4C 41 13 82 */ cror 2, 1, 2
/* 800DDE04 000DAD44  40 82 00 30 */ bne lbl_800DDE34
/* 800DDE08 000DAD48  C0 1E 34 7C */ lfs f0, 0x347c(r30)
/* 800DDE0C 000DAD4C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800DDE10 000DAD50  40 80 00 24 */ bge lbl_800DDE34
/* 800DDE14 000DAD54  A8 1E 30 12 */ lha r0, 0x3012(r30)
/* 800DDE18 000DAD58  2C 00 00 00 */ cmpwi r0, 0
/* 800DDE1C 000DAD5C  40 82 00 0C */ bne lbl_800DDE28
/* 800DDE20 000DAD60  C0 1E 34 80 */ lfs f0, 0x3480(r30)
/* 800DDE24 000DAD64  D0 1E 33 98 */ stfs f0, 0x3398(r30)
lbl_800DDE28:
/* 800DDE28 000DAD68  38 00 00 01 */ li r0, 1
/* 800DDE2C 000DAD6C  B0 1E 30 12 */ sth r0, 0x3012(r30)
/* 800DDE30 000DAD70  48 00 00 0C */ b lbl_800DDE3C
lbl_800DDE34:
/* 800DDE34 000DAD74  38 00 00 00 */ li r0, 0
/* 800DDE38 000DAD78  B0 1E 30 12 */ sth r0, 0x3012(r30)
lbl_800DDE3C:
/* 800DDE3C 000DAD7C  38 60 00 01 */ li r3, 1
lbl_800DDE40:
/* 800DDE40 000DAD80  39 61 00 30 */ addi r11, r1, 0x30
/* 800DDE44 000DAD84  48 28 43 E5 */ bl _restgpr_29
/* 800DDE48 000DAD88  80 01 00 34 */ lwz r0, 0x34(r1)
/* 800DDE4C 000DAD8C  7C 08 03 A6 */ mtlr r0
/* 800DDE50 000DAD90  38 21 00 30 */ addi r1, r1, 0x30
/* 800DDE54 000DAD94  4E 80 00 20 */ blr
