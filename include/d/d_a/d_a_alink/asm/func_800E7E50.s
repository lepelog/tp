/* 800E7E50 000E4D90  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800E7E54 000E4D94  7C 08 02 A6 */ mflr r0
/* 800E7E58 000E4D98  90 01 00 14 */ stw r0, 0x14(r1)
/* 800E7E5C 000E4D9C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800E7E60 000E4DA0  7C 7F 1B 78 */ mr r31, r3
/* 800E7E64 000E4DA4  38 80 00 96 */ li r4, 0x96
/* 800E7E68 000E4DA8  38 A0 00 02 */ li r5, 2
/* 800E7E6C 000E4DAC  48 00 00 65 */ bl setWallGrabStatus__9daAlink_cFUcUc
/* 800E7E70 000E4DB0  38 7F 1F D0 */ addi r3, r31, 0x1fd0
/* 800E7E74 000E4DB4  48 07 66 59 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800E7E78 000E4DB8  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800E7E7C 000E4DBC  41 82 00 3C */ beq lbl_800E7EB8
/* 800E7E80 000E4DC0  80 1F 06 14 */ lwz r0, 0x614(r31)
/* 800E7E84 000E4DC4  28 00 00 43 */ cmplwi r0, 0x43
/* 800E7E88 000E4DC8  40 82 00 1C */ bne lbl_800E7EA4
/* 800E7E8C 000E4DCC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800E7E90 000E4DD0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800E7E94 000E4DD4  38 63 4F F8 */ addi r3, r3, 0x4ff8
/* 800E7E98 000E4DD8  80 9F 31 84 */ lwz r4, 0x3184(r31)
/* 800E7E9C 000E4DDC  4B F6 02 E1 */ bl cutEnd__16dEvent_manager_cFi
/* 800E7EA0 000E4DE0  48 00 00 18 */ b lbl_800E7EB8
lbl_800E7EA4:
/* 800E7EA4 000E4DE4  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800E7EA8 000E4DE8  D0 1F 1F 50 */ stfs f0, 0x1f50(r31)
/* 800E7EAC 000E4DEC  7F E3 FB 78 */ mr r3, r31
/* 800E7EB0 000E4DF0  38 80 00 00 */ li r4, 0
/* 800E7EB4 000E4DF4  4B FD 22 1D */ bl checkNextAction__9daAlink_cFi
lbl_800E7EB8:
/* 800E7EB8 000E4DF8  38 60 00 01 */ li r3, 1
/* 800E7EBC 000E4DFC  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800E7EC0 000E4E00  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800E7EC4 000E4E04  7C 08 03 A6 */ mtlr r0
/* 800E7EC8 000E4E08  38 21 00 10 */ addi r1, r1, 0x10
/* 800E7ECC 000E4E0C  4E 80 00 20 */ blr
