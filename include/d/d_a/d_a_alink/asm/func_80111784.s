/* 80111784 0010E6C4  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80111788 0010E6C8  7C 08 02 A6 */ mflr r0
/* 8011178C 0010E6CC  90 01 00 24 */ stw r0, 0x24(r1)
/* 80111790 0010E6D0  39 61 00 20 */ addi r11, r1, 0x20
/* 80111794 0010E6D4  48 25 0A 49 */ bl _savegpr_29
/* 80111798 0010E6D8  7C 7D 1B 78 */ mr r29, r3
/* 8011179C 0010E6DC  7C 9E 23 78 */ mr r30, r4
/* 801117A0 0010E6E0  4B F9 24 ED */ bl setItemHeap__9daAlink_cFv
/* 801117A4 0010E6E4  7C 7F 1B 78 */ mr r31, r3
/* 801117A8 0010E6E8  57 C0 10 3A */ slwi r0, r30, 2
/* 801117AC 0010E6EC  38 6D 81 1C */ addi r3, r13, 0x8045069C - 0x80458580 /*SDA HACK; original: lbl_8045069C-_SDA_BASE_*/
/* 801117B0 0010E6F0  7C 63 00 2E */ lwzx r3, r3, r0
/* 801117B4 0010E6F4  57 C0 08 3C */ slwi r0, r30, 1
/* 801117B8 0010E6F8  38 82 96 20 */ addi r4, r2, 0x80453020 - 0x80459A00 /*SDA HACK; original: lbl_80453020-_SDA2_BASE_*/
/* 801117BC 0010E6FC  7C 84 02 2E */ lhzx r4, r4, r0
/* 801117C0 0010E700  3C A0 80 40 */ lis r5, g_dComIfG_gameInfo@ha
/* 801117C4 0010E704  38 A5 61 C0 */ addi r5, r5, g_dComIfG_gameInfo@l
/* 801117C8 0010E708  3C A5 00 02 */ addis r5, r5, 2
/* 801117CC 0010E70C  38 C0 00 80 */ li r6, 0x80
/* 801117D0 0010E710  38 A5 C2 F8 */ addi r5, r5, -15624
/* 801117D4 0010E714  4B F2 AB 19 */ bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 801117D8 0010E718  3C 80 00 08 */ lis r4, 8
/* 801117DC 0010E71C  3C A0 11 00 */ lis r5, 0x11000084@ha
/* 801117E0 0010E720  38 A5 00 84 */ addi r5, r5, 0x11000084@l
/* 801117E4 0010E724  4B F0 34 71 */ bl mDoExt_J3DModel__create
/* 801117E8 0010E728  90 7D 07 08 */ stw r3, 0x708(r29)
/* 801117EC 0010E72C  7F E3 FB 78 */ mr r3, r31
/* 801117F0 0010E730  4B EF D9 DD */ bl mDoExt_setCurrentHeap
/* 801117F4 0010E734  38 00 01 04 */ li r0, 0x104
/* 801117F8 0010E738  B0 1D 2F DC */ sth r0, 0x2fdc(r29)
/* 801117FC 0010E73C  38 00 00 02 */ li r0, 2
/* 80111800 0010E740  98 1D 2F 94 */ stb r0, 0x2f94(r29)
/* 80111804 0010E744  39 61 00 20 */ addi r11, r1, 0x20
/* 80111808 0010E748  48 25 0A 21 */ bl _restgpr_29
/* 8011180C 0010E74C  80 01 00 24 */ lwz r0, 0x24(r1)
/* 80111810 0010E750  7C 08 03 A6 */ mtlr r0
/* 80111814 0010E754  38 21 00 20 */ addi r1, r1, 0x20
/* 80111818 0010E758  4E 80 00 20 */ blr
