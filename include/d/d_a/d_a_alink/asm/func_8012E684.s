/* 8012E684 0012B5C4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8012E688 0012B5C8  7C 08 02 A6 */ mflr r0
/* 8012E68C 0012B5CC  90 01 00 14 */ stw r0, 0x14(r1)
/* 8012E690 0012B5D0  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8012E694 0012B5D4  93 C1 00 08 */ stw r30, 8(r1)
/* 8012E698 0012B5D8  7C 7E 1B 78 */ mr r30, r3
/* 8012E69C 0012B5DC  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 8012E6A0 0012B5E0  88 03 2F CC */ lbz r0, 0x2fcc(r3)
/* 8012E6A4 0012B5E4  28 00 00 00 */ cmplwi r0, 0
/* 8012E6A8 0012B5E8  41 82 00 0C */ beq lbl_8012E6B4
/* 8012E6AC 0012B5EC  38 00 00 0A */ li r0, 0xa
/* 8012E6B0 0012B5F0  98 1E 2F CC */ stb r0, 0x2fcc(r30)
lbl_8012E6B4:
/* 8012E6B4 0012B5F4  7F C3 F3 78 */ mr r3, r30
/* 8012E6B8 0012B5F8  4B FF A8 A5 */ bl daAlink_c_NS_setWolfAtnMoveDirection
/* 8012E6BC 0012B5FC  A8 1E 30 10 */ lha r0, 0x3010(r30)
/* 8012E6C0 0012B600  2C 00 00 00 */ cmpwi r0, 0
/* 8012E6C4 0012B604  41 82 00 0C */ beq lbl_8012E6D0
/* 8012E6C8 0012B608  7F C3 F3 78 */ mr r3, r30
/* 8012E6CC 0012B60C  4B FF DC 3D */ bl daAlink_c_NS_checkWolfAtnDoCharge
lbl_8012E6D0:
/* 8012E6D0 0012B610  7F E3 FB 78 */ mr r3, r31
/* 8012E6D4 0012B614  48 02 FD F9 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8012E6D8 0012B618  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8012E6DC 0012B61C  41 82 00 38 */ beq lbl_8012E714
/* 8012E6E0 0012B620  80 1E 06 14 */ lwz r0, 0x614(r30)
/* 8012E6E4 0012B624  28 00 00 10 */ cmplwi r0, 0x10
/* 8012E6E8 0012B628  40 82 00 1C */ bne lbl_8012E704
/* 8012E6EC 0012B62C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8012E6F0 0012B630  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8012E6F4 0012B634  38 63 4F F8 */ addi r3, r3, 0x4ff8
/* 8012E6F8 0012B638  80 9E 31 84 */ lwz r4, 0x3184(r30)
/* 8012E6FC 0012B63C  4B F1 9A 81 */ bl cutEnd__16dEvent_manager_cFi
/* 8012E700 0012B640  48 00 00 38 */ b lbl_8012E738
lbl_8012E704:
/* 8012E704 0012B644  7F C3 F3 78 */ mr r3, r30
/* 8012E708 0012B648  38 80 00 00 */ li r4, 0
/* 8012E70C 0012B64C  4B FF B4 39 */ bl daAlink_c_NS_checkNextActionWolf
/* 8012E710 0012B650  48 00 00 28 */ b lbl_8012E738
lbl_8012E714:
/* 8012E714 0012B654  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 8012E718 0012B658  3C 60 80 39 */ lis r3, lbl_8038F010@ha
/* 8012E71C 0012B65C  38 63 F0 10 */ addi r3, r3, lbl_8038F010@l
/* 8012E720 0012B660  C0 03 00 24 */ lfs f0, 0x24(r3)
/* 8012E724 0012B664  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8012E728 0012B668  40 81 00 10 */ ble lbl_8012E738
/* 8012E72C 0012B66C  7F C3 F3 78 */ mr r3, r30
/* 8012E730 0012B670  38 80 00 01 */ li r4, 1
/* 8012E734 0012B674  4B FF B4 11 */ bl daAlink_c_NS_checkNextActionWolf
lbl_8012E738:
/* 8012E738 0012B678  38 60 00 01 */ li r3, 1
/* 8012E73C 0012B67C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8012E740 0012B680  83 C1 00 08 */ lwz r30, 8(r1)
/* 8012E744 0012B684  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8012E748 0012B688  7C 08 03 A6 */ mtlr r0
/* 8012E74C 0012B68C  38 21 00 10 */ addi r1, r1, 0x10
/* 8012E750 0012B690  4E 80 00 20 */ blr
