/* 800E89F0 000E5930  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800E89F4 000E5934  7C 08 02 A6 */ mflr r0
/* 800E89F8 000E5938  90 01 00 24 */ stw r0, 0x24(r1)
/* 800E89FC 000E593C  39 61 00 20 */ addi r11, r1, 0x20
/* 800E8A00 000E5940  48 27 97 DD */ bl _savegpr_29
/* 800E8A04 000E5944  7C 7D 1B 78 */ mr r29, r3
/* 800E8A08 000E5948  3B FD 1F D0 */ addi r31, r29, 0x1fd0
/* 800E8A0C 000E594C  3B C0 01 60 */ li r30, 0x160
/* 800E8A10 000E5950  A8 03 30 10 */ lha r0, 0x3010(r3)
/* 800E8A14 000E5954  2C 00 00 00 */ cmpwi r0, 0
/* 800E8A18 000E5958  41 82 00 74 */ beq lbl_800E8A8C
/* 800E8A1C 000E595C  7F E3 FB 78 */ mr r3, r31
/* 800E8A20 000E5960  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800E8A24 000E5964  48 23 FA 09 */ bl checkPass__12J3DFrameCtrlFf
/* 800E8A28 000E5968  2C 03 00 00 */ cmpwi r3, 0
/* 800E8A2C 000E596C  41 82 00 10 */ beq lbl_800E8A3C
/* 800E8A30 000E5970  7F A3 EB 78 */ mr r3, r29
/* 800E8A34 000E5974  4B FF F9 01 */ bl daAlink_c_NS_endPushPull
/* 800E8A38 000E5978  48 00 02 CC */ b lbl_800E8D04
lbl_800E8A3C:
/* 800E8A3C 000E597C  7F E3 FB 78 */ mr r3, r31
/* 800E8A40 000E5980  C0 3D 34 78 */ lfs f1, 0x3478(r29)
/* 800E8A44 000E5984  48 23 F9 E9 */ bl checkPass__12J3DFrameCtrlFf
/* 800E8A48 000E5988  2C 03 00 00 */ cmpwi r3, 0
/* 800E8A4C 000E598C  41 82 02 68 */ beq lbl_800E8CB4
/* 800E8A50 000E5990  80 1D 05 74 */ lwz r0, 0x574(r29)
/* 800E8A54 000E5994  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800E8A58 000E5998  40 82 00 20 */ bne lbl_800E8A78
/* 800E8A5C 000E599C  7F A3 EB 78 */ mr r3, r29
/* 800E8A60 000E59A0  3C 80 00 01 */ lis r4, 0x00010013@ha
/* 800E8A64 000E59A4  38 84 00 13 */ addi r4, r4, 0x00010013@l
/* 800E8A68 000E59A8  81 9D 06 28 */ lwz r12, 0x628(r29)
/* 800E8A6C 000E59AC  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 800E8A70 000E59B0  7D 89 03 A6 */ mtctr r12
/* 800E8A74 000E59B4  4E 80 04 21 */ bctrl
lbl_800E8A78:
/* 800E8A78 000E59B8  7F A3 EB 78 */ mr r3, r29
/* 800E8A7C 000E59BC  38 80 00 01 */ li r4, 1
/* 800E8A80 000E59C0  38 A0 00 00 */ li r5, 0
/* 800E8A84 000E59C4  4B FF F4 B9 */ bl daAlink_c_NS_setPushPullKeepData
/* 800E8A88 000E59C8  48 00 02 2C */ b lbl_800E8CB4
lbl_800E8A8C:
/* 800E8A8C 000E59CC  38 80 00 15 */ li r4, 0x15
/* 800E8A90 000E59D0  38 A0 00 02 */ li r5, 2
/* 800E8A94 000E59D4  4B FF F4 3D */ bl daAlink_c_NS_setWallGrabStatus
/* 800E8A98 000E59D8  7F E3 FB 78 */ mr r3, r31
/* 800E8A9C 000E59DC  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800E8AA0 000E59E0  48 23 F9 8D */ bl checkPass__12J3DFrameCtrlFf
/* 800E8AA4 000E59E4  2C 03 00 00 */ cmpwi r3, 0
/* 800E8AA8 000E59E8  40 82 00 1C */ bne lbl_800E8AC4
/* 800E8AAC 000E59EC  80 1D 31 98 */ lwz r0, 0x3198(r29)
/* 800E8AB0 000E59F0  2C 00 00 00 */ cmpwi r0, 0
/* 800E8AB4 000E59F4  40 82 00 10 */ bne lbl_800E8AC4
/* 800E8AB8 000E59F8  A8 1D 30 12 */ lha r0, 0x3012(r29)
/* 800E8ABC 000E59FC  2C 00 00 00 */ cmpwi r0, 0
/* 800E8AC0 000E5A00  41 82 01 E4 */ beq lbl_800E8CA4
lbl_800E8AC4:
/* 800E8AC4 000E5A04  80 1D 05 70 */ lwz r0, 0x570(r29)
/* 800E8AC8 000E5A08  54 00 05 29 */ rlwinm. r0, r0, 0, 0x14, 0x14
/* 800E8ACC 000E5A0C  40 82 01 50 */ bne lbl_800E8C1C
/* 800E8AD0 000E5A10  7F A3 EB 78 */ mr r3, r29
/* 800E8AD4 000E5A14  4B FF F4 45 */ bl daAlink_c_NS_wallGrabButton
/* 800E8AD8 000E5A18  2C 03 00 00 */ cmpwi r3, 0
/* 800E8ADC 000E5A1C  40 82 00 10 */ bne lbl_800E8AEC
/* 800E8AE0 000E5A20  7F A3 EB 78 */ mr r3, r29
/* 800E8AE4 000E5A24  4B FF F8 51 */ bl daAlink_c_NS_endPushPull
/* 800E8AE8 000E5A28  48 00 02 1C */ b lbl_800E8D04
lbl_800E8AEC:
/* 800E8AEC 000E5A2C  C0 3D 33 AC */ lfs f1, 0x33ac(r29)
/* 800E8AF0 000E5A30  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800E8AF4 000E5A34  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800E8AF8 000E5A38  40 81 01 0C */ ble lbl_800E8C04
/* 800E8AFC 000E5A3C  A8 7D 04 E6 */ lha r3, 0x4e6(r29)
/* 800E8B00 000E5A40  A8 1D 2F E2 */ lha r0, 0x2fe2(r29)
/* 800E8B04 000E5A44  7C 03 00 50 */ subf r0, r3, r0
/* 800E8B08 000E5A48  7C 03 07 34 */ extsh r3, r0
/* 800E8B0C 000E5A4C  4B FC A9 89 */ bl daAlink_c_NS_getDirectionFromAngle
/* 800E8B10 000E5A50  2C 03 00 00 */ cmpwi r3, 0
/* 800E8B14 000E5A54  40 82 00 CC */ bne lbl_800E8BE0
/* 800E8B18 000E5A58  7F A3 EB 78 */ mr r3, r29
/* 800E8B1C 000E5A5C  38 80 00 01 */ li r4, 1
/* 800E8B20 000E5A60  38 A0 00 00 */ li r5, 0
/* 800E8B24 000E5A64  4B FF F4 19 */ bl daAlink_c_NS_setPushPullKeepData
/* 800E8B28 000E5A68  A8 1D 30 08 */ lha r0, 0x3008(r29)
/* 800E8B2C 000E5A6C  2C 00 00 00 */ cmpwi r0, 0
/* 800E8B30 000E5A70  41 82 01 84 */ beq lbl_800E8CB4
/* 800E8B34 000E5A74  A8 1D 30 12 */ lha r0, 0x3012(r29)
/* 800E8B38 000E5A78  2C 00 00 00 */ cmpwi r0, 0
/* 800E8B3C 000E5A7C  40 82 00 60 */ bne lbl_800E8B9C
/* 800E8B40 000E5A80  38 00 00 01 */ li r0, 1
/* 800E8B44 000E5A84  B0 1D 30 12 */ sth r0, 0x3012(r29)
/* 800E8B48 000E5A88  80 1D 05 74 */ lwz r0, 0x574(r29)
/* 800E8B4C 000E5A8C  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800E8B50 000E5A90  41 82 00 24 */ beq lbl_800E8B74
/* 800E8B54 000E5A94  7F A3 EB 78 */ mr r3, r29
/* 800E8B58 000E5A98  38 80 00 09 */ li r4, 9
/* 800E8B5C 000E5A9C  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800E8B60 000E5AA0  C0 42 93 1C */ lfs f2, lbl_80452D1C-_SDA2_BASE_(r2)
/* 800E8B64 000E5AA4  38 A0 FF FF */ li r5, -1
/* 800E8B68 000E5AA8  C0 62 92 C4 */ lfs f3, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800E8B6C 000E5AAC  48 04 0B 99 */ bl daAlink_c_NS_setSingleAnimeWolf
/* 800E8B70 000E5AB0  48 00 00 20 */ b lbl_800E8B90
lbl_800E8B74:
/* 800E8B74 000E5AB4  7F A3 EB 78 */ mr r3, r29
/* 800E8B78 000E5AB8  38 80 00 38 */ li r4, 0x38
/* 800E8B7C 000E5ABC  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800E8B80 000E5AC0  C0 42 93 1C */ lfs f2, lbl_80452D1C-_SDA2_BASE_(r2)
/* 800E8B84 000E5AC4  38 A0 FF FF */ li r5, -1
/* 800E8B88 000E5AC8  C0 62 92 C4 */ lfs f3, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800E8B8C 000E5ACC  4B FC 44 81 */ bl daAlink_c_NS_setSingleAnime
lbl_800E8B90:
/* 800E8B90 000E5AD0  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800E8B94 000E5AD4  D0 1F 00 0C */ stfs f0, 0xc(r31)
/* 800E8B98 000E5AD8  48 00 01 1C */ b lbl_800E8CB4
lbl_800E8B9C:
/* 800E8B9C 000E5ADC  7F E3 FB 78 */ mr r3, r31
/* 800E8BA0 000E5AE0  48 07 59 2D */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800E8BA4 000E5AE4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800E8BA8 000E5AE8  41 82 01 0C */ beq lbl_800E8CB4
/* 800E8BAC 000E5AEC  80 1D 05 74 */ lwz r0, 0x574(r29)
/* 800E8BB0 000E5AF0  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800E8BB4 000E5AF4  41 82 00 14 */ beq lbl_800E8BC8
/* 800E8BB8 000E5AF8  7F A3 EB 78 */ mr r3, r29
/* 800E8BBC 000E5AFC  38 80 00 0A */ li r4, 0xa
/* 800E8BC0 000E5B00  48 04 0A B9 */ bl daAlink_c_NS_setSingleAnimeWolfBase
/* 800E8BC4 000E5B04  48 00 00 10 */ b lbl_800E8BD4
lbl_800E8BC8:
/* 800E8BC8 000E5B08  7F A3 EB 78 */ mr r3, r29
/* 800E8BCC 000E5B0C  38 80 00 39 */ li r4, 0x39
/* 800E8BD0 000E5B10  4B FC 43 B1 */ bl daAlink_c_NS_setSingleAnimeBase
lbl_800E8BD4:
/* 800E8BD4 000E5B14  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800E8BD8 000E5B18  D0 1F 00 0C */ stfs f0, 0xc(r31)
/* 800E8BDC 000E5B1C  48 00 00 D8 */ b lbl_800E8CB4
lbl_800E8BE0:
/* 800E8BE0 000E5B20  80 1D 05 74 */ lwz r0, 0x574(r29)
/* 800E8BE4 000E5B24  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800E8BE8 000E5B28  40 82 00 14 */ bne lbl_800E8BFC
/* 800E8BEC 000E5B2C  2C 03 00 01 */ cmpwi r3, 1
/* 800E8BF0 000E5B30  40 82 00 0C */ bne lbl_800E8BFC
/* 800E8BF4 000E5B34  3B C0 00 39 */ li r30, 0x39
/* 800E8BF8 000E5B38  48 00 00 BC */ b lbl_800E8CB4
lbl_800E8BFC:
/* 800E8BFC 000E5B3C  3B C0 01 43 */ li r30, 0x143
/* 800E8C00 000E5B40  48 00 00 B4 */ b lbl_800E8CB4
lbl_800E8C04:
/* 800E8C04 000E5B44  7F A3 EB 78 */ mr r3, r29
/* 800E8C08 000E5B48  38 80 00 00 */ li r4, 0
/* 800E8C0C 000E5B4C  38 A0 00 01 */ li r5, 1
/* 800E8C10 000E5B50  4B FF F3 2D */ bl daAlink_c_NS_setPushPullKeepData
/* 800E8C14 000E5B54  3B C0 01 43 */ li r30, 0x143
/* 800E8C18 000E5B58  48 00 00 9C */ b lbl_800E8CB4
lbl_800E8C1C:
/* 800E8C1C 000E5B5C  80 1D 31 98 */ lwz r0, 0x3198(r29)
/* 800E8C20 000E5B60  2C 00 00 00 */ cmpwi r0, 0
/* 800E8C24 000E5B64  41 82 00 2C */ beq lbl_800E8C50
/* 800E8C28 000E5B68  80 1D 05 74 */ lwz r0, 0x574(r29)
/* 800E8C2C 000E5B6C  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800E8C30 000E5B70  40 82 00 20 */ bne lbl_800E8C50
/* 800E8C34 000E5B74  7F A3 EB 78 */ mr r3, r29
/* 800E8C38 000E5B78  3C 80 00 01 */ lis r4, 0x00010013@ha
/* 800E8C3C 000E5B7C  38 84 00 13 */ addi r4, r4, 0x00010013@l
/* 800E8C40 000E5B80  81 9D 06 28 */ lwz r12, 0x628(r29)
/* 800E8C44 000E5B84  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 800E8C48 000E5B88  7D 89 03 A6 */ mtctr r12
/* 800E8C4C 000E5B8C  4E 80 04 21 */ bctrl
lbl_800E8C50:
/* 800E8C50 000E5B90  38 60 00 00 */ li r3, 0
/* 800E8C54 000E5B94  90 7D 31 98 */ stw r3, 0x3198(r29)
/* 800E8C58 000E5B98  A8 1D 30 12 */ lha r0, 0x3012(r29)
/* 800E8C5C 000E5B9C  2C 00 00 00 */ cmpwi r0, 0
/* 800E8C60 000E5BA0  41 82 00 30 */ beq lbl_800E8C90
/* 800E8C64 000E5BA4  B0 7D 30 12 */ sth r3, 0x3012(r29)
/* 800E8C68 000E5BA8  80 1D 05 74 */ lwz r0, 0x574(r29)
/* 800E8C6C 000E5BAC  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800E8C70 000E5BB0  41 82 00 14 */ beq lbl_800E8C84
/* 800E8C74 000E5BB4  7F A3 EB 78 */ mr r3, r29
/* 800E8C78 000E5BB8  38 80 00 0A */ li r4, 0xa
/* 800E8C7C 000E5BBC  48 04 09 FD */ bl daAlink_c_NS_setSingleAnimeWolfBase
/* 800E8C80 000E5BC0  48 00 00 10 */ b lbl_800E8C90
lbl_800E8C84:
/* 800E8C84 000E5BC4  7F A3 EB 78 */ mr r3, r29
/* 800E8C88 000E5BC8  38 80 00 39 */ li r4, 0x39
/* 800E8C8C 000E5BCC  4B FC 42 F5 */ bl daAlink_c_NS_setSingleAnimeBase
lbl_800E8C90:
/* 800E8C90 000E5BD0  7F A3 EB 78 */ mr r3, r29
/* 800E8C94 000E5BD4  38 80 00 01 */ li r4, 1
/* 800E8C98 000E5BD8  38 A0 00 00 */ li r5, 0
/* 800E8C9C 000E5BDC  4B FF F2 A1 */ bl daAlink_c_NS_setPushPullKeepData
/* 800E8CA0 000E5BE0  48 00 00 14 */ b lbl_800E8CB4
lbl_800E8CA4:
/* 800E8CA4 000E5BE4  7F A3 EB 78 */ mr r3, r29
/* 800E8CA8 000E5BE8  38 80 00 01 */ li r4, 1
/* 800E8CAC 000E5BEC  38 A0 00 00 */ li r5, 0
/* 800E8CB0 000E5BF0  4B FF F2 8D */ bl daAlink_c_NS_setPushPullKeepData
lbl_800E8CB4:
/* 800E8CB4 000E5BF4  7F A3 EB 78 */ mr r3, r29
/* 800E8CB8 000E5BF8  4B FC 76 05 */ bl daAlink_c_NS_setFrontWallType
/* 800E8CBC 000E5BFC  80 1D 05 80 */ lwz r0, 0x580(r29)
/* 800E8CC0 000E5C00  54 00 07 39 */ rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800E8CC4 000E5C04  40 82 00 10 */ bne lbl_800E8CD4
/* 800E8CC8 000E5C08  7F A3 EB 78 */ mr r3, r29
/* 800E8CCC 000E5C0C  4B FF F6 69 */ bl daAlink_c_NS_endPushPull
/* 800E8CD0 000E5C10  48 00 00 30 */ b lbl_800E8D00
lbl_800E8CD4:
/* 800E8CD4 000E5C14  2C 1E 00 39 */ cmpwi r30, 0x39
/* 800E8CD8 000E5C18  40 82 00 14 */ bne lbl_800E8CEC
/* 800E8CDC 000E5C1C  7F A3 EB 78 */ mr r3, r29
/* 800E8CE0 000E5C20  38 80 00 01 */ li r4, 1
/* 800E8CE4 000E5C24  48 00 00 39 */ bl daAlink_c_NS_procPullMoveInit
/* 800E8CE8 000E5C28  48 00 00 18 */ b lbl_800E8D00
lbl_800E8CEC:
/* 800E8CEC 000E5C2C  2C 1E 01 43 */ cmpwi r30, 0x143
/* 800E8CF0 000E5C30  40 82 00 10 */ bne lbl_800E8D00
/* 800E8CF4 000E5C34  7F A3 EB 78 */ mr r3, r29
/* 800E8CF8 000E5C38  38 80 00 00 */ li r4, 0
/* 800E8CFC 000E5C3C  4B FF F7 2D */ bl daAlink_c_NS_procCoPushPullWaitInit
lbl_800E8D00:
/* 800E8D00 000E5C40  38 60 00 01 */ li r3, 1
lbl_800E8D04:
/* 800E8D04 000E5C44  39 61 00 20 */ addi r11, r1, 0x20
/* 800E8D08 000E5C48  48 27 95 21 */ bl _restgpr_29
/* 800E8D0C 000E5C4C  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800E8D10 000E5C50  7C 08 03 A6 */ mtlr r0
/* 800E8D14 000E5C54  38 21 00 20 */ addi r1, r1, 0x20
/* 800E8D18 000E5C58  4E 80 00 20 */ blr
