/* 800E57AC 000E26EC  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800E57B0 000E26F0  7C 08 02 A6 */ mflr r0
/* 800E57B4 000E26F4  90 01 00 24 */ stw r0, 0x24(r1)
/* 800E57B8 000E26F8  DB E1 00 10 */ stfd f31, 0x10(r1)
/* 800E57BC 000E26FC  F3 E1 00 18 */ psq_st f31, 24(r1), 0, 0
/* 800E57C0 000E2700  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800E57C4 000E2704  7C 7F 1B 78 */ mr r31, r3
/* 800E57C8 000E2708  FF E0 08 90 */ fmr f31, f1
/* 800E57CC 000E270C  38 7F 20 48 */ addi r3, r31, 0x2048
/* 800E57D0 000E2710  48 07 8C FD */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800E57D4 000E2714  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800E57D8 000E2718  41 82 00 1C */ beq lbl_800E57F4
/* 800E57DC 000E271C  7F E3 FB 78 */ mr r3, r31
/* 800E57E0 000E2720  38 80 00 02 */ li r4, 2
/* 800E57E4 000E2724  FC 20 F8 90 */ fmr f1, f31
/* 800E57E8 000E2728  4B FC 7F 3D */ bl daAlink_c_NS_resetUpperAnime
/* 800E57EC 000E272C  38 60 00 01 */ li r3, 1
/* 800E57F0 000E2730  48 00 00 24 */ b lbl_800E5814
lbl_800E57F4:
/* 800E57F4 000E2734  38 7F 20 48 */ addi r3, r31, 0x2048
/* 800E57F8 000E2738  C0 3F 34 3C */ lfs f1, 0x343c(r31)
/* 800E57FC 000E273C  48 24 2C 31 */ bl checkPass__12J3DFrameCtrlFf
/* 800E5800 000E2740  2C 03 00 00 */ cmpwi r3, 0
/* 800E5804 000E2744  41 82 00 0C */ beq lbl_800E5810
/* 800E5808 000E2748  7F E3 FB 78 */ mr r3, r31
/* 800E580C 000E274C  4B FF FB ED */ bl daAlink_c_NS_setGrabItemThrow
lbl_800E5810:
/* 800E5810 000E2750  38 60 00 00 */ li r3, 0
lbl_800E5814:
/* 800E5814 000E2754  E3 E1 00 18 */ psq_l f31, 24(r1), 0, 0
/* 800E5818 000E2758  CB E1 00 10 */ lfd f31, 0x10(r1)
/* 800E581C 000E275C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800E5820 000E2760  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800E5824 000E2764  7C 08 03 A6 */ mtlr r0
/* 800E5828 000E2768  38 21 00 20 */ addi r1, r1, 0x20
/* 800E582C 000E276C  4E 80 00 20 */ blr
