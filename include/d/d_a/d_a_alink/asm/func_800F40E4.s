/* 800F40E4 000F1024  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800F40E8 000F1028  7C 08 02 A6 */ mflr r0
/* 800F40EC 000F102C  90 01 00 14 */ stw r0, 0x14(r1)
/* 800F40F0 000F1030  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800F40F4 000F1034  7C 7F 1B 78 */ mr r31, r3
/* 800F40F8 000F1038  38 80 01 FB */ li r4, 0x1fb
/* 800F40FC 000F103C  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800F4100 000F1040  C0 42 92 BC */ lfs f2, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800F4104 000F1044  4B FB 92 A5 */ bl setUpperAnimeBaseSpeed__9daAlink_cFUsff
/* 800F4108 000F1048  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800F410C 000F104C  D0 1F 20 54 */ stfs f0, 0x2054(r31)
/* 800F4110 000F1050  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800F4114 000F1054  D0 1F 1F 50 */ stfs f0, 0x1f50(r31)
/* 800F4118 000F1058  38 00 00 08 */ li r0, 8
/* 800F411C 000F105C  98 1F 2F 97 */ stb r0, 0x2f97(r31)
/* 800F4120 000F1060  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 800F4124 000F1064  54 00 04 5E */ rlwinm r0, r0, 0, 0x11, 0xf
/* 800F4128 000F1068  90 1F 05 74 */ stw r0, 0x574(r31)
/* 800F412C 000F106C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800F4130 000F1070  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800F4134 000F1074  7C 08 03 A6 */ mtlr r0
/* 800F4138 000F1078  38 21 00 10 */ addi r1, r1, 0x10
/* 800F413C 000F107C  4E 80 00 20 */ blr
