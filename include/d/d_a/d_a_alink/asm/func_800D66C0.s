/* 800D66C0 000D3600  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800D66C4 000D3604  7C 08 02 A6 */ mflr r0
/* 800D66C8 000D3608  90 01 00 24 */ stw r0, 0x24(r1)
/* 800D66CC 000D360C  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 800D66D0 000D3610  93 C1 00 18 */ stw r30, 0x18(r1)
/* 800D66D4 000D3614  7C 7E 1B 78 */ mr r30, r3
/* 800D66D8 000D3618  7C 9F 23 78 */ mr r31, r4
/* 800D66DC 000D361C  38 80 00 31 */ li r4, 0x31
/* 800D66E0 000D3620  4B FE B8 8D */ bl daAlink_c_NS_commonProcInit
/* 800D66E4 000D3624  7F C3 F3 78 */ mr r3, r30
/* 800D66E8 000D3628  48 00 08 F9 */ bl daAlink_c_NS_checkCutLandDamage
/* 800D66EC 000D362C  7F C3 F3 78 */ mr r3, r30
/* 800D66F0 000D3630  38 80 01 8E */ li r4, 0x18e
/* 800D66F4 000D3634  3C A0 80 39 */ lis r5, lbl_8038DE18@ha
/* 800D66F8 000D3638  38 A5 DE 18 */ addi r5, r5, lbl_8038DE18@l
/* 800D66FC 000D363C  38 A5 00 3C */ addi r5, r5, 0x3c
/* 800D6700 000D3640  4B FD 69 F5 */ bl daAlink_c_NS_setSingleAnimeParam
/* 800D6704 000D3644  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800D6708 000D3648  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 800D670C 000D364C  38 00 00 0C */ li r0, 0xc
/* 800D6710 000D3650  98 1E 2F 99 */ stb r0, 0x2f99(r30)
/* 800D6714 000D3654  3C 60 80 42 */ lis r3, lbl_80425544@ha
/* 800D6718 000D3658  C4 03 55 44 */ lfsu f0, lbl_80425544@l(r3)
/* 800D671C 000D365C  D0 1E 35 88 */ stfs f0, 0x3588(r30)
/* 800D6720 000D3660  C0 03 00 04 */ lfs f0, 4(r3)
/* 800D6724 000D3664  D0 1E 35 8C */ stfs f0, 0x358c(r30)
/* 800D6728 000D3668  C0 03 00 08 */ lfs f0, 8(r3)
/* 800D672C 000D366C  D0 1E 35 90 */ stfs f0, 0x3590(r30)
/* 800D6730 000D3670  38 00 00 04 */ li r0, 4
/* 800D6734 000D3674  98 1E 2F 9D */ stb r0, 0x2f9d(r30)
/* 800D6738 000D3678  7F C3 F3 78 */ mr r3, r30
/* 800D673C 000D367C  38 80 00 04 */ li r4, 4
/* 800D6740 000D3680  48 04 AA 81 */ bl daAlink_c_NS_setFootEffectProcType
/* 800D6744 000D3684  80 1E 05 84 */ lwz r0, 0x584(r30)
/* 800D6748 000D3688  60 00 00 30 */ ori r0, r0, 0x30
/* 800D674C 000D368C  90 1E 05 84 */ stw r0, 0x584(r30)
/* 800D6750 000D3690  80 1E 05 80 */ lwz r0, 0x580(r30)
/* 800D6754 000D3694  60 00 00 02 */ ori r0, r0, 2
/* 800D6758 000D3698  90 1E 05 80 */ stw r0, 0x580(r30)
/* 800D675C 000D369C  7F C3 F3 78 */ mr r3, r30
/* 800D6760 000D36A0  38 80 00 13 */ li r4, 0x13
/* 800D6764 000D36A4  4B FF AD C9 */ bl daAlink_c_NS_setCutType
/* 800D6768 000D36A8  3C 60 80 39 */ lis r3, lbl_8038DE18@ha
/* 800D676C 000D36AC  38 63 DE 18 */ addi r3, r3, lbl_8038DE18@l
/* 800D6770 000D36B0  C0 03 00 6C */ lfs f0, 0x6c(r3)
/* 800D6774 000D36B4  D0 1E 34 78 */ stfs f0, 0x3478(r30)
/* 800D6778 000D36B8  C0 02 93 04 */ lfs f0, lbl_80452D04-_SDA2_BASE_(r2)
/* 800D677C 000D36BC  D0 1E 34 7C */ stfs f0, 0x347c(r30)
/* 800D6780 000D36C0  38 00 00 00 */ li r0, 0
/* 800D6784 000D36C4  B0 1E 30 0C */ sth r0, 0x300c(r30)
/* 800D6788 000D36C8  93 FE 31 98 */ stw r31, 0x3198(r30)
/* 800D678C 000D36CC  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800D6790 000D36D0  D0 21 00 08 */ stfs f1, 8(r1)
/* 800D6794 000D36D4  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800D6798 000D36D8  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 800D679C 000D36DC  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 800D67A0 000D36E0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800D67A4 000D36E4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800D67A8 000D36E8  38 63 5B D4 */ addi r3, r3, 0x5bd4
/* 800D67AC 000D36EC  38 80 00 03 */ li r4, 3
/* 800D67B0 000D36F0  38 A0 00 1F */ li r5, 0x1f
/* 800D67B4 000D36F4  38 C1 00 08 */ addi r6, r1, 8
/* 800D67B8 000D36F8  4B F9 92 6D */ bl dVibration_c_NS_StartShock
/* 800D67BC 000D36FC  7F C3 F3 78 */ mr r3, r30
/* 800D67C0 000D3700  48 04 CC 75 */ bl daAlink_c_NS_setCutLargeJumpLandEffect
/* 800D67C4 000D3704  7F C3 F3 78 */ mr r3, r30
/* 800D67C8 000D3708  3C 80 00 02 */ lis r4, 0x000200B3@ha
/* 800D67CC 000D370C  38 84 00 B3 */ addi r4, r4, 0x000200B3@l
/* 800D67D0 000D3710  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 800D67D4 000D3714  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 800D67D8 000D3718  7D 89 03 A6 */ mtctr r12
/* 800D67DC 000D371C  4E 80 04 21 */ bctrl
/* 800D67E0 000D3720  38 60 00 01 */ li r3, 1
/* 800D67E4 000D3724  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 800D67E8 000D3728  83 C1 00 18 */ lwz r30, 0x18(r1)
/* 800D67EC 000D372C  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800D67F0 000D3730  7C 08 03 A6 */ mtlr r0
/* 800D67F4 000D3734  38 21 00 20 */ addi r1, r1, 0x20
/* 800D67F8 000D3738  4E 80 00 20 */ blr