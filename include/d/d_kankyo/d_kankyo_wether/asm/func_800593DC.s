/* 800593DC 0005631C  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800593E0 00056320  7C 08 02 A6 */ mflr r0
/* 800593E4 00056324  90 01 00 24 */ stw r0, 0x24(r1)
/* 800593E8 00056328  39 61 00 20 */ addi r11, r1, 0x20
/* 800593EC 0005632C  48 30 8D F1 */ bl _savegpr_29
/* 800593F0 00056330  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 800593F4 00056334  3B E3 CA 54 */ addi r31, r3, lbl_8042CA54@l
/* 800593F8 00056338  88 1F 0F 20 */ lbz r0, 0xf20(r31)
/* 800593FC 0005633C  2C 00 00 01 */ cmpwi r0, 1
/* 80059400 00056340  41 82 00 E8 */ beq lbl_800594E8
/* 80059404 00056344  40 80 00 10 */ bge lbl_80059414
/* 80059408 00056348  2C 00 00 00 */ cmpwi r0, 0
/* 8005940C 0005634C  40 80 00 14 */ bge lbl_80059420
/* 80059410 00056350  48 00 01 58 */ b lbl_80059568
lbl_80059414:
/* 80059414 00056354  2C 00 00 03 */ cmpwi r0, 3
/* 80059418 00056358  40 80 01 50 */ bge lbl_80059568
/* 8005941C 0005635C  48 00 01 18 */ b lbl_80059534
lbl_80059420:
/* 80059420 00056360  88 1F 0F 21 */ lbz r0, 0xf21(r31)
/* 80059424 00056364  28 00 00 00 */ cmplwi r0, 0
/* 80059428 00056368  41 82 01 40 */ beq lbl_80059568
/* 8005942C 0005636C  3C 60 00 01 */ lis r3, 0x00017728@ha
/* 80059430 00056370  38 63 77 28 */ addi r3, r3, 0x00017728@l
/* 80059434 00056374  38 80 00 20 */ li r4, 0x20
/* 80059438 00056378  48 27 58 3D */ bl __nw__FUli
/* 8005943C 0005637C  7C 7D 1B 79 */ or. r29, r3, r3
/* 80059440 00056380  41 82 00 50 */ beq lbl_80059490
/* 80059444 00056384  7F A4 EB 78 */ mr r4, r29
/* 80059448 00056388  3C 60 80 3D */ lis r3, lbl_803CD97C@ha
/* 8005944C 0005638C  38 03 D9 7C */ addi r0, r3, lbl_803CD97C@l
/* 80059450 00056390  90 1D 00 00 */ stw r0, 0(r29)
/* 80059454 00056394  38 00 00 00 */ li r0, 0
/* 80059458 00056398  90 1D 00 04 */ stw r0, 4(r29)
/* 8005945C 0005639C  90 1D 00 08 */ stw r0, 8(r29)
/* 80059460 000563A0  90 1D 00 0C */ stw r0, 0xc(r29)
/* 80059464 000563A4  3C 60 80 3B */ lis r3, lbl_803A9AE8@ha
/* 80059468 000563A8  38 03 9A E8 */ addi r0, r3, lbl_803A9AE8@l
/* 8005946C 000563AC  90 1D 00 00 */ stw r0, 0(r29)
/* 80059470 000563B0  38 64 00 14 */ addi r3, r4, 0x14
/*.global EF_ODOUR_EFF*/
/* 80059474 000563B4  3C 80 80 05 */ lis r4, EF_ODOUR_EFF@ha
/*.global EF_ODOUR_EFF*/
/* 80059478 000563B8  38 84 6F C8 */ addi r4, r4, EF_ODOUR_EFF@l
/*.global __dt__12EF_ODOUR_EFFFv*/
/* 8005947C 000563BC  3C A0 80 05 */ lis r5, __dt__12EF_ODOUR_EFFFv@ha
/*.global __dt__12EF_ODOUR_EFFFv*/
/* 80059480 000563C0  38 A5 6F 8C */ addi r5, r5, __dt__12EF_ODOUR_EFFFv@l
/* 80059484 000563C4  38 C0 00 30 */ li r6, 0x30
/* 80059488 000563C8  38 E0 07 D0 */ li r7, 0x7d0
/* 8005948C 000563CC  48 30 88 D5 */ bl func_80361D60
lbl_80059490:
/* 80059490 000563D0  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 80059494 000563D4  3B C3 CA 54 */ addi r30, r3, lbl_8042CA54@l
/* 80059498 000563D8  93 BE 0F 28 */ stw r29, 0xf28(r30)
/* 8005949C 000563DC  28 1D 00 00 */ cmplwi r29, 0
/* 800594A0 000563E0  41 82 00 C8 */ beq lbl_80059568
/* 800594A4 000563E4  3C 60 80 38 */ lis r3, lbl_8037A368@ha
/* 800594A8 000563E8  38 63 A3 68 */ addi r3, r3, lbl_8037A368@l
/* 800594AC 000563EC  38 63 00 82 */ addi r3, r3, 0x82
/* 800594B0 000563F0  38 80 00 53 */ li r4, 0x53
/* 800594B4 000563F4  3C A0 80 40 */ lis r5, g_dComIfG_gameInfo@ha
/* 800594B8 000563F8  38 A5 61 C0 */ addi r5, r5, g_dComIfG_gameInfo@l
/* 800594BC 000563FC  3C A5 00 02 */ addis r5, r5, 2
/* 800594C0 00056400  38 C0 00 80 */ li r6, 0x80
/* 800594C4 00056404  38 A5 C2 F8 */ addi r5, r5, -15624
/* 800594C8 00056408  4B FE 2E 25 */ bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 800594CC 0005640C  80 9E 0F 28 */ lwz r4, 0xf28(r30)
/* 800594D0 00056410  90 64 00 10 */ stw r3, 0x10(r4)
/* 800594D4 00056414  48 01 24 11 */ bl dKyr_odour_init
/* 800594D8 00056418  48 01 24 4D */ bl dKyr_odour_move
/* 800594DC 0005641C  38 00 00 01 */ li r0, 1
/* 800594E0 00056420  98 1F 0F 20 */ stb r0, 0xf20(r31)
/* 800594E4 00056424  48 00 00 84 */ b lbl_80059568
lbl_800594E8:
/* 800594E8 00056428  88 1F 0F 21 */ lbz r0, 0xf21(r31)
/* 800594EC 0005642C  28 00 00 00 */ cmplwi r0, 0
/* 800594F0 00056430  40 82 00 3C */ bne lbl_8005952C
/* 800594F4 00056434  38 00 00 00 */ li r0, 0
/* 800594F8 00056438  98 1F 0F 20 */ stb r0, 0xf20(r31)
/* 800594FC 0005643C  80 7F 0F 28 */ lwz r3, 0xf28(r31)
/* 80059500 00056440  28 03 00 00 */ cmplwi r3, 0
/* 80059504 00056444  41 82 00 64 */ beq lbl_80059568
/* 80059508 00056448  41 82 00 18 */ beq lbl_80059520
/* 8005950C 0005644C  38 80 00 01 */ li r4, 1
/* 80059510 00056450  81 83 00 00 */ lwz r12, 0(r3)
/* 80059514 00056454  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 80059518 00056458  7D 89 03 A6 */ mtctr r12
/* 8005951C 0005645C  4E 80 04 21 */ bctrl
lbl_80059520:
/* 80059520 00056460  38 00 00 00 */ li r0, 0
/* 80059524 00056464  90 1F 0F 28 */ stw r0, 0xf28(r31)
/* 80059528 00056468  48 00 00 40 */ b lbl_80059568
lbl_8005952C:
/* 8005952C 0005646C  48 01 23 F9 */ bl dKyr_odour_move
/* 80059530 00056470  48 00 00 38 */ b lbl_80059568
lbl_80059534:
/* 80059534 00056474  38 00 00 00 */ li r0, 0
/* 80059538 00056478  98 1F 0F 21 */ stb r0, 0xf21(r31)
/* 8005953C 0005647C  98 1F 0F 20 */ stb r0, 0xf20(r31)
/* 80059540 00056480  80 7F 0F 28 */ lwz r3, 0xf28(r31)
/* 80059544 00056484  28 03 00 00 */ cmplwi r3, 0
/* 80059548 00056488  41 82 00 18 */ beq lbl_80059560
/* 8005954C 0005648C  38 80 00 01 */ li r4, 1
/* 80059550 00056490  81 83 00 00 */ lwz r12, 0(r3)
/* 80059554 00056494  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 80059558 00056498  7D 89 03 A6 */ mtctr r12
/* 8005955C 0005649C  4E 80 04 21 */ bctrl
lbl_80059560:
/* 80059560 000564A0  38 00 00 00 */ li r0, 0
/* 80059564 000564A4  90 1F 0F 28 */ stw r0, 0xf28(r31)
lbl_80059568:
/* 80059568 000564A8  39 61 00 20 */ addi r11, r1, 0x20
/* 8005956C 000564AC  48 30 8C BD */ bl _restgpr_29
/* 80059570 000564B0  80 01 00 24 */ lwz r0, 0x24(r1)
/* 80059574 000564B4  7C 08 03 A6 */ mtlr r0
/* 80059578 000564B8  38 21 00 20 */ addi r1, r1, 0x20
/* 8005957C 000564BC  4E 80 00 20 */ blr
