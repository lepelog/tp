/* 800B58EC 000B282C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800B58F0 000B2830  7C 08 02 A6 */ mflr r0
/* 800B58F4 000B2834  90 01 00 14 */ stw r0, 0x14(r1)
/* 800B58F8 000B2838  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800B58FC 000B283C  7C 7F 1B 78 */ mr r31, r3
/* 800B5900 000B2840  80 03 05 74 */ lwz r0, 0x574(r3)
/* 800B5904 000B2844  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800B5908 000B2848  41 82 00 90 */ beq lbl_800B5998
/* 800B590C 000B284C  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 800B5910 000B2850  54 00 01 CF */ rlwinm. r0, r0, 0, 7, 7
/* 800B5914 000B2854  41 82 00 20 */ beq lbl_800B5934
/* 800B5918 000B2858  A0 1F 06 04 */ lhz r0, 0x604(r31)
/* 800B591C 000B285C  2C 00 00 04 */ cmpwi r0, 4
/* 800B5920 000B2860  40 82 00 0C */ bne lbl_800B592C
/* 800B5924 000B2864  38 60 00 00 */ li r3, 0
/* 800B5928 000B2868  48 00 02 84 */ b lbl_800B5BAC
lbl_800B592C:
/* 800B592C 000B286C  48 07 78 7D */ bl procWolfWaitInit__9daAlink_cFv
/* 800B5930 000B2870  48 00 02 7C */ b lbl_800B5BAC
lbl_800B5934:
/* 800B5934 000B2874  48 00 39 21 */ bl checkNoUpperAnime__9daAlink_cCFv
/* 800B5938 000B2878  2C 03 00 00 */ cmpwi r3, 0
/* 800B593C 000B287C  41 82 00 50 */ beq lbl_800B598C
/* 800B5940 000B2880  7F E3 FB 78 */ mr r3, r31
/* 800B5944 000B2884  4B FF DA A1 */ bl checkRestHPAnime__9daAlink_cFv
/* 800B5948 000B2888  2C 03 00 00 */ cmpwi r3, 0
/* 800B594C 000B288C  41 82 00 40 */ beq lbl_800B598C
/* 800B5950 000B2890  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 800B5954 000B2894  A8 1F 2F E6 */ lha r0, 0x2fe6(r31)
/* 800B5958 000B2898  7C 03 00 00 */ cmpw r3, r0
/* 800B595C 000B289C  40 82 00 30 */ bne lbl_800B598C
/* 800B5960 000B28A0  7F E3 FB 78 */ mr r3, r31
/* 800B5964 000B28A4  4B FF DB 9D */ bl checkAttentionState__9daAlink_cFv
/* 800B5968 000B28A8  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B596C 000B28AC  41 82 00 14 */ beq lbl_800B5980
/* 800B5970 000B28B0  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 800B5974 000B28B4  A8 1F 2F E4 */ lha r0, 0x2fe4(r31)
/* 800B5978 000B28B8  7C 03 00 00 */ cmpw r3, r0
/* 800B597C 000B28BC  40 82 00 10 */ bne lbl_800B598C
lbl_800B5980:
/* 800B5980 000B28C0  7F E3 FB 78 */ mr r3, r31
/* 800B5984 000B28C4  48 07 75 E5 */ bl procWolfTiredWaitInit__9daAlink_cFv
/* 800B5988 000B28C8  48 00 02 24 */ b lbl_800B5BAC
lbl_800B598C:
/* 800B598C 000B28CC  7F E3 FB 78 */ mr r3, r31
/* 800B5990 000B28D0  48 07 78 19 */ bl procWolfWaitInit__9daAlink_cFv
/* 800B5994 000B28D4  48 00 02 18 */ b lbl_800B5BAC
lbl_800B5998:
/* 800B5998 000B28D8  80 9F 31 A0 */ lwz r4, 0x31a0(r31)
/* 800B599C 000B28DC  54 80 05 6B */ rlwinm. r0, r4, 0, 0x15, 0x15
/* 800B59A0 000B28E0  41 82 00 D0 */ beq lbl_800B5A70
/* 800B59A4 000B28E4  88 1F 2F AA */ lbz r0, 0x2faa(r31)
/* 800B59A8 000B28E8  28 00 00 00 */ cmplwi r0, 0
/* 800B59AC 000B28EC  41 82 00 C4 */ beq lbl_800B5A70
/* 800B59B0 000B28F0  81 83 06 28 */ lwz r12, 0x628(r3)
/* 800B59B4 000B28F4  81 8C 01 90 */ lwz r12, 0x190(r12)
/* 800B59B8 000B28F8  7D 89 03 A6 */ mtctr r12
/* 800B59BC 000B28FC  4E 80 04 21 */ bctrl
/* 800B59C0 000B2900  28 03 00 00 */ cmplwi r3, 0
/* 800B59C4 000B2904  41 82 00 30 */ beq lbl_800B59F4
/* 800B59C8 000B2908  7F E3 FB 78 */ mr r3, r31
/* 800B59CC 000B290C  48 02 E2 D1 */ bl checkGrabAnimeAndThrow__9daAlink_cCFv
/* 800B59D0 000B2910  2C 03 00 00 */ cmpwi r3, 0
/* 800B59D4 000B2914  41 82 00 10 */ beq lbl_800B59E4
/* 800B59D8 000B2918  7F E3 FB 78 */ mr r3, r31
/* 800B59DC 000B291C  48 04 14 D5 */ bl procCanoeGrabMoveInit__9daAlink_cFv
/* 800B59E0 000B2920  48 00 01 CC */ b lbl_800B5BAC
lbl_800B59E4:
/* 800B59E4 000B2924  7F E3 FB 78 */ mr r3, r31
/* 800B59E8 000B2928  38 80 00 00 */ li r4, 0
/* 800B59EC 000B292C  48 03 F7 F9 */ bl procCanoeWaitInit__9daAlink_cFi
/* 800B59F0 000B2930  48 00 01 BC */ b lbl_800B5BAC
lbl_800B59F4:
/* 800B59F4 000B2934  7F E3 FB 78 */ mr r3, r31
/* 800B59F8 000B2938  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800B59FC 000B293C  81 8C 01 94 */ lwz r12, 0x194(r12)
/* 800B5A00 000B2940  7D 89 03 A6 */ mtctr r12
/* 800B5A04 000B2944  4E 80 04 21 */ bctrl
/* 800B5A08 000B2948  28 03 00 00 */ cmplwi r3, 0
/* 800B5A0C 000B294C  41 82 00 14 */ beq lbl_800B5A20
/* 800B5A10 000B2950  7F E3 FB 78 */ mr r3, r31
/* 800B5A14 000B2954  38 80 00 00 */ li r4, 0
/* 800B5A18 000B2958  48 05 10 21 */ bl procBoardWaitInit__9daAlink_cFP10fopAc_ac_c
/* 800B5A1C 000B295C  48 00 01 90 */ b lbl_800B5BAC
lbl_800B5A20:
/* 800B5A20 000B2960  7F E3 FB 78 */ mr r3, r31
/* 800B5A24 000B2964  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800B5A28 000B2968  81 8C 01 98 */ lwz r12, 0x198(r12)
/* 800B5A2C 000B296C  7D 89 03 A6 */ mtctr r12
/* 800B5A30 000B2970  4E 80 04 21 */ bctrl
/* 800B5A34 000B2974  28 03 00 00 */ cmplwi r3, 0
/* 800B5A38 000B2978  41 82 00 10 */ beq lbl_800B5A48
/* 800B5A3C 000B297C  7F E3 FB 78 */ mr r3, r31
/* 800B5A40 000B2980  48 05 84 39 */ bl procSpinnerWaitInit__9daAlink_cFv
/* 800B5A44 000B2984  48 00 01 68 */ b lbl_800B5BAC
lbl_800B5A48:
/* 800B5A48 000B2988  7F E3 FB 78 */ mr r3, r31
/* 800B5A4C 000B298C  48 02 E2 51 */ bl checkGrabAnimeAndThrow__9daAlink_cCFv
/* 800B5A50 000B2990  2C 03 00 00 */ cmpwi r3, 0
/* 800B5A54 000B2994  41 82 00 10 */ beq lbl_800B5A64
/* 800B5A58 000B2998  7F E3 FB 78 */ mr r3, r31
/* 800B5A5C 000B299C  48 03 C8 D9 */ bl procHorseGrabMoveInit__9daAlink_cFv
/* 800B5A60 000B29A0  48 00 01 4C */ b lbl_800B5BAC
lbl_800B5A64:
/* 800B5A64 000B29A4  7F E3 FB 78 */ mr r3, r31
/* 800B5A68 000B29A8  48 03 AF 19 */ bl procHorseWaitInit__9daAlink_cFv
/* 800B5A6C 000B29AC  48 00 01 40 */ b lbl_800B5BAC
lbl_800B5A70:
/* 800B5A70 000B29B0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800B5A74 000B29B4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800B5A78 000B29B8  80 63 5F 1C */ lwz r3, 0x5f1c(r3)
/* 800B5A7C 000B29BC  54 60 03 DF */ rlwinm. r0, r3, 0, 0xf, 0xf
/* 800B5A80 000B29C0  41 82 00 1C */ beq lbl_800B5A9C
/* 800B5A84 000B29C4  7F E3 FB 78 */ mr r3, r31
/* 800B5A88 000B29C8  38 80 00 00 */ li r4, 0
/* 800B5A8C 000B29CC  80 BF 28 58 */ lwz r5, 0x2858(r31)
/* 800B5A90 000B29D0  38 C0 00 00 */ li r6, 0
/* 800B5A94 000B29D4  48 05 6D 9D */ bl procHookshotRoofWaitInit__9daAlink_cFiP10fopAc_ac_ci
/* 800B5A98 000B29D8  48 00 01 14 */ b lbl_800B5BAC
lbl_800B5A9C:
/* 800B5A9C 000B29DC  54 60 01 8D */ rlwinm. r0, r3, 0, 6, 6
/* 800B5AA0 000B29E0  41 82 00 1C */ beq lbl_800B5ABC
/* 800B5AA4 000B29E4  7F E3 FB 78 */ mr r3, r31
/* 800B5AA8 000B29E8  38 80 00 00 */ li r4, 0
/* 800B5AAC 000B29EC  38 A0 00 00 */ li r5, 0
/* 800B5AB0 000B29F0  38 C0 00 00 */ li r6, 0
/* 800B5AB4 000B29F4  48 05 76 C1 */ bl procHookshotWallWaitInit__9daAlink_cFisi
/* 800B5AB8 000B29F8  48 00 00 F4 */ b lbl_800B5BAC
lbl_800B5ABC:
/* 800B5ABC 000B29FC  54 80 03 5B */ rlwinm. r0, r4, 0, 0xd, 0xd
/* 800B5AC0 000B2A00  41 82 00 20 */ beq lbl_800B5AE0
/* 800B5AC4 000B2A04  80 1F 05 8C */ lwz r0, 0x58c(r31)
/* 800B5AC8 000B2A08  54 00 05 EF */ rlwinm. r0, r0, 0, 0x17, 0x17
/* 800B5ACC 000B2A0C  40 82 00 14 */ bne lbl_800B5AE0
/* 800B5AD0 000B2A10  7F E3 FB 78 */ mr r3, r31
/* 800B5AD4 000B2A14  38 80 00 00 */ li r4, 0
/* 800B5AD8 000B2A18  48 04 E8 21 */ bl procSwimWaitInit__9daAlink_cFi
/* 800B5ADC 000B2A1C  48 00 00 D0 */ b lbl_800B5BAC
lbl_800B5AE0:
/* 800B5AE0 000B2A20  88 1F 05 6A */ lbz r0, 0x56a(r31)
/* 800B5AE4 000B2A24  28 00 00 01 */ cmplwi r0, 1
/* 800B5AE8 000B2A28  40 82 00 10 */ bne lbl_800B5AF8
/* 800B5AEC 000B2A2C  7F E3 FB 78 */ mr r3, r31
/* 800B5AF0 000B2A30  48 03 4E 61 */ bl procSumouReadyInit__9daAlink_cFv
/* 800B5AF4 000B2A34  48 00 00 B8 */ b lbl_800B5BAC
lbl_800B5AF8:
/* 800B5AF8 000B2A38  7F E3 FB 78 */ mr r3, r31
/* 800B5AFC 000B2A3C  48 02 E1 71 */ bl checkGrabAnime__9daAlink_cCFv
/* 800B5B00 000B2A40  2C 03 00 00 */ cmpwi r3, 0
/* 800B5B04 000B2A44  41 82 00 10 */ beq lbl_800B5B14
/* 800B5B08 000B2A48  7F E3 FB 78 */ mr r3, r31
/* 800B5B0C 000B2A4C  48 03 0F 91 */ bl procGrabWaitInit__9daAlink_cFv
/* 800B5B10 000B2A50  48 00 00 9C */ b lbl_800B5BAC
lbl_800B5B14:
/* 800B5B14 000B2A54  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 800B5B18 000B2A58  54 00 01 CF */ rlwinm. r0, r0, 0, 7, 7
/* 800B5B1C 000B2A5C  41 82 00 18 */ beq lbl_800B5B34
/* 800B5B20 000B2A60  A0 1F 06 04 */ lhz r0, 0x604(r31)
/* 800B5B24 000B2A64  2C 00 00 04 */ cmpwi r0, 4
/* 800B5B28 000B2A68  40 82 00 0C */ bne lbl_800B5B34
/* 800B5B2C 000B2A6C  38 60 00 00 */ li r3, 0
/* 800B5B30 000B2A70  48 00 00 7C */ b lbl_800B5BAC
lbl_800B5B34:
/* 800B5B34 000B2A74  7F E3 FB 78 */ mr r3, r31
/* 800B5B38 000B2A78  4B FF D8 AD */ bl checkRestHPAnime__9daAlink_cFv
/* 800B5B3C 000B2A7C  2C 03 00 00 */ cmpwi r3, 0
/* 800B5B40 000B2A80  41 82 00 64 */ beq lbl_800B5BA4
/* 800B5B44 000B2A84  7F E3 FB 78 */ mr r3, r31
/* 800B5B48 000B2A88  48 02 73 BD */ bl checkPlayerGuardAndAttack__9daAlink_cCFv
/* 800B5B4C 000B2A8C  2C 03 00 00 */ cmpwi r3, 0
/* 800B5B50 000B2A90  40 82 00 54 */ bne lbl_800B5BA4
/* 800B5B54 000B2A94  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 800B5B58 000B2A98  A8 1F 2F E6 */ lha r0, 0x2fe6(r31)
/* 800B5B5C 000B2A9C  7C 03 00 00 */ cmpw r3, r0
/* 800B5B60 000B2AA0  40 82 00 44 */ bne lbl_800B5BA4
/* 800B5B64 000B2AA4  80 1F 05 88 */ lwz r0, 0x588(r31)
/* 800B5B68 000B2AA8  54 00 01 09 */ rlwinm. r0, r0, 0, 4, 4
/* 800B5B6C 000B2AAC  40 82 00 38 */ bne lbl_800B5BA4
/* 800B5B70 000B2AB0  7F E3 FB 78 */ mr r3, r31
/* 800B5B74 000B2AB4  38 80 00 1A */ li r4, 0x1a
/* 800B5B78 000B2AB8  4B FF 69 E1 */ bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800B5B7C 000B2ABC  2C 03 00 00 */ cmpwi r3, 0
/* 800B5B80 000B2AC0  40 82 00 24 */ bne lbl_800B5BA4
/* 800B5B84 000B2AC4  7F E3 FB 78 */ mr r3, r31
/* 800B5B88 000B2AC8  38 80 00 1B */ li r4, 0x1b
/* 800B5B8C 000B2ACC  4B FF 69 CD */ bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800B5B90 000B2AD0  2C 03 00 00 */ cmpwi r3, 0
/* 800B5B94 000B2AD4  40 82 00 10 */ bne lbl_800B5BA4
/* 800B5B98 000B2AD8  7F E3 FB 78 */ mr r3, r31
/* 800B5B9C 000B2ADC  48 00 D6 89 */ bl procTiredWaitInit__9daAlink_cFv
/* 800B5BA0 000B2AE0  48 00 00 0C */ b lbl_800B5BAC
lbl_800B5BA4:
/* 800B5BA4 000B2AE4  7F E3 FB 78 */ mr r3, r31
/* 800B5BA8 000B2AE8  48 00 D8 11 */ bl procWaitInit__9daAlink_cFv
lbl_800B5BAC:
/* 800B5BAC 000B2AEC  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800B5BB0 000B2AF0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800B5BB4 000B2AF4  7C 08 03 A6 */ mtlr r0
/* 800B5BB8 000B2AF8  38 21 00 10 */ addi r1, r1, 0x10
/* 800B5BBC 000B2AFC  4E 80 00 20 */ blr
