/* 80220C30 0021DB70  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80220C34 0021DB74  7C 08 02 A6 */ mflr r0
/* 80220C38 0021DB78  90 01 00 24 */ stw r0, 0x24(r1)
/* 80220C3C 0021DB7C  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 80220C40 0021DB80  93 C1 00 18 */ stw r30, 0x18(r1)
/* 80220C44 0021DB84  7C 7E 1B 78 */ mr r30, r3
/* 80220C48 0021DB88  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80220C4C 0021DB8C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80220C50 0021DB90  4B E1 1E 59 */ bl getRupeeMax__21dSv_player_status_a_cCFv
/* 80220C54 0021DB94  7C 65 07 34 */ extsh r5, r3
/* 80220C58 0021DB98  3B E0 00 00 */ li r31, 0
/* 80220C5C 0021DB9C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80220C60 0021DBA0  38 83 61 C0 */ addi r4, r3, g_dComIfG_gameInfo@l
/* 80220C64 0021DBA4  80 64 5D C4 */ lwz r3, 0x5dc4(r4)
/* 80220C68 0021DBA8  2C 03 00 00 */ cmpwi r3, 0
/* 80220C6C 0021DBAC  41 82 00 B0 */ beq lbl_80220D1C
/* 80220C70 0021DBB0  A0 04 00 04 */ lhz r0, 4(r4)
/* 80220C74 0021DBB4  7C 00 1A 14 */ add r0, r0, r3
/* 80220C78 0021DBB8  7C 06 07 34 */ extsh r6, r0
/* 80220C7C 0021DBBC  7C 06 28 00 */ cmpw r6, r5
/* 80220C80 0021DBC0  40 81 00 0C */ ble lbl_80220C8C
/* 80220C84 0021DBC4  7C A6 2B 78 */ mr r6, r5
/* 80220C88 0021DBC8  48 00 00 10 */ b lbl_80220C98
lbl_80220C8C:
/* 80220C8C 0021DBCC  7C C0 07 35 */ extsh. r0, r6
/* 80220C90 0021DBD0  40 80 00 08 */ bge lbl_80220C98
/* 80220C94 0021DBD4  38 C0 00 00 */ li r6, 0
lbl_80220C98:
/* 80220C98 0021DBD8  54 C3 04 3E */ clrlwi r3, r6, 0x10
/* 80220C9C 0021DBDC  B0 C4 00 04 */ sth r6, 4(r4)
/* 80220CA0 0021DBE0  38 00 00 00 */ li r0, 0
/* 80220CA4 0021DBE4  90 04 5D C4 */ stw r0, 0x5dc4(r4)
/* 80220CA8 0021DBE8  A8 1E 01 B0 */ lha r0, 0x1b0(r30)
/* 80220CAC 0021DBEC  7C 00 18 50 */ subf r0, r0, r3
/* 80220CB0 0021DBF0  2C 00 00 05 */ cmpwi r0, 5
/* 80220CB4 0021DBF4  41 80 00 34 */ blt lbl_80220CE8
/* 80220CB8 0021DBF8  88 1E 01 EA */ lbz r0, 0x1ea(r30)
/* 80220CBC 0021DBFC  60 00 00 04 */ ori r0, r0, 4
/* 80220CC0 0021DC00  98 1E 01 EA */ stb r0, 0x1ea(r30)
/* 80220CC4 0021DC04  88 7E 01 EA */ lbz r3, 0x1ea(r30)
/* 80220CC8 0021DC08  54 60 07 39 */ rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80220CCC 0021DC0C  41 82 00 50 */ beq lbl_80220D1C
/* 80220CD0 0021DC10  54 60 07 76 */ rlwinm r0, r3, 0, 0x1d, 0x1b
/* 80220CD4 0021DC14  98 1E 01 EA */ stb r0, 0x1ea(r30)
/* 80220CD8 0021DC18  88 1E 01 EA */ lbz r0, 0x1ea(r30)
/* 80220CDC 0021DC1C  54 00 07 FA */ rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80220CE0 0021DC20  98 1E 01 EA */ stb r0, 0x1ea(r30)
/* 80220CE4 0021DC24  48 00 00 38 */ b lbl_80220D1C
lbl_80220CE8:
/* 80220CE8 0021DC28  2C 00 FF FB */ cmpwi r0, -5
/* 80220CEC 0021DC2C  41 81 00 30 */ bgt lbl_80220D1C
/* 80220CF0 0021DC30  88 1E 01 EA */ lbz r0, 0x1ea(r30)
/* 80220CF4 0021DC34  60 00 00 08 */ ori r0, r0, 8
/* 80220CF8 0021DC38  98 1E 01 EA */ stb r0, 0x1ea(r30)
/* 80220CFC 0021DC3C  88 7E 01 EA */ lbz r3, 0x1ea(r30)
/* 80220D00 0021DC40  54 60 07 7B */ rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 80220D04 0021DC44  41 82 00 18 */ beq lbl_80220D1C
/* 80220D08 0021DC48  54 60 07 B8 */ rlwinm r0, r3, 0, 0x1e, 0x1c
/* 80220D0C 0021DC4C  98 1E 01 EA */ stb r0, 0x1ea(r30)
/* 80220D10 0021DC50  88 1E 01 EA */ lbz r0, 0x1ea(r30)
/* 80220D14 0021DC54  54 00 06 3C */ rlwinm r0, r0, 0, 0x18, 0x1e
/* 80220D18 0021DC58  98 1E 01 EA */ stb r0, 0x1ea(r30)
lbl_80220D1C:
/* 80220D1C 0021DC5C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80220D20 0021DC60  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80220D24 0021DC64  A0 03 00 04 */ lhz r0, 4(r3)
/* 80220D28 0021DC68  A8 9E 01 B0 */ lha r4, 0x1b0(r30)
/* 80220D2C 0021DC6C  7C 04 00 00 */ cmpw r4, r0
/* 80220D30 0021DC70  41 82 01 A0 */ beq lbl_80220ED0
/* 80220D34 0021DC74  40 80 00 D0 */ bge lbl_80220E04
/* 80220D38 0021DC78  38 04 00 01 */ addi r0, r4, 1
/* 80220D3C 0021DC7C  B0 1E 01 B0 */ sth r0, 0x1b0(r30)
/* 80220D40 0021DC80  3B E0 00 01 */ li r31, 1
/* 80220D44 0021DC84  88 9E 01 EA */ lbz r4, 0x1ea(r30)
/* 80220D48 0021DC88  54 80 F7 FF */ rlwinm. r0, r4, 0x1e, 0x1f, 0x1f
/* 80220D4C 0021DC8C  41 82 01 84 */ beq lbl_80220ED0
/* 80220D50 0021DC90  A0 63 00 04 */ lhz r3, 4(r3)
/* 80220D54 0021DC94  A8 1E 01 B0 */ lha r0, 0x1b0(r30)
/* 80220D58 0021DC98  7C 00 18 00 */ cmpw r0, r3
/* 80220D5C 0021DC9C  41 82 00 58 */ beq lbl_80220DB4
/* 80220D60 0021DCA0  54 80 07 FF */ clrlwi. r0, r4, 0x1f
/* 80220D64 0021DCA4  40 82 00 44 */ bne lbl_80220DA8
/* 80220D68 0021DCA8  60 80 00 01 */ ori r0, r4, 1
/* 80220D6C 0021DCAC  98 1E 01 EA */ stb r0, 0x1ea(r30)
/* 80220D70 0021DCB0  38 00 00 73 */ li r0, 0x73
/* 80220D74 0021DCB4  90 01 00 14 */ stw r0, 0x14(r1)
/* 80220D78 0021DCB8  80 6D 8D E8 */ lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 80220D7C 0021DCBC  38 81 00 14 */ addi r4, r1, 0x14
/* 80220D80 0021DCC0  38 A0 00 00 */ li r5, 0
/* 80220D84 0021DCC4  38 C0 00 00 */ li r6, 0
/* 80220D88 0021DCC8  38 E0 00 00 */ li r7, 0
/* 80220D8C 0021DCCC  C0 22 AF CC */ lfs f1, lbl_804549CC-_SDA2_BASE_(r2)
/* 80220D90 0021DCD0  FC 40 08 90 */ fmr f2, f1
/* 80220D94 0021DCD4  C0 62 AF D0 */ lfs f3, lbl_804549D0-_SDA2_BASE_(r2)
/* 80220D98 0021DCD8  FC 80 18 90 */ fmr f4, f3
/* 80220D9C 0021DCDC  39 00 00 00 */ li r8, 0
/* 80220DA0 0021DCE0  48 08 AB E5 */ bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80220DA4 0021DCE4  48 00 01 2C */ b lbl_80220ED0
lbl_80220DA8:
/* 80220DA8 0021DCE8  54 80 06 3C */ rlwinm r0, r4, 0, 0x18, 0x1e
/* 80220DAC 0021DCEC  98 1E 01 EA */ stb r0, 0x1ea(r30)
/* 80220DB0 0021DCF0  48 00 01 20 */ b lbl_80220ED0
lbl_80220DB4:
/* 80220DB4 0021DCF4  38 00 00 74 */ li r0, 0x74
/* 80220DB8 0021DCF8  90 01 00 10 */ stw r0, 0x10(r1)
/* 80220DBC 0021DCFC  80 6D 8D E8 */ lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 80220DC0 0021DD00  38 81 00 10 */ addi r4, r1, 0x10
/* 80220DC4 0021DD04  38 A0 00 00 */ li r5, 0
/* 80220DC8 0021DD08  38 C0 00 00 */ li r6, 0
/* 80220DCC 0021DD0C  38 E0 00 00 */ li r7, 0
/* 80220DD0 0021DD10  C0 22 AF CC */ lfs f1, lbl_804549CC-_SDA2_BASE_(r2)
/* 80220DD4 0021DD14  FC 40 08 90 */ fmr f2, f1
/* 80220DD8 0021DD18  C0 62 AF D0 */ lfs f3, lbl_804549D0-_SDA2_BASE_(r2)
/* 80220DDC 0021DD1C  FC 80 18 90 */ fmr f4, f3
/* 80220DE0 0021DD20  39 00 00 00 */ li r8, 0
/* 80220DE4 0021DD24  48 08 AB A1 */ bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80220DE8 0021DD28  88 1E 01 EA */ lbz r0, 0x1ea(r30)
/* 80220DEC 0021DD2C  54 00 07 B8 */ rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80220DF0 0021DD30  98 1E 01 EA */ stb r0, 0x1ea(r30)
/* 80220DF4 0021DD34  88 1E 01 EA */ lbz r0, 0x1ea(r30)
/* 80220DF8 0021DD38  54 00 06 3C */ rlwinm r0, r0, 0, 0x18, 0x1e
/* 80220DFC 0021DD3C  98 1E 01 EA */ stb r0, 0x1ea(r30)
/* 80220E00 0021DD40  48 00 00 D0 */ b lbl_80220ED0
lbl_80220E04:
/* 80220E04 0021DD44  40 81 00 CC */ ble lbl_80220ED0
/* 80220E08 0021DD48  38 04 FF FF */ addi r0, r4, -1
/* 80220E0C 0021DD4C  B0 1E 01 B0 */ sth r0, 0x1b0(r30)
/* 80220E10 0021DD50  3B E0 00 01 */ li r31, 1
/* 80220E14 0021DD54  88 9E 01 EA */ lbz r4, 0x1ea(r30)
/* 80220E18 0021DD58  54 80 EF FF */ rlwinm. r0, r4, 0x1d, 0x1f, 0x1f
/* 80220E1C 0021DD5C  41 82 00 B4 */ beq lbl_80220ED0
/* 80220E20 0021DD60  A0 63 00 04 */ lhz r3, 4(r3)
/* 80220E24 0021DD64  A8 1E 01 B0 */ lha r0, 0x1b0(r30)
/* 80220E28 0021DD68  7C 00 18 00 */ cmpw r0, r3
/* 80220E2C 0021DD6C  41 82 00 58 */ beq lbl_80220E84
/* 80220E30 0021DD70  54 80 07 BD */ rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 80220E34 0021DD74  40 82 00 44 */ bne lbl_80220E78
/* 80220E38 0021DD78  60 80 00 02 */ ori r0, r4, 2
/* 80220E3C 0021DD7C  98 1E 01 EA */ stb r0, 0x1ea(r30)
/* 80220E40 0021DD80  38 00 00 75 */ li r0, 0x75
/* 80220E44 0021DD84  90 01 00 0C */ stw r0, 0xc(r1)
/* 80220E48 0021DD88  80 6D 8D E8 */ lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 80220E4C 0021DD8C  38 81 00 0C */ addi r4, r1, 0xc
/* 80220E50 0021DD90  38 A0 00 00 */ li r5, 0
/* 80220E54 0021DD94  38 C0 00 00 */ li r6, 0
/* 80220E58 0021DD98  38 E0 00 00 */ li r7, 0
/* 80220E5C 0021DD9C  C0 22 AF CC */ lfs f1, lbl_804549CC-_SDA2_BASE_(r2)
/* 80220E60 0021DDA0  FC 40 08 90 */ fmr f2, f1
/* 80220E64 0021DDA4  C0 62 AF D0 */ lfs f3, lbl_804549D0-_SDA2_BASE_(r2)
/* 80220E68 0021DDA8  FC 80 18 90 */ fmr f4, f3
/* 80220E6C 0021DDAC  39 00 00 00 */ li r8, 0
/* 80220E70 0021DDB0  48 08 AB 15 */ bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80220E74 0021DDB4  48 00 00 5C */ b lbl_80220ED0
lbl_80220E78:
/* 80220E78 0021DDB8  54 80 07 FA */ rlwinm r0, r4, 0, 0x1f, 0x1d
/* 80220E7C 0021DDBC  98 1E 01 EA */ stb r0, 0x1ea(r30)
/* 80220E80 0021DDC0  48 00 00 50 */ b lbl_80220ED0
lbl_80220E84:
/* 80220E84 0021DDC4  38 00 00 76 */ li r0, 0x76
/* 80220E88 0021DDC8  90 01 00 08 */ stw r0, 8(r1)
/* 80220E8C 0021DDCC  80 6D 8D E8 */ lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 80220E90 0021DDD0  38 81 00 08 */ addi r4, r1, 8
/* 80220E94 0021DDD4  38 A0 00 00 */ li r5, 0
/* 80220E98 0021DDD8  38 C0 00 00 */ li r6, 0
/* 80220E9C 0021DDDC  38 E0 00 00 */ li r7, 0
/* 80220EA0 0021DDE0  C0 22 AF CC */ lfs f1, lbl_804549CC-_SDA2_BASE_(r2)
/* 80220EA4 0021DDE4  FC 40 08 90 */ fmr f2, f1
/* 80220EA8 0021DDE8  C0 62 AF D0 */ lfs f3, lbl_804549D0-_SDA2_BASE_(r2)
/* 80220EAC 0021DDEC  FC 80 18 90 */ fmr f4, f3
/* 80220EB0 0021DDF0  39 00 00 00 */ li r8, 0
/* 80220EB4 0021DDF4  48 08 AA D1 */ bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80220EB8 0021DDF8  88 1E 01 EA */ lbz r0, 0x1ea(r30)
/* 80220EBC 0021DDFC  54 00 07 76 */ rlwinm r0, r0, 0, 0x1d, 0x1b
/* 80220EC0 0021DE00  98 1E 01 EA */ stb r0, 0x1ea(r30)
/* 80220EC4 0021DE04  88 1E 01 EA */ lbz r0, 0x1ea(r30)
/* 80220EC8 0021DE08  54 00 07 FA */ rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80220ECC 0021DE0C  98 1E 01 EA */ stb r0, 0x1ea(r30)
lbl_80220ED0:
/* 80220ED0 0021DE10  C0 1E 02 68 */ lfs f0, 0x268(r30)
/* 80220ED4 0021DE14  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80220ED8 0021DE18  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80220EDC 0021DE1C  C0 23 03 3C */ lfs f1, 0x33c(r3)
/* 80220EE0 0021DE20  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80220EE4 0021DE24  41 82 00 0C */ beq lbl_80220EF0
/* 80220EE8 0021DE28  D0 3E 02 68 */ stfs f1, 0x268(r30)
/* 80220EEC 0021DE2C  3B E0 00 01 */ li r31, 1
lbl_80220EF0:
/* 80220EF0 0021DE30  C0 1E 02 6C */ lfs f0, 0x26c(r30)
/* 80220EF4 0021DE34  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80220EF8 0021DE38  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80220EFC 0021DE3C  C0 23 03 40 */ lfs f1, 0x340(r3)
/* 80220F00 0021DE40  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80220F04 0021DE44  41 82 00 0C */ beq lbl_80220F10
/* 80220F08 0021DE48  D0 3E 02 6C */ stfs f1, 0x26c(r30)
/* 80220F0C 0021DE4C  3B E0 00 01 */ li r31, 1
lbl_80220F10:
/* 80220F10 0021DE50  C0 1E 02 70 */ lfs f0, 0x270(r30)
/* 80220F14 0021DE54  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80220F18 0021DE58  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80220F1C 0021DE5C  C0 23 03 44 */ lfs f1, 0x344(r3)
/* 80220F20 0021DE60  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80220F24 0021DE64  41 82 00 0C */ beq lbl_80220F30
/* 80220F28 0021DE68  D0 3E 02 70 */ stfs f1, 0x270(r30)
/* 80220F2C 0021DE6C  3B E0 00 01 */ li r31, 1
lbl_80220F30:
/* 80220F30 0021DE70  C0 1E 02 74 */ lfs f0, 0x274(r30)
/* 80220F34 0021DE74  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80220F38 0021DE78  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80220F3C 0021DE7C  C0 23 03 4C */ lfs f1, 0x34c(r3)
/* 80220F40 0021DE80  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80220F44 0021DE84  41 82 00 0C */ beq lbl_80220F50
/* 80220F48 0021DE88  D0 3E 02 74 */ stfs f1, 0x274(r30)
/* 80220F4C 0021DE8C  3B E0 00 01 */ li r31, 1
lbl_80220F50:
/* 80220F50 0021DE90  C0 1E 02 78 */ lfs f0, 0x278(r30)
/* 80220F54 0021DE94  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80220F58 0021DE98  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80220F5C 0021DE9C  C0 23 03 50 */ lfs f1, 0x350(r3)
/* 80220F60 0021DEA0  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80220F64 0021DEA4  41 82 00 0C */ beq lbl_80220F70
/* 80220F68 0021DEA8  D0 3E 02 78 */ stfs f1, 0x278(r30)
/* 80220F6C 0021DEAC  3B E0 00 01 */ li r31, 1
lbl_80220F70:
/* 80220F70 0021DEB0  C0 1E 02 7C */ lfs f0, 0x27c(r30)
/* 80220F74 0021DEB4  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80220F78 0021DEB8  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80220F7C 0021DEBC  C0 23 03 54 */ lfs f1, 0x354(r3)
/* 80220F80 0021DEC0  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80220F84 0021DEC4  41 82 00 0C */ beq lbl_80220F90
/* 80220F88 0021DEC8  D0 3E 02 7C */ stfs f1, 0x27c(r30)
/* 80220F8C 0021DECC  3B E0 00 01 */ li r31, 1
lbl_80220F90:
/* 80220F90 0021DED0  C0 1E 02 80 */ lfs f0, 0x280(r30)
/* 80220F94 0021DED4  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80220F98 0021DED8  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80220F9C 0021DEDC  C0 23 03 74 */ lfs f1, 0x374(r3)
/* 80220FA0 0021DEE0  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80220FA4 0021DEE4  41 82 00 0C */ beq lbl_80220FB0
/* 80220FA8 0021DEE8  D0 3E 02 80 */ stfs f1, 0x280(r30)
/* 80220FAC 0021DEEC  3B E0 00 01 */ li r31, 1
lbl_80220FB0:
/* 80220FB0 0021DEF0  C0 1E 02 84 */ lfs f0, 0x284(r30)
/* 80220FB4 0021DEF4  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80220FB8 0021DEF8  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80220FBC 0021DEFC  C0 23 03 6C */ lfs f1, 0x36c(r3)
/* 80220FC0 0021DF00  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80220FC4 0021DF04  41 82 00 0C */ beq lbl_80220FD0
/* 80220FC8 0021DF08  D0 3E 02 84 */ stfs f1, 0x284(r30)
/* 80220FCC 0021DF0C  3B E0 00 01 */ li r31, 1
lbl_80220FD0:
/* 80220FD0 0021DF10  C0 1E 02 88 */ lfs f0, 0x288(r30)
/* 80220FD4 0021DF14  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80220FD8 0021DF18  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80220FDC 0021DF1C  C0 23 03 70 */ lfs f1, 0x370(r3)
/* 80220FE0 0021DF20  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80220FE4 0021DF24  41 82 00 0C */ beq lbl_80220FF0
/* 80220FE8 0021DF28  D0 3E 02 88 */ stfs f1, 0x288(r30)
/* 80220FEC 0021DF2C  3B E0 00 01 */ li r31, 1
lbl_80220FF0:
/* 80220FF0 0021DF30  C0 1E 02 8C */ lfs f0, 0x28c(r30)
/* 80220FF4 0021DF34  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80220FF8 0021DF38  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80220FFC 0021DF3C  C0 23 03 7C */ lfs f1, 0x37c(r3)
/* 80221000 0021DF40  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80221004 0021DF44  41 82 00 0C */ beq lbl_80221010
/* 80221008 0021DF48  D0 3E 02 8C */ stfs f1, 0x28c(r30)
/* 8022100C 0021DF4C  3B E0 00 01 */ li r31, 1
lbl_80221010:
/* 80221010 0021DF50  C0 1E 02 90 */ lfs f0, 0x290(r30)
/* 80221014 0021DF54  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80221018 0021DF58  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 8022101C 0021DF5C  C0 23 03 80 */ lfs f1, 0x380(r3)
/* 80221020 0021DF60  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80221024 0021DF64  41 82 00 0C */ beq lbl_80221030
/* 80221028 0021DF68  D0 3E 02 90 */ stfs f1, 0x290(r30)
/* 8022102C 0021DF6C  3B E0 00 01 */ li r31, 1
lbl_80221030:
/* 80221030 0021DF70  C0 1E 02 94 */ lfs f0, 0x294(r30)
/* 80221034 0021DF74  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80221038 0021DF78  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 8022103C 0021DF7C  C0 23 03 84 */ lfs f1, 0x384(r3)
/* 80221040 0021DF80  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80221044 0021DF84  41 82 00 0C */ beq lbl_80221050
/* 80221048 0021DF88  D0 3E 02 94 */ stfs f1, 0x294(r30)
/* 8022104C 0021DF8C  3B E0 00 01 */ li r31, 1
lbl_80221050:
/* 80221050 0021DF90  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80221054 0021DF94  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80221058 0021DF98  88 83 00 19 */ lbz r4, 0x19(r3)
/* 8022105C 0021DF9C  88 7E 02 98 */ lbz r3, 0x298(r30)
/* 80221060 0021DFA0  54 80 06 3E */ clrlwi r0, r4, 0x18
/* 80221064 0021DFA4  7C 03 00 40 */ cmplw r3, r0
/* 80221068 0021DFA8  41 82 00 0C */ beq lbl_80221074
/* 8022106C 0021DFAC  98 9E 02 98 */ stb r4, 0x298(r30)
/* 80221070 0021DFB0  3B E0 00 01 */ li r31, 1
lbl_80221074:
/* 80221074 0021DFB4  57 E0 06 3E */ clrlwi r0, r31, 0x18
/* 80221078 0021DFB8  28 00 00 01 */ cmplwi r0, 1
/* 8022107C 0021DFBC  40 82 00 10 */ bne lbl_8022108C
/* 80221080 0021DFC0  80 7E 01 0C */ lwz r3, 0x10c(r30)
/* 80221084 0021DFC4  A8 9E 01 B0 */ lha r4, 0x1b0(r30)
/* 80221088 0021DFC8  4B FF 52 A5 */ bl drawRupee__13dMeter2Draw_cFs
lbl_8022108C:
/* 8022108C 0021DFCC  7F C3 F3 78 */ mr r3, r30
/* 80221090 0021DFD0  48 00 3D 31 */ bl alphaAnimeRupee__9dMeter2_cFv
/* 80221094 0021DFD4  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 80221098 0021DFD8  83 C1 00 18 */ lwz r30, 0x18(r1)
/* 8022109C 0021DFDC  80 01 00 24 */ lwz r0, 0x24(r1)
/* 802210A0 0021DFE0  7C 08 03 A6 */ mtlr r0
/* 802210A4 0021DFE4  38 21 00 20 */ addi r1, r1, 0x20
/* 802210A8 0021DFE8  4E 80 00 20 */ blr
