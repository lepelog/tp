/* 800C6850 000C3790  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800C6854 000C3794  7C 08 02 A6 */ mflr r0
/* 800C6858 000C3798  90 01 00 14 */ stw r0, 0x14(r1)
/* 800C685C 000C379C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800C6860 000C37A0  7C 7F 1B 78 */ mr r31, r3
/* 800C6864 000C37A4  38 80 00 17 */ li r4, 0x17
/* 800C6868 000C37A8  4B FF B7 05 */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C686C 000C37AC  7F E3 FB 78 */ mr r3, r31
/* 800C6870 000C37B0  38 80 00 EF */ li r4, 0xef
/* 800C6874 000C37B4  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800C6878 000C37B8  3C A0 80 39 */ lis r5, lbl_8038E068@ha
/* 800C687C 000C37BC  38 A5 E0 68 */ addi r5, r5, lbl_8038E068@l
/* 800C6880 000C37C0  C0 45 00 80 */ lfs f2, 0x80(r5)
/* 800C6884 000C37C4  4B FE 67 5D */ bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANMSpeed
/* 800C6888 000C37C8  C0 1F 34 10 */ lfs f0, 0x3410(r31)
/* 800C688C 000C37CC  D0 1F 34 78 */ stfs f0, 0x3478(r31)
/* 800C6890 000C37D0  C0 1F 34 10 */ lfs f0, 0x3410(r31)
/* 800C6894 000C37D4  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 800C6898 000C37D8  C0 1F 34 14 */ lfs f0, 0x3414(r31)
/* 800C689C 000C37DC  D0 1F 04 FC */ stfs f0, 0x4fc(r31)
/* 800C68A0 000C37E0  A8 1F 30 EE */ lha r0, 0x30ee(r31)
/* 800C68A4 000C37E4  B0 1F 2F E6 */ sth r0, 0x2fe6(r31)
/* 800C68A8 000C37E8  A8 1F 30 EE */ lha r0, 0x30ee(r31)
/* 800C68AC 000C37EC  B0 1F 04 E6 */ sth r0, 0x4e6(r31)
/* 800C68B0 000C37F0  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 800C68B4 000C37F4  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 800C68B8 000C37F8  80 1F 19 9C */ lwz r0, 0x199c(r31)
/* 800C68BC 000C37FC  54 00 06 F2 */ rlwinm r0, r0, 0, 0x1b, 0x19
/* 800C68C0 000C3800  90 1F 19 9C */ stw r0, 0x199c(r31)
/* 800C68C4 000C3804  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800C68C8 000C3808  D0 1F 34 7C */ stfs f0, 0x347c(r31)
/* 800C68CC 000C380C  38 00 00 01 */ li r0, 1
/* 800C68D0 000C3810  B0 1F 04 E4 */ sth r0, 0x4e4(r31)
/* 800C68D4 000C3814  7F E3 FB 78 */ mr r3, r31
/* 800C68D8 000C3818  3C 80 00 01 */ lis r4, 0x00010025@ha
/* 800C68DC 000C381C  38 84 00 25 */ addi r4, r4, 0x00010025@l
/* 800C68E0 000C3820  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800C68E4 000C3824  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 800C68E8 000C3828  7D 89 03 A6 */ mtctr r12
/* 800C68EC 000C382C  4E 80 04 21 */ bctrl
/* 800C68F0 000C3830  7F E3 FB 78 */ mr r3, r31
/* 800C68F4 000C3834  3C 80 00 02 */ lis r4, 0x0002005B@ha
/* 800C68F8 000C3838  38 84 00 5B */ addi r4, r4, 0x0002005B@l
/* 800C68FC 000C383C  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800C6900 000C3840  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 800C6904 000C3844  7D 89 03 A6 */ mtctr r12
/* 800C6908 000C3848  4E 80 04 21 */ bctrl
/* 800C690C 000C384C  38 00 00 01 */ li r0, 1
/* 800C6910 000C3850  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 800C6914 000C3854  38 60 00 01 */ li r3, 1
/* 800C6918 000C3858  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800C691C 000C385C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800C6920 000C3860  7C 08 03 A6 */ mtlr r0
/* 800C6924 000C3864  38 21 00 10 */ addi r1, r1, 0x10
/* 800C6928 000C3868  4E 80 00 20 */ blr