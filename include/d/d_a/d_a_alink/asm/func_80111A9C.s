/* 80111A9C 0010E9DC  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 80111AA0 0010E9E0  7C 08 02 A6 */ mflr r0
/* 80111AA4 0010E9E4  90 01 00 34 */ stw r0, 0x34(r1)
/* 80111AA8 0010E9E8  39 61 00 30 */ addi r11, r1, 0x30
/* 80111AAC 0010E9EC  48 25 07 21 */ bl _savegpr_25
/* 80111AB0 0010E9F0  7C 79 1B 78 */ mr r25, r3
/* 80111AB4 0010E9F4  7C 9A 23 78 */ mr r26, r4
/* 80111AB8 0010E9F8  7C BB 2B 78 */ mr r27, r5
/* 80111ABC 0010E9FC  7C DC 33 78 */ mr r28, r6
/* 80111AC0 0010EA00  7C FD 3B 78 */ mr r29, r7
/* 80111AC4 0010EA04  7D 1E 43 78 */ mr r30, r8
/* 80111AC8 0010EA08  2C 1A 00 03 */ cmpwi r26, 3
/* 80111ACC 0010EA0C  3C 60 00 01 */ lis r3, 0x0000FFF9@ha
/* 80111AD0 0010EA10  38 C3 FF F9 */ addi r6, r3, 0x0000FFF9@l
/* 80111AD4 0010EA14  40 82 00 08 */ bne lbl_80111ADC
/* 80111AD8 0010EA18  38 C3 FF FF */ addi r6, r3, -1
lbl_80111ADC:
/* 80111ADC 0010EA1C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80111AE0 0010EA20  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80111AE4 0010EA24  3B E3 0F 38 */ addi r31, r3, 0xf38
/* 80111AE8 0010EA28  38 7F 3F 90 */ addi r3, r31, 0x3f90
/* 80111AEC 0010EA2C  7F 24 CB 78 */ mr r4, r25
/* 80111AF0 0010EA30  38 A0 00 00 */ li r5, 0
/* 80111AF4 0010EA34  4B F3 16 79 */ bl compulsory__14dEvt_control_cFPvPCcUs
/* 80111AF8 0010EA38  2C 03 00 00 */ cmpwi r3, 0
/* 80111AFC 0010EA3C  40 82 00 14 */ bne lbl_80111B10
/* 80111B00 0010EA40  7F 23 CB 78 */ mr r3, r25
/* 80111B04 0010EA44  38 80 00 00 */ li r4, 0
/* 80111B08 0010EA48  4B FA 85 C9 */ bl daAlink_c_NS_checkNextAction
/* 80111B0C 0010EA4C  48 00 01 80 */ b lbl_80111C8C
lbl_80111B10:
/* 80111B10 0010EA50  38 00 00 05 */ li r0, 5
/* 80111B14 0010EA54  B0 19 06 04 */ sth r0, 0x604(r25)
/* 80111B18 0010EA58  7F 23 CB 78 */ mr r3, r25
/* 80111B1C 0010EA5C  38 80 00 BA */ li r4, 0xba
/* 80111B20 0010EA60  4B FB 04 4D */ bl daAlink_c_NS_commonProcInit
/* 80111B24 0010EA64  2C 1A 00 03 */ cmpwi r26, 3
/* 80111B28 0010EA68  40 82 00 34 */ bne lbl_80111B5C
/* 80111B2C 0010EA6C  7F 23 CB 78 */ mr r3, r25
/* 80111B30 0010EA70  4B FA DD 25 */ bl daAlink_c_NS_keepItemData
/* 80111B34 0010EA74  7F 23 CB 78 */ mr r3, r25
/* 80111B38 0010EA78  4B FF FC E5 */ bl daAlink_c_NS_setHorseWhistleModel
/* 80111B3C 0010EA7C  7F 23 CB 78 */ mr r3, r25
/* 80111B40 0010EA80  38 80 01 0F */ li r4, 0x10f
/* 80111B44 0010EA84  4B F9 B4 3D */ bl daAlink_c_NS_setSingleAnimeBase
/* 80111B48 0010EA88  38 00 FF FF */ li r0, -1
/* 80111B4C 0010EA8C  90 19 31 98 */ stw r0, 0x3198(r25)
/* 80111B50 0010EA90  38 00 05 32 */ li r0, 0x532
/* 80111B54 0010EA94  90 19 32 CC */ stw r0, 0x32cc(r25)
/* 80111B58 0010EA98  48 00 00 44 */ b lbl_80111B9C
lbl_80111B5C:
/* 80111B5C 0010EA9C  7F 23 CB 78 */ mr r3, r25
/* 80111B60 0010EAA0  38 80 00 19 */ li r4, 0x19
/* 80111B64 0010EAA4  4B F9 B4 1D */ bl daAlink_c_NS_setSingleAnimeBase
/* 80111B68 0010EAA8  38 00 00 FF */ li r0, 0xff
/* 80111B6C 0010EAAC  B0 19 30 CE */ sth r0, 0x30ce(r25)
/* 80111B70 0010EAB0  2C 1A 00 00 */ cmpwi r26, 0
/* 80111B74 0010EAB4  40 82 00 18 */ bne lbl_80111B8C
/* 80111B78 0010EAB8  38 00 01 00 */ li r0, 0x100
/* 80111B7C 0010EABC  90 19 31 98 */ stw r0, 0x3198(r25)
/* 80111B80 0010EAC0  38 00 05 35 */ li r0, 0x535
/* 80111B84 0010EAC4  90 19 32 CC */ stw r0, 0x32cc(r25)
/* 80111B88 0010EAC8  48 00 00 14 */ b lbl_80111B9C
lbl_80111B8C:
/* 80111B8C 0010EACC  38 00 FF FF */ li r0, -1
/* 80111B90 0010EAD0  90 19 31 98 */ stw r0, 0x3198(r25)
/* 80111B94 0010EAD4  38 00 05 32 */ li r0, 0x532
/* 80111B98 0010EAD8  90 19 32 CC */ stw r0, 0x32cc(r25)
lbl_80111B9C:
/* 80111B9C 0010EADC  7F 23 CB 78 */ mr r3, r25
/* 80111BA0 0010EAE0  38 80 01 0F */ li r4, 0x10f
/* 80111BA4 0010EAE4  4B F9 A8 AD */ bl daAlink_c_NS_getMainBckData
/* 80111BA8 0010EAE8  A0 83 00 00 */ lhz r4, 0(r3)
/* 80111BAC 0010EAEC  7F 23 CB 78 */ mr r3, r25
/* 80111BB0 0010EAF0  C0 22 92 BC */ lfs f1, lbl_80452CBC-_SDA2_BASE_(r2)
/* 80111BB4 0010EAF4  4B F9 B7 C1 */ bl daAlink_c_NS_setUpperAnimeBaseMorf
/* 80111BB8 0010EAF8  7F 23 CB 78 */ mr r3, r25
/* 80111BBC 0010EAFC  38 80 01 0F */ li r4, 0x10f
/* 80111BC0 0010EB00  4B F9 DF 55 */ bl daAlink_c_NS_setFacePriAnime
/* 80111BC4 0010EB04  B3 59 30 0C */ sth r26, 0x300c(r25)
/* 80111BC8 0010EB08  B3 79 30 0E */ sth r27, 0x300e(r25)
/* 80111BCC 0010EB0C  28 19 00 00 */ cmplwi r25, 0
/* 80111BD0 0010EB10  41 82 00 0C */ beq lbl_80111BDC
/* 80111BD4 0010EB14  83 59 00 04 */ lwz r26, 4(r25)
/* 80111BD8 0010EB18  48 00 00 08 */ b lbl_80111BE0
lbl_80111BDC:
/* 80111BDC 0010EB1C  3B 40 FF FF */ li r26, -1
lbl_80111BE0:
/* 80111BE0 0010EB20  48 06 FA 61 */ bl dCam_getBody
/* 80111BE4 0010EB24  38 80 00 0C */ li r4, 0xc
/* 80111BE8 0010EB28  7F 45 D3 78 */ mr r5, r26
/* 80111BEC 0010EB2C  38 C0 00 00 */ li r6, 0
/* 80111BF0 0010EB30  4C C6 31 82 */ crclr 6
/* 80111BF4 0010EB34  4B F7 6E 89 */ bl StartEventCamera__9dCamera_cFiie
/* 80111BF8 0010EB38  38 00 00 00 */ li r0, 0
/* 80111BFC 0010EB3C  B0 19 30 08 */ sth r0, 0x3008(r25)
/* 80111C00 0010EB40  B0 19 30 10 */ sth r0, 0x3010(r25)
/* 80111C04 0010EB44  B0 19 30 12 */ sth r0, 0x3012(r25)
/* 80111C08 0010EB48  38 00 FF FF */ li r0, -1
/* 80111C0C 0010EB4C  90 19 28 F0 */ stw r0, 0x28f0(r25)
/* 80111C10 0010EB50  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80111C14 0010EB54  D0 19 33 98 */ stfs f0, 0x3398(r25)
/* 80111C18 0010EB58  A8 19 04 E6 */ lha r0, 0x4e6(r25)
/* 80111C1C 0010EB5C  B0 19 04 DE */ sth r0, 0x4de(r25)
/* 80111C20 0010EB60  38 00 00 04 */ li r0, 4
/* 80111C24 0010EB64  98 19 2F 98 */ stb r0, 0x2f98(r25)
/* 80111C28 0010EB68  2C 1C 00 00 */ cmpwi r28, 0
/* 80111C2C 0010EB6C  41 82 00 48 */ beq lbl_80111C74
/* 80111C30 0010EB70  38 79 1D 08 */ addi r3, r25, 0x1d08
/* 80111C34 0010EB74  7F C4 F3 78 */ mr r4, r30
/* 80111C38 0010EB78  48 15 60 F1 */ bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80111C3C 0010EB7C  7F E3 FB 78 */ mr r3, r31
/* 80111C40 0010EB80  38 99 1D 08 */ addi r4, r25, 0x1d08
/* 80111C44 0010EB84  4B F6 28 5D */ bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80111C48 0010EB88  C0 02 93 A4 */ lfs f0, lbl_80452DA4-_SDA2_BASE_(r2)
/* 80111C4C 0010EB8C  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80111C50 0010EB90  41 82 00 18 */ beq lbl_80111C68
/* 80111C54 0010EB94  C0 5E 00 08 */ lfs f2, 8(r30)
/* 80111C58 0010EB98  C0 1E 00 00 */ lfs f0, 0(r30)
/* 80111C5C 0010EB9C  D0 19 04 D0 */ stfs f0, 0x4d0(r25)
/* 80111C60 0010EBA0  D0 39 04 D4 */ stfs f1, 0x4d4(r25)
/* 80111C64 0010EBA4  D0 59 04 D8 */ stfs f2, 0x4d8(r25)
lbl_80111C68:
/* 80111C68 0010EBA8  B3 B9 04 E6 */ sth r29, 0x4e6(r25)
/* 80111C6C 0010EBAC  A8 19 04 E6 */ lha r0, 0x4e6(r25)
/* 80111C70 0010EBB0  B0 19 04 DE */ sth r0, 0x4de(r25)
lbl_80111C74:
/* 80111C74 0010EBB4  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80111C78 0010EBB8  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80111C7C 0010EBBC  80 03 5F 1C */ lwz r0, 0x5f1c(r3)
/* 80111C80 0010EBC0  64 00 04 00 */ oris r0, r0, 0x400
/* 80111C84 0010EBC4  90 03 5F 1C */ stw r0, 0x5f1c(r3)
/* 80111C88 0010EBC8  38 60 00 01 */ li r3, 1
lbl_80111C8C:
/* 80111C8C 0010EBCC  39 61 00 30 */ addi r11, r1, 0x30
/* 80111C90 0010EBD0  48 25 05 89 */ bl _restgpr_25
/* 80111C94 0010EBD4  80 01 00 34 */ lwz r0, 0x34(r1)
/* 80111C98 0010EBD8  7C 08 03 A6 */ mtlr r0
/* 80111C9C 0010EBDC  38 21 00 30 */ addi r1, r1, 0x30
/* 80111CA0 0010EBE0  4E 80 00 20 */ blr