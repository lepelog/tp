/* 8010F8E4 0010C824  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8010F8E8 0010C828  7C 08 02 A6 */ mflr r0
/* 8010F8EC 0010C82C  90 01 00 24 */ stw r0, 0x24(r1)
/* 8010F8F0 0010C830  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 8010F8F4 0010C834  93 C1 00 18 */ stw r30, 0x18(r1)
/* 8010F8F8 0010C838  7C 7E 1B 78 */ mr r30, r3
/* 8010F8FC 0010C83C  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 8010F900 0010C840  A8 63 30 0C */ lha r3, 0x300c(r3)
/* 8010F904 0010C844  7C 60 07 35 */ extsh. r0, r3
/* 8010F908 0010C848  40 82 00 10 */ bne lbl_8010F918
/* 8010F90C 0010C84C  80 7E 07 18 */ lwz r3, 0x718(r30)
/* 8010F910 0010C850  4B F9 99 39 */ bl daAlink_c_NS_simpleAnmPlay
/* 8010F914 0010C854  48 00 00 58 */ b lbl_8010F96C
lbl_8010F918:
/* 8010F918 0010C858  2C 03 00 02 */ cmpwi r3, 2
/* 8010F91C 0010C85C  40 82 00 24 */ bne lbl_8010F940
/* 8010F920 0010C860  80 7E 07 20 */ lwz r3, 0x720(r30)
/* 8010F924 0010C864  4B F9 99 25 */ bl daAlink_c_NS_simpleAnmPlay
/* 8010F928 0010C868  2C 03 00 00 */ cmpwi r3, 0
/* 8010F92C 0010C86C  41 82 00 40 */ beq lbl_8010F96C
/* 8010F930 0010C870  C0 02 93 14 */ lfs f0, lbl_80452D14-_SDA2_BASE_(r2)
/* 8010F934 0010C874  80 7E 07 2C */ lwz r3, 0x72c(r30)
/* 8010F938 0010C878  D0 03 00 08 */ stfs f0, 8(r3)
/* 8010F93C 0010C87C  48 00 00 30 */ b lbl_8010F96C
lbl_8010F940:
/* 8010F940 0010C880  80 7E 07 1C */ lwz r3, 0x71c(r30)
/* 8010F944 0010C884  4B F9 99 05 */ bl daAlink_c_NS_simpleAnmPlay
/* 8010F948 0010C888  2C 03 00 00 */ cmpwi r3, 0
/* 8010F94C 0010C88C  41 82 00 20 */ beq lbl_8010F96C
/* 8010F950 0010C890  80 7E 07 08 */ lwz r3, 0x708(r30)
/* 8010F954 0010C894  80 63 00 04 */ lwz r3, 4(r3)
/* 8010F958 0010C898  38 63 00 58 */ addi r3, r3, 0x58
/* 8010F95C 0010C89C  80 9E 07 18 */ lwz r4, 0x718(r30)
/* 8010F960 0010C8A0  48 22 03 65 */ bl J3DMaterialTable_NS_entryTexMtxAnimator
/* 8010F964 0010C8A4  38 00 00 00 */ li r0, 0
/* 8010F968 0010C8A8  B0 1E 30 0C */ sth r0, 0x300c(r30)
lbl_8010F96C:
/* 8010F96C 0010C8AC  7F C3 F3 78 */ mr r3, r30
/* 8010F970 0010C8B0  38 80 01 04 */ li r4, 0x104
/* 8010F974 0010C8B4  4B F9 CB E5 */ bl daAlink_c_NS_checkUnderMove0BckNoArc
/* 8010F978 0010C8B8  2C 03 00 00 */ cmpwi r3, 0
/* 8010F97C 0010C8BC  41 82 01 30 */ beq lbl_8010FAAC
/* 8010F980 0010C8C0  7F E3 FB 78 */ mr r3, r31
/* 8010F984 0010C8C4  48 04 EB 49 */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 8010F988 0010C8C8  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8010F98C 0010C8CC  41 82 00 70 */ beq lbl_8010F9FC
/* 8010F990 0010C8D0  A0 1E 2F DC */ lhz r0, 0x2fdc(r30)
/* 8010F994 0010C8D4  28 00 00 6C */ cmplwi r0, 0x6c
/* 8010F998 0010C8D8  40 82 00 18 */ bne lbl_8010F9B0
/* 8010F99C 0010C8DC  7F C3 F3 78 */ mr r3, r30
/* 8010F9A0 0010C8E0  38 80 01 06 */ li r4, 0x106
/* 8010F9A4 0010C8E4  C0 22 92 BC */ lfs f1, lbl_80452CBC-_SDA2_BASE_(r2)
/* 8010F9A8 0010C8E8  4B F9 D6 09 */ bl daAlink_c_NS_setSingleAnimeBaseMorf
/* 8010F9AC 0010C8EC  48 00 02 70 */ b lbl_8010FC1C
lbl_8010F9B0:
/* 8010F9B0 0010C8F0  7F C3 F3 78 */ mr r3, r30
/* 8010F9B4 0010C8F4  38 80 01 05 */ li r4, 0x105
/* 8010F9B8 0010C8F8  3C A0 80 39 */ lis r5, lbl_8038E90C@ha
/* 8010F9BC 0010C8FC  38 A5 E9 0C */ addi r5, r5, lbl_8038E90C@l
/* 8010F9C0 0010C900  38 A5 00 3C */ addi r5, r5, 0x3c
/* 8010F9C4 0010C904  4B F9 D7 31 */ bl daAlink_c_NS_setSingleAnimeParam
/* 8010F9C8 0010C908  A0 1E 2F DC */ lhz r0, 0x2fdc(r30)
/* 8010F9CC 0010C90C  28 00 00 67 */ cmplwi r0, 0x67
/* 8010F9D0 0010C910  40 82 02 4C */ bne lbl_8010FC1C
/* 8010F9D4 0010C914  C0 3E 33 B4 */ lfs f1, 0x33b4(r30)
/* 8010F9D8 0010C918  C0 1E 05 CC */ lfs f0, 0x5cc(r30)
/* 8010F9DC 0010C91C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8010F9E0 0010C920  40 81 00 10 */ ble lbl_8010F9F0
/* 8010F9E4 0010C924  38 00 00 00 */ li r0, 0
/* 8010F9E8 0010C928  B0 1E 30 0E */ sth r0, 0x300e(r30)
/* 8010F9EC 0010C92C  48 00 02 30 */ b lbl_8010FC1C
lbl_8010F9F0:
/* 8010F9F0 0010C930  38 00 00 01 */ li r0, 1
/* 8010F9F4 0010C934  B0 1E 30 0E */ sth r0, 0x300e(r30)
/* 8010F9F8 0010C938  48 00 02 24 */ b lbl_8010FC1C
lbl_8010F9FC:
/* 8010F9FC 0010C93C  7F E3 FB 78 */ mr r3, r31
/* 8010FA00 0010C940  C0 22 92 E0 */ lfs f1, lbl_80452CE0-_SDA2_BASE_(r2)
/* 8010FA04 0010C944  48 21 8A 29 */ bl J3DFrameCtrl_NS_checkPass
/* 8010FA08 0010C948  2C 03 00 00 */ cmpwi r3, 0
/* 8010FA0C 0010C94C  41 82 00 80 */ beq lbl_8010FA8C
/* 8010FA10 0010C950  38 00 00 01 */ li r0, 1
/* 8010FA14 0010C954  B0 1E 30 1A */ sth r0, 0x301a(r30)
/* 8010FA18 0010C958  B0 1E 30 0C */ sth r0, 0x300c(r30)
/* 8010FA1C 0010C95C  80 7E 07 08 */ lwz r3, 0x708(r30)
/* 8010FA20 0010C960  80 63 00 04 */ lwz r3, 4(r3)
/* 8010FA24 0010C964  38 63 00 58 */ addi r3, r3, 0x58
/* 8010FA28 0010C968  80 9E 07 1C */ lwz r4, 0x71c(r30)
/* 8010FA2C 0010C96C  48 22 02 99 */ bl J3DMaterialTable_NS_entryTexMtxAnimator
/* 8010FA30 0010C970  A0 1E 2F DC */ lhz r0, 0x2fdc(r30)
/* 8010FA34 0010C974  28 00 00 6C */ cmplwi r0, 0x6c
/* 8010FA38 0010C978  40 82 01 E4 */ bne lbl_8010FC1C
/* 8010FA3C 0010C97C  80 7E 07 08 */ lwz r3, 0x708(r30)
/* 8010FA40 0010C980  38 63 00 24 */ addi r3, r3, 0x24
/* 8010FA44 0010C984  3C 80 80 39 */ lis r4, lbl_80391A14@ha
/* 8010FA48 0010C988  38 84 1A 14 */ addi r4, r4, lbl_80391A14@l
/* 8010FA4C 0010C98C  38 A1 00 0C */ addi r5, r1, 0xc
/* 8010FA50 0010C990  48 23 73 1D */ bl PSMTXMultVec
/* 8010FA54 0010C994  7F C3 F3 78 */ mr r3, r30
/* 8010FA58 0010C998  38 81 00 0C */ addi r4, r1, 0xc
/* 8010FA5C 0010C99C  38 A0 00 00 */ li r5, 0
/* 8010FA60 0010C9A0  4B FF F9 FD */ bl daAlink_c_NS_makeFairy
/* 8010FA64 0010C9A4  28 03 00 00 */ cmplwi r3, 0
/* 8010FA68 0010C9A8  41 82 01 B4 */ beq lbl_8010FC1C
/* 8010FA6C 0010C9AC  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 8010FA70 0010C9B0  64 00 08 00 */ oris r0, r0, 0x800
/* 8010FA74 0010C9B4  90 1E 31 A0 */ stw r0, 0x31a0(r30)
/* 8010FA78 0010C9B8  38 00 00 00 */ li r0, 0
/* 8010FA7C 0010C9BC  90 1E 07 0C */ stw r0, 0x70c(r30)
/* 8010FA80 0010C9C0  7F C3 F3 78 */ mr r3, r30
/* 8010FA84 0010C9C4  48 01 50 E5 */ bl daAlink_c_NS_resetFairyEffect
/* 8010FA88 0010C9C8  48 00 01 94 */ b lbl_8010FC1C
lbl_8010FA8C:
/* 8010FA8C 0010C9CC  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 8010FA90 0010C9D0  C0 02 93 C0 */ lfs f0, lbl_80452DC0-_SDA2_BASE_(r2)
/* 8010FA94 0010C9D4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8010FA98 0010C9D8  4C 41 13 82 */ cror 2, 1, 2
/* 8010FA9C 0010C9DC  40 82 01 80 */ bne lbl_8010FC1C
/* 8010FAA0 0010C9E0  38 00 00 05 */ li r0, 5
/* 8010FAA4 0010C9E4  98 1E 2F 93 */ stb r0, 0x2f93(r30)
/* 8010FAA8 0010C9E8  48 00 01 74 */ b lbl_8010FC1C
lbl_8010FAAC:
/* 8010FAAC 0010C9EC  7F E3 FB 78 */ mr r3, r31
/* 8010FAB0 0010C9F0  48 04 EA 1D */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 8010FAB4 0010C9F4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8010FAB8 0010C9F8  41 82 00 24 */ beq lbl_8010FADC
/* 8010FABC 0010C9FC  A8 1E 30 08 */ lha r0, 0x3008(r30)
/* 8010FAC0 0010CA00  2C 00 00 00 */ cmpwi r0, 0
/* 8010FAC4 0010CA04  41 82 00 18 */ beq lbl_8010FADC
/* 8010FAC8 0010CA08  7F C3 F3 78 */ mr r3, r30
/* 8010FACC 0010CA0C  4B FA FD B9 */ bl daAlink_c_NS_returnKeepItemData
/* 8010FAD0 0010CA10  7F C3 F3 78 */ mr r3, r30
/* 8010FAD4 0010CA14  48 00 81 BD */ bl daAlink_c_NS_resetSpecialEvent
/* 8010FAD8 0010CA18  48 00 00 B0 */ b lbl_8010FB88
lbl_8010FADC:
/* 8010FADC 0010CA1C  7F E3 FB 78 */ mr r3, r31
/* 8010FAE0 0010CA20  C0 22 94 B4 */ lfs f1, lbl_80452EB4-_SDA2_BASE_(r2)
/* 8010FAE4 0010CA24  48 21 89 49 */ bl J3DFrameCtrl_NS_checkPass
/* 8010FAE8 0010CA28  2C 03 00 00 */ cmpwi r3, 0
/* 8010FAEC 0010CA2C  41 82 00 6C */ beq lbl_8010FB58
/* 8010FAF0 0010CA30  80 7E 07 08 */ lwz r3, 0x708(r30)
/* 8010FAF4 0010CA34  80 63 00 04 */ lwz r3, 4(r3)
/* 8010FAF8 0010CA38  38 63 00 58 */ addi r3, r3, 0x58
/* 8010FAFC 0010CA3C  80 9E 07 20 */ lwz r4, 0x720(r30)
/* 8010FB00 0010CA40  48 22 01 C5 */ bl J3DMaterialTable_NS_entryTexMtxAnimator
/* 8010FB04 0010CA44  38 00 00 02 */ li r0, 2
/* 8010FB08 0010CA48  B0 1E 30 0C */ sth r0, 0x300c(r30)
/* 8010FB0C 0010CA4C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8010FB10 0010CA50  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8010FB14 0010CA54  38 63 00 9C */ addi r3, r3, 0x9c
/* 8010FB18 0010CA58  88 9E 2F 9C */ lbz r4, 0x2f9c(r30)
/* 8010FB1C 0010CA5C  4B F2 3B A1 */ bl setEquipBottleItemEmpty__17dSv_player_item_cFUc
/* 8010FB20 0010CA60  A0 1E 2F DC */ lhz r0, 0x2fdc(r30)
/* 8010FB24 0010CA64  28 00 00 67 */ cmplwi r0, 0x67
/* 8010FB28 0010CA68  40 82 00 60 */ bne lbl_8010FB88
/* 8010FB2C 0010CA6C  A8 1E 30 0E */ lha r0, 0x300e(r30)
/* 8010FB30 0010CA70  2C 00 00 00 */ cmpwi r0, 0
/* 8010FB34 0010CA74  41 82 00 54 */ beq lbl_8010FB88
/* 8010FB38 0010CA78  7F C3 F3 78 */ mr r3, r30
/* 8010FB3C 0010CA7C  3C 80 00 02 */ lis r4, 0x0002004E@ha
/* 8010FB40 0010CA80  38 84 00 4E */ addi r4, r4, 0x0002004E@l
/* 8010FB44 0010CA84  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 8010FB48 0010CA88  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 8010FB4C 0010CA8C  7D 89 03 A6 */ mtctr r12
/* 8010FB50 0010CA90  4E 80 04 21 */ bctrl
/* 8010FB54 0010CA94  48 00 00 34 */ b lbl_8010FB88
lbl_8010FB58:
/* 8010FB58 0010CA98  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 8010FB5C 0010CA9C  C0 02 94 04 */ lfs f0, lbl_80452E04-_SDA2_BASE_(r2)
/* 8010FB60 0010CAA0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8010FB64 0010CAA4  40 81 00 1C */ ble lbl_8010FB80
/* 8010FB68 0010CAA8  C0 02 95 58 */ lfs f0, lbl_80452F58-_SDA2_BASE_(r2)
/* 8010FB6C 0010CAAC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8010FB70 0010CAB0  40 80 00 10 */ bge lbl_8010FB80
/* 8010FB74 0010CAB4  38 00 00 01 */ li r0, 1
/* 8010FB78 0010CAB8  B0 1E 30 10 */ sth r0, 0x3010(r30)
/* 8010FB7C 0010CABC  48 00 00 0C */ b lbl_8010FB88
lbl_8010FB80:
/* 8010FB80 0010CAC0  38 00 00 00 */ li r0, 0
/* 8010FB84 0010CAC4  B0 1E 30 10 */ sth r0, 0x3010(r30)
lbl_8010FB88:
/* 8010FB88 0010CAC8  A8 1E 30 08 */ lha r0, 0x3008(r30)
/* 8010FB8C 0010CACC  2C 00 00 00 */ cmpwi r0, 0
/* 8010FB90 0010CAD0  40 82 00 8C */ bne lbl_8010FC1C
/* 8010FB94 0010CAD4  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 8010FB98 0010CAD8  C0 02 92 9C */ lfs f0, lbl_80452C9C-_SDA2_BASE_(r2)
/* 8010FB9C 0010CADC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8010FBA0 0010CAE0  4C 41 13 82 */ cror 2, 1, 2
/* 8010FBA4 0010CAE4  40 82 00 78 */ bne lbl_8010FC1C
/* 8010FBA8 0010CAE8  80 1E 32 CC */ lwz r0, 0x32cc(r30)
/* 8010FBAC 0010CAEC  90 01 00 08 */ stw r0, 8(r1)
/*.global fpcSch_JudgeByID*/
/* 8010FBB0 0010CAF0  3C 60 80 02 */ lis r3, fpcSch_JudgeByID@ha
/*.global fpcSch_JudgeByID*/
/* 8010FBB4 0010CAF4  38 63 35 90 */ addi r3, r3, fpcSch_JudgeByID@l
/* 8010FBB8 0010CAF8  38 81 00 08 */ addi r4, r1, 8
/* 8010FBBC 0010CAFC  4B F0 9C 3D */ bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8010FBC0 0010CB00  7C 7F 1B 79 */ or. r31, r3, r3
/* 8010FBC4 0010CB04  41 82 00 58 */ beq lbl_8010FC1C
/* 8010FBC8 0010CB08  38 00 00 00 */ li r0, 0
/* 8010FBCC 0010CB0C  90 1E 07 0C */ stw r0, 0x70c(r30)
/* 8010FBD0 0010CB10  38 00 00 01 */ li r0, 1
/* 8010FBD4 0010CB14  B0 1E 30 08 */ sth r0, 0x3008(r30)
/* 8010FBD8 0010CB18  80 7E 07 08 */ lwz r3, 0x708(r30)
/* 8010FBDC 0010CB1C  38 63 00 24 */ addi r3, r3, 0x24
/* 8010FBE0 0010CB20  3C 80 80 39 */ lis r4, lbl_80391A14@ha
/* 8010FBE4 0010CB24  38 84 1A 14 */ addi r4, r4, lbl_80391A14@l
/* 8010FBE8 0010CB28  38 BF 04 D0 */ addi r5, r31, 0x4d0
/* 8010FBEC 0010CB2C  48 23 71 81 */ bl PSMTXMultVec
/* 8010FBF0 0010CB30  80 1F 04 9C */ lwz r0, 0x49c(r31)
/* 8010FBF4 0010CB34  60 00 08 00 */ ori r0, r0, 0x800
/* 8010FBF8 0010CB38  90 1F 04 9C */ stw r0, 0x49c(r31)
/* 8010FBFC 0010CB3C  A8 1E 30 0A */ lha r0, 0x300a(r30)
/* 8010FC00 0010CB40  2C 00 00 00 */ cmpwi r0, 0
/* 8010FC04 0010CB44  41 82 00 18 */ beq lbl_8010FC1C
/* 8010FC08 0010CB48  7F E3 FB 78 */ mr r3, r31
/* 8010FC0C 0010CB4C  81 9F 05 68 */ lwz r12, 0x568(r31)
/* 8010FC10 0010CB50  81 8C 00 08 */ lwz r12, 8(r12)
/* 8010FC14 0010CB54  7D 89 03 A6 */ mtctr r12
/* 8010FC18 0010CB58  4E 80 04 21 */ bctrl
lbl_8010FC1C:
/* 8010FC1C 0010CB5C  38 60 00 01 */ li r3, 1
/* 8010FC20 0010CB60  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 8010FC24 0010CB64  83 C1 00 18 */ lwz r30, 0x18(r1)
/* 8010FC28 0010CB68  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8010FC2C 0010CB6C  7C 08 03 A6 */ mtlr r0
/* 8010FC30 0010CB70  38 21 00 20 */ addi r1, r1, 0x20
/* 8010FC34 0010CB74  4E 80 00 20 */ blr
