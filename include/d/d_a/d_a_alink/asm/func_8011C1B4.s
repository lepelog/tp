/* 8011C1B4 001190F4  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8011C1B8 001190F8  7C 08 02 A6 */ mflr r0
/* 8011C1BC 001190FC  90 01 00 24 */ stw r0, 0x24(r1)
/* 8011C1C0 00119100  39 61 00 20 */ addi r11, r1, 0x20
/* 8011C1C4 00119104  48 24 60 15 */ bl _savegpr_28
/* 8011C1C8 00119108  7C 7D 1B 78 */ mr r29, r3
/* 8011C1CC 0011910C  3B FD 1F D0 */ addi r31, r29, 0x1fd0
/* 8011C1D0 00119110  A8 03 30 08 */ lha r0, 0x3008(r3)
/* 8011C1D4 00119114  2C 00 00 00 */ cmpwi r0, 0
/* 8011C1D8 00119118  40 82 00 18 */ bne lbl_8011C1F0
/* 8011C1DC 0011911C  4B FF CA 19 */ bl daAlink_c_NS_setDeadRideSyncPos
/* 8011C1E0 00119120  38 00 00 01 */ li r0, 1
/* 8011C1E4 00119124  B0 1D 30 08 */ sth r0, 0x3008(r29)
/* 8011C1E8 00119128  38 60 00 01 */ li r3, 1
/* 8011C1EC 0011912C  48 00 04 28 */ b lbl_8011C614
lbl_8011C1F0:
/* 8011C1F0 00119130  80 1D 28 F0 */ lwz r0, 0x28f0(r29)
/* 8011C1F4 00119134  28 00 00 00 */ cmplwi r0, 0
/* 8011C1F8 00119138  40 82 00 40 */ bne lbl_8011C238
/* 8011C1FC 0011913C  38 60 00 00 */ li r3, 0
/* 8011C200 00119140  48 07 FD C5 */ bl d_GameOver_Create
/* 8011C204 00119144  90 7D 28 F0 */ stw r3, 0x28f0(r29)
/* 8011C208 00119148  80 1D 28 F0 */ lwz r0, 0x28f0(r29)
/* 8011C20C 0011914C  28 00 00 00 */ cmplwi r0, 0
/* 8011C210 00119150  40 82 00 0C */ bne lbl_8011C21C
/* 8011C214 00119154  38 60 00 01 */ li r3, 1
/* 8011C218 00119158  48 00 03 FC */ b lbl_8011C614
lbl_8011C21C:
/* 8011C21C 0011915C  80 6D 8D E8 */ lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 8011C220 00119160  38 63 03 D0 */ addi r3, r3, 0x3d0
/* 8011C224 00119164  3C 80 01 00 */ lis r4, 0x01000013@ha
/* 8011C228 00119168  38 84 00 13 */ addi r4, r4, 0x01000013@l
/* 8011C22C 0011916C  38 A0 00 00 */ li r5, 0
/* 8011C230 00119170  38 C0 00 00 */ li r6, 0
/* 8011C234 00119174  48 19 2D DD */ bl bgmStart__8Z2SeqMgrFUlUll
lbl_8011C238:
/* 8011C238 00119178  80 1D 05 78 */ lwz r0, 0x578(r29)
/* 8011C23C 0011917C  54 00 03 5B */ rlwinm. r0, r0, 0, 0xd, 0xd
/* 8011C240 00119180  40 82 01 00 */ bne lbl_8011C340
/* 8011C244 00119184  A8 7D 30 0E */ lha r3, 0x300e(r29)
/* 8011C248 00119188  38 03 00 01 */ addi r0, r3, 1
/* 8011C24C 0011918C  B0 1D 30 0E */ sth r0, 0x300e(r29)
/* 8011C250 00119190  A8 1D 30 0E */ lha r0, 0x300e(r29)
/* 8011C254 00119194  2C 00 00 02 */ cmpwi r0, 2
/* 8011C258 00119198  40 82 00 34 */ bne lbl_8011C28C
/* 8011C25C 0011919C  28 1D 00 00 */ cmplwi r29, 0
/* 8011C260 001191A0  41 82 00 0C */ beq lbl_8011C26C
/* 8011C264 001191A4  83 9D 00 04 */ lwz r28, 4(r29)
/* 8011C268 001191A8  48 00 00 08 */ b lbl_8011C270
lbl_8011C26C:
/* 8011C26C 001191AC  3B 80 FF FF */ li r28, -1
lbl_8011C270:
/* 8011C270 001191B0  48 06 53 D1 */ bl dCam_getBody
/* 8011C274 001191B4  38 80 00 09 */ li r4, 9
/* 8011C278 001191B8  7F 85 E3 78 */ mr r5, r28
/* 8011C27C 001191BC  38 C0 00 00 */ li r6, 0
/* 8011C280 001191C0  4C C6 31 82 */ crclr 6
/* 8011C284 001191C4  4B F6 C7 F9 */ bl StartEventCamera__9dCamera_cFiie
/* 8011C288 001191C8  48 00 00 14 */ b lbl_8011C29C
lbl_8011C28C:
/* 8011C28C 001191CC  2C 00 00 0A */ cmpwi r0, 0xa
/* 8011C290 001191D0  40 81 00 0C */ ble lbl_8011C29C
/* 8011C294 001191D4  38 00 00 0A */ li r0, 0xa
/* 8011C298 001191D8  B0 1D 30 0E */ sth r0, 0x300e(r29)
lbl_8011C29C:
/* 8011C29C 001191DC  80 7D 31 A0 */ lwz r3, 0x31a0(r29)
/* 8011C2A0 001191E0  54 60 05 6B */ rlwinm. r0, r3, 0, 0x15, 0x15
/* 8011C2A4 001191E4  40 82 00 9C */ bne lbl_8011C340
/* 8011C2A8 001191E8  54 60 03 5B */ rlwinm. r0, r3, 0, 0xd, 0xd
/* 8011C2AC 001191EC  41 82 00 34 */ beq lbl_8011C2E0
/* 8011C2B0 001191F0  80 1D 05 70 */ lwz r0, 0x570(r29)
/* 8011C2B4 001191F4  54 00 06 31 */ rlwinm. r0, r0, 0, 0x18, 0x18
/* 8011C2B8 001191F8  41 82 00 88 */ beq lbl_8011C340
/* 8011C2BC 001191FC  C0 1D 04 D4 */ lfs f0, 0x4d4(r29)
/* 8011C2C0 00119200  C0 3D 33 B4 */ lfs f1, 0x33b4(r29)
/* 8011C2C4 00119204  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 8011C2C8 00119208  40 81 00 78 */ ble lbl_8011C340
/* 8011C2CC 0011920C  D0 3D 04 D4 */ stfs f1, 0x4d4(r29)
/* 8011C2D0 00119210  80 1D 05 70 */ lwz r0, 0x570(r29)
/* 8011C2D4 00119214  60 00 01 00 */ ori r0, r0, 0x100
/* 8011C2D8 00119218  90 1D 05 70 */ stw r0, 0x570(r29)
/* 8011C2DC 0011921C  48 00 00 64 */ b lbl_8011C340
lbl_8011C2E0:
/* 8011C2E0 00119220  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 8011C2E4 00119224  C0 02 96 74 */ lfs f0, lbl_80453074-_SDA2_BASE_(r2)
/* 8011C2E8 00119228  EC 21 00 28 */ fsubs f1, f1, f0
/* 8011C2EC 0011922C  C0 02 93 C8 */ lfs f0, lbl_80452DC8-_SDA2_BASE_(r2)
/* 8011C2F0 00119230  EC 01 00 24 */ fdivs f0, f1, f0
/* 8011C2F4 00119234  D0 1D 33 CC */ stfs f0, 0x33cc(r29)
/* 8011C2F8 00119238  80 1D 05 74 */ lwz r0, 0x574(r29)
/* 8011C2FC 0011923C  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 8011C300 00119240  40 82 00 18 */ bne lbl_8011C318
/* 8011C304 00119244  7F E3 FB 78 */ mr r3, r31
/* 8011C308 00119248  C0 22 96 78 */ lfs f1, lbl_80453078-_SDA2_BASE_(r2)
/* 8011C30C 0011924C  48 20 C1 21 */ bl checkPass__12J3DFrameCtrlFf
/* 8011C310 00119250  2C 03 00 00 */ cmpwi r3, 0
/* 8011C314 00119254  40 82 00 24 */ bne lbl_8011C338
lbl_8011C318:
/* 8011C318 00119258  80 1D 05 74 */ lwz r0, 0x574(r29)
/* 8011C31C 0011925C  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 8011C320 00119260  41 82 00 20 */ beq lbl_8011C340
/* 8011C324 00119264  7F E3 FB 78 */ mr r3, r31
/* 8011C328 00119268  C0 22 96 7C */ lfs f1, lbl_8045307C-_SDA2_BASE_(r2)
/* 8011C32C 0011926C  48 20 C1 01 */ bl checkPass__12J3DFrameCtrlFf
/* 8011C330 00119270  2C 03 00 00 */ cmpwi r3, 0
/* 8011C334 00119274  41 82 00 0C */ beq lbl_8011C340
lbl_8011C338:
/* 8011C338 00119278  38 00 00 04 */ li r0, 4
/* 8011C33C 0011927C  98 1D 2F 9D */ stb r0, 0x2f9d(r29)
lbl_8011C340:
/* 8011C340 00119280  7F A3 EB 78 */ mr r3, r29
/* 8011C344 00119284  4B FF C8 B1 */ bl daAlink_c_NS_setDeadRideSyncPos
/* 8011C348 00119288  7F E3 FB 78 */ mr r3, r31
/* 8011C34C 0011928C  48 04 21 81 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8011C350 00119290  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8011C354 00119294  40 82 00 2C */ bne lbl_8011C380
/* 8011C358 00119298  80 1D 31 A0 */ lwz r0, 0x31a0(r29)
/* 8011C35C 0011929C  54 00 03 5B */ rlwinm. r0, r0, 0, 0xd, 0xd
/* 8011C360 001192A0  41 82 00 14 */ beq lbl_8011C374
/* 8011C364 001192A4  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 8011C368 001192A8  C0 02 93 10 */ lfs f0, lbl_80452D10-_SDA2_BASE_(r2)
/* 8011C36C 001192AC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8011C370 001192B0  41 81 00 10 */ bgt lbl_8011C380
lbl_8011C374:
/* 8011C374 001192B4  80 1D 05 78 */ lwz r0, 0x578(r29)
/* 8011C378 001192B8  54 00 03 5B */ rlwinm. r0, r0, 0, 0xd, 0xd
/* 8011C37C 001192BC  41 82 02 94 */ beq lbl_8011C610
lbl_8011C380:
/* 8011C380 001192C0  38 7D 34 78 */ addi r3, r29, 0x3478
/* 8011C384 001192C4  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8011C388 001192C8  C0 42 93 88 */ lfs f2, lbl_80452D88-_SDA2_BASE_(r2)
/* 8011C38C 001192CC  48 15 43 B5 */ bl cLib_chaseF__FPfff
/* 8011C390 001192D0  C0 3D 34 78 */ lfs f1, 0x3478(r29)
/* 8011C394 001192D4  C0 02 96 70 */ lfs f0, lbl_80453070-_SDA2_BASE_(r2)
/* 8011C398 001192D8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8011C39C 001192DC  40 80 00 28 */ bge lbl_8011C3C4
/* 8011C3A0 001192E0  80 7D 28 F0 */ lwz r3, 0x28f0(r29)
/* 8011C3A4 001192E4  3C 03 00 01 */ addis r0, r3, 1
/* 8011C3A8 001192E8  28 00 FF FF */ cmplwi r0, 0xffff
/* 8011C3AC 001192EC  41 82 00 18 */ beq lbl_8011C3C4
/* 8011C3B0 001192F0  4B F0 36 75 */ bl fopMsgM_SearchByID
/* 8011C3B4 001192F4  28 03 00 00 */ cmplwi r3, 0
/* 8011C3B8 001192F8  41 82 00 0C */ beq lbl_8011C3C4
/* 8011C3BC 001192FC  38 00 00 01 */ li r0, 1
/* 8011C3C0 00119300  98 03 01 19 */ stb r0, 0x119(r3)
lbl_8011C3C4:
/* 8011C3C4 00119304  A8 1D 30 0C */ lha r0, 0x300c(r29)
/* 8011C3C8 00119308  2C 00 00 00 */ cmpwi r0, 0
/* 8011C3CC 0011930C  40 82 00 50 */ bne lbl_8011C41C
/* 8011C3D0 00119310  80 7D 28 F0 */ lwz r3, 0x28f0(r29)
/* 8011C3D4 00119314  3C 03 00 01 */ addis r0, r3, 1
/* 8011C3D8 00119318  28 00 FF FF */ cmplwi r0, 0xffff
/* 8011C3DC 0011931C  41 82 00 2C */ beq lbl_8011C408
/* 8011C3E0 00119320  4B F0 36 45 */ bl fopMsgM_SearchByID
/* 8011C3E4 00119324  28 03 00 00 */ cmplwi r3, 0
/* 8011C3E8 00119328  41 82 00 18 */ beq lbl_8011C400
/* 8011C3EC 0011932C  88 03 01 18 */ lbz r0, 0x118(r3)
/* 8011C3F0 00119330  20 00 00 08 */ subfic r0, r0, 8
/* 8011C3F4 00119334  7C 00 00 34 */ cntlzw r0, r0
/* 8011C3F8 00119338  54 00 DE 3E */ rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 8011C3FC 0011933C  48 00 00 10 */ b lbl_8011C40C
lbl_8011C400:
/* 8011C400 00119340  38 00 00 00 */ li r0, 0
/* 8011C404 00119344  48 00 00 08 */ b lbl_8011C40C
lbl_8011C408:
/* 8011C408 00119348  38 00 00 00 */ li r0, 0
lbl_8011C40C:
/* 8011C40C 0011934C  2C 00 00 00 */ cmpwi r0, 0
/* 8011C410 00119350  41 82 00 0C */ beq lbl_8011C41C
/* 8011C414 00119354  38 00 00 01 */ li r0, 1
/* 8011C418 00119358  B0 1D 30 0C */ sth r0, 0x300c(r29)
lbl_8011C41C:
/* 8011C41C 0011935C  A8 1D 30 0C */ lha r0, 0x300c(r29)
/* 8011C420 00119360  2C 00 00 00 */ cmpwi r0, 0
/* 8011C424 00119364  41 82 01 EC */ beq lbl_8011C610
/* 8011C428 00119368  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8011C42C 0011936C  38 83 61 C0 */ addi r4, r3, g_dComIfG_gameInfo@l
/* 8011C430 00119370  88 04 5E 89 */ lbz r0, 0x5e89(r4)
/* 8011C434 00119374  28 00 00 02 */ cmplwi r0, 2
/* 8011C438 00119378  40 82 01 D8 */ bne lbl_8011C610
/* 8011C43C 0011937C  80 1D 05 70 */ lwz r0, 0x570(r29)
/* 8011C440 00119380  54 00 04 63 */ rlwinm. r0, r0, 0, 0x11, 0x11
/* 8011C444 00119384  40 82 01 CC */ bne lbl_8011C610
/* 8011C448 00119388  A0 64 00 02 */ lhz r3, 2(r4)
/* 8011C44C 0011938C  C0 44 5D C0 */ lfs f2, 0x5dc0(r4)
/* 8011C450 00119390  38 03 FF F4 */ addi r0, r3, -12
/* 8011C454 00119394  7C 00 00 D0 */ neg r0, r0
/* 8011C458 00119398  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 8011C45C 0011939C  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 8011C460 001193A0  90 01 00 0C */ stw r0, 0xc(r1)
/* 8011C464 001193A4  3C 00 43 30 */ lis r0, 0x4330
/* 8011C468 001193A8  90 01 00 08 */ stw r0, 8(r1)
/* 8011C46C 001193AC  C8 01 00 08 */ lfd f0, 8(r1)
/* 8011C470 001193B0  EC 00 08 28 */ fsubs f0, f0, f1
/* 8011C474 001193B4  EC 02 00 2A */ fadds f0, f2, f0
/* 8011C478 001193B8  D0 04 5D C0 */ stfs f0, 0x5dc0(r4)
/* 8011C47C 001193BC  38 00 00 00 */ li r0, 0
/* 8011C480 001193C0  98 04 5E B6 */ stb r0, 0x5eb6(r4)
/* 8011C484 001193C4  88 1D 04 E2 */ lbz r0, 0x4e2(r29)
/* 8011C488 001193C8  7C 1C 07 74 */ extsb r28, r0
/* 8011C48C 001193CC  3C 60 80 39 */ lis r3, lbl_80392094@ha
/* 8011C490 001193D0  38 63 20 94 */ addi r3, r3, lbl_80392094@l
/* 8011C494 001193D4  38 63 01 1C */ addi r3, r3, 0x11c
/* 8011C498 001193D8  4B F8 15 C9 */ bl checkStageName__9daAlink_cFPCc
/* 8011C49C 001193DC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8011C4A0 001193E0  40 82 00 24 */ bne lbl_8011C4C4
/* 8011C4A4 001193E4  3C 60 80 39 */ lis r3, lbl_80392094@ha
/* 8011C4A8 001193E8  38 63 20 94 */ addi r3, r3, lbl_80392094@l
/* 8011C4AC 001193EC  38 63 01 24 */ addi r3, r3, 0x124
/* 8011C4B0 001193F0  4B F8 15 B1 */ bl checkStageName__9daAlink_cFPCc
/* 8011C4B4 001193F4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8011C4B8 001193F8  41 82 00 14 */ beq lbl_8011C4CC
/* 8011C4BC 001193FC  2C 1C 00 37 */ cmpwi r28, 0x37
/* 8011C4C0 00119400  40 82 00 0C */ bne lbl_8011C4CC
lbl_8011C4C4:
/* 8011C4C4 00119404  3B E0 00 00 */ li r31, 0
/* 8011C4C8 00119408  48 00 00 08 */ b lbl_8011C4D0
lbl_8011C4CC:
/* 8011C4CC 0011940C  3B E0 00 05 */ li r31, 5
lbl_8011C4D0:
/* 8011C4D0 00119410  3B C0 FF FF */ li r30, -1
/* 8011C4D4 00119414  3C 60 80 39 */ lis r3, lbl_80392094@ha
/* 8011C4D8 00119418  38 63 20 94 */ addi r3, r3, lbl_80392094@l
/* 8011C4DC 0011941C  38 63 01 2C */ addi r3, r3, 0x12c
/* 8011C4E0 00119420  4B F8 15 81 */ bl checkStageName__9daAlink_cFPCc
/* 8011C4E4 00119424  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8011C4E8 00119428  41 82 00 3C */ beq lbl_8011C524
/* 8011C4EC 0011942C  2C 1C 00 32 */ cmpwi r28, 0x32
/* 8011C4F0 00119430  40 82 00 34 */ bne lbl_8011C524
/* 8011C4F4 00119434  38 60 00 00 */ li r3, 0
/* 8011C4F8 00119438  4B F1 04 85 */ bl dComIfG_play_c_NS_getLayerNo
/* 8011C4FC 0011943C  2C 03 00 00 */ cmpwi r3, 0
/* 8011C500 00119440  41 82 00 14 */ beq lbl_8011C514
/* 8011C504 00119444  38 60 00 00 */ li r3, 0
/* 8011C508 00119448  4B F1 04 75 */ bl dComIfG_play_c_NS_getLayerNo
/* 8011C50C 0011944C  2C 03 00 01 */ cmpwi r3, 1
/* 8011C510 00119450  40 82 00 14 */ bne lbl_8011C524
lbl_8011C514:
/* 8011C514 00119454  38 60 00 00 */ li r3, 0
/* 8011C518 00119458  4B F1 04 65 */ bl dComIfG_play_c_NS_getLayerNo
/* 8011C51C 0011945C  38 63 00 01 */ addi r3, r3, 1
/* 8011C520 00119460  48 00 00 CC */ b lbl_8011C5EC
lbl_8011C524:
/* 8011C524 00119464  4B FA 3D A5 */ bl daAlink_c_NS_checkBossRoom
/* 8011C528 00119468  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8011C52C 0011946C  41 82 00 88 */ beq lbl_8011C5B4
/* 8011C530 00119470  2C 1C 00 32 */ cmpwi r28, 0x32
/* 8011C534 00119474  40 82 00 20 */ bne lbl_8011C554
/* 8011C538 00119478  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8011C53C 0011947C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8011C540 00119480  38 63 09 58 */ addi r3, r3, 0x958
/* 8011C544 00119484  38 80 00 03 */ li r4, 3
/* 8011C548 00119488  4B F1 83 ED */ bl isDungeonItem__12dSv_memBit_cCFi
/* 8011C54C 0011948C  2C 03 00 00 */ cmpwi r3, 0
/* 8011C550 00119490  41 82 00 5C */ beq lbl_8011C5AC
lbl_8011C554:
/* 8011C554 00119494  2C 1C 00 33 */ cmpwi r28, 0x33
/* 8011C558 00119498  40 82 00 20 */ bne lbl_8011C578
/* 8011C55C 0011949C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8011C560 001194A0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8011C564 001194A4  38 63 09 58 */ addi r3, r3, 0x958
/* 8011C568 001194A8  38 80 00 07 */ li r4, 7
/* 8011C56C 001194AC  4B F1 83 C9 */ bl isDungeonItem__12dSv_memBit_cCFi
/* 8011C570 001194B0  2C 03 00 00 */ cmpwi r3, 0
/* 8011C574 001194B4  41 82 00 38 */ beq lbl_8011C5AC
lbl_8011C578:
/* 8011C578 001194B8  3C 60 80 39 */ lis r3, lbl_80392094@ha
/* 8011C57C 001194BC  38 63 20 94 */ addi r3, r3, lbl_80392094@l
/* 8011C580 001194C0  38 63 01 34 */ addi r3, r3, 0x134
/* 8011C584 001194C4  4B F8 14 DD */ bl checkStageName__9daAlink_cFPCc
/* 8011C588 001194C8  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8011C58C 001194CC  41 82 00 28 */ beq lbl_8011C5B4
/* 8011C590 001194D0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8011C594 001194D4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8011C598 001194D8  38 63 07 F0 */ addi r3, r3, 0x7f0
/* 8011C59C 001194DC  38 80 28 80 */ li r4, 0x2880
/* 8011C5A0 001194E0  4B F1 84 1D */ bl isEventBit__11dSv_event_cCFUs
/* 8011C5A4 001194E4  2C 03 00 00 */ cmpwi r3, 0
/* 8011C5A8 001194E8  40 82 00 0C */ bne lbl_8011C5B4
lbl_8011C5AC:
/* 8011C5AC 001194EC  38 60 00 00 */ li r3, 0
/* 8011C5B0 001194F0  48 00 00 3C */ b lbl_8011C5EC
lbl_8011C5B4:
/* 8011C5B4 001194F4  A8 1D 30 12 */ lha r0, 0x3012(r29)
/* 8011C5B8 001194F8  2C 00 00 3F */ cmpwi r0, 0x3f
/* 8011C5BC 001194FC  41 82 00 10 */ beq lbl_8011C5CC
/* 8011C5C0 00119500  7C 03 03 78 */ mr r3, r0
/* 8011C5C4 00119504  83 DD 31 98 */ lwz r30, 0x3198(r29)
/* 8011C5C8 00119508  48 00 00 24 */ b lbl_8011C5EC
lbl_8011C5CC:
/* 8011C5CC 0011950C  7F A3 EB 78 */ mr r3, r29
/* 8011C5D0 00119510  7F E4 FB 78 */ mr r4, r31
/* 8011C5D4 00119514  38 A0 00 C9 */ li r5, 0xc9
/* 8011C5D8 00119518  38 C0 00 00 */ li r6, 0
/* 8011C5DC 0011951C  38 E0 00 01 */ li r7, 1
/* 8011C5E0 00119520  4B FA 19 81 */ bl daAlink_c_NS_startRestartRoom
/* 8011C5E4 00119524  38 60 00 01 */ li r3, 1
/* 8011C5E8 00119528  48 00 00 2C */ b lbl_8011C614
lbl_8011C5EC:
/* 8011C5EC 0011952C  80 1D 05 70 */ lwz r0, 0x570(r29)
/* 8011C5F0 00119530  60 00 40 00 */ ori r0, r0, 0x4000
/* 8011C5F4 00119534  90 1D 05 70 */ stw r0, 0x570(r29)
/* 8011C5F8 00119538  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8011C5FC 0011953C  7F E4 FB 78 */ mr r4, r31
/* 8011C600 00119540  7F C5 07 74 */ extsb r5, r30
/* 8011C604 00119544  A8 DD 04 E6 */ lha r6, 0x4e6(r29)
/* 8011C608 00119548  38 E0 FF FF */ li r7, -1
/* 8011C60C 0011954C  4B F0 AB 65 */ bl dStage_changeScene
lbl_8011C610:
/* 8011C610 00119550  38 60 00 01 */ li r3, 1
lbl_8011C614:
/* 8011C614 00119554  39 61 00 20 */ addi r11, r1, 0x20
/* 8011C618 00119558  48 24 5C 0D */ bl _restgpr_28
/* 8011C61C 0011955C  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8011C620 00119560  7C 08 03 A6 */ mtlr r0
/* 8011C624 00119564  38 21 00 20 */ addi r1, r1, 0x20
/* 8011C628 00119568  4E 80 00 20 */ blr