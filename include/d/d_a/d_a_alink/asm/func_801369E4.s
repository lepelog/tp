/* 801369E4 00133924  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 801369E8 00133928  7C 08 02 A6 */ mflr r0
/* 801369EC 0013392C  90 01 00 14 */ stw r0, 0x14(r1)
/* 801369F0 00133930  93 E1 00 0C */ stw r31, 0xc(r1)
/* 801369F4 00133934  93 C1 00 08 */ stw r30, 8(r1)
/* 801369F8 00133938  7C 7E 1B 78 */ mr r30, r3
/* 801369FC 0013393C  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 80136A00 00133940  38 60 00 00 */ li r3, 0
/* 80136A04 00133944  B0 7E 30 10 */ sth r3, 0x3010(r30)
/* 80136A08 00133948  A8 1E 30 0C */ lha r0, 0x300c(r30)
/* 80136A0C 0013394C  2C 00 00 00 */ cmpwi r0, 0
/* 80136A10 00133950  40 82 00 10 */ bne lbl_80136A20
/* 80136A14 00133954  38 00 00 05 */ li r0, 5
/* 80136A18 00133958  98 1E 2F 99 */ stb r0, 0x2f99(r30)
/* 80136A1C 0013395C  48 00 00 08 */ b lbl_80136A24
lbl_80136A20:
/* 80136A20 00133960  B0 7E 30 0C */ sth r3, 0x300c(r30)
lbl_80136A24:
/* 80136A24 00133964  80 1E 31 98 */ lwz r0, 0x3198(r30)
/* 80136A28 00133968  2C 00 00 00 */ cmpwi r0, 0
/* 80136A2C 0013396C  41 82 00 3C */ beq lbl_80136A68
/* 80136A30 00133970  C0 62 93 14 */ lfs f3, lbl_80452D14-_SDA2_BASE_(r2)
/* 80136A34 00133974  C0 42 92 98 */ lfs f2, lbl_80452C98-_SDA2_BASE_(r2)
/* 80136A38 00133978  C0 3E 34 80 */ lfs f1, 0x3480(r30)
/* 80136A3C 0013397C  C0 1F 00 10 */ lfs f0, 0x10(r31)
/* 80136A40 00133980  EC 01 00 32 */ fmuls f0, f1, f0
/* 80136A44 00133984  EC 02 00 28 */ fsubs f0, f2, f0
/* 80136A48 00133988  EC 23 00 32 */ fmuls f1, f3, f0
/* 80136A4C 0013398C  3C 60 80 42 */ lis r3, lbl_8042561C@ha
/* 80136A50 00133990  C4 03 56 1C */ lfsu f0, lbl_8042561C@l(r3)
/* 80136A54 00133994  EC 00 00 72 */ fmuls f0, f0, f1
/* 80136A58 00133998  D0 1E 35 88 */ stfs f0, 0x3588(r30)
/* 80136A5C 0013399C  C0 03 00 08 */ lfs f0, 8(r3)
/* 80136A60 001339A0  EC 00 00 72 */ fmuls f0, f0, f1
/* 80136A64 001339A4  D0 1E 35 90 */ stfs f0, 0x3590(r30)
lbl_80136A68:
/* 80136A68 001339A8  80 1E 31 9C */ lwz r0, 0x319c(r30)
/* 80136A6C 001339AC  2C 00 FF FC */ cmpwi r0, -4
/* 80136A70 001339B0  40 82 00 28 */ bne lbl_80136A98
/* 80136A74 001339B4  80 1E 05 78 */ lwz r0, 0x578(r30)
/* 80136A78 001339B8  54 00 04 E7 */ rlwinm. r0, r0, 0, 0x13, 0x13
/* 80136A7C 001339BC  41 82 00 0C */ beq lbl_80136A88
/* 80136A80 001339C0  38 60 00 01 */ li r3, 1
/* 80136A84 001339C4  48 00 01 7C */ b lbl_80136C00
lbl_80136A88:
/* 80136A88 001339C8  3C 60 80 39 */ lis r3, lbl_8038F29C@ha
/* 80136A8C 001339CC  38 63 F2 9C */ addi r3, r3, lbl_8038F29C@l
/* 80136A90 001339D0  C0 03 00 04 */ lfs f0, 4(r3)
/* 80136A94 001339D4  D0 1F 00 0C */ stfs f0, 0xc(r31)
lbl_80136A98:
/* 80136A98 001339D8  A8 7E 30 08 */ lha r3, 0x3008(r30)
/* 80136A9C 001339DC  2C 03 00 00 */ cmpwi r3, 0
/* 80136AA0 001339E0  40 81 00 40 */ ble lbl_80136AE0
/* 80136AA4 001339E4  38 03 FF FF */ addi r0, r3, -1
/* 80136AA8 001339E8  B0 1E 30 08 */ sth r0, 0x3008(r30)
/* 80136AAC 001339EC  A8 1E 30 08 */ lha r0, 0x3008(r30)
/* 80136AB0 001339F0  2C 00 00 00 */ cmpwi r0, 0
/* 80136AB4 001339F4  40 82 01 48 */ bne lbl_80136BFC
/* 80136AB8 001339F8  38 00 FF FF */ li r0, -1
/* 80136ABC 001339FC  B0 1E 30 08 */ sth r0, 0x3008(r30)
/* 80136AC0 00133A00  3C 60 80 39 */ lis r3, lbl_8038F3C4@ha
/* 80136AC4 00133A04  38 63 F3 C4 */ addi r3, r3, lbl_8038F3C4@l
/* 80136AC8 00133A08  C0 03 00 28 */ lfs f0, 0x28(r3)
/* 80136ACC 00133A0C  D0 1F 00 0C */ stfs f0, 0xc(r31)
/* 80136AD0 00133A10  38 00 00 00 */ li r0, 0
/* 80136AD4 00133A14  B0 1F 00 14 */ sth r0, 0x14(r31)
/* 80136AD8 00133A18  B0 1F 00 16 */ sth r0, 0x16(r31)
/* 80136ADC 00133A1C  48 00 01 20 */ b lbl_80136BFC
lbl_80136AE0:
/* 80136AE0 00133A20  A8 1E 30 0E */ lha r0, 0x300e(r30)
/* 80136AE4 00133A24  2C 00 00 00 */ cmpwi r0, 0
/* 80136AE8 00133A28  41 82 00 34 */ beq lbl_80136B1C
/* 80136AEC 00133A2C  7F E3 FB 78 */ mr r3, r31
/* 80136AF0 00133A30  C0 22 93 20 */ lfs f1, lbl_80452D20-_SDA2_BASE_(r2)
/* 80136AF4 00133A34  48 1F 19 39 */ bl checkPass__12J3DFrameCtrlFf
/* 80136AF8 00133A38  2C 03 00 00 */ cmpwi r3, 0
/* 80136AFC 00133A3C  41 82 00 20 */ beq lbl_80136B1C
/* 80136B00 00133A40  7F C3 F3 78 */ mr r3, r30
/* 80136B04 00133A44  3C 80 00 01 */ lis r4, 0x00010042@ha
/* 80136B08 00133A48  38 84 00 42 */ addi r4, r4, 0x00010042@l
/* 80136B0C 00133A4C  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 80136B10 00133A50  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 80136B14 00133A54  7D 89 03 A6 */ mtctr r12
/* 80136B18 00133A58  4E 80 04 21 */ bctrl
lbl_80136B1C:
/* 80136B1C 00133A5C  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 80136B20 00133A60  C0 1E 34 7C */ lfs f0, 0x347c(r30)
/* 80136B24 00133A64  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80136B28 00133A68  40 81 00 10 */ ble lbl_80136B38
/* 80136B2C 00133A6C  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 80136B30 00133A70  54 00 04 5E */ rlwinm r0, r0, 0, 0x11, 0xf
/* 80136B34 00133A74  90 1E 31 A0 */ stw r0, 0x31a0(r30)
lbl_80136B38:
/* 80136B38 00133A78  7F E3 FB 78 */ mr r3, r31
/* 80136B3C 00133A7C  48 02 79 91 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80136B40 00133A80  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80136B44 00133A84  41 82 00 70 */ beq lbl_80136BB4
/* 80136B48 00133A88  A8 1E 30 12 */ lha r0, 0x3012(r30)
/* 80136B4C 00133A8C  2C 00 00 00 */ cmpwi r0, 0
/* 80136B50 00133A90  41 82 00 28 */ beq lbl_80136B78
/* 80136B54 00133A94  80 6D 8A 98 */ lwz r3, lbl_80451018-_SDA_BASE_(r13)
/* 80136B58 00133A98  80 03 08 C0 */ lwz r0, 0x8c0(r3)
/* 80136B5C 00133A9C  28 00 00 0B */ cmplwi r0, 0xb
/* 80136B60 00133AA0  40 82 00 18 */ bne lbl_80136B78
/* 80136B64 00133AA4  38 00 00 0D */ li r0, 0xd
/* 80136B68 00133AA8  90 03 08 C0 */ stw r0, 0x8c0(r3)
/* 80136B6C 00133AAC  7F C3 F3 78 */ mr r3, r30
/* 80136B70 00133AB0  4B FF 64 E1 */ bl procWolfMidnaRideShockInit__9daAlink_cFv
/* 80136B74 00133AB4  48 00 00 8C */ b lbl_80136C00
lbl_80136B78:
/* 80136B78 00133AB8  80 1E 06 14 */ lwz r0, 0x614(r30)
/* 80136B7C 00133ABC  28 00 00 1B */ cmplwi r0, 0x1b
/* 80136B80 00133AC0  41 82 00 0C */ beq lbl_80136B8C
/* 80136B84 00133AC4  28 00 00 09 */ cmplwi r0, 9
/* 80136B88 00133AC8  40 82 00 1C */ bne lbl_80136BA4
lbl_80136B8C:
/* 80136B8C 00133ACC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80136B90 00133AD0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80136B94 00133AD4  38 63 4F F8 */ addi r3, r3, 0x4ff8
/* 80136B98 00133AD8  80 9E 31 84 */ lwz r4, 0x3184(r30)
/* 80136B9C 00133ADC  4B F1 15 E1 */ bl cutEnd__16dEvent_manager_cFi
/* 80136BA0 00133AE0  48 00 00 5C */ b lbl_80136BFC
lbl_80136BA4:
/* 80136BA4 00133AE4  7F C3 F3 78 */ mr r3, r30
/* 80136BA8 00133AE8  38 80 00 00 */ li r4, 0
/* 80136BAC 00133AEC  4B FF 2F 99 */ bl checkNextActionWolf__9daAlink_cFi
/* 80136BB0 00133AF0  48 00 00 4C */ b lbl_80136BFC
lbl_80136BB4:
/* 80136BB4 00133AF4  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 80136BB8 00133AF8  C0 1E 34 78 */ lfs f0, 0x3478(r30)
/* 80136BBC 00133AFC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80136BC0 00133B00  40 81 00 14 */ ble lbl_80136BD4
/* 80136BC4 00133B04  7F C3 F3 78 */ mr r3, r30
/* 80136BC8 00133B08  38 80 00 01 */ li r4, 1
/* 80136BCC 00133B0C  4B FF 2F 79 */ bl checkNextActionWolf__9daAlink_cFi
/* 80136BD0 00133B10  48 00 00 2C */ b lbl_80136BFC
lbl_80136BD4:
/* 80136BD4 00133B14  80 1E 05 8C */ lwz r0, 0x58c(r30)
/* 80136BD8 00133B18  54 00 01 09 */ rlwinm. r0, r0, 0, 4, 4
/* 80136BDC 00133B1C  41 82 00 20 */ beq lbl_80136BFC
/* 80136BE0 00133B20  C0 1E 34 84 */ lfs f0, 0x3484(r30)
/* 80136BE4 00133B24  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80136BE8 00133B28  40 81 00 14 */ ble lbl_80136BFC
/* 80136BEC 00133B2C  D0 1F 00 10 */ stfs f0, 0x10(r31)
/* 80136BF0 00133B30  80 7E 1F 2C */ lwz r3, 0x1f2c(r30)
/* 80136BF4 00133B34  C0 1E 34 84 */ lfs f0, 0x3484(r30)
/* 80136BF8 00133B38  D0 03 00 08 */ stfs f0, 8(r3)
lbl_80136BFC:
/* 80136BFC 00133B3C  38 60 00 01 */ li r3, 1
lbl_80136C00:
/* 80136C00 00133B40  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80136C04 00133B44  83 C1 00 08 */ lwz r30, 8(r1)
/* 80136C08 00133B48  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80136C0C 00133B4C  7C 08 03 A6 */ mtlr r0
/* 80136C10 00133B50  38 21 00 10 */ addi r1, r1, 0x10
/* 80136C14 00133B54  4E 80 00 20 */ blr
