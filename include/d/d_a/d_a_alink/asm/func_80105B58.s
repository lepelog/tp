/* 80105B58 00102A98  94 21 FF 80 */ stwu r1, -0x80(r1)
/* 80105B5C 00102A9C  7C 08 02 A6 */ mflr r0
/* 80105B60 00102AA0  90 01 00 84 */ stw r0, 0x84(r1)
/* 80105B64 00102AA4  DB E1 00 70 */ stfd f31, 0x70(r1)
/* 80105B68 00102AA8  F3 E1 00 78 */ psq_st f31, 120(r1), 0, 0
/* 80105B6C 00102AAC  DB C1 00 60 */ stfd f30, 0x60(r1)
/* 80105B70 00102AB0  F3 C1 00 68 */ psq_st f30, 104(r1), 0, 0
/* 80105B74 00102AB4  39 61 00 60 */ addi r11, r1, 0x60
/* 80105B78 00102AB8  48 25 C6 59 */ bl _savegpr_26
/* 80105B7C 00102ABC  7C 7B 1B 78 */ mr r27, r3
/* 80105B80 00102AC0  7C 9C 23 78 */ mr r28, r4
/* 80105B84 00102AC4  A8 63 04 E4 */ lha r3, 0x4e4(r3)
/* 80105B88 00102AC8  48 25 F5 49 */ bl func_803650D0
/* 80105B8C 00102ACC  7C 7D 1B 78 */ mr r29, r3
/* 80105B90 00102AD0  A8 7B 04 E8 */ lha r3, 0x4e8(r27)
/* 80105B94 00102AD4  48 25 F5 3D */ bl func_803650D0
/* 80105B98 00102AD8  7C 1D 18 00 */ cmpw r29, r3
/* 80105B9C 00102ADC  40 81 00 08 */ ble lbl_80105BA4
/* 80105BA0 00102AE0  7F A3 EB 78 */ mr r3, r29
lbl_80105BA4:
/* 80105BA4 00102AE4  54 60 04 38 */ rlwinm r0, r3, 0, 0x10, 0x1c
/* 80105BA8 00102AE8  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 80105BAC 00102AEC  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 80105BB0 00102AF0  7F C3 04 2E */ lfsx f30, r3, r0
/* 80105BB4 00102AF4  3B C0 00 00 */ li r30, 0
/* 80105BB8 00102AF8  3B A0 00 00 */ li r29, 0
/* 80105BBC 00102AFC  C3 E2 93 BC */ lfs f31, lbl_80452DBC-_SDA2_BASE_(r2)
lbl_80105BC0:
/* 80105BC0 00102B00  7C 9B EA 14 */ add r4, r27, r29
/* 80105BC4 00102B04  38 64 18 B0 */ addi r3, r4, 0x18b0
/* 80105BC8 00102B08  C0 04 18 E0 */ lfs f0, 0x18e0(r4)
/* 80105BCC 00102B0C  EC 1E 00 32 */ fmuls f0, f30, f0
/* 80105BD0 00102B10  EC 3F 00 2A */ fadds f1, f31, f0
/* 80105BD4 00102B14  4B F7 03 6D */ bl dBgS_AcchCir_NS_SetWallR
/* 80105BD8 00102B18  3B DE 00 01 */ addi r30, r30, 1
/* 80105BDC 00102B1C  2C 1E 00 03 */ cmpwi r30, 3
/* 80105BE0 00102B20  3B BD 00 40 */ addi r29, r29, 0x40
/* 80105BE4 00102B24  41 80 FF DC */ blt lbl_80105BC0
/* 80105BE8 00102B28  C0 3B 33 98 */ lfs f1, 0x3398(r27)
/* 80105BEC 00102B2C  C0 02 94 64 */ lfs f0, lbl_80452E64-_SDA2_BASE_(r2)
/* 80105BF0 00102B30  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80105BF4 00102B34  40 81 00 98 */ ble lbl_80105C8C
/* 80105BF8 00102B38  80 1B 19 9C */ lwz r0, 0x199c(r27)
/* 80105BFC 00102B3C  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80105C00 00102B40  41 82 00 8C */ beq lbl_80105C8C
/* 80105C04 00102B44  A8 7B 04 DE */ lha r3, 0x4de(r27)
/* 80105C08 00102B48  3C 63 00 01 */ addis r3, r3, 1
/* 80105C0C 00102B4C  38 03 80 00 */ addi r0, r3, -32768
/* 80105C10 00102B50  7C 1E 07 34 */ extsh r30, r0
/* 80105C14 00102B54  3B E0 00 00 */ li r31, 0
/* 80105C18 00102B58  3B A0 00 00 */ li r29, 0
/* 80105C1C 00102B5C  C3 E2 92 E0 */ lfs f31, lbl_80452CE0-_SDA2_BASE_(r2)
lbl_80105C20:
/* 80105C20 00102B60  7C 9B EA 14 */ add r4, r27, r29
/* 80105C24 00102B64  80 04 18 C0 */ lwz r0, 0x18c0(r4)
/* 80105C28 00102B68  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80105C2C 00102B6C  41 82 00 50 */ beq lbl_80105C7C
/* 80105C30 00102B70  7F C3 F3 78 */ mr r3, r30
/* 80105C34 00102B74  A8 84 18 EC */ lha r4, 0x18ec(r4)
/* 80105C38 00102B78  48 16 B1 ED */ bl cLib_distanceAngleS
/* 80105C3C 00102B7C  2C 03 20 00 */ cmpwi r3, 0x2000
/* 80105C40 00102B80  41 81 00 3C */ bgt lbl_80105C7C
/* 80105C44 00102B84  C0 1B 33 98 */ lfs f0, 0x3398(r27)
/* 80105C48 00102B88  FC 00 F8 40 */ fcmpo cr0, f0, f31
/* 80105C4C 00102B8C  40 81 00 30 */ ble lbl_80105C7C
/* 80105C50 00102B90  7F 63 DB 78 */ mr r3, r27
/* 80105C54 00102B94  4B FA EC 7D */ bl daAlink_c_NS_setJumpMode
/* 80105C58 00102B98  7F 63 DB 78 */ mr r3, r27
/* 80105C5C 00102B9C  38 80 FF FC */ li r4, -4
/* 80105C60 00102BA0  38 A0 00 01 */ li r5, 1
/* 80105C64 00102BA4  38 C0 00 00 */ li r6, 0
/* 80105C68 00102BA8  38 E0 00 00 */ li r7, 0
/* 80105C6C 00102BAC  39 00 00 00 */ li r8, 0
/* 80105C70 00102BB0  39 20 00 00 */ li r9, 0
/* 80105C74 00102BB4  4B FD 3A 69 */ bl daAlink_c_NS_procCoLargeDamageInit
/* 80105C78 00102BB8  48 00 08 94 */ b lbl_8010650C
lbl_80105C7C:
/* 80105C7C 00102BBC  3B FF 00 01 */ addi r31, r31, 1
/* 80105C80 00102BC0  2C 1F 00 03 */ cmpwi r31, 3
/* 80105C84 00102BC4  3B BD 00 40 */ addi r29, r29, 0x40
/* 80105C88 00102BC8  41 80 FF 98 */ blt lbl_80105C20
lbl_80105C8C:
/* 80105C8C 00102BCC  7F 63 DB 78 */ mr r3, r27
/* 80105C90 00102BD0  4B FF FE 09 */ bl daAlink_c_NS_checkSnowCode
/* 80105C94 00102BD4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80105C98 00102BD8  40 82 00 54 */ bne lbl_80105CEC
/* 80105C9C 00102BDC  80 1B 19 9C */ lwz r0, 0x199c(r27)
/* 80105CA0 00102BE0  54 00 06 B5 */ rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80105CA4 00102BE4  41 82 00 48 */ beq lbl_80105CEC
/* 80105CA8 00102BE8  80 1B 31 A0 */ lwz r0, 0x31a0(r27)
/* 80105CAC 00102BEC  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80105CB0 00102BF0  40 82 00 3C */ bne lbl_80105CEC
/* 80105CB4 00102BF4  7F 63 DB 78 */ mr r3, r27
/* 80105CB8 00102BF8  4B FA EC 19 */ bl daAlink_c_NS_setJumpMode
/* 80105CBC 00102BFC  7F 63 DB 78 */ mr r3, r27
/* 80105CC0 00102C00  38 80 00 00 */ li r4, 0
/* 80105CC4 00102C04  4B FB FA E1 */ bl daAlink_c_NS_procBackJumpInit
/* 80105CC8 00102C08  80 7B 28 18 */ lwz r3, 0x2818(r27)
/* 80105CCC 00102C0C  28 03 00 00 */ cmplwi r3, 0
/* 80105CD0 00102C10  41 82 00 14 */ beq lbl_80105CE4
/* 80105CD4 00102C14  38 00 00 01 */ li r0, 1
/* 80105CD8 00102C18  98 03 09 61 */ stb r0, 0x961(r3)
/* 80105CDC 00102C1C  38 7B 28 14 */ addi r3, r27, 0x2814
/* 80105CE0 00102C20  48 05 90 1D */ bl daPy_actorKeep_c_NS_clearData
lbl_80105CE4:
/* 80105CE4 00102C24  38 60 00 01 */ li r3, 1
/* 80105CE8 00102C28  48 00 08 24 */ b lbl_8010650C
lbl_80105CEC:
/* 80105CEC 00102C2C  80 1B 19 9C */ lwz r0, 0x199c(r27)
/* 80105CF0 00102C30  54 00 06 B5 */ rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80105CF4 00102C34  41 82 01 80 */ beq lbl_80105E74
/* 80105CF8 00102C38  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80105CFC 00102C3C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80105D00 00102C40  3B A3 0F 38 */ addi r29, r3, 0xf38
/* 80105D04 00102C44  7F A3 EB 78 */ mr r3, r29
/* 80105D08 00102C48  38 9B 1A 60 */ addi r4, r27, 0x1a60
/* 80105D0C 00102C4C  4B F6 E9 55 */ bl cBgS_NS_ChkPolySafe
/* 80105D10 00102C50  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80105D14 00102C54  41 82 01 60 */ beq lbl_80105E74
/* 80105D18 00102C58  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 80105D1C 00102C5C  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 80105D20 00102C60  90 01 00 2C */ stw r0, 0x2c(r1)
/* 80105D24 00102C64  7F A3 EB 78 */ mr r3, r29
/* 80105D28 00102C68  38 9B 1A 60 */ addi r4, r27, 0x1a60
/* 80105D2C 00102C6C  38 A1 00 1C */ addi r5, r1, 0x1c
/* 80105D30 00102C70  4B F6 EA 15 */ bl cBgS_NS_GetTriPla
/* 80105D34 00102C74  C0 01 00 1C */ lfs f0, 0x1c(r1)
/* 80105D38 00102C78  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 80105D3C 00102C7C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80105D40 00102C80  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 80105D44 00102C84  C0 01 00 24 */ lfs f0, 0x24(r1)
/* 80105D48 00102C88  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 80105D4C 00102C8C  38 61 00 10 */ addi r3, r1, 0x10
/* 80105D50 00102C90  48 24 13 E9 */ bl PSVECSquareMag
/* 80105D54 00102C94  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80105D58 00102C98  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80105D5C 00102C9C  40 81 00 58 */ ble lbl_80105DB4
/* 80105D60 00102CA0  FC 00 08 34 */ frsqrte f0, f1
/* 80105D64 00102CA4  C8 82 92 E8 */ lfd f4, lbl_80452CE8-_SDA2_BASE_(r2)
/* 80105D68 00102CA8  FC 44 00 32 */ fmul f2, f4, f0
/* 80105D6C 00102CAC  C8 62 92 F0 */ lfd f3, lbl_80452CF0-_SDA2_BASE_(r2)
/* 80105D70 00102CB0  FC 00 00 32 */ fmul f0, f0, f0
/* 80105D74 00102CB4  FC 01 00 32 */ fmul f0, f1, f0
/* 80105D78 00102CB8  FC 03 00 28 */ fsub f0, f3, f0
/* 80105D7C 00102CBC  FC 02 00 32 */ fmul f0, f2, f0
/* 80105D80 00102CC0  FC 44 00 32 */ fmul f2, f4, f0
/* 80105D84 00102CC4  FC 00 00 32 */ fmul f0, f0, f0
/* 80105D88 00102CC8  FC 01 00 32 */ fmul f0, f1, f0
/* 80105D8C 00102CCC  FC 03 00 28 */ fsub f0, f3, f0
/* 80105D90 00102CD0  FC 02 00 32 */ fmul f0, f2, f0
/* 80105D94 00102CD4  FC 44 00 32 */ fmul f2, f4, f0
/* 80105D98 00102CD8  FC 00 00 32 */ fmul f0, f0, f0
/* 80105D9C 00102CDC  FC 01 00 32 */ fmul f0, f1, f0
/* 80105DA0 00102CE0  FC 03 00 28 */ fsub f0, f3, f0
/* 80105DA4 00102CE4  FC 02 00 32 */ fmul f0, f2, f0
/* 80105DA8 00102CE8  FC 21 00 32 */ fmul f1, f1, f0
/* 80105DAC 00102CEC  FC 20 08 18 */ frsp f1, f1
/* 80105DB0 00102CF0  48 00 00 88 */ b lbl_80105E38
lbl_80105DB4:
/* 80105DB4 00102CF4  C8 02 92 F8 */ lfd f0, lbl_80452CF8-_SDA2_BASE_(r2)
/* 80105DB8 00102CF8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80105DBC 00102CFC  40 80 00 10 */ bge lbl_80105DCC
/* 80105DC0 00102D00  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 80105DC4 00102D04  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 80105DC8 00102D08  48 00 00 70 */ b lbl_80105E38
lbl_80105DCC:
/* 80105DCC 00102D0C  D0 21 00 08 */ stfs f1, 8(r1)
/* 80105DD0 00102D10  80 81 00 08 */ lwz r4, 8(r1)
/* 80105DD4 00102D14  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 80105DD8 00102D18  3C 00 7F 80 */ lis r0, 0x7f80
/* 80105DDC 00102D1C  7C 03 00 00 */ cmpw r3, r0
/* 80105DE0 00102D20  41 82 00 14 */ beq lbl_80105DF4
/* 80105DE4 00102D24  40 80 00 40 */ bge lbl_80105E24
/* 80105DE8 00102D28  2C 03 00 00 */ cmpwi r3, 0
/* 80105DEC 00102D2C  41 82 00 20 */ beq lbl_80105E0C
/* 80105DF0 00102D30  48 00 00 34 */ b lbl_80105E24
lbl_80105DF4:
/* 80105DF4 00102D34  54 80 02 7F */ clrlwi. r0, r4, 9
/* 80105DF8 00102D38  41 82 00 0C */ beq lbl_80105E04
/* 80105DFC 00102D3C  38 00 00 01 */ li r0, 1
/* 80105E00 00102D40  48 00 00 28 */ b lbl_80105E28
lbl_80105E04:
/* 80105E04 00102D44  38 00 00 02 */ li r0, 2
/* 80105E08 00102D48  48 00 00 20 */ b lbl_80105E28
lbl_80105E0C:
/* 80105E0C 00102D4C  54 80 02 7F */ clrlwi. r0, r4, 9
/* 80105E10 00102D50  41 82 00 0C */ beq lbl_80105E1C
/* 80105E14 00102D54  38 00 00 05 */ li r0, 5
/* 80105E18 00102D58  48 00 00 10 */ b lbl_80105E28
lbl_80105E1C:
/* 80105E1C 00102D5C  38 00 00 03 */ li r0, 3
/* 80105E20 00102D60  48 00 00 08 */ b lbl_80105E28
lbl_80105E24:
/* 80105E24 00102D64  38 00 00 04 */ li r0, 4
lbl_80105E28:
/* 80105E28 00102D68  2C 00 00 01 */ cmpwi r0, 1
/* 80105E2C 00102D6C  40 82 00 0C */ bne lbl_80105E38
/* 80105E30 00102D70  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 80105E34 00102D74  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_80105E38:
/* 80105E38 00102D78  C0 41 00 20 */ lfs f2, 0x20(r1)
/* 80105E3C 00102D7C  48 16 18 39 */ bl cM_atan2s__Fff
/* 80105E40 00102D80  B0 7B 30 0E */ sth r3, 0x300e(r27)
/* 80105E44 00102D84  A8 1B 30 0E */ lha r0, 0x300e(r27)
/* 80105E48 00102D88  2C 00 00 00 */ cmpwi r0, 0
/* 80105E4C 00102D8C  40 82 00 0C */ bne lbl_80105E58
/* 80105E50 00102D90  A8 7B 04 E6 */ lha r3, 0x4e6(r27)
/* 80105E54 00102D94  48 00 00 0C */ b lbl_80105E60
lbl_80105E58:
/* 80105E58 00102D98  38 61 00 1C */ addi r3, r1, 0x1c
/* 80105E5C 00102D9C  48 16 12 CD */ bl cXyz_NS_atan2sX_Z
lbl_80105E60:
/* 80105E60 00102DA0  7C 7E 1B 78 */ mr r30, r3
/* 80105E64 00102DA4  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 80105E68 00102DA8  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 80105E6C 00102DAC  90 01 00 2C */ stw r0, 0x2c(r1)
/* 80105E70 00102DB0  48 00 00 10 */ b lbl_80105E80
lbl_80105E74:
/* 80105E74 00102DB4  38 00 00 00 */ li r0, 0
/* 80105E78 00102DB8  B0 1B 30 0E */ sth r0, 0x300e(r27)
/* 80105E7C 00102DBC  AB DB 04 E6 */ lha r30, 0x4e6(r27)
lbl_80105E80:
/* 80105E80 00102DC0  A8 7B 30 08 */ lha r3, 0x3008(r27)
/* 80105E84 00102DC4  2C 03 00 00 */ cmpwi r3, 0
/* 80105E88 00102DC8  41 82 00 18 */ beq lbl_80105EA0
/* 80105E8C 00102DCC  38 03 FF FF */ addi r0, r3, -1
/* 80105E90 00102DD0  B0 1B 30 08 */ sth r0, 0x3008(r27)
/* 80105E94 00102DD4  80 1B 05 84 */ lwz r0, 0x584(r27)
/* 80105E98 00102DD8  60 00 00 40 */ ori r0, r0, 0x40
/* 80105E9C 00102DDC  90 1B 05 84 */ stw r0, 0x584(r27)
lbl_80105EA0:
/* 80105EA0 00102DE0  C3 C2 92 C0 */ lfs f30, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80105EA4 00102DE4  A8 7B 2F E0 */ lha r3, 0x2fe0(r27)
/* 80105EA8 00102DE8  48 25 F2 29 */ bl func_803650D0
/* 80105EAC 00102DEC  7C 7F 1B 78 */ mr r31, r3
/* 80105EB0 00102DF0  C0 5B 33 AC */ lfs f2, 0x33ac(r27)
/* 80105EB4 00102DF4  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 80105EB8 00102DF8  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 80105EBC 00102DFC  40 81 01 DC */ ble lbl_80106098
/* 80105EC0 00102E00  2C 1C 00 00 */ cmpwi r28, 0
/* 80105EC4 00102E04  41 82 01 D4 */ beq lbl_80106098
/* 80105EC8 00102E08  A8 1B 2F E0 */ lha r0, 0x2fe0(r27)
/* 80105ECC 00102E0C  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 80105ED0 00102E10  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 80105ED4 00102E14  38 83 9A 20 */ addi r4, r3, lbl_80439A20@l
/* 80105ED8 00102E18  7C 24 04 2E */ lfsx f1, r4, r0
/* 80105EDC 00102E1C  C0 02 95 2C */ lfs f0, lbl_80452F2C-_SDA2_BASE_(r2)
/* 80105EE0 00102E20  EC 00 00 B2 */ fmuls f0, f0, f2
/* 80105EE4 00102E24  EC 00 00 72 */ fmuls f0, f0, f1
/* 80105EE8 00102E28  FC 00 00 1E */ fctiwz f0, f0
/* 80105EEC 00102E2C  D8 01 00 30 */ stfd f0, 0x30(r1)
/* 80105EF0 00102E30  83 A1 00 34 */ lwz r29, 0x34(r1)
/* 80105EF4 00102E34  2C 1F 60 00 */ cmpwi r31, 0x6000
/* 80105EF8 00102E38  40 81 01 08 */ ble lbl_80106000
/* 80105EFC 00102E3C  88 1B 2F 8C */ lbz r0, 0x2f8c(r27)
/* 80105F00 00102E40  28 00 00 0B */ cmplwi r0, 0xb
/* 80105F04 00102E44  40 82 00 FC */ bne lbl_80106000
/* 80105F08 00102E48  A0 1B 2F E8 */ lhz r0, 0x2fe8(r27)
/* 80105F0C 00102E4C  28 00 00 A7 */ cmplwi r0, 0xa7
/* 80105F10 00102E50  40 82 00 F0 */ bne lbl_80106000
/* 80105F14 00102E54  3C 60 00 01 */ lis r3, 0x00008000@ha
/* 80105F18 00102E58  38 03 80 00 */ addi r0, r3, 0x00008000@l
/* 80105F1C 00102E5C  7C 1F 00 50 */ subf r0, r31, r0
/* 80105F20 00102E60  54 00 0C 38 */ rlwinm r0, r0, 1, 0x10, 0x1c
/* 80105F24 00102E64  7C 64 02 14 */ add r3, r4, r0
/* 80105F28 00102E68  C0 03 00 04 */ lfs f0, 4(r3)
/* 80105F2C 00102E6C  EF C2 00 32 */ fmuls f30, f2, f0
/* 80105F30 00102E70  FC 60 F0 90 */ fmr f3, f30
/* 80105F34 00102E74  C0 02 93 EC */ lfs f0, lbl_80452DEC-_SDA2_BASE_(r2)
/* 80105F38 00102E78  FC 1E 00 40 */ fcmpo cr0, f30, f0
/* 80105F3C 00102E7C  40 80 00 08 */ bge lbl_80105F44
/* 80105F40 00102E80  FC 60 00 90 */ fmr f3, f0
lbl_80105F44:
/* 80105F44 00102E84  38 7B 33 98 */ addi r3, r27, 0x3398
/* 80105F48 00102E88  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80105F4C 00102E8C  C0 42 92 98 */ lfs f2, lbl_80452C98-_SDA2_BASE_(r2)
/* 80105F50 00102E90  C0 82 93 A0 */ lfs f4, lbl_80452DA0-_SDA2_BASE_(r2)
/* 80105F54 00102E94  48 16 9A 29 */ bl cLib_addCalc
/* 80105F58 00102E98  C0 1B 33 98 */ lfs f0, 0x3398(r27)
/* 80105F5C 00102E9C  C0 22 93 3C */ lfs f1, lbl_80452D3C-_SDA2_BASE_(r2)
/* 80105F60 00102EA0  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 80105F64 00102EA4  40 81 00 08 */ ble lbl_80105F6C
/* 80105F68 00102EA8  48 00 00 0C */ b lbl_80105F74
lbl_80105F6C:
/* 80105F6C 00102EAC  EC 1E 00 32 */ fmuls f0, f30, f0
/* 80105F70 00102EB0  EF C0 08 24 */ fdivs f30, f0, f1
lbl_80105F74:
/* 80105F74 00102EB4  7F 63 DB 78 */ mr r3, r27
/* 80105F78 00102EB8  4B FA D9 8D */ bl daAlink_c_NS_checkZeroSpeedF
/* 80105F7C 00102EBC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80105F80 00102EC0  41 82 01 1C */ beq lbl_8010609C
/* 80105F84 00102EC4  2C 1F 70 00 */ cmpwi r31, 0x7000
/* 80105F88 00102EC8  40 81 01 14 */ ble lbl_8010609C
/* 80105F8C 00102ECC  A0 1B 2F E8 */ lhz r0, 0x2fe8(r27)
/* 80105F90 00102ED0  28 00 00 A7 */ cmplwi r0, 0xa7
/* 80105F94 00102ED4  40 82 01 08 */ bne lbl_8010609C
/* 80105F98 00102ED8  80 1B 31 A0 */ lwz r0, 0x31a0(r27)
/* 80105F9C 00102EDC  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80105FA0 00102EE0  40 82 00 FC */ bne lbl_8010609C
/* 80105FA4 00102EE4  A8 1B 30 0E */ lha r0, 0x300e(r27)
/* 80105FA8 00102EE8  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 80105FAC 00102EEC  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 80105FB0 00102EF0  90 01 00 34 */ stw r0, 0x34(r1)
/* 80105FB4 00102EF4  3C 00 43 30 */ lis r0, 0x4330
/* 80105FB8 00102EF8  90 01 00 30 */ stw r0, 0x30(r1)
/* 80105FBC 00102EFC  C8 01 00 30 */ lfd f0, 0x30(r1)
/* 80105FC0 00102F00  EC 20 08 28 */ fsubs f1, f0, f1
/* 80105FC4 00102F04  C0 02 95 EC */ lfs f0, lbl_80452FEC-_SDA2_BASE_(r2)
/* 80105FC8 00102F08  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80105FCC 00102F0C  4C 40 13 82 */ cror 2, 0, 2
/* 80105FD0 00102F10  40 82 00 CC */ bne lbl_8010609C
/* 80105FD4 00102F14  7F 63 DB 78 */ mr r3, r27
/* 80105FD8 00102F18  38 80 00 F2 */ li r4, 0xf2
/* 80105FDC 00102F1C  4B FA 65 7D */ bl daAlink_c_NS_checkUnderMove0BckNoArc
/* 80105FE0 00102F20  2C 03 00 00 */ cmpwi r3, 0
/* 80105FE4 00102F24  41 82 00 B8 */ beq lbl_8010609C
/* 80105FE8 00102F28  80 1B 19 9C */ lwz r0, 0x199c(r27)
/* 80105FEC 00102F2C  54 00 06 B5 */ rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80105FF0 00102F30  41 82 00 AC */ beq lbl_8010609C
/* 80105FF4 00102F34  7F 63 DB 78 */ mr r3, r27
/* 80105FF8 00102F38  48 00 10 69 */ bl daAlink_c_NS_procBoardTurnInit
/* 80105FFC 00102F3C  48 00 05 10 */ b lbl_8010650C
lbl_80106000:
/* 80106000 00102F40  2C 1F 20 00 */ cmpwi r31, 0x2000
/* 80106004 00102F44  40 80 00 98 */ bge lbl_8010609C
/* 80106008 00102F48  88 1B 2F 8C */ lbz r0, 0x2f8c(r27)
/* 8010600C 00102F4C  28 00 00 0B */ cmplwi r0, 0xb
/* 80106010 00102F50  40 82 00 8C */ bne lbl_8010609C
/* 80106014 00102F54  A0 1B 2F E8 */ lhz r0, 0x2fe8(r27)
/* 80106018 00102F58  28 00 00 A7 */ cmplwi r0, 0xa7
/* 8010601C 00102F5C  40 82 00 80 */ bne lbl_8010609C
/* 80106020 00102F60  80 1B 31 A0 */ lwz r0, 0x31a0(r27)
/* 80106024 00102F64  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80106028 00102F68  40 82 00 74 */ bne lbl_8010609C
/* 8010602C 00102F6C  80 1B 19 9C */ lwz r0, 0x199c(r27)
/* 80106030 00102F70  54 00 06 B5 */ rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80106034 00102F74  41 82 00 68 */ beq lbl_8010609C
/* 80106038 00102F78  A8 7B 30 0E */ lha r3, 0x300e(r27)
/* 8010603C 00102F7C  A8 1B 31 22 */ lha r0, 0x3122(r27)
/* 80106040 00102F80  7C 03 00 00 */ cmpw r3, r0
/* 80106044 00102F84  40 80 00 58 */ bge lbl_8010609C
/* 80106048 00102F88  7F 63 DB 78 */ mr r3, r27
/* 8010604C 00102F8C  38 80 00 F2 */ li r4, 0xf2
/* 80106050 00102F90  4B FA 65 09 */ bl daAlink_c_NS_checkUnderMove0BckNoArc
/* 80106054 00102F94  2C 03 00 00 */ cmpwi r3, 0
/* 80106058 00102F98  40 82 00 18 */ bne lbl_80106070
/* 8010605C 00102F9C  7F 63 DB 78 */ mr r3, r27
/* 80106060 00102FA0  38 80 00 F3 */ li r4, 0xf3
/* 80106064 00102FA4  4B FA 64 F5 */ bl daAlink_c_NS_checkUnderMove0BckNoArc
/* 80106068 00102FA8  2C 03 00 00 */ cmpwi r3, 0
/* 8010606C 00102FAC  41 82 00 30 */ beq lbl_8010609C
lbl_80106070:
/* 80106070 00102FB0  C0 3B 33 98 */ lfs f1, 0x3398(r27)
/* 80106074 00102FB4  3C 60 80 39 */ lis r3, lbl_8038E870@ha
/* 80106078 00102FB8  38 63 E8 70 */ addi r3, r3, lbl_8038E870@l
/* 8010607C 00102FBC  C0 03 00 8C */ lfs f0, 0x8c(r3)
/* 80106080 00102FC0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80106084 00102FC4  4C 40 13 82 */ cror 2, 0, 2
/* 80106088 00102FC8  40 82 00 14 */ bne lbl_8010609C
/* 8010608C 00102FCC  7F 63 DB 78 */ mr r3, r27
/* 80106090 00102FD0  48 00 0D F9 */ bl daAlink_c_NS_procBoardRowInit
/* 80106094 00102FD4  48 00 04 78 */ b lbl_8010650C
lbl_80106098:
/* 80106098 00102FD8  3B A0 00 00 */ li r29, 0
lbl_8010609C:
/* 8010609C 00102FDC  3C 60 00 02 */ lis r3, 0x00020091@ha
/* 801060A0 00102FE0  3B 43 00 91 */ addi r26, r3, 0x00020091@l
/* 801060A4 00102FE4  88 1B 2F 8C */ lbz r0, 0x2f8c(r27)
/* 801060A8 00102FE8  28 00 00 0B */ cmplwi r0, 0xb
/* 801060AC 00102FEC  40 82 00 48 */ bne lbl_801060F4
/* 801060B0 00102FF0  C0 1B 1F 30 */ lfs f0, 0x1f30(r27)
/* 801060B4 00102FF4  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 801060B8 00102FF8  38 61 00 0C */ addi r3, r1, 0xc
/* 801060BC 00102FFC  FC 20 F0 90 */ fmr f1, f30
/* 801060C0 00103000  C0 42 92 98 */ lfs f2, lbl_80452C98-_SDA2_BASE_(r2)
/* 801060C4 00103004  C0 62 95 F0 */ lfs f3, lbl_80452FF0-_SDA2_BASE_(r2)
/* 801060C8 00103008  C0 82 93 A0 */ lfs f4, lbl_80452DA0-_SDA2_BASE_(r2)
/* 801060CC 0010300C  48 16 98 B1 */ bl cLib_addCalc
/* 801060D0 00103010  7F 63 DB 78 */ mr r3, r27
/* 801060D4 00103014  C0 21 00 0C */ lfs f1, 0xc(r1)
/* 801060D8 00103018  4B FA 66 61 */ bl daAlink_c_NS_setDoubleAnimeBlendRatio
/* 801060DC 0010301C  C0 21 00 0C */ lfs f1, 0xc(r1)
/* 801060E0 00103020  C0 02 94 08 */ lfs f0, lbl_80452E08-_SDA2_BASE_(r2)
/* 801060E4 00103024  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801060E8 00103028  40 81 00 0C */ ble lbl_801060F4
/* 801060EC 0010302C  3C 60 00 02 */ lis r3, 0x00020092@ha
/* 801060F0 00103030  3B 43 00 92 */ addi r26, r3, 0x00020092@l
lbl_801060F4:
/* 801060F4 00103034  80 1B 31 A0 */ lwz r0, 0x31a0(r27)
/* 801060F8 00103038  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 801060FC 0010303C  40 82 00 1C */ bne lbl_80106118
/* 80106100 00103040  7F 63 DB 78 */ mr r3, r27
/* 80106104 00103044  7F 44 D3 78 */ mr r4, r26
/* 80106108 00103048  81 9B 06 28 */ lwz r12, 0x628(r27)
/* 8010610C 0010304C  81 8C 01 1C */ lwz r12, 0x11c(r12)
/* 80106110 00103050  7D 89 03 A6 */ mtctr r12
/* 80106114 00103054  4E 80 04 21 */ bctrl
lbl_80106118:
/* 80106118 00103058  A0 1B 2F E8 */ lhz r0, 0x2fe8(r27)
/* 8010611C 0010305C  28 00 00 A9 */ cmplwi r0, 0xa9
/* 80106120 00103060  40 82 00 10 */ bne lbl_80106130
/* 80106124 00103064  38 00 00 00 */ li r0, 0
/* 80106128 00103068  B0 1B 30 0C */ sth r0, 0x300c(r27)
/* 8010612C 0010306C  48 00 00 40 */ b lbl_8010616C
lbl_80106130:
/* 80106130 00103070  38 7B 30 0C */ addi r3, r27, 0x300c
/* 80106134 00103074  7F A4 EB 78 */ mr r4, r29
/* 80106138 00103078  38 A0 00 1E */ li r5, 0x1e
/* 8010613C 0010307C  38 C0 08 00 */ li r6, 0x800
/* 80106140 00103080  38 E0 00 10 */ li r7, 0x10
/* 80106144 00103084  48 16 A3 FD */ bl cLib_addCalcAngleS
/* 80106148 00103088  80 1B 31 A0 */ lwz r0, 0x31a0(r27)
/* 8010614C 0010308C  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80106150 00103090  40 82 00 14 */ bne lbl_80106164
/* 80106154 00103094  A8 7B 04 DE */ lha r3, 0x4de(r27)
/* 80106158 00103098  A8 1B 30 0C */ lha r0, 0x300c(r27)
/* 8010615C 0010309C  7C 03 02 14 */ add r0, r3, r0
/* 80106160 001030A0  B0 1B 04 DE */ sth r0, 0x4de(r27)
lbl_80106164:
/* 80106164 001030A4  A8 1B 04 DE */ lha r0, 0x4de(r27)
/* 80106168 001030A8  B0 1B 04 E6 */ sth r0, 0x4e6(r27)
lbl_8010616C:
/* 8010616C 001030AC  38 7B 2F EE */ addi r3, r27, 0x2fee
/* 80106170 001030B0  7C 1D 00 D0 */ neg r0, r29
/* 80106174 001030B4  1C 00 00 06 */ mulli r0, r0, 6
/* 80106178 001030B8  7C 04 07 34 */ extsh r4, r0
/* 8010617C 001030BC  38 A0 00 0A */ li r5, 0xa
/* 80106180 001030C0  38 C0 08 00 */ li r6, 0x800
/* 80106184 001030C4  38 E0 00 40 */ li r7, 0x40
/* 80106188 001030C8  48 16 A3 B9 */ bl cLib_addCalcAngleS
/* 8010618C 001030CC  A8 1B 2F EE */ lha r0, 0x2fee(r27)
/* 80106190 001030D0  7C 00 0E 70 */ srawi r0, r0, 1
/* 80106194 001030D4  B0 1B 04 E8 */ sth r0, 0x4e8(r27)
/* 80106198 001030D8  A8 1B 04 E8 */ lha r0, 0x4e8(r27)
/* 8010619C 001030DC  B0 1B 05 A0 */ sth r0, 0x5a0(r27)
/* 801061A0 001030E0  80 1B 19 9C */ lwz r0, 0x199c(r27)
/* 801061A4 001030E4  54 00 06 B5 */ rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 801061A8 001030E8  41 82 02 FC */ beq lbl_801064A4
/* 801061AC 001030EC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 801061B0 001030F0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 801061B4 001030F4  38 63 0F 38 */ addi r3, r3, 0xf38
/* 801061B8 001030F8  38 9B 1A 60 */ addi r4, r27, 0x1a60
/* 801061BC 001030FC  4B F6 E4 A5 */ bl cBgS_NS_ChkPolySafe
/* 801061C0 00103100  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 801061C4 00103104  41 82 02 E0 */ beq lbl_801064A4
/* 801061C8 00103108  80 1B 31 A0 */ lwz r0, 0x31a0(r27)
/* 801061CC 0010310C  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 801061D0 00103110  41 82 00 1C */ beq lbl_801061EC
/* 801061D4 00103114  80 1B 31 A0 */ lwz r0, 0x31a0(r27)
/* 801061D8 00103118  54 00 07 FA */ rlwinm r0, r0, 0, 0x1f, 0x1d
/* 801061DC 0010311C  90 1B 31 A0 */ stw r0, 0x31a0(r27)
/* 801061E0 00103120  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 801061E4 00103124  D0 1B 04 FC */ stfs f0, 0x4fc(r27)
/* 801061E8 00103128  48 00 02 00 */ b lbl_801063E8
lbl_801061EC:
/* 801061EC 0010312C  A8 BB 30 0E */ lha r5, 0x300e(r27)
/* 801061F0 00103130  C8 42 92 B0 */ lfd f2, lbl_80452CB0-_SDA2_BASE_(r2)
/* 801061F4 00103134  6C A4 80 00 */ xoris r4, r5, 0x8000
/* 801061F8 00103138  90 81 00 34 */ stw r4, 0x34(r1)
/* 801061FC 0010313C  3C 60 43 30 */ lis r3, 0x4330
/* 80106200 00103140  90 61 00 30 */ stw r3, 0x30(r1)
/* 80106204 00103144  C8 01 00 30 */ lfd f0, 0x30(r1)
/* 80106208 00103148  EC 20 10 28 */ fsubs f1, f0, f2
/* 8010620C 0010314C  C0 02 95 EC */ lfs f0, lbl_80452FEC-_SDA2_BASE_(r2)
/* 80106210 00103150  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80106214 00103154  40 81 01 C4 */ ble lbl_801063D8
/* 80106218 00103158  A0 1B 2F E8 */ lhz r0, 0x2fe8(r27)
/* 8010621C 0010315C  28 00 00 A8 */ cmplwi r0, 0xa8
/* 80106220 00103160  40 82 00 20 */ bne lbl_80106240
/* 80106224 00103164  90 81 00 34 */ stw r4, 0x34(r1)
/* 80106228 00103168  90 61 00 30 */ stw r3, 0x30(r1)
/* 8010622C 0010316C  C8 01 00 30 */ lfd f0, 0x30(r1)
/* 80106230 00103170  EC 20 10 28 */ fsubs f1, f0, f2
/* 80106234 00103174  C0 02 94 4C */ lfs f0, lbl_80452E4C-_SDA2_BASE_(r2)
/* 80106238 00103178  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8010623C 0010317C  41 80 01 9C */ blt lbl_801063D8
lbl_80106240:
/* 80106240 00103180  C8 42 92 B0 */ lfd f2, lbl_80452CB0-_SDA2_BASE_(r2)
/* 80106244 00103184  6C A0 80 00 */ xoris r0, r5, 0x8000
/* 80106248 00103188  90 01 00 34 */ stw r0, 0x34(r1)
/* 8010624C 0010318C  3C 60 43 30 */ lis r3, 0x4330
/* 80106250 00103190  90 61 00 30 */ stw r3, 0x30(r1)
/* 80106254 00103194  C8 01 00 30 */ lfd f0, 0x30(r1)
/* 80106258 00103198  EC 20 10 28 */ fsubs f1, f0, f2
/* 8010625C 0010319C  A8 1B 31 22 */ lha r0, 0x3122(r27)
/* 80106260 001031A0  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 80106264 001031A4  90 01 00 3C */ stw r0, 0x3c(r1)
/* 80106268 001031A8  90 61 00 38 */ stw r3, 0x38(r1)
/* 8010626C 001031AC  C8 01 00 38 */ lfd f0, 0x38(r1)
/* 80106270 001031B0  EC 00 10 28 */ fsubs f0, f0, f2
/* 80106274 001031B4  EF C1 00 24 */ fdivs f30, f1, f0
/* 80106278 001031B8  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 8010627C 001031BC  FC 1E 00 40 */ fcmpo cr0, f30, f0
/* 80106280 001031C0  40 81 00 08 */ ble lbl_80106288
/* 80106284 001031C4  FF C0 00 90 */ fmr f30, f0
lbl_80106288:
/* 80106288 001031C8  A8 1B 04 E6 */ lha r0, 0x4e6(r27)
/* 8010628C 001031CC  7C 1E 00 50 */ subf r0, r30, r0
/* 80106290 001031D0  7C 1A 07 34 */ extsh r26, r0
/* 80106294 001031D4  7F 43 D3 78 */ mr r3, r26
/* 80106298 001031D8  48 25 EE 39 */ bl func_803650D0
/* 8010629C 001031DC  2C 03 40 00 */ cmpwi r3, 0x4000
/* 801062A0 001031E0  41 81 00 28 */ bgt lbl_801062C8
/* 801062A4 001031E4  C0 22 92 98 */ lfs f1, lbl_80452C98-_SDA2_BASE_(r2)
/* 801062A8 001031E8  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 801062AC 001031EC  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 801062B0 001031F0  57 40 04 38 */ rlwinm r0, r26, 0, 0x10, 0x1c
/* 801062B4 001031F4  7C 63 02 14 */ add r3, r3, r0
/* 801062B8 001031F8  C0 03 00 04 */ lfs f0, 4(r3)
/* 801062BC 001031FC  EC 01 00 32 */ fmuls f0, f1, f0
/* 801062C0 00103200  EF E1 00 2A */ fadds f31, f1, f0
/* 801062C4 00103204  48 00 00 28 */ b lbl_801062EC
lbl_801062C8:
/* 801062C8 00103208  C0 42 92 B8 */ lfs f2, lbl_80452CB8-_SDA2_BASE_(r2)
/* 801062CC 0010320C  C0 22 92 98 */ lfs f1, lbl_80452C98-_SDA2_BASE_(r2)
/* 801062D0 00103210  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 801062D4 00103214  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 801062D8 00103218  57 40 04 38 */ rlwinm r0, r26, 0, 0x10, 0x1c
/* 801062DC 0010321C  7C 63 02 14 */ add r3, r3, r0
/* 801062E0 00103220  C0 03 00 04 */ lfs f0, 4(r3)
/* 801062E4 00103224  EC 01 00 32 */ fmuls f0, f1, f0
/* 801062E8 00103228  EF E2 00 28 */ fsubs f31, f2, f0
lbl_801062EC:
/* 801062EC 0010322C  C0 02 95 F4 */ lfs f0, lbl_80452FF4-_SDA2_BASE_(r2)
/* 801062F0 00103230  EC 20 07 B2 */ fmuls f1, f0, f30
/* 801062F4 00103234  48 16 12 F1 */ bl cM_rad2s__Ff
/* 801062F8 00103238  54 60 04 38 */ rlwinm r0, r3, 0, 0x10, 0x1c
/* 801062FC 0010323C  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 80106300 00103240  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 80106304 00103244  7C 03 04 2E */ lfsx f0, r3, r0
/* 80106308 00103248  EF FF 00 32 */ fmuls f31, f31, f0
/* 8010630C 0010324C  C0 02 93 A0 */ lfs f0, lbl_80452DA0-_SDA2_BASE_(r2)
/* 80106310 00103250  FC 1F 00 40 */ fcmpo cr0, f31, f0
/* 80106314 00103254  40 81 00 B0 */ ble lbl_801063C4
/* 80106318 00103258  A8 1B 04 E6 */ lha r0, 0x4e6(r27)
/* 8010631C 0010325C  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 80106320 00103260  7C 43 04 2E */ lfsx f2, r3, r0
/* 80106324 00103264  57 C4 04 38 */ rlwinm r4, r30, 0, 0x10, 0x1c
/* 80106328 00103268  7C 03 24 2E */ lfsx f0, r3, r4
/* 8010632C 0010326C  EC 3F 00 32 */ fmuls f1, f31, f0
/* 80106330 00103270  C0 9B 33 98 */ lfs f4, 0x3398(r27)
/* 80106334 00103274  EC 04 00 B2 */ fmuls f0, f4, f2
/* 80106338 00103278  EC 21 00 2A */ fadds f1, f1, f0
/* 8010633C 0010327C  38 63 00 04 */ addi r3, r3, 4
/* 80106340 00103280  7C 63 04 2E */ lfsx f3, r3, r0
/* 80106344 00103284  7C 03 24 2E */ lfsx f0, r3, r4
/* 80106348 00103288  EC 5F 00 32 */ fmuls f2, f31, f0
/* 8010634C 0010328C  EC 04 00 F2 */ fmuls f0, f4, f3
/* 80106350 00103290  EC 42 00 2A */ fadds f2, f2, f0
/* 80106354 00103294  EC 61 00 72 */ fmuls f3, f1, f1
/* 80106358 00103298  EC 02 00 B2 */ fmuls f0, f2, f2
/* 8010635C 0010329C  EC 63 00 2A */ fadds f3, f3, f0
/* 80106360 001032A0  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80106364 001032A4  FC 03 00 40 */ fcmpo cr0, f3, f0
/* 80106368 001032A8  40 81 00 0C */ ble lbl_80106374
/* 8010636C 001032AC  FC 00 18 34 */ frsqrte f0, f3
/* 80106370 001032B0  EC 60 00 F2 */ fmuls f3, f0, f3
lbl_80106374:
/* 80106374 001032B4  D0 7B 33 98 */ stfs f3, 0x3398(r27)
/* 80106378 001032B8  C0 1B 33 98 */ lfs f0, 0x3398(r27)
/* 8010637C 001032BC  C0 7B 05 94 */ lfs f3, 0x594(r27)
/* 80106380 001032C0  FC 00 18 40 */ fcmpo cr0, f0, f3
/* 80106384 001032C4  40 81 00 08 */ ble lbl_8010638C
/* 80106388 001032C8  D0 7B 33 98 */ stfs f3, 0x3398(r27)
lbl_8010638C:
/* 8010638C 001032CC  C0 7B 33 98 */ lfs f3, 0x3398(r27)
/* 80106390 001032D0  C0 02 93 A0 */ lfs f0, lbl_80452DA0-_SDA2_BASE_(r2)
/* 80106394 001032D4  FC 03 00 40 */ fcmpo cr0, f3, f0
/* 80106398 001032D8  40 81 00 50 */ ble lbl_801063E8
/* 8010639C 001032DC  48 16 12 D9 */ bl cM_atan2s__Fff
/* 801063A0 001032E0  7C 64 1B 78 */ mr r4, r3
/* 801063A4 001032E4  38 7B 04 E6 */ addi r3, r27, 0x4e6
/* 801063A8 001032E8  38 A0 00 02 */ li r5, 2
/* 801063AC 001032EC  38 C0 20 00 */ li r6, 0x2000
/* 801063B0 001032F0  38 E0 08 00 */ li r7, 0x800
/* 801063B4 001032F4  48 16 A1 8D */ bl cLib_addCalcAngleS
/* 801063B8 001032F8  A8 1B 04 E6 */ lha r0, 0x4e6(r27)
/* 801063BC 001032FC  B0 1B 04 DE */ sth r0, 0x4de(r27)
/* 801063C0 00103300  48 00 00 28 */ b lbl_801063E8
lbl_801063C4:
/* 801063C4 00103304  38 7B 33 98 */ addi r3, r27, 0x3398
/* 801063C8 00103308  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 801063CC 0010330C  C0 42 93 88 */ lfs f2, lbl_80452D88-_SDA2_BASE_(r2)
/* 801063D0 00103310  48 16 A3 71 */ bl cLib_chaseF
/* 801063D4 00103314  48 00 00 14 */ b lbl_801063E8
lbl_801063D8:
/* 801063D8 00103318  38 7B 33 98 */ addi r3, r27, 0x3398
/* 801063DC 0010331C  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 801063E0 00103320  C0 42 93 88 */ lfs f2, lbl_80452D88-_SDA2_BASE_(r2)
/* 801063E4 00103324  48 16 A3 5D */ bl cLib_chaseF
lbl_801063E8:
/* 801063E8 00103328  C0 3B 33 AC */ lfs f1, 0x33ac(r27)
/* 801063EC 0010332C  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 801063F0 00103330  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801063F4 00103334  40 81 00 38 */ ble lbl_8010642C
/* 801063F8 00103338  2C 1C 00 00 */ cmpwi r28, 0
/* 801063FC 0010333C  41 82 00 30 */ beq lbl_8010642C
/* 80106400 00103340  2C 1F 28 00 */ cmpwi r31, 0x2800
/* 80106404 00103344  40 80 00 28 */ bge lbl_8010642C
/* 80106408 00103348  7F 63 DB 78 */ mr r3, r27
/* 8010640C 0010334C  38 80 00 F2 */ li r4, 0xf2
/* 80106410 00103350  4B FA 61 49 */ bl daAlink_c_NS_checkUnderMove0BckNoArc
/* 80106414 00103354  2C 03 00 00 */ cmpwi r3, 0
/* 80106418 00103358  41 82 00 58 */ beq lbl_80106470
/* 8010641C 0010335C  7F 63 DB 78 */ mr r3, r27
/* 80106420 00103360  38 80 00 01 */ li r4, 1
/* 80106424 00103364  48 00 01 11 */ bl daAlink_c_NS_setCommonBoardAnime
/* 80106428 00103368  48 00 00 48 */ b lbl_80106470
lbl_8010642C:
/* 8010642C 0010336C  7F 63 DB 78 */ mr r3, r27
/* 80106430 00103370  38 80 00 F3 */ li r4, 0xf3
/* 80106434 00103374  4B FA 61 25 */ bl daAlink_c_NS_checkUnderMove0BckNoArc
/* 80106438 00103378  2C 03 00 00 */ cmpwi r3, 0
/* 8010643C 0010337C  41 82 00 10 */ beq lbl_8010644C
/* 80106440 00103380  7F 63 DB 78 */ mr r3, r27
/* 80106444 00103384  38 80 00 00 */ li r4, 0
/* 80106448 00103388  48 00 00 ED */ bl daAlink_c_NS_setCommonBoardAnime
lbl_8010644C:
/* 8010644C 0010338C  C0 5B 33 98 */ lfs f2, 0x3398(r27)
/* 80106450 00103390  C0 22 93 A8 */ lfs f1, lbl_80452DA8-_SDA2_BASE_(r2)
/* 80106454 00103394  C0 1B 05 94 */ lfs f0, 0x594(r27)
/* 80106458 00103398  EC 21 00 32 */ fmuls f1, f1, f0
/* 8010645C 0010339C  FC 02 08 40 */ fcmpo cr0, f2, f1
/* 80106460 001033A0  40 81 00 10 */ ble lbl_80106470
/* 80106464 001033A4  38 7B 33 98 */ addi r3, r27, 0x3398
/* 80106468 001033A8  C0 42 93 2C */ lfs f2, lbl_80452D2C-_SDA2_BASE_(r2)
/* 8010646C 001033AC  48 16 A2 D5 */ bl cLib_chaseF
lbl_80106470:
/* 80106470 001033B0  38 7B 04 E4 */ addi r3, r27, 0x4e4
/* 80106474 001033B4  A8 9B 2F F0 */ lha r4, 0x2ff0(r27)
/* 80106478 001033B8  38 A0 00 04 */ li r5, 4
/* 8010647C 001033BC  38 C0 10 00 */ li r6, 0x1000
/* 80106480 001033C0  38 E0 01 00 */ li r7, 0x100
/* 80106484 001033C4  48 16 A0 BD */ bl cLib_addCalcAngleS
/* 80106488 001033C8  C0 3B 33 98 */ lfs f1, 0x3398(r27)
/* 8010648C 001033CC  C0 02 93 3C */ lfs f0, lbl_80452D3C-_SDA2_BASE_(r2)
/* 80106490 001033D0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80106494 001033D4  40 81 00 74 */ ble lbl_80106508
/* 80106498 001033D8  38 00 00 04 */ li r0, 4
/* 8010649C 001033DC  98 1B 2F 9D */ stb r0, 0x2f9d(r27)
/* 801064A0 001033E0  48 00 00 68 */ b lbl_80106508
lbl_801064A4:
/* 801064A4 001033E4  80 1B 31 A0 */ lwz r0, 0x31a0(r27)
/* 801064A8 001033E8  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 801064AC 001033EC  40 82 00 44 */ bne lbl_801064F0
/* 801064B0 001033F0  A8 1B 04 E4 */ lha r0, 0x4e4(r27)
/* 801064B4 001033F4  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 801064B8 001033F8  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 801064BC 001033FC  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 801064C0 00103400  7C 03 04 2E */ lfsx f0, r3, r0
/* 801064C4 00103404  C0 3B 33 98 */ lfs f1, 0x3398(r27)
/* 801064C8 00103408  FC 00 00 50 */ fneg f0, f0
/* 801064CC 0010340C  EC 21 00 32 */ fmuls f1, f1, f0
/* 801064D0 00103410  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 801064D4 00103414  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801064D8 00103418  40 80 00 08 */ bge lbl_801064E0
/* 801064DC 0010341C  FC 20 00 90 */ fmr f1, f0
lbl_801064E0:
/* 801064E0 00103420  7F 63 DB 78 */ mr r3, r27
/* 801064E4 00103424  38 80 00 00 */ li r4, 0
/* 801064E8 00103428  48 00 0D 31 */ bl daAlink_c_NS_procBoardJumpInit
/* 801064EC 0010342C  48 00 00 20 */ b lbl_8010650C
lbl_801064F0:
/* 801064F0 00103430  38 7B 04 E4 */ addi r3, r27, 0x4e4
/* 801064F4 00103434  38 80 00 00 */ li r4, 0
/* 801064F8 00103438  38 A0 00 04 */ li r5, 4
/* 801064FC 0010343C  38 C0 00 64 */ li r6, 0x64
/* 80106500 00103440  38 E0 00 0A */ li r7, 0xa
/* 80106504 00103444  48 16 A0 3D */ bl cLib_addCalcAngleS
lbl_80106508:
/* 80106508 00103448  38 60 00 00 */ li r3, 0
lbl_8010650C:
/* 8010650C 0010344C  E3 E1 00 78 */ psq_l f31, 120(r1), 0, 0
/* 80106510 00103450  CB E1 00 70 */ lfd f31, 0x70(r1)
/* 80106514 00103454  E3 C1 00 68 */ psq_l f30, 104(r1), 0, 0
/* 80106518 00103458  CB C1 00 60 */ lfd f30, 0x60(r1)
/* 8010651C 0010345C  39 61 00 60 */ addi r11, r1, 0x60
/* 80106520 00103460  48 25 BC FD */ bl _restgpr_26
/* 80106524 00103464  80 01 00 84 */ lwz r0, 0x84(r1)
/* 80106528 00103468  7C 08 03 A6 */ mtlr r0
/* 8010652C 0010346C  38 21 00 80 */ addi r1, r1, 0x80
/* 80106530 00103470  4E 80 00 20 */ blr
