/* 800F2934 000EF874  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800F2938 000EF878  7C 08 02 A6 */ mflr r0
/* 800F293C 000EF87C  90 01 00 14 */ stw r0, 0x14(r1)
/* 800F2940 000EF880  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800F2944 000EF884  93 C1 00 08 */ stw r30, 8(r1)
/* 800F2948 000EF888  7C 7F 1B 78 */ mr r31, r3
/* 800F294C 000EF88C  7C 9E 23 78 */ mr r30, r4
/* 800F2950 000EF890  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800F2954 000EF894  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800F2958 000EF898  38 63 4E C8 */ addi r3, r3, 0x4ec8
/* 800F295C 000EF89C  7F E4 FB 78 */ mr r4, r31
/* 800F2960 000EF8A0  38 A0 00 00 */ li r5, 0
/* 800F2964 000EF8A4  3C C0 00 01 */ lis r6, 0x0000FFFF@ha
/* 800F2968 000EF8A8  38 C6 FF FF */ addi r6, r6, 0x0000FFFF@l
/* 800F296C 000EF8AC  4B F5 08 01 */ bl compulsory__14dEvt_control_cFPvPCcUs
/* 800F2970 000EF8B0  2C 03 00 00 */ cmpwi r3, 0
/* 800F2974 000EF8B4  40 82 00 0C */ bne lbl_800F2980
/* 800F2978 000EF8B8  38 60 00 00 */ li r3, 0
/* 800F297C 000EF8BC  48 00 01 44 */ b lbl_800F2AC0
lbl_800F2980:
/* 800F2980 000EF8C0  38 00 00 05 */ li r0, 5
/* 800F2984 000EF8C4  B0 1F 06 04 */ sth r0, 0x604(r31)
/* 800F2988 000EF8C8  7F E3 FB 78 */ mr r3, r31
/* 800F298C 000EF8CC  38 80 00 4C */ li r4, 0x4c
/* 800F2990 000EF8D0  4B FC F5 DD */ bl daAlink_c_NS_commonProcInit
/* 800F2994 000EF8D4  A0 1F 1F 80 */ lhz r0, 0x1f80(r31)
/* 800F2998 000EF8D8  28 00 00 19 */ cmplwi r0, 0x19
/* 800F299C 000EF8DC  40 82 00 14 */ bne lbl_800F29B0
/* 800F29A0 000EF8E0  7F E3 FB 78 */ mr r3, r31
/* 800F29A4 000EF8E4  38 80 00 02 */ li r4, 2
/* 800F29A8 000EF8E8  C0 22 92 BC */ lfs f1, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800F29AC 000EF8EC  4B FB B1 41 */ bl daAlink_c_NS_resetUnderAnime
lbl_800F29B0:
/* 800F29B0 000EF8F0  7F E3 FB 78 */ mr r3, r31
/* 800F29B4 000EF8F4  4B FF B0 71 */ bl daAlink_c_NS_setSyncRidePos
/* 800F29B8 000EF8F8  7F E3 FB 78 */ mr r3, r31
/* 800F29BC 000EF8FC  4B FF C3 DD */ bl daAlink_c_NS_setBaseRideAnime
/* 800F29C0 000EF900  7F E3 FB 78 */ mr r3, r31
/* 800F29C4 000EF904  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800F29C8 000EF908  81 8C 01 88 */ lwz r12, 0x188(r12)
/* 800F29CC 000EF90C  7D 89 03 A6 */ mtctr r12
/* 800F29D0 000EF910  4E 80 04 21 */ bctrl
/* 800F29D4 000EF914  28 03 00 00 */ cmplwi r3, 0
/* 800F29D8 000EF918  41 82 00 30 */ beq lbl_800F2A08
/* 800F29DC 000EF91C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800F29E0 000EF920  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800F29E4 000EF924  80 83 5D B8 */ lwz r4, 0x5db8(r3)
/* 800F29E8 000EF928  38 00 00 03 */ li r0, 3
/* 800F29EC 000EF92C  98 04 16 B8 */ stb r0, 0x16b8(r4)
/* 800F29F0 000EF930  38 60 00 00 */ li r3, 0
/* 800F29F4 000EF934  90 64 17 28 */ stw r3, 0x1728(r4)
/* 800F29F8 000EF938  38 00 00 0E */ li r0, 0xe
/* 800F29FC 000EF93C  90 04 17 40 */ stw r0, 0x1740(r4)
/* 800F2A00 000EF940  90 64 17 28 */ stw r3, 0x1728(r4)
/* 800F2A04 000EF944  48 00 00 10 */ b lbl_800F2A14
lbl_800F2A08:
/* 800F2A08 000EF948  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800F2A0C 000EF94C  80 7F 28 18 */ lwz r3, 0x2818(r31)
/* 800F2A10 000EF950  D0 03 05 2C */ stfs f0, 0x52c(r3)
lbl_800F2A14:
/* 800F2A14 000EF954  7F E3 FB 78 */ mr r3, r31
/* 800F2A18 000EF958  38 80 01 00 */ li r4, 0x100
/* 800F2A1C 000EF95C  4B FB 9A 35 */ bl daAlink_c_NS_getMainBckData
/* 800F2A20 000EF960  A0 83 00 02 */ lhz r4, 2(r3)
/* 800F2A24 000EF964  7F E3 FB 78 */ mr r3, r31
/* 800F2A28 000EF968  38 A0 00 02 */ li r5, 2
/* 800F2A2C 000EF96C  3C C0 80 39 */ lis r6, lbl_8038E90C@ha
/* 800F2A30 000EF970  38 C6 E9 0C */ addi r6, r6, lbl_8038E90C@l
/* 800F2A34 000EF974  4B FB AC BD */ bl daAlink_c_NS_setUpperAnimeParam
/* 800F2A38 000EF978  7F E3 FB 78 */ mr r3, r31
/* 800F2A3C 000EF97C  38 80 01 00 */ li r4, 0x100
/* 800F2A40 000EF980  4B FB D0 D5 */ bl daAlink_c_NS_setFacePriAnime
/* 800F2A44 000EF984  7F E3 FB 78 */ mr r3, r31
/* 800F2A48 000EF988  4B FC CE 0D */ bl daAlink_c_NS_keepItemData
/* 800F2A4C 000EF98C  7F E3 FB 78 */ mr r3, r31
/* 800F2A50 000EF990  7F C4 F3 78 */ mr r4, r30
/* 800F2A54 000EF994  48 01 BB 85 */ bl daAlink_c_NS_setBottleModel
/* 800F2A58 000EF998  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800F2A5C 000EF99C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800F2A60 000EF9A0  80 03 5F 1C */ lwz r0, 0x5f1c(r3)
/* 800F2A64 000EF9A4  60 00 20 00 */ ori r0, r0, 0x2000
/* 800F2A68 000EF9A8  90 03 5F 1C */ stw r0, 0x5f1c(r3)
/* 800F2A6C 000EF9AC  38 00 00 01 */ li r0, 1
/* 800F2A70 000EF9B0  90 1F 31 9C */ stw r0, 0x319c(r31)
/* 800F2A74 000EF9B4  28 1F 00 00 */ cmplwi r31, 0
/* 800F2A78 000EF9B8  41 82 00 0C */ beq lbl_800F2A84
/* 800F2A7C 000EF9BC  83 DF 00 04 */ lwz r30, 4(r31)
/* 800F2A80 000EF9C0  48 00 00 08 */ b lbl_800F2A88
lbl_800F2A84:
/* 800F2A84 000EF9C4  3B C0 FF FF */ li r30, -1
lbl_800F2A88:
/* 800F2A88 000EF9C8  48 08 EB B9 */ bl dCam_getBody
/* 800F2A8C 000EF9CC  38 80 00 12 */ li r4, 0x12
/* 800F2A90 000EF9D0  7F C5 F3 78 */ mr r5, r30
/* 800F2A94 000EF9D4  3C C0 80 39 */ lis r6, lbl_80392094@ha
/* 800F2A98 000EF9D8  38 C6 20 94 */ addi r6, r6, lbl_80392094@l
/* 800F2A9C 000EF9DC  38 C6 00 43 */ addi r6, r6, 0x43
/* 800F2AA0 000EF9E0  38 E0 00 01 */ li r7, 1
/* 800F2AA4 000EF9E4  39 1F 31 9C */ addi r8, r31, 0x319c
/* 800F2AA8 000EF9E8  39 20 00 00 */ li r9, 0
/* 800F2AAC 000EF9EC  4C C6 31 82 */ crclr 6
/* 800F2AB0 000EF9F0  4B F9 5F CD */ bl StartEventCamera__9dCamera_cFiie
/* 800F2AB4 000EF9F4  38 00 00 00 */ li r0, 0
/* 800F2AB8 000EF9F8  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 800F2ABC 000EF9FC  38 60 00 01 */ li r3, 1
lbl_800F2AC0:
/* 800F2AC0 000EFA00  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800F2AC4 000EFA04  83 C1 00 08 */ lwz r30, 8(r1)
/* 800F2AC8 000EFA08  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800F2ACC 000EFA0C  7C 08 03 A6 */ mtlr r0
/* 800F2AD0 000EFA10  38 21 00 10 */ addi r1, r1, 0x10
/* 800F2AD4 000EFA14  4E 80 00 20 */ blr