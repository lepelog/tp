/* 800F9ABC 000F69FC  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 800F9AC0 000F6A00  7C 08 02 A6 */ mflr r0
/* 800F9AC4 000F6A04  90 01 00 34 */ stw r0, 0x34(r1)
/* 800F9AC8 000F6A08  39 61 00 30 */ addi r11, r1, 0x30
/* 800F9ACC 000F6A0C  48 26 87 0D */ bl _savegpr_28
/* 800F9AD0 000F6A10  7C 7F 1B 78 */ mr r31, r3
/* 800F9AD4 000F6A14  38 00 00 0C */ li r0, 0xc
/* 800F9AD8 000F6A18  98 03 2F 99 */ stb r0, 0x2f99(r3)
/* 800F9ADC 000F6A1C  3B DF 1F D0 */ addi r30, r31, 0x1fd0
/* 800F9AE0 000F6A20  AB A3 04 E6 */ lha r29, 0x4e6(r3)
/* 800F9AE4 000F6A24  AB 83 04 DE */ lha r28, 0x4de(r3)
/* 800F9AE8 000F6A28  A8 83 30 08 */ lha r4, 0x3008(r3)
/* 800F9AEC 000F6A2C  7C 80 07 35 */ extsh. r0, r4
/* 800F9AF0 000F6A30  40 81 00 84 */ ble lbl_800F9B74
/* 800F9AF4 000F6A34  7F C3 F3 78 */ mr r3, r30
/* 800F9AF8 000F6A38  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800F9AFC 000F6A3C  48 22 E9 31 */ bl checkPass__12J3DFrameCtrlFf
/* 800F9B00 000F6A40  2C 03 00 00 */ cmpwi r3, 0
/* 800F9B04 000F6A44  40 82 00 18 */ bne lbl_800F9B1C
/* 800F9B08 000F6A48  7F C3 F3 78 */ mr r3, r30
/* 800F9B0C 000F6A4C  C0 22 94 94 */ lfs f1, lbl_80452E94-_SDA2_BASE_(r2)
/* 800F9B10 000F6A50  48 22 E9 1D */ bl checkPass__12J3DFrameCtrlFf
/* 800F9B14 000F6A54  2C 03 00 00 */ cmpwi r3, 0
/* 800F9B18 000F6A58  41 82 00 1C */ beq lbl_800F9B34
lbl_800F9B1C:
/* 800F9B1C 000F6A5C  7F E3 FB 78 */ mr r3, r31
/* 800F9B20 000F6A60  C0 22 94 94 */ lfs f1, lbl_80452E94-_SDA2_BASE_(r2)
/* 800F9B24 000F6A64  4B FF F3 E5 */ bl daAlink_c_NS_stopHalfMoveAnime
/* 800F9B28 000F6A68  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800F9B2C 000F6A6C  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 800F9B30 000F6A70  48 00 00 28 */ b lbl_800F9B58
lbl_800F9B34:
/* 800F9B34 000F6A74  7F C3 F3 78 */ mr r3, r30
/* 800F9B38 000F6A78  48 06 49 95 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800F9B3C 000F6A7C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800F9B40 000F6A80  41 82 00 18 */ beq lbl_800F9B58
/* 800F9B44 000F6A84  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800F9B48 000F6A88  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 800F9B4C 000F6A8C  A8 7F 30 08 */ lha r3, 0x3008(r31)
/* 800F9B50 000F6A90  38 03 FF FF */ addi r0, r3, -1
/* 800F9B54 000F6A94  B0 1F 30 08 */ sth r0, 0x3008(r31)
lbl_800F9B58:
/* 800F9B58 000F6A98  7F E3 FB 78 */ mr r3, r31
/* 800F9B5C 000F6A9C  4B FF E1 8D */ bl daAlink_c_NS_setCrawlMoveDirectionArrow
/* 800F9B60 000F6AA0  7F E3 FB 78 */ mr r3, r31
/* 800F9B64 000F6AA4  4B FF ED 95 */ bl daAlink_c_NS_decideCrawlDoStatus
/* 800F9B68 000F6AA8  B3 BF 04 E6 */ sth r29, 0x4e6(r31)
/* 800F9B6C 000F6AAC  B3 9F 04 DE */ sth r28, 0x4de(r31)
/* 800F9B70 000F6AB0  48 00 01 E8 */ b lbl_800F9D58
lbl_800F9B74:
/* 800F9B74 000F6AB4  7C 80 07 35 */ extsh. r0, r4
/* 800F9B78 000F6AB8  40 82 00 A0 */ bne lbl_800F9C18
/* 800F9B7C 000F6ABC  4B FF E1 6D */ bl daAlink_c_NS_setCrawlMoveDirectionArrow
/* 800F9B80 000F6AC0  C0 3F 33 AC */ lfs f1, 0x33ac(r31)
/* 800F9B84 000F6AC4  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800F9B88 000F6AC8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F9B8C 000F6ACC  40 81 00 78 */ ble lbl_800F9C04
/* 800F9B90 000F6AD0  7F E3 FB 78 */ mr r3, r31
/* 800F9B94 000F6AD4  4B FF F3 F1 */ bl daAlink_c_NS_setCrawlAutoMoveAimPos
/* 800F9B98 000F6AD8  A8 1F 30 08 */ lha r0, 0x3008(r31)
/* 800F9B9C 000F6ADC  2C 00 FF FF */ cmpwi r0, -1
/* 800F9BA0 000F6AE0  40 82 01 B8 */ bne lbl_800F9D58
/* 800F9BA4 000F6AE4  38 00 00 00 */ li r0, 0
/* 800F9BA8 000F6AE8  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800F9BAC 000F6AEC  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800F9BB0 000F6AF0  98 03 5E 81 */ stb r0, 0x5e81(r3)
/* 800F9BB4 000F6AF4  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 800F9BB8 000F6AF8  A8 1F 04 DE */ lha r0, 0x4de(r31)
/* 800F9BBC 000F6AFC  7C 03 00 00 */ cmpw r3, r0
/* 800F9BC0 000F6B00  40 82 00 20 */ bne lbl_800F9BE0
/* 800F9BC4 000F6B04  7F E3 FB 78 */ mr r3, r31
/* 800F9BC8 000F6B08  7F C4 F3 78 */ mr r4, r30
/* 800F9BCC 000F6B0C  C0 22 93 14 */ lfs f1, lbl_80452D14-_SDA2_BASE_(r2)
/* 800F9BD0 000F6B10  48 00 81 25 */ bl daAlink_c_NS_setWaterInAnmRate
/* 800F9BD4 000F6B14  38 00 00 00 */ li r0, 0
/* 800F9BD8 000F6B18  B0 1E 00 0A */ sth r0, 0xa(r30)
/* 800F9BDC 000F6B1C  48 00 00 1C */ b lbl_800F9BF8
lbl_800F9BE0:
/* 800F9BE0 000F6B20  7F E3 FB 78 */ mr r3, r31
/* 800F9BE4 000F6B24  7F C4 F3 78 */ mr r4, r30
/* 800F9BE8 000F6B28  C0 22 93 6C */ lfs f1, lbl_80452D6C-_SDA2_BASE_(r2)
/* 800F9BEC 000F6B2C  48 00 81 09 */ bl daAlink_c_NS_setWaterInAnmRate
/* 800F9BF0 000F6B30  A8 1E 00 08 */ lha r0, 8(r30)
/* 800F9BF4 000F6B34  B0 1E 00 0A */ sth r0, 0xa(r30)
lbl_800F9BF8:
/* 800F9BF8 000F6B38  7F E3 FB 78 */ mr r3, r31
/* 800F9BFC 000F6B3C  4B FC 57 81 */ bl daAlink_c_NS_initBasAnime
/* 800F9C00 000F6B40  48 00 01 58 */ b lbl_800F9D58
lbl_800F9C04:
/* 800F9C04 000F6B44  7F E3 FB 78 */ mr r3, r31
/* 800F9C08 000F6B48  4B FF EC F1 */ bl daAlink_c_NS_decideCrawlDoStatus
/* 800F9C0C 000F6B4C  B3 BF 04 E6 */ sth r29, 0x4e6(r31)
/* 800F9C10 000F6B50  B3 9F 04 DE */ sth r28, 0x4de(r31)
/* 800F9C14 000F6B54  48 00 01 44 */ b lbl_800F9D58
lbl_800F9C18:
/* 800F9C18 000F6B58  3B 80 00 01 */ li r28, 1
/* 800F9C1C 000F6B5C  A8 7F 30 0A */ lha r3, 0x300a(r31)
/* 800F9C20 000F6B60  2C 03 00 00 */ cmpwi r3, 0
/* 800F9C24 000F6B64  40 81 00 0C */ ble lbl_800F9C30
/* 800F9C28 000F6B68  38 03 FF FF */ addi r0, r3, -1
/* 800F9C2C 000F6B6C  B0 1F 30 0A */ sth r0, 0x300a(r31)
lbl_800F9C30:
/* 800F9C30 000F6B70  A8 1F 30 0E */ lha r0, 0x300e(r31)
/* 800F9C34 000F6B74  2C 00 00 00 */ cmpwi r0, 0
/* 800F9C38 000F6B78  41 82 00 80 */ beq lbl_800F9CB8
/* 800F9C3C 000F6B7C  38 7F 04 E6 */ addi r3, r31, 0x4e6
/* 800F9C40 000F6B80  A8 9F 30 0C */ lha r4, 0x300c(r31)
/* 800F9C44 000F6B84  38 A0 00 05 */ li r5, 5
/* 800F9C48 000F6B88  38 C0 04 80 */ li r6, 0x480
/* 800F9C4C 000F6B8C  38 E0 00 80 */ li r7, 0x80
/* 800F9C50 000F6B90  48 17 68 F1 */ bl cLib_addCalcAngleS__FPsssss
/* 800F9C54 000F6B94  7C 60 07 35 */ extsh. r0, r3
/* 800F9C58 000F6B98  41 82 00 08 */ beq lbl_800F9C60
/* 800F9C5C 000F6B9C  3B 80 00 00 */ li r28, 0
lbl_800F9C60:
/* 800F9C60 000F6BA0  A8 1F 30 0E */ lha r0, 0x300e(r31)
/* 800F9C64 000F6BA4  2C 00 00 00 */ cmpwi r0, 0
/* 800F9C68 000F6BA8  40 80 00 18 */ bge lbl_800F9C80
/* 800F9C6C 000F6BAC  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 800F9C70 000F6BB0  3C 63 00 01 */ addis r3, r3, 1
/* 800F9C74 000F6BB4  38 03 80 00 */ addi r0, r3, -32768
/* 800F9C78 000F6BB8  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 800F9C7C 000F6BBC  48 00 00 0C */ b lbl_800F9C88
lbl_800F9C80:
/* 800F9C80 000F6BC0  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 800F9C84 000F6BC4  B0 1F 04 DE */ sth r0, 0x4de(r31)
lbl_800F9C88:
/* 800F9C88 000F6BC8  38 7F 04 D0 */ addi r3, r31, 0x4d0
/* 800F9C8C 000F6BCC  C0 3F 37 C8 */ lfs f1, 0x37c8(r31)
/* 800F9C90 000F6BD0  C0 42 92 98 */ lfs f2, lbl_80452C98-_SDA2_BASE_(r2)
/* 800F9C94 000F6BD4  C0 62 92 C4 */ lfs f3, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800F9C98 000F6BD8  C0 82 92 B8 */ lfs f4, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800F9C9C 000F6BDC  48 17 5C E1 */ bl cLib_addCalc__FPfffff
/* 800F9CA0 000F6BE0  38 7F 04 D8 */ addi r3, r31, 0x4d8
/* 800F9CA4 000F6BE4  C0 3F 37 D0 */ lfs f1, 0x37d0(r31)
/* 800F9CA8 000F6BE8  C0 42 92 98 */ lfs f2, lbl_80452C98-_SDA2_BASE_(r2)
/* 800F9CAC 000F6BEC  C0 62 92 C4 */ lfs f3, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800F9CB0 000F6BF0  C0 82 92 B8 */ lfs f4, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800F9CB4 000F6BF4  48 17 5C C9 */ bl cLib_addCalc__FPfffff
lbl_800F9CB8:
/* 800F9CB8 000F6BF8  38 61 00 08 */ addi r3, r1, 8
/* 800F9CBC 000F6BFC  38 9F 37 C8 */ addi r4, r31, 0x37c8
/* 800F9CC0 000F6C00  38 BF 04 D0 */ addi r5, r31, 0x4d0
/* 800F9CC4 000F6C04  48 16 CE 71 */ bl __mi__4cXyzCFRC3Vec
/* 800F9CC8 000F6C08  C0 01 00 08 */ lfs f0, 8(r1)
/* 800F9CCC 000F6C0C  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 800F9CD0 000F6C10  C0 01 00 0C */ lfs f0, 0xc(r1)
/* 800F9CD4 000F6C14  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 800F9CD8 000F6C18  C0 01 00 10 */ lfs f0, 0x10(r1)
/* 800F9CDC 000F6C1C  D0 01 00 1C */ stfs f0, 0x1c(r1)
/* 800F9CE0 000F6C20  38 61 00 14 */ addi r3, r1, 0x14
/* 800F9CE4 000F6C24  48 16 D4 45 */ bl atan2sX_Z__4cXyzCFv
/* 800F9CE8 000F6C28  A8 9F 04 DE */ lha r4, 0x4de(r31)
/* 800F9CEC 000F6C2C  48 17 71 39 */ bl cLib_distanceAngleS__Fss
/* 800F9CF0 000F6C30  2C 03 60 00 */ cmpwi r3, 0x6000
/* 800F9CF4 000F6C34  40 80 00 08 */ bge lbl_800F9CFC
/* 800F9CF8 000F6C38  3B 80 00 00 */ li r28, 0
lbl_800F9CFC:
/* 800F9CFC 000F6C3C  7F E3 FB 78 */ mr r3, r31
/* 800F9D00 000F6C40  4B FF DF 75 */ bl daAlink_c_NS_getCrawlMoveSpeed
/* 800F9D04 000F6C44  D0 3F 33 98 */ stfs f1, 0x3398(r31)
/* 800F9D08 000F6C48  C0 3F 33 98 */ lfs f1, 0x3398(r31)
/* 800F9D0C 000F6C4C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800F9D10 000F6C50  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F9D14 000F6C54  40 80 00 20 */ bge lbl_800F9D34
/* 800F9D18 000F6C58  C0 02 92 BC */ lfs f0, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800F9D1C 000F6C5C  EC 01 00 32 */ fmuls f0, f1, f0
/* 800F9D20 000F6C60  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 800F9D24 000F6C64  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 800F9D28 000F6C68  3C 63 00 01 */ addis r3, r3, 1
/* 800F9D2C 000F6C6C  38 03 80 00 */ addi r0, r3, -32768
/* 800F9D30 000F6C70  B0 1F 04 DE */ sth r0, 0x4de(r31)
lbl_800F9D34:
/* 800F9D34 000F6C74  2C 1C 00 00 */ cmpwi r28, 0
/* 800F9D38 000F6C78  40 82 00 10 */ bne lbl_800F9D48
/* 800F9D3C 000F6C7C  A8 1F 30 0A */ lha r0, 0x300a(r31)
/* 800F9D40 000F6C80  2C 00 00 00 */ cmpwi r0, 0
/* 800F9D44 000F6C84  40 82 00 14 */ bne lbl_800F9D58
lbl_800F9D48:
/* 800F9D48 000F6C88  7F E3 FB 78 */ mr r3, r31
/* 800F9D4C 000F6C8C  A8 9F 04 E4 */ lha r4, 0x4e4(r31)
/* 800F9D50 000F6C90  A8 BF 04 E8 */ lha r5, 0x4e8(r31)
/* 800F9D54 000F6C94  4B FF F7 21 */ bl daAlink_c_NS_procCrawlMoveInit
lbl_800F9D58:
/* 800F9D58 000F6C98  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 800F9D5C 000F6C9C  B0 1F 31 0C */ sth r0, 0x310c(r31)
/* 800F9D60 000F6CA0  38 60 00 01 */ li r3, 1
/* 800F9D64 000F6CA4  39 61 00 30 */ addi r11, r1, 0x30
/* 800F9D68 000F6CA8  48 26 84 BD */ bl _restgpr_28
/* 800F9D6C 000F6CAC  80 01 00 34 */ lwz r0, 0x34(r1)
/* 800F9D70 000F6CB0  7C 08 03 A6 */ mtlr r0
/* 800F9D74 000F6CB4  38 21 00 30 */ addi r1, r1, 0x30
/* 800F9D78 000F6CB8  4E 80 00 20 */ blr
