/* 801186D4 00115614  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 801186D8 00115618  7C 08 02 A6 */ mflr r0
/* 801186DC 0011561C  90 01 00 14 */ stw r0, 0x14(r1)
/* 801186E0 00115620  93 E1 00 0C */ stw r31, 0xc(r1)
/* 801186E4 00115624  7C 7F 1B 78 */ mr r31, r3
/* 801186E8 00115628  38 80 01 88 */ li r4, 0x188
/* 801186EC 0011562C  4B F9 48 95 */ bl daAlink_c_NS_setSingleAnimeBase
/* 801186F0 00115630  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 801186F4 00115634  54 00 06 2C */ rlwinm r0, r0, 0, 0x18, 0x16
/* 801186F8 00115638  90 1F 31 A0 */ stw r0, 0x31a0(r31)
/* 801186FC 0011563C  80 1F 06 0C */ lwz r0, 0x60c(r31)
/* 80118700 00115640  2C 00 00 01 */ cmpwi r0, 1
/* 80118704 00115644  41 82 00 54 */ beq lbl_80118758
/* 80118708 00115648  38 7F 04 D0 */ addi r3, r31, 0x4d0
/* 8011870C 0011564C  2C 00 00 02 */ cmpwi r0, 2
/* 80118710 00115650  40 82 00 0C */ bne lbl_8011871C
/* 80118714 00115654  80 9F 06 10 */ lwz r4, 0x610(r31)
/* 80118718 00115658  48 00 00 10 */ b lbl_80118728
lbl_8011871C:
/* 8011871C 0011565C  3C 80 80 40 */ lis r4, g_dComIfG_gameInfo@ha
/* 80118720 00115660  38 84 61 C0 */ addi r4, r4, g_dComIfG_gameInfo@l
/* 80118724 00115664  88 84 4F B6 */ lbz r4, 0x4fb6(r4)
lbl_80118728:
/* 80118728 00115668  38 A0 00 03 */ li r5, 3
/* 8011872C 0011566C  38 C0 FF FF */ li r6, -1
/* 80118730 00115670  88 1F 04 E2 */ lbz r0, 0x4e2(r31)
/* 80118734 00115674  7C 07 07 74 */ extsb r7, r0
/* 80118738 00115678  39 1F 04 E4 */ addi r8, r31, 0x4e4
/* 8011873C 0011567C  39 3F 04 EC */ addi r9, r31, 0x4ec
/* 80118740 00115680  4B F0 34 A9 */ bl fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80118744 00115684  7C 64 1B 78 */ mr r4, r3
/* 80118748 00115688  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8011874C 0011568C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80118750 00115690  38 63 4E C8 */ addi r3, r3, 0x4ec8
/* 80118754 00115694  4B F2 AF 99 */ bl setPtI__14dEvt_control_cFPv_Id
lbl_80118758:
/* 80118758 00115698  7F E3 FB 78 */ mr r3, r31
/* 8011875C 0011569C  4B FA 70 F9 */ bl daAlink_c_NS_keepItemData
/* 80118760 001156A0  38 60 00 01 */ li r3, 1
/* 80118764 001156A4  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80118768 001156A8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8011876C 001156AC  7C 08 03 A6 */ mtlr r0
/* 80118770 001156B0  38 21 00 10 */ addi r1, r1, 0x10
/* 80118774 001156B4  4E 80 00 20 */ blr
