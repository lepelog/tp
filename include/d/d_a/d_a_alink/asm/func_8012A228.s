/* 8012A228 00127168  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8012A22C 0012716C  7C 08 02 A6 */ mflr r0
/* 8012A230 00127170  90 01 00 14 */ stw r0, 0x14(r1)
/* 8012A234 00127174  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8012A238 00127178  93 C1 00 08 */ stw r30, 8(r1)
/* 8012A23C 0012717C  7C 7E 1B 78 */ mr r30, r3
/* 8012A240 00127180  7C 9F 23 78 */ mr r31, r4
/* 8012A244 00127184  A0 03 2F E8 */ lhz r0, 0x2fe8(r3)
/* 8012A248 00127188  28 00 01 25 */ cmplwi r0, 0x125
/* 8012A24C 0012718C  41 82 00 20 */ beq lbl_8012A26C
/* 8012A250 00127190  38 9E 10 F0 */ addi r4, r30, 0x10f0
/* 8012A254 00127194  4B FA 76 CD */ bl daAlink_c_NS_checkAtShieldHit
/* 8012A258 00127198  2C 03 00 00 */ cmpwi r3, 0
/* 8012A25C 0012719C  41 82 00 10 */ beq lbl_8012A26C
/* 8012A260 001271A0  7F C3 F3 78 */ mr r3, r30
/* 8012A264 001271A4  48 01 26 65 */ bl daAlink_c_NS_procWolfAttackReverseInit
/* 8012A268 001271A8  48 00 00 B0 */ b lbl_8012A318
lbl_8012A26C:
/* 8012A26C 001271AC  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 8012A270 001271B0  54 00 06 F9 */ rlwinm. r0, r0, 0, 0x1b, 0x1c
/* 8012A274 001271B4  41 82 00 10 */ beq lbl_8012A284
/* 8012A278 001271B8  A0 1E 2F E8 */ lhz r0, 0x2fe8(r30)
/* 8012A27C 001271BC  28 00 00 F3 */ cmplwi r0, 0xf3
/* 8012A280 001271C0  41 82 00 38 */ beq lbl_8012A2B8
lbl_8012A284:
/* 8012A284 001271C4  2C 1F 00 00 */ cmpwi r31, 0
/* 8012A288 001271C8  41 82 00 8C */ beq lbl_8012A314
/* 8012A28C 001271CC  80 1E 05 7C */ lwz r0, 0x57c(r30)
/* 8012A290 001271D0  54 00 05 6B */ rlwinm. r0, r0, 0, 0x15, 0x15
/* 8012A294 001271D4  40 82 00 80 */ bne lbl_8012A314
/* 8012A298 001271D8  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 8012A29C 001271DC  54 00 00 85 */ rlwinm. r0, r0, 0, 2, 2
/* 8012A2A0 001271E0  41 82 00 74 */ beq lbl_8012A314
/* 8012A2A4 001271E4  A8 7E 30 92 */ lha r3, 0x3092(r30)
/* 8012A2A8 001271E8  A8 9E 04 DE */ lha r4, 0x4de(r30)
/* 8012A2AC 001271EC  48 14 6B 79 */ bl cLib_distanceAngleS__Fss
/* 8012A2B0 001271F0  2C 03 60 00 */ cmpwi r3, 0x6000
/* 8012A2B4 001271F4  40 81 00 60 */ ble lbl_8012A314
lbl_8012A2B8:
/* 8012A2B8 001271F8  A0 1E 2F E8 */ lhz r0, 0x2fe8(r30)
/* 8012A2BC 001271FC  28 00 00 F3 */ cmplwi r0, 0xf3
/* 8012A2C0 00127200  40 82 00 14 */ bne lbl_8012A2D4
/* 8012A2C4 00127204  7F C3 F3 78 */ mr r3, r30
/* 8012A2C8 00127208  38 80 00 00 */ li r4, 0
/* 8012A2CC 0012720C  48 00 35 F5 */ bl daAlink_c_NS_procWolfDashReverseInit
/* 8012A2D0 00127210  48 00 00 48 */ b lbl_8012A318
lbl_8012A2D4:
/* 8012A2D4 00127214  80 1E 05 7C */ lwz r0, 0x57c(r30)
/* 8012A2D8 00127218  54 00 02 11 */ rlwinm. r0, r0, 0, 8, 8
/* 8012A2DC 0012721C  41 82 00 2C */ beq lbl_8012A308
/* 8012A2E0 00127220  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8012A2E4 00127224  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8012A2E8 00127228  80 63 5D 3C */ lwz r3, 0x5d3c(r3)
/* 8012A2EC 0012722C  38 80 00 02 */ li r4, 2
/* 8012A2F0 00127230  38 A0 00 00 */ li r5, 0
/* 8012A2F4 00127234  38 DE 37 8C */ addi r6, r30, 0x378c
/* 8012A2F8 00127238  38 FE 31 66 */ addi r7, r30, 0x3166
/* 8012A2FC 0012723C  39 00 00 00 */ li r8, 0
/* 8012A300 00127240  39 20 00 00 */ li r9, 0
/* 8012A304 00127244  4B F2 1F 15 */ bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
lbl_8012A308:
/* 8012A308 00127248  7F C3 F3 78 */ mr r3, r30
/* 8012A30C 0012724C  48 01 25 BD */ bl daAlink_c_NS_procWolfAttackReverseInit
/* 8012A310 00127250  48 00 00 08 */ b lbl_8012A318
lbl_8012A314:
/* 8012A314 00127254  38 60 00 00 */ li r3, 0
lbl_8012A318:
/* 8012A318 00127258  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8012A31C 0012725C  83 C1 00 08 */ lwz r30, 8(r1)
/* 8012A320 00127260  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8012A324 00127264  7C 08 03 A6 */ mtlr r0
/* 8012A328 00127268  38 21 00 10 */ addi r1, r1, 0x10
/* 8012A32C 0012726C  4E 80 00 20 */ blr
