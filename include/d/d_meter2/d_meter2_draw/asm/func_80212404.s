/* 80212404 0020F344  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80212408 0020F348  7C 08 02 A6 */ mflr r0
/* 8021240C 0020F34C  90 01 00 24 */ stw r0, 0x24(r1)
/* 80212410 0020F350  39 61 00 20 */ addi r11, r1, 0x20
/* 80212414 0020F354  48 14 FD BD */ bl _savegpr_26
/* 80212418 0020F358  7C 7F 1B 78 */ mr r31, r3
/* 8021241C 0020F35C  3C 60 80 3A */ lis r3, lbl_80398258@ha
/* 80212420 0020F360  3B C3 82 58 */ addi r30, r3, lbl_80398258@l
/* 80212424 0020F364  38 60 00 6C */ li r3, 0x6c
/* 80212428 0020F368  48 0B C8 25 */ bl __nw__FUl
/* 8021242C 0020F36C  7C 60 1B 79 */ or. r0, r3, r3
/* 80212430 0020F370  41 82 00 24 */ beq lbl_80212454
/* 80212434 0020F374  80 9F 00 78 */ lwz r4, 0x78(r31)
/* 80212438 0020F378  3C A0 5F 6B */ lis r5, 0x5F6B5F6E@ha
/* 8021243C 0020F37C  38 C5 5F 6E */ addi r6, r5, 0x5F6B5F6E@l
/* 80212440 0020F380  38 A0 00 72 */ li r5, 0x72
/* 80212444 0020F384  38 E0 00 02 */ li r7, 2
/* 80212448 0020F388  39 00 00 00 */ li r8, 0
/* 8021244C 0020F38C  48 04 15 39 */ bl CPaneMgr_X1_
/* 80212450 0020F390  7C 60 1B 78 */ mr r0, r3
lbl_80212454:
/* 80212454 0020F394  90 1F 02 B0 */ stw r0, 0x2b0(r31)
/* 80212458 0020F398  C0 02 AE 84 */ lfs f0, lbl_80454884-_SDA2_BASE_(r2)
/* 8021245C 0020F39C  D0 1F 07 18 */ stfs f0, 0x718(r31)
/* 80212460 0020F3A0  3B 60 00 00 */ li r27, 0
/* 80212464 0020F3A4  3B 80 00 00 */ li r28, 0
lbl_80212468:
/* 80212468 0020F3A8  38 60 00 6C */ li r3, 0x6c
/* 8021246C 0020F3AC  48 0B C7 E1 */ bl __nw__FUl
/* 80212470 0020F3B0  7C 60 1B 79 */ or. r0, r3, r3
/* 80212474 0020F3B4  41 82 00 28 */ beq lbl_8021249C
/* 80212478 0020F3B8  80 9F 00 78 */ lwz r4, 0x78(r31)
/* 8021247C 0020F3BC  38 1E 05 68 */ addi r0, r30, 0x568
/* 80212480 0020F3C0  7C C0 E2 14 */ add r6, r0, r28
/* 80212484 0020F3C4  80 A6 00 00 */ lwz r5, 0(r6)
/* 80212488 0020F3C8  80 C6 00 04 */ lwz r6, 4(r6)
/* 8021248C 0020F3CC  38 E0 00 00 */ li r7, 0
/* 80212490 0020F3D0  39 00 00 00 */ li r8, 0
/* 80212494 0020F3D4  48 04 14 F1 */ bl CPaneMgr_X1_
/* 80212498 0020F3D8  7C 60 1B 78 */ mr r0, r3
lbl_8021249C:
/* 8021249C 0020F3DC  7F BF E2 14 */ add r29, r31, r28
/* 802124A0 0020F3E0  90 1D 02 C0 */ stw r0, 0x2c0(r29)
/* 802124A4 0020F3E4  80 7D 02 C0 */ lwz r3, 0x2c0(r29)
/* 802124A8 0020F3E8  80 63 00 04 */ lwz r3, 4(r3)
/* 802124AC 0020F3EC  38 80 00 04 */ li r4, 4
/* 802124B0 0020F3F0  48 0E 52 49 */ bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 802124B4 0020F3F4  38 60 00 6C */ li r3, 0x6c
/* 802124B8 0020F3F8  48 0B C7 95 */ bl __nw__FUl
/* 802124BC 0020F3FC  7C 60 1B 79 */ or. r0, r3, r3
/* 802124C0 0020F400  41 82 00 28 */ beq lbl_802124E8
/* 802124C4 0020F404  80 9F 00 78 */ lwz r4, 0x78(r31)
/* 802124C8 0020F408  38 1E 05 88 */ addi r0, r30, 0x588
/* 802124CC 0020F40C  7C C0 E2 14 */ add r6, r0, r28
/* 802124D0 0020F410  80 A6 00 00 */ lwz r5, 0(r6)
/* 802124D4 0020F414  80 C6 00 04 */ lwz r6, 4(r6)
/* 802124D8 0020F418  38 E0 00 00 */ li r7, 0
/* 802124DC 0020F41C  39 00 00 00 */ li r8, 0
/* 802124E0 0020F420  48 04 14 A5 */ bl CPaneMgr_X1_
/* 802124E4 0020F424  7C 60 1B 78 */ mr r0, r3
lbl_802124E8:
/* 802124E8 0020F428  90 1D 02 C4 */ stw r0, 0x2c4(r29)
/* 802124EC 0020F42C  80 7D 02 C4 */ lwz r3, 0x2c4(r29)
/* 802124F0 0020F430  80 63 00 04 */ lwz r3, 4(r3)
/* 802124F4 0020F434  38 80 00 04 */ li r4, 4
/* 802124F8 0020F438  48 0E 52 01 */ bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 802124FC 0020F43C  3B 7B 00 01 */ addi r27, r27, 1
/* 80212500 0020F440  2C 1B 00 04 */ cmpwi r27, 4
/* 80212504 0020F444  3B 9C 00 08 */ addi r28, r28, 8
/* 80212508 0020F448  41 80 FF 60 */ blt lbl_80212468
/* 8021250C 0020F44C  38 60 00 6C */ li r3, 0x6c
/* 80212510 0020F450  48 0B C7 3D */ bl __nw__FUl
/* 80212514 0020F454  7C 60 1B 79 */ or. r0, r3, r3
/* 80212518 0020F458  41 82 00 24 */ beq lbl_8021253C
/* 8021251C 0020F45C  80 9F 00 78 */ lwz r4, 0x78(r31)
/* 80212520 0020F460  3C A0 70 69 */ lis r5, 0x70695F6E@ha
/* 80212524 0020F464  38 C5 5F 6E */ addi r6, r5, 0x70695F6E@l
/* 80212528 0020F468  38 A0 72 75 */ li r5, 0x7275
/* 8021252C 0020F46C  38 E0 00 02 */ li r7, 2
/* 80212530 0020F470  39 00 00 00 */ li r8, 0
/* 80212534 0020F474  48 04 14 51 */ bl CPaneMgr_X1_
/* 80212538 0020F478  7C 60 1B 78 */ mr r0, r3
lbl_8021253C:
/* 8021253C 0020F47C  90 1F 02 B4 */ stw r0, 0x2b4(r31)
/* 80212540 0020F480  38 60 00 6C */ li r3, 0x6c
/* 80212544 0020F484  48 0B C7 09 */ bl __nw__FUl
/* 80212548 0020F488  7C 60 1B 79 */ or. r0, r3, r3
/* 8021254C 0020F48C  41 82 00 28 */ beq lbl_80212574
/* 80212550 0020F490  80 9F 00 78 */ lwz r4, 0x78(r31)
/* 80212554 0020F494  3C A0 75 5F */ lis r5, 0x755F726E@ha
/* 80212558 0020F498  38 C5 72 6E */ addi r6, r5, 0x755F726E@l
/* 8021255C 0020F49C  3C A0 6D 6F */ lis r5, 0x6D6F796F@ha
/* 80212560 0020F4A0  38 A5 79 6F */ addi r5, r5, 0x6D6F796F@l
/* 80212564 0020F4A4  38 E0 00 02 */ li r7, 2
/* 80212568 0020F4A8  39 00 00 00 */ li r8, 0
/* 8021256C 0020F4AC  48 04 14 19 */ bl CPaneMgr_X1_
/* 80212570 0020F4B0  7C 60 1B 78 */ mr r0, r3
lbl_80212574:
/* 80212574 0020F4B4  90 1F 02 B8 */ stw r0, 0x2b8(r31)
/* 80212578 0020F4B8  38 60 00 6C */ li r3, 0x6c
/* 8021257C 0020F4BC  48 0B C6 D1 */ bl __nw__FUl
/* 80212580 0020F4C0  7C 60 1B 79 */ or. r0, r3, r3
/* 80212584 0020F4C4  41 82 00 28 */ beq lbl_802125AC
/* 80212588 0020F4C8  80 9F 00 78 */ lwz r4, 0x78(r31)
/* 8021258C 0020F4CC  3C A0 75 5F */ lis r5, 0x755F6C6E@ha
/* 80212590 0020F4D0  38 C5 6C 6E */ addi r6, r5, 0x755F6C6E@l
/* 80212594 0020F4D4  3C A0 6D 6F */ lis r5, 0x6D6F796F@ha
/* 80212598 0020F4D8  38 A5 79 6F */ addi r5, r5, 0x6D6F796F@l
/* 8021259C 0020F4DC  38 E0 00 02 */ li r7, 2
/* 802125A0 0020F4E0  39 00 00 00 */ li r8, 0
/* 802125A4 0020F4E4  48 04 13 E1 */ bl CPaneMgr_X1_
/* 802125A8 0020F4E8  7C 60 1B 78 */ mr r0, r3
lbl_802125AC:
/* 802125AC 0020F4EC  90 1F 02 BC */ stw r0, 0x2bc(r31)
/* 802125B0 0020F4F0  80 7F 02 B4 */ lwz r3, 0x2b4(r31)
/* 802125B4 0020F4F4  C0 22 AE 80 */ lfs f1, lbl_80454880-_SDA2_BASE_(r2)
/* 802125B8 0020F4F8  48 04 32 19 */ bl setAlphaRate__13CPaneMgrAlphaFf
/* 802125BC 0020F4FC  80 7F 02 B8 */ lwz r3, 0x2b8(r31)
/* 802125C0 0020F500  C0 22 AE 80 */ lfs f1, lbl_80454880-_SDA2_BASE_(r2)
/* 802125C4 0020F504  48 04 32 0D */ bl setAlphaRate__13CPaneMgrAlphaFf
/* 802125C8 0020F508  80 7F 02 BC */ lwz r3, 0x2bc(r31)
/* 802125CC 0020F50C  C0 22 AE 80 */ lfs f1, lbl_80454880-_SDA2_BASE_(r2)
/* 802125D0 0020F510  48 04 32 01 */ bl setAlphaRate__13CPaneMgrAlphaFf
/* 802125D4 0020F514  3B 40 00 00 */ li r26, 0
/* 802125D8 0020F518  3B A0 00 00 */ li r29, 0
/* 802125DC 0020F51C  3B 80 00 00 */ li r28, 0
lbl_802125E0:
/* 802125E0 0020F520  38 60 00 6C */ li r3, 0x6c
/* 802125E4 0020F524  48 0B C6 69 */ bl __nw__FUl
/* 802125E8 0020F528  7C 60 1B 79 */ or. r0, r3, r3
/* 802125EC 0020F52C  41 82 00 28 */ beq lbl_80212614
/* 802125F0 0020F530  80 9F 00 78 */ lwz r4, 0x78(r31)
/* 802125F4 0020F534  38 1E 05 A8 */ addi r0, r30, 0x5a8
/* 802125F8 0020F538  7C C0 E2 14 */ add r6, r0, r28
/* 802125FC 0020F53C  80 A6 00 00 */ lwz r5, 0(r6)
/* 80212600 0020F540  80 C6 00 04 */ lwz r6, 4(r6)
/* 80212604 0020F544  38 E0 00 00 */ li r7, 0
/* 80212608 0020F548  39 00 00 00 */ li r8, 0
/* 8021260C 0020F54C  48 04 13 79 */ bl CPaneMgr_X1_
/* 80212610 0020F550  7C 60 1B 78 */ mr r0, r3
lbl_80212614:
/* 80212614 0020F554  3B 7D 02 E4 */ addi r27, r29, 0x2e4
/* 80212618 0020F558  7C 1F D9 2E */ stwx r0, r31, r27
/* 8021261C 0020F55C  7C 7F D8 2E */ lwzx r3, r31, r27
/* 80212620 0020F560  80 63 00 04 */ lwz r3, 4(r3)
/* 80212624 0020F564  38 80 00 04 */ li r4, 4
/* 80212628 0020F568  48 0E 50 D1 */ bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 8021262C 0020F56C  7C 7F D8 2E */ lwzx r3, r31, r27
/* 80212630 0020F570  48 04 2F D9 */ bl hide__13CPaneMgrAlphaFv
/* 80212634 0020F574  3B 5A 00 01 */ addi r26, r26, 1
/* 80212638 0020F578  2C 1A 00 05 */ cmpwi r26, 5
/* 8021263C 0020F57C  3B BD 00 04 */ addi r29, r29, 4
/* 80212640 0020F580  3B 9C 00 08 */ addi r28, r28, 8
/* 80212644 0020F584  41 80 FF 9C */ blt lbl_802125E0
/* 80212648 0020F588  38 60 00 6C */ li r3, 0x6c
/* 8021264C 0020F58C  48 0B C6 01 */ bl __nw__FUl
/* 80212650 0020F590  7C 60 1B 79 */ or. r0, r3, r3
/* 80212654 0020F594  41 82 00 24 */ beq lbl_80212678
/* 80212658 0020F598  80 9F 00 78 */ lwz r4, 0x78(r31)
/* 8021265C 0020F59C  3C A0 65 79 */ lis r5, 0x65795F6E@ha
/* 80212660 0020F5A0  38 C5 5F 6E */ addi r6, r5, 0x65795F6E@l
/* 80212664 0020F5A4  38 A0 00 6B */ li r5, 0x6b
/* 80212668 0020F5A8  38 E0 00 02 */ li r7, 2
/* 8021266C 0020F5AC  39 00 00 00 */ li r8, 0
/* 80212670 0020F5B0  48 04 13 15 */ bl CPaneMgr_X1_
/* 80212674 0020F5B4  7C 60 1B 78 */ mr r0, r3
lbl_80212678:
/* 80212678 0020F5B8  90 1F 02 E0 */ stw r0, 0x2e0(r31)
/* 8021267C 0020F5BC  80 7F 02 E0 */ lwz r3, 0x2e0(r31)
/* 80212680 0020F5C0  C0 22 AE 80 */ lfs f1, lbl_80454880-_SDA2_BASE_(r2)
/* 80212684 0020F5C4  48 04 31 4D */ bl setAlphaRate__13CPaneMgrAlphaFf
/* 80212688 0020F5C8  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8021268C 0020F5CC  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80212690 0020F5D0  A0 03 00 04 */ lhz r0, 4(r3)
/* 80212694 0020F5D4  7F E3 FB 78 */ mr r3, r31
/* 80212698 0020F5D8  7C 04 07 34 */ extsh r4, r0
/* 8021269C 0020F5DC  48 00 3C 91 */ bl dMeter2Draw_c_NS_drawRupee
/* 802126A0 0020F5E0  7F E3 FB 78 */ mr r3, r31
/* 802126A4 0020F5E4  3C 80 80 40 */ lis r4, g_dComIfG_gameInfo@ha
/* 802126A8 0020F5E8  38 84 61 C0 */ addi r4, r4, g_dComIfG_gameInfo@l
/* 802126AC 0020F5EC  88 84 09 74 */ lbz r4, 0x974(r4)
/* 802126B0 0020F5F0  48 00 43 91 */ bl dMeter2Draw_c_NS_drawKey
/* 802126B4 0020F5F4  7F E3 FB 78 */ mr r3, r31
/* 802126B8 0020F5F8  38 80 00 01 */ li r4, 1
/* 802126BC 0020F5FC  48 00 3F C9 */ bl dMeter2Draw_c_NS_setAlphaRupeeChange
/* 802126C0 0020F600  7F E3 FB 78 */ mr r3, r31
/* 802126C4 0020F604  38 80 00 01 */ li r4, 1
/* 802126C8 0020F608  48 00 44 61 */ bl dMeter2Draw_c_NS_setAlphaKeyChange
/* 802126CC 0020F60C  39 61 00 20 */ addi r11, r1, 0x20
/* 802126D0 0020F610  48 14 FB 4D */ bl _restgpr_26
/* 802126D4 0020F614  80 01 00 24 */ lwz r0, 0x24(r1)
/* 802126D8 0020F618  7C 08 03 A6 */ mtlr r0
/* 802126DC 0020F61C  38 21 00 20 */ addi r1, r1, 0x20
/* 802126E0 0020F620  4E 80 00 20 */ blr
