/* 800C12DC 000BE21C  94 21 FF B0 */ stwu r1, -0x50(r1)
/* 800C12E0 000BE220  7C 08 02 A6 */ mflr r0
/* 800C12E4 000BE224  90 01 00 54 */ stw r0, 0x54(r1)
/* 800C12E8 000BE228  39 61 00 50 */ addi r11, r1, 0x50
/* 800C12EC 000BE22C  48 2A 0E F1 */ bl _savegpr_29
/* 800C12F0 000BE230  7C 7F 1B 78 */ mr r31, r3
/* 800C12F4 000BE234  7C 9D 23 78 */ mr r29, r4
/* 800C12F8 000BE238  2C 05 00 00 */ cmpwi r5, 0
/* 800C12FC 000BE23C  40 82 00 10 */ bne lbl_800C130C
/* 800C1300 000BE240  A0 1F 2F E8 */ lhz r0, 0x2fe8(r31)
/* 800C1304 000BE244  28 00 01 47 */ cmplwi r0, 0x147
/* 800C1308 000BE248  40 82 00 10 */ bne lbl_800C1318
lbl_800C130C:
/* 800C130C 000BE24C  7F E3 FB 78 */ mr r3, r31
/* 800C1310 000BE250  48 04 F5 31 */ bl daAlink_c_NS_offKandelaarModel
/* 800C1314 000BE254  48 00 00 28 */ b lbl_800C133C
lbl_800C1318:
/* 800C1318 000BE258  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 800C131C 000BE25C  28 00 00 48 */ cmplwi r0, 0x48
/* 800C1320 000BE260  40 82 00 1C */ bne lbl_800C133C
/* 800C1324 000BE264  80 1F 05 78 */ lwz r0, 0x578(r31)
/* 800C1328 000BE268  54 00 07 FF */ clrlwi. r0, r0, 0x1f
/* 800C132C 000BE26C  41 82 00 10 */ beq lbl_800C133C
/* 800C1330 000BE270  38 7F 2C A8 */ addi r3, r31, 0x2ca8
/* 800C1334 000BE274  38 80 00 02 */ li r4, 2
/* 800C1338 000BE278  48 20 24 41 */ bl setKanteraState__14Z2CreatureLinkFUc
lbl_800C133C:
/* 800C133C 000BE27C  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 800C1340 000BE280  28 00 00 FF */ cmplwi r0, 0xff
/* 800C1344 000BE284  41 82 03 A8 */ beq lbl_800C16EC
/* 800C1348 000BE288  28 00 01 0B */ cmplwi r0, 0x10b
/* 800C134C 000BE28C  40 82 00 08 */ bne lbl_800C1354
/* 800C1350 000BE290  48 00 03 9C */ b lbl_800C16EC
lbl_800C1354:
/* 800C1354 000BE294  83 DF 28 28 */ lwz r30, 0x2828(r31)
/* 800C1358 000BE298  2C 1D 00 00 */ cmpwi r29, 0
/* 800C135C 000BE29C  41 82 00 84 */ beq lbl_800C13E0
/* 800C1360 000BE2A0  28 00 01 03 */ cmplwi r0, 0x103
/* 800C1364 000BE2A4  40 82 00 58 */ bne lbl_800C13BC
/* 800C1368 000BE2A8  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800C136C 000BE2AC  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800C1370 000BE2B0  88 03 00 14 */ lbz r0, 0x14(r3)
/* 800C1374 000BE2B4  28 00 00 3F */ cmplwi r0, 0x3f
/* 800C1378 000BE2B8  40 82 00 24 */ bne lbl_800C139C
/* 800C137C 000BE2BC  7F E3 FB 78 */ mr r3, r31
/* 800C1380 000BE2C0  3C 80 00 02 */ lis r4, 0x00020057@ha
/* 800C1384 000BE2C4  38 84 00 57 */ addi r4, r4, 0x00020057@l
/* 800C1388 000BE2C8  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800C138C 000BE2CC  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 800C1390 000BE2D0  7D 89 03 A6 */ mtctr r12
/* 800C1394 000BE2D4  4E 80 04 21 */ bctrl
/* 800C1398 000BE2D8  48 00 00 48 */ b lbl_800C13E0
lbl_800C139C:
/* 800C139C 000BE2DC  7F E3 FB 78 */ mr r3, r31
/* 800C13A0 000BE2E0  3C 80 00 02 */ lis r4, 0x00020001@ha
/* 800C13A4 000BE2E4  38 84 00 01 */ addi r4, r4, 0x00020001@l
/* 800C13A8 000BE2E8  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800C13AC 000BE2EC  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 800C13B0 000BE2F0  7D 89 03 A6 */ mtctr r12
/* 800C13B4 000BE2F4  4E 80 04 21 */ bctrl
/* 800C13B8 000BE2F8  48 00 00 28 */ b lbl_800C13E0
lbl_800C13BC:
/* 800C13BC 000BE2FC  28 00 00 FF */ cmplwi r0, 0xff
/* 800C13C0 000BE300  40 80 00 20 */ bge lbl_800C13E0
/* 800C13C4 000BE304  7F E3 FB 78 */ mr r3, r31
/* 800C13C8 000BE308  3C 80 00 02 */ lis r4, 0x0002002D@ha
/* 800C13CC 000BE30C  38 84 00 2D */ addi r4, r4, 0x0002002D@l
/* 800C13D0 000BE310  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800C13D4 000BE314  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 800C13D8 000BE318  7D 89 03 A6 */ mtctr r12
/* 800C13DC 000BE31C  4E 80 04 21 */ bctrl
lbl_800C13E0:
/* 800C13E0 000BE320  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 800C13E4 000BE324  28 00 01 03 */ cmplwi r0, 0x103
/* 800C13E8 000BE328  40 82 00 1C */ bne lbl_800C1404
/* 800C13EC 000BE32C  7F E3 FB 78 */ mr r3, r31
/* 800C13F0 000BE330  48 00 FF 21 */ bl daAlink_c_NS_offSwordModel
/* 800C13F4 000BE334  7F E3 FB 78 */ mr r3, r31
/* 800C13F8 000BE338  38 80 00 01 */ li r4, 1
/* 800C13FC 000BE33C  48 01 B3 A1 */ bl daAlink_c_NS_stickArrowIncrement
/* 800C1400 000BE340  48 00 00 C0 */ b lbl_800C14C0
lbl_800C1404:
/* 800C1404 000BE344  28 00 01 02 */ cmplwi r0, 0x102
/* 800C1408 000BE348  40 82 00 A8 */ bne lbl_800C14B0
/* 800C140C 000BE34C  28 1E 00 00 */ cmplwi r30, 0
/* 800C1410 000BE350  41 82 00 B0 */ beq lbl_800C14C0
/* 800C1414 000BE354  7F C3 F3 78 */ mr r3, r30
/* 800C1418 000BE358  4B F5 B7 89 */ bl fopAcM_cancelCarryNow
/* 800C141C 000BE35C  38 7F 34 E0 */ addi r3, r31, 0x34e0
/* 800C1420 000BE360  38 9E 04 D0 */ addi r4, r30, 0x4d0
/* 800C1424 000BE364  7F E5 FB 78 */ mr r5, r31
/* 800C1428 000BE368  4B F5 C8 41 */ bl fopAcM_lc_c_NS_lineCheck
/* 800C142C 000BE36C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800C1430 000BE370  41 82 00 90 */ beq lbl_800C14C0
/* 800C1434 000BE374  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800C1438 000BE378  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800C143C 000BE37C  90 01 00 30 */ stw r0, 0x30(r1)
/* 800C1440 000BE380  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800C1444 000BE384  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800C1448 000BE388  38 63 0F 38 */ addi r3, r3, 0xf38
/* 800C144C 000BE38C  3C 80 80 3F */ lis r4, lbl_803F1C48@ha
/* 800C1450 000BE390  38 84 1C 48 */ addi r4, r4, lbl_803F1C48@l
/* 800C1454 000BE394  38 84 00 14 */ addi r4, r4, 0x14
/* 800C1458 000BE398  38 A1 00 20 */ addi r5, r1, 0x20
/* 800C145C 000BE39C  4B FB 32 E9 */ bl cBgS_NS_GetTriPla
/* 800C1460 000BE3A0  38 61 00 14 */ addi r3, r1, 0x14
/* 800C1464 000BE3A4  38 81 00 20 */ addi r4, r1, 0x20
/* 800C1468 000BE3A8  C0 22 93 3C */ lfs f1, lbl_80452D3C-_SDA2_BASE_(r2)
/* 800C146C 000BE3AC  48 1A 57 19 */ bl __ml__4cXyzCFf
/* 800C1470 000BE3B0  38 61 00 08 */ addi r3, r1, 8
/* 800C1474 000BE3B4  3C 80 80 3F */ lis r4, lbl_803F1C48@ha
/* 800C1478 000BE3B8  38 84 1C 48 */ addi r4, r4, lbl_803F1C48@l
/* 800C147C 000BE3BC  38 84 00 30 */ addi r4, r4, 0x30
/* 800C1480 000BE3C0  38 A1 00 14 */ addi r5, r1, 0x14
/* 800C1484 000BE3C4  48 1A 56 61 */ bl __pl__4cXyzCFRC3Vec
/* 800C1488 000BE3C8  C0 01 00 08 */ lfs f0, 8(r1)
/* 800C148C 000BE3CC  D0 1E 04 D0 */ stfs f0, 0x4d0(r30)
/* 800C1490 000BE3D0  C0 01 00 0C */ lfs f0, 0xc(r1)
/* 800C1494 000BE3D4  D0 1E 04 D4 */ stfs f0, 0x4d4(r30)
/* 800C1498 000BE3D8  C0 01 00 10 */ lfs f0, 0x10(r1)
/* 800C149C 000BE3DC  D0 1E 04 D8 */ stfs f0, 0x4d8(r30)
/* 800C14A0 000BE3E0  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800C14A4 000BE3E4  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800C14A8 000BE3E8  90 01 00 30 */ stw r0, 0x30(r1)
/* 800C14AC 000BE3EC  48 00 00 14 */ b lbl_800C14C0
lbl_800C14B0:
/* 800C14B0 000BE3F0  28 1E 00 00 */ cmplwi r30, 0
/* 800C14B4 000BE3F4  41 82 00 0C */ beq lbl_800C14C0
/* 800C14B8 000BE3F8  7F C3 F3 78 */ mr r3, r30
/* 800C14BC 000BE3FC  4B F5 87 C1 */ bl fopAcM_delete
lbl_800C14C0:
/* 800C14C0 000BE400  A0 7F 2F DC */ lhz r3, 0x2fdc(r31)
/* 800C14C4 000BE404  28 03 00 42 */ cmplwi r3, 0x42
/* 800C14C8 000BE408  40 82 00 18 */ bne lbl_800C14E0
/* 800C14CC 000BE40C  38 60 00 00 */ li r3, 0
/* 800C14D0 000BE410  88 1F 2D 74 */ lbz r0, 0x2d74(r31)
/* 800C14D4 000BE414  50 60 36 72 */ rlwimi r0, r3, 6, 0x19, 0x19
/* 800C14D8 000BE418  98 1F 2D 74 */ stb r0, 0x2d74(r31)
/* 800C14DC 000BE41C  48 00 00 18 */ b lbl_800C14F4
lbl_800C14E0:
/* 800C14E0 000BE420  48 09 D6 D9 */ bl daPy_py_c_NS_checkHookshotItem
/* 800C14E4 000BE424  2C 03 00 00 */ cmpwi r3, 0
/* 800C14E8 000BE428  41 82 00 0C */ beq lbl_800C14F4
/* 800C14EC 000BE42C  7F E3 FB 78 */ mr r3, r31
/* 800C14F0 000BE430  48 04 73 39 */ bl daAlink_c_NS_cancelHookshotCarry
lbl_800C14F4:
/* 800C14F4 000BE434  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 800C14F8 000BE438  28 00 00 40 */ cmplwi r0, 0x40
/* 800C14FC 000BE43C  41 82 00 0C */ beq lbl_800C1508
/* 800C1500 000BE440  28 00 01 02 */ cmplwi r0, 0x102
/* 800C1504 000BE444  40 82 00 14 */ bne lbl_800C1518
lbl_800C1508:
/* 800C1508 000BE448  7F E3 FB 78 */ mr r3, r31
/* 800C150C 000BE44C  48 01 EF 35 */ bl daAlink_c_NS_checkBoomerangAnime
/* 800C1510 000BE450  2C 03 00 00 */ cmpwi r3, 0
/* 800C1514 000BE454  40 82 00 A4 */ bne lbl_800C15B8
lbl_800C1518:
/* 800C1518 000BE458  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 800C151C 000BE45C  28 00 00 46 */ cmplwi r0, 0x46
/* 800C1520 000BE460  40 82 00 14 */ bne lbl_800C1534
/* 800C1524 000BE464  7F E3 FB 78 */ mr r3, r31
/* 800C1528 000BE468  48 02 00 09 */ bl daAlink_c_NS_checkCopyRodAnime
/* 800C152C 000BE46C  2C 03 00 00 */ cmpwi r3, 0
/* 800C1530 000BE470  40 82 00 88 */ bne lbl_800C15B8
lbl_800C1534:
/* 800C1534 000BE474  A0 7F 2F DC */ lhz r3, 0x2fdc(r31)
/* 800C1538 000BE478  48 09 D6 81 */ bl daPy_py_c_NS_checkHookshotItem
/* 800C153C 000BE47C  2C 03 00 00 */ cmpwi r3, 0
/* 800C1540 000BE480  41 82 00 2C */ beq lbl_800C156C
/* 800C1544 000BE484  38 60 00 00 */ li r3, 0
/* 800C1548 000BE488  A0 1F 1F BC */ lhz r0, 0x1fbc(r31)
/* 800C154C 000BE48C  28 00 01 8D */ cmplwi r0, 0x18d
/* 800C1550 000BE490  41 82 00 10 */ beq lbl_800C1560
/* 800C1554 000BE494  54 00 04 3E */ clrlwi r0, r0, 0x10
/* 800C1558 000BE498  28 00 01 8C */ cmplwi r0, 0x18c
/* 800C155C 000BE49C  40 82 00 08 */ bne lbl_800C1564
lbl_800C1560:
/* 800C1560 000BE4A0  38 60 00 01 */ li r3, 1
lbl_800C1564:
/* 800C1564 000BE4A4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800C1568 000BE4A8  40 82 00 50 */ bne lbl_800C15B8
lbl_800C156C:
/* 800C156C 000BE4AC  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 800C1570 000BE4B0  28 00 00 42 */ cmplwi r0, 0x42
/* 800C1574 000BE4B4  40 82 00 20 */ bne lbl_800C1594
/* 800C1578 000BE4B8  7F E3 FB 78 */ mr r3, r31
/* 800C157C 000BE4BC  48 05 3B 69 */ bl daAlink_c_NS_checkIronBallAnime
/* 800C1580 000BE4C0  2C 03 00 00 */ cmpwi r3, 0
/* 800C1584 000BE4C4  40 82 00 34 */ bne lbl_800C15B8
/* 800C1588 000BE4C8  A0 1F 1F BC */ lhz r0, 0x1fbc(r31)
/* 800C158C 000BE4CC  28 00 01 9C */ cmplwi r0, 0x19c
/* 800C1590 000BE4D0  41 82 00 28 */ beq lbl_800C15B8
lbl_800C1594:
/* 800C1594 000BE4D4  7F E3 FB 78 */ mr r3, r31
/* 800C1598 000BE4D8  A0 9F 2F DC */ lhz r4, 0x2fdc(r31)
/* 800C159C 000BE4DC  48 01 D1 E5 */ bl daAlink_c_NS_checkBowAndSlingItem
/* 800C15A0 000BE4E0  2C 03 00 00 */ cmpwi r3, 0
/* 800C15A4 000BE4E4  41 82 00 24 */ beq lbl_800C15C8
/* 800C15A8 000BE4E8  7F E3 FB 78 */ mr r3, r31
/* 800C15AC 000BE4EC  48 01 D4 3D */ bl daAlink_c_NS_checkBowAnime
/* 800C15B0 000BE4F0  2C 03 00 00 */ cmpwi r3, 0
/* 800C15B4 000BE4F4  41 82 00 14 */ beq lbl_800C15C8
lbl_800C15B8:
/* 800C15B8 000BE4F8  7F E3 FB 78 */ mr r3, r31
/* 800C15BC 000BE4FC  38 80 00 02 */ li r4, 2
/* 800C15C0 000BE500  C0 22 92 BC */ lfs f1, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800C15C4 000BE504  4B FE C1 61 */ bl daAlink_c_NS_resetUpperAnime
lbl_800C15C8:
/* 800C15C8 000BE508  80 7F 28 40 */ lwz r3, 0x2840(r31)
/* 800C15CC 000BE50C  28 03 00 00 */ cmplwi r3, 0
/* 800C15D0 000BE510  41 82 00 0C */ beq lbl_800C15DC
/* 800C15D4 000BE514  38 63 07 40 */ addi r3, r3, 0x740
/* 800C15D8 000BE518  48 09 D7 25 */ bl daPy_actorKeep_c_NS_clearData
lbl_800C15DC:
/* 800C15DC 000BE51C  38 7F 28 24 */ addi r3, r31, 0x2824
/* 800C15E0 000BE520  48 09 D7 1D */ bl daPy_actorKeep_c_NS_clearData
/* 800C15E4 000BE524  38 00 00 FF */ li r0, 0xff
/* 800C15E8 000BE528  B0 1F 2F DC */ sth r0, 0x2fdc(r31)
/* 800C15EC 000BE52C  38 00 00 00 */ li r0, 0
/* 800C15F0 000BE530  90 1F 07 08 */ stw r0, 0x708(r31)
/* 800C15F4 000BE534  90 1F 07 0C */ stw r0, 0x70c(r31)
/* 800C15F8 000BE538  90 1F 07 10 */ stw r0, 0x710(r31)
/* 800C15FC 000BE53C  90 1F 07 14 */ stw r0, 0x714(r31)
/* 800C1600 000BE540  80 1F 07 44 */ lwz r0, 0x744(r31)
/* 800C1604 000BE544  28 00 00 00 */ cmplwi r0, 0
/* 800C1608 000BE548  41 82 00 10 */ beq lbl_800C1618
/* 800C160C 000BE54C  38 7F 07 30 */ addi r3, r31, 0x730
/* 800C1610 000BE550  38 80 00 00 */ li r4, 0
/* 800C1614 000BE554  4B F4 C3 7D */ bl mDoExt_bckAnm_NS_changeBckOnly
lbl_800C1618:
/* 800C1618 000BE558  80 1F 07 60 */ lwz r0, 0x760(r31)
/* 800C161C 000BE55C  28 00 00 00 */ cmplwi r0, 0
/* 800C1620 000BE560  41 82 00 10 */ beq lbl_800C1630
/* 800C1624 000BE564  38 7F 07 4C */ addi r3, r31, 0x74c
/* 800C1628 000BE568  38 80 00 00 */ li r4, 0
/* 800C162C 000BE56C  4B F4 C3 65 */ bl mDoExt_bckAnm_NS_changeBckOnly
lbl_800C1630:
/* 800C1630 000BE570  3C 60 00 01 */ lis r3, 0x0000FFFF@ha
/* 800C1634 000BE574  38 03 FF FF */ addi r0, r3, 0x0000FFFF@l
/* 800C1638 000BE578  B0 1F 21 D8 */ sth r0, 0x21d8(r31)
/* 800C163C 000BE57C  38 00 00 00 */ li r0, 0
/* 800C1640 000BE580  90 1F 07 18 */ stw r0, 0x718(r31)
/* 800C1644 000BE584  90 1F 07 1C */ stw r0, 0x71c(r31)
/* 800C1648 000BE588  90 1F 07 20 */ stw r0, 0x720(r31)
/* 800C164C 000BE58C  90 1F 07 24 */ stw r0, 0x724(r31)
/* 800C1650 000BE590  90 1F 07 28 */ stw r0, 0x728(r31)
/* 800C1654 000BE594  90 1F 07 2C */ stw r0, 0x72c(r31)
/* 800C1658 000BE598  90 1F 07 68 */ stw r0, 0x768(r31)
/* 800C165C 000BE59C  90 1F 07 70 */ stw r0, 0x770(r31)
/* 800C1660 000BE5A0  90 1F 38 40 */ stw r0, 0x3840(r31)
/* 800C1664 000BE5A4  90 1F 38 44 */ stw r0, 0x3844(r31)
/* 800C1668 000BE5A8  90 1F 38 48 */ stw r0, 0x3848(r31)
/* 800C166C 000BE5AC  90 1F 07 74 */ stw r0, 0x774(r31)
/* 800C1670 000BE5B0  90 1F 07 78 */ stw r0, 0x778(r31)
/* 800C1674 000BE5B4  90 1F 07 7C */ stw r0, 0x77c(r31)
/* 800C1678 000BE5B8  90 1F 07 80 */ stw r0, 0x780(r31)
/* 800C167C 000BE5BC  48 00 F8 E1 */ bl daAlink_c_NS_getSwordAtType
/* 800C1680 000BE5C0  90 7F 12 3C */ stw r3, 0x123c(r31)
/* 800C1684 000BE5C4  38 00 00 00 */ li r0, 0
/* 800C1688 000BE5C8  90 1F 12 8C */ stw r0, 0x128c(r31)
/* 800C168C 000BE5CC  80 1F 12 2C */ lwz r0, 0x122c(r31)
/* 800C1690 000BE5D0  54 00 00 3C */ rlwinm r0, r0, 0, 0, 0x1e
/* 800C1694 000BE5D4  90 1F 12 2C */ stw r0, 0x122c(r31)
/* 800C1698 000BE5D8  7F E3 FB 78 */ mr r3, r31
/* 800C169C 000BE5DC  4B FE A4 8D */ bl daAlink_c_NS_cancelLockAt
/* 800C16A0 000BE5E0  38 00 00 00 */ li r0, 0
/* 800C16A4 000BE5E4  98 1F 12 A1 */ stb r0, 0x12a1(r31)
/* 800C16A8 000BE5E8  93 FF 17 48 */ stw r31, 0x1748(r31)
/* 800C16AC 000BE5EC  90 1F 2F 1C */ stw r0, 0x2f1c(r31)
/* 800C16B0 000BE5F0  38 00 00 FF */ li r0, 0xff
/* 800C16B4 000BE5F4  98 1F 2F 94 */ stb r0, 0x2f94(r31)
/* 800C16B8 000BE5F8  98 1F 2F 95 */ stb r0, 0x2f95(r31)
/* 800C16BC 000BE5FC  80 1F 05 78 */ lwz r0, 0x578(r31)
/* 800C16C0 000BE600  54 00 00 C2 */ rlwinm r0, r0, 0, 3, 1
/* 800C16C4 000BE604  90 1F 05 78 */ stw r0, 0x578(r31)
/* 800C16C8 000BE608  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 800C16CC 000BE60C  54 00 04 5E */ rlwinm r0, r0, 0, 0x11, 0xf
/* 800C16D0 000BE610  90 1F 05 74 */ stw r0, 0x574(r31)
/* 800C16D4 000BE614  80 7F 07 6C */ lwz r3, 0x76c(r31)
/* 800C16D8 000BE618  28 03 00 00 */ cmplwi r3, 0
/* 800C16DC 000BE61C  41 82 00 10 */ beq lbl_800C16EC
/* 800C16E0 000BE620  48 1F C9 19 */ bl Z2SoundObjBase_NS_deleteObject
/* 800C16E4 000BE624  38 00 00 00 */ li r0, 0
/* 800C16E8 000BE628  90 1F 07 6C */ stw r0, 0x76c(r31)
lbl_800C16EC:
/* 800C16EC 000BE62C  39 61 00 50 */ addi r11, r1, 0x50
/* 800C16F0 000BE630  48 2A 0B 39 */ bl _restgpr_29
/* 800C16F4 000BE634  80 01 00 54 */ lwz r0, 0x54(r1)
/* 800C16F8 000BE638  7C 08 03 A6 */ mtlr r0
/* 800C16FC 000BE63C  38 21 00 50 */ addi r1, r1, 0x50
/* 800C1700 000BE640  4E 80 00 20 */ blr
