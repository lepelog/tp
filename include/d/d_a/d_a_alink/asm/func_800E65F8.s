/* 800E65F8 000E3538  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800E65FC 000E353C  7C 08 02 A6 */ mflr r0
/* 800E6600 000E3540  90 01 00 14 */ stw r0, 0x14(r1)
/* 800E6604 000E3544  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800E6608 000E3548  93 C1 00 08 */ stw r30, 8(r1)
/* 800E660C 000E354C  7C 7E 1B 78 */ mr r30, r3
/* 800E6610 000E3550  A8 03 30 0C */ lha r0, 0x300c(r3)
/* 800E6614 000E3554  2C 00 00 01 */ cmpwi r0, 1
/* 800E6618 000E3558  40 82 00 0C */ bne lbl_800E6624
/* 800E661C 000E355C  3B FE 20 18 */ addi r31, r30, 0x2018
/* 800E6620 000E3560  48 00 00 24 */ b lbl_800E6644
lbl_800E6624:
/* 800E6624 000E3564  2C 00 00 02 */ cmpwi r0, 2
/* 800E6628 000E3568  40 82 00 18 */ bne lbl_800E6640
/* 800E662C 000E356C  38 00 00 04 */ li r0, 4
/* 800E6630 000E3570  98 1E 2F 99 */ stb r0, 0x2f99(r30)
/* 800E6634 000E3574  80 1E 05 88 */ lwz r0, 0x588(r30)
/* 800E6638 000E3578  64 00 08 00 */ oris r0, r0, 0x800
/* 800E663C 000E357C  90 1E 05 88 */ stw r0, 0x588(r30)
lbl_800E6640:
/* 800E6640 000E3580  3B FE 1F D0 */ addi r31, r30, 0x1fd0
lbl_800E6644:
/* 800E6644 000E3584  38 7E 33 98 */ addi r3, r30, 0x3398
/* 800E6648 000E3588  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800E664C 000E358C  3C 80 80 39 */ lis r4, lbl_8038D6BC@ha
/* 800E6650 000E3590  38 84 D6 BC */ addi r4, r4, lbl_8038D6BC@l
/* 800E6654 000E3594  C0 44 00 38 */ lfs f2, 0x38(r4)
/* 800E6658 000E3598  48 18 A0 E9 */ bl cLib_chaseF__FPfff
/* 800E665C 000E359C  7F E3 FB 78 */ mr r3, r31
/* 800E6660 000E35A0  C0 3E 34 3C */ lfs f1, 0x343c(r30)
/* 800E6664 000E35A4  48 24 1D C9 */ bl checkPass__12J3DFrameCtrlFf
/* 800E6668 000E35A8  2C 03 00 00 */ cmpwi r3, 0
/* 800E666C 000E35AC  41 82 00 0C */ beq lbl_800E6678
/* 800E6670 000E35B0  7F C3 F3 78 */ mr r3, r30
/* 800E6674 000E35B4  4B FF ED 85 */ bl daAlink_c_NS_setGrabItemThrow
lbl_800E6678:
/* 800E6678 000E35B8  7F E3 FB 78 */ mr r3, r31
/* 800E667C 000E35BC  48 07 7E 51 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800E6680 000E35C0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800E6684 000E35C4  41 82 00 34 */ beq lbl_800E66B8
/* 800E6688 000E35C8  80 1E 31 98 */ lwz r0, 0x3198(r30)
/* 800E668C 000E35CC  2C 00 00 00 */ cmpwi r0, 0
/* 800E6690 000E35D0  41 82 00 18 */ beq lbl_800E66A8
/* 800E6694 000E35D4  38 00 00 00 */ li r0, 0
/* 800E6698 000E35D8  90 1E 31 98 */ stw r0, 0x3198(r30)
/* 800E669C 000E35DC  7F C3 F3 78 */ mr r3, r30
/* 800E66A0 000E35E0  38 80 00 00 */ li r4, 0
/* 800E66A4 000E35E4  4B FD 2D 51 */ bl daAlink_c_NS_swordEquip
lbl_800E66A8:
/* 800E66A8 000E35E8  7F C3 F3 78 */ mr r3, r30
/* 800E66AC 000E35EC  38 80 00 00 */ li r4, 0
/* 800E66B0 000E35F0  4B FD 3A 21 */ bl daAlink_c_NS_checkNextAction
/* 800E66B4 000E35F4  48 00 00 5C */ b lbl_800E6710
lbl_800E66B8:
/* 800E66B8 000E35F8  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800E66BC 000E35FC  C0 1E 34 7C */ lfs f0, 0x347c(r30)
/* 800E66C0 000E3600  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800E66C4 000E3604  40 81 00 4C */ ble lbl_800E6710
/* 800E66C8 000E3608  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800E66CC 000E360C  60 00 00 04 */ ori r0, r0, 4
/* 800E66D0 000E3610  90 1E 31 A0 */ stw r0, 0x31a0(r30)
/* 800E66D4 000E3614  80 1E 31 98 */ lwz r0, 0x3198(r30)
/* 800E66D8 000E3618  2C 00 00 00 */ cmpwi r0, 0
/* 800E66DC 000E361C  41 82 00 28 */ beq lbl_800E6704
/* 800E66E0 000E3620  38 00 00 00 */ li r0, 0
/* 800E66E4 000E3624  90 1E 31 98 */ stw r0, 0x3198(r30)
/* 800E66E8 000E3628  7F C3 F3 78 */ mr r3, r30
/* 800E66EC 000E362C  38 80 00 00 */ li r4, 0
/* 800E66F0 000E3630  4B FD 2D 05 */ bl daAlink_c_NS_swordEquip
/* 800E66F4 000E3634  7F C3 F3 78 */ mr r3, r30
/* 800E66F8 000E3638  38 80 00 00 */ li r4, 0
/* 800E66FC 000E363C  4B FD 39 D5 */ bl daAlink_c_NS_checkNextAction
/* 800E6700 000E3640  48 00 00 10 */ b lbl_800E6710
lbl_800E6704:
/* 800E6704 000E3644  7F C3 F3 78 */ mr r3, r30
/* 800E6708 000E3648  38 80 00 01 */ li r4, 1
/* 800E670C 000E364C  4B FD 39 C5 */ bl daAlink_c_NS_checkNextAction
lbl_800E6710:
/* 800E6710 000E3650  38 60 00 01 */ li r3, 1
/* 800E6714 000E3654  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800E6718 000E3658  83 C1 00 08 */ lwz r30, 8(r1)
/* 800E671C 000E365C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800E6720 000E3660  7C 08 03 A6 */ mtlr r0
/* 800E6724 000E3664  38 21 00 10 */ addi r1, r1, 0x10
/* 800E6728 000E3668  4E 80 00 20 */ blr
