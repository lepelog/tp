/* 80212190 0020F0D0  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 80212194 0020F0D4  7C 08 02 A6 */ mflr r0
/* 80212198 0020F0D8  90 01 00 34 */ stw r0, 0x34(r1)
/* 8021219C 0020F0DC  39 61 00 30 */ addi r11, r1, 0x30
/* 802121A0 0020F0E0  48 15 00 2D */ bl _savegpr_25
/* 802121A4 0020F0E4  7C 7E 1B 78 */ mr r30, r3
/* 802121A8 0020F0E8  3C 60 80 3A */ lis r3, lbl_80398258@ha
/* 802121AC 0020F0EC  3B 63 82 58 */ addi r27, r3, lbl_80398258@l
/* 802121B0 0020F0F0  38 60 00 6C */ li r3, 0x6c
/* 802121B4 0020F0F4  48 0B CA 99 */ bl __nw__FUl
/* 802121B8 0020F0F8  7C 60 1B 79 */ or. r0, r3, r3
/* 802121BC 0020F0FC  41 82 00 28 */ beq lbl_802121E4
/* 802121C0 0020F100  80 9E 00 78 */ lwz r4, 0x78(r30)
/* 802121C4 0020F104  3C A0 74 61 */ lis r5, 0x74615F6E@ha
/* 802121C8 0020F108  38 C5 5F 6E */ addi r6, r5, 0x74615F6E@l
/* 802121CC 0020F10C  3C A0 73 5F */ lis r5, 0x735F7475@ha
/* 802121D0 0020F110  38 A5 74 75 */ addi r5, r5, 0x735F7475@l
/* 802121D4 0020F114  38 E0 00 02 */ li r7, 2
/* 802121D8 0020F118  39 00 00 00 */ li r8, 0
/* 802121DC 0020F11C  48 04 17 A9 */ bl CPaneMgr_X1_
/* 802121E0 0020F120  7C 60 1B 78 */ mr r0, r3
lbl_802121E4:
/* 802121E4 0020F124  90 1E 01 E0 */ stw r0, 0x1e0(r30)
/* 802121E8 0020F128  3B 40 00 00 */ li r26, 0
/* 802121EC 0020F12C  3B E0 00 00 */ li r31, 0
/* 802121F0 0020F130  3B A0 00 00 */ li r29, 0
lbl_802121F4:
/* 802121F4 0020F134  38 60 00 6C */ li r3, 0x6c
/* 802121F8 0020F138  48 0B CA 55 */ bl __nw__FUl
/* 802121FC 0020F13C  7C 60 1B 79 */ or. r0, r3, r3
/* 80212200 0020F140  41 82 00 28 */ beq lbl_80212228
/* 80212204 0020F144  80 9E 00 78 */ lwz r4, 0x78(r30)
/* 80212208 0020F148  38 1B 03 E8 */ addi r0, r27, 0x3e8
/* 8021220C 0020F14C  7C C0 EA 14 */ add r6, r0, r29
/* 80212210 0020F150  80 A6 00 00 */ lwz r5, 0(r6)
/* 80212214 0020F154  80 C6 00 04 */ lwz r6, 4(r6)
/* 80212218 0020F158  38 E0 00 00 */ li r7, 0
/* 8021221C 0020F15C  39 00 00 00 */ li r8, 0
/* 80212220 0020F160  48 04 17 65 */ bl CPaneMgr_X1_
/* 80212224 0020F164  7C 60 1B 78 */ mr r0, r3
lbl_80212228:
/* 80212228 0020F168  7F 9E FA 14 */ add r28, r30, r31
/* 8021222C 0020F16C  90 1C 01 F0 */ stw r0, 0x1f0(r28)
/* 80212230 0020F170  38 60 00 6C */ li r3, 0x6c
/* 80212234 0020F174  48 0B CA 19 */ bl __nw__FUl
/* 80212238 0020F178  7C 60 1B 79 */ or. r0, r3, r3
/* 8021223C 0020F17C  41 82 00 28 */ beq lbl_80212264
/* 80212240 0020F180  80 9E 00 78 */ lwz r4, 0x78(r30)
/* 80212244 0020F184  38 1B 04 68 */ addi r0, r27, 0x468
/* 80212248 0020F188  7C C0 EA 14 */ add r6, r0, r29
/* 8021224C 0020F18C  80 A6 00 00 */ lwz r5, 0(r6)
/* 80212250 0020F190  80 C6 00 04 */ lwz r6, 4(r6)
/* 80212254 0020F194  38 E0 00 00 */ li r7, 0
/* 80212258 0020F198  39 00 00 00 */ li r8, 0
/* 8021225C 0020F19C  48 04 17 29 */ bl CPaneMgr_X1_
/* 80212260 0020F1A0  7C 60 1B 78 */ mr r0, r3
lbl_80212264:
/* 80212264 0020F1A4  90 1C 01 F4 */ stw r0, 0x1f4(r28)
/* 80212268 0020F1A8  38 60 00 6C */ li r3, 0x6c
/* 8021226C 0020F1AC  48 0B C9 E1 */ bl __nw__FUl
/* 80212270 0020F1B0  7C 60 1B 79 */ or. r0, r3, r3
/* 80212274 0020F1B4  41 82 00 28 */ beq lbl_8021229C
/* 80212278 0020F1B8  80 9E 00 78 */ lwz r4, 0x78(r30)
/* 8021227C 0020F1BC  38 1B 04 E8 */ addi r0, r27, 0x4e8
/* 80212280 0020F1C0  7C C0 EA 14 */ add r6, r0, r29
/* 80212284 0020F1C4  80 A6 00 00 */ lwz r5, 0(r6)
/* 80212288 0020F1C8  80 C6 00 04 */ lwz r6, 4(r6)
/* 8021228C 0020F1CC  38 E0 00 00 */ li r7, 0
/* 80212290 0020F1D0  39 00 00 00 */ li r8, 0
/* 80212294 0020F1D4  48 04 16 F1 */ bl CPaneMgr_X1_
/* 80212298 0020F1D8  7C 60 1B 78 */ mr r0, r3
lbl_8021229C:
/* 8021229C 0020F1DC  90 1C 01 F8 */ stw r0, 0x1f8(r28)
/* 802122A0 0020F1E0  3B 5A 00 01 */ addi r26, r26, 1
/* 802122A4 0020F1E4  2C 1A 00 10 */ cmpwi r26, 0x10
/* 802122A8 0020F1E8  3B FF 00 0C */ addi r31, r31, 0xc
/* 802122AC 0020F1EC  3B BD 00 08 */ addi r29, r29, 8
/* 802122B0 0020F1F0  41 80 FF 44 */ blt lbl_802121F4
/* 802122B4 0020F1F4  38 60 00 6C */ li r3, 0x6c
/* 802122B8 0020F1F8  48 0B C9 95 */ bl __nw__FUl
/* 802122BC 0020F1FC  7C 60 1B 79 */ or. r0, r3, r3
/* 802122C0 0020F200  41 82 00 24 */ beq lbl_802122E4
/* 802122C4 0020F204  80 9E 00 78 */ lwz r4, 0x78(r30)
/* 802122C8 0020F208  3C A0 74 61 */ lis r5, 0x74615F6E@ha
/* 802122CC 0020F20C  38 C5 5F 6E */ addi r6, r5, 0x74615F6E@l
/* 802122D0 0020F210  38 A0 74 75 */ li r5, 0x7475
/* 802122D4 0020F214  38 E0 00 02 */ li r7, 2
/* 802122D8 0020F218  39 00 00 00 */ li r8, 0
/* 802122DC 0020F21C  48 04 16 A9 */ bl CPaneMgr_X1_
/* 802122E0 0020F220  7C 60 1B 78 */ mr r0, r3
lbl_802122E4:
/* 802122E4 0020F224  90 1E 01 E8 */ stw r0, 0x1e8(r30)
/* 802122E8 0020F228  38 60 00 6C */ li r3, 0x6c
/* 802122EC 0020F22C  48 0B C9 61 */ bl __nw__FUl
/* 802122F0 0020F230  7C 60 1B 79 */ or. r0, r3, r3
/* 802122F4 0020F234  41 82 00 24 */ beq lbl_80212318
/* 802122F8 0020F238  80 9E 00 78 */ lwz r4, 0x78(r30)
/* 802122FC 0020F23C  3C A0 6E 75 */ lis r5, 0x6E756C6C@ha
/* 80212300 0020F240  38 C5 6C 6C */ addi r6, r5, 0x6E756C6C@l
/* 80212304 0020F244  38 A0 73 5F */ li r5, 0x735f
/* 80212308 0020F248  38 E0 00 02 */ li r7, 2
/* 8021230C 0020F24C  39 00 00 00 */ li r8, 0
/* 80212310 0020F250  48 04 16 75 */ bl CPaneMgr_X1_
/* 80212314 0020F254  7C 60 1B 78 */ mr r0, r3
lbl_80212318:
/* 80212318 0020F258  90 1E 01 EC */ stw r0, 0x1ec(r30)
/* 8021231C 0020F25C  80 7E 01 E0 */ lwz r3, 0x1e0(r30)
/* 80212320 0020F260  C0 22 AE 80 */ lfs f1, lbl_80454880-_SDA2_BASE_(r2)
/* 80212324 0020F264  48 04 34 AD */ bl setAlphaRate__13CPaneMgrAlphaFf
/* 80212328 0020F268  C0 02 AE 80 */ lfs f0, lbl_80454880-_SDA2_BASE_(r2)
/* 8021232C 0020F26C  D0 1E 06 FC */ stfs f0, 0x6fc(r30)
/* 80212330 0020F270  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80212334 0020F274  3B E3 EB C8 */ addi r31, r3, lbl_8042EBC8@l
/* 80212338 0020F278  C0 1F 0E 84 */ lfs f0, 0xe84(r31)
/* 8021233C 0020F27C  D0 1E 06 F4 */ stfs f0, 0x6f4(r30)
/* 80212340 0020F280  C0 02 AE 84 */ lfs f0, lbl_80454884-_SDA2_BASE_(r2)
/* 80212344 0020F284  D0 1E 06 F8 */ stfs f0, 0x6f8(r30)
/* 80212348 0020F288  3B 20 00 00 */ li r25, 0
/* 8021234C 0020F28C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80212350 0020F290  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80212354 0020F294  3B 43 01 14 */ addi r26, r3, 0x114
/* 80212358 0020F298  3B 60 00 FF */ li r27, 0xff
/* 8021235C 0020F29C  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 80212360 0020F2A0  3B 83 01 88 */ addi r28, r3, lbl_80430188@l
/* 80212364 0020F2A4  3B A0 00 00 */ li r29, 0
lbl_80212368:
/* 80212368 0020F2A8  7F 43 D3 78 */ mr r3, r26
/* 8021236C 0020F2AC  57 24 06 3E */ clrlwi r4, r25, 0x18
/* 80212370 0020F2B0  4B E2 20 2D */ bl isLightDropGetFlag__16dSv_light_drop_cCFUc
/* 80212374 0020F2B4  2C 03 00 00 */ cmpwi r3, 0
/* 80212378 0020F2B8  41 82 00 10 */ beq lbl_80212388
/* 8021237C 0020F2BC  7C 7C CA 14 */ add r3, r28, r25
/* 80212380 0020F2C0  9B 63 00 E3 */ stb r27, 0xe3(r3)
/* 80212384 0020F2C4  48 00 00 0C */ b lbl_80212390
lbl_80212388:
/* 80212388 0020F2C8  7C 7C CA 14 */ add r3, r28, r25
/* 8021238C 0020F2CC  9B A3 00 E3 */ stb r29, 0xe3(r3)
lbl_80212390:
/* 80212390 0020F2D0  3B 39 00 01 */ addi r25, r25, 1
/* 80212394 0020F2D4  2C 19 00 03 */ cmpwi r25, 3
/* 80212398 0020F2D8  41 80 FF D0 */ blt lbl_80212368
/* 8021239C 0020F2DC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 802123A0 0020F2E0  38 83 61 C0 */ addi r4, r3, g_dComIfG_gameInfo@l
/* 802123A4 0020F2E4  8B 64 5E A1 */ lbz r27, 0x5ea1(r4)
/* 802123A8 0020F2E8  7F 43 D3 78 */ mr r3, r26
/* 802123AC 0020F2EC  88 84 4E 0C */ lbz r4, 0x4e0c(r4)
/* 802123B0 0020F2F0  4B E2 1F 91 */ bl getLightDropNum__16dSv_light_drop_cCFUc
/* 802123B4 0020F2F4  7C 64 1B 78 */ mr r4, r3
/* 802123B8 0020F2F8  7F C3 F3 78 */ mr r3, r30
/* 802123BC 0020F2FC  7F 65 DB 78 */ mr r5, r27
/* 802123C0 0020F300  3C C0 80 43 */ lis r6, lbl_8042EBC8@ha
/* 802123C4 0020F304  38 C6 EB C8 */ addi r6, r6, lbl_8042EBC8@l
/* 802123C8 0020F308  C0 26 0E 8C */ lfs f1, 0xe8c(r6)
/* 802123CC 0020F30C  C0 46 0E 94 */ lfs f2, 0xe94(r6)
/* 802123D0 0020F310  C0 7F 0E 84 */ lfs f3, 0xe84(r31)
/* 802123D4 0020F314  C0 86 0E A4 */ lfs f4, 0xea4(r6)
/* 802123D8 0020F318  38 C0 00 00 */ li r6, 0
/* 802123DC 0020F31C  48 00 37 3D */ bl dMeter2Draw_c_NS_drawLightDrop
/* 802123E0 0020F320  7F C3 F3 78 */ mr r3, r30
/* 802123E4 0020F324  38 80 00 01 */ li r4, 1
/* 802123E8 0020F328  48 00 39 BD */ bl dMeter2Draw_c_NS_setAlphaLightDropChange
/* 802123EC 0020F32C  39 61 00 30 */ addi r11, r1, 0x30
/* 802123F0 0020F330  48 14 FE 29 */ bl _restgpr_25
/* 802123F4 0020F334  80 01 00 34 */ lwz r0, 0x34(r1)
/* 802123F8 0020F338  7C 08 03 A6 */ mtlr r0
/* 802123FC 0020F33C  38 21 00 30 */ addi r1, r1, 0x30
/* 80212400 0020F340  4E 80 00 20 */ blr
