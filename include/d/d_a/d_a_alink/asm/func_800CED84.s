/* 800CED84 000CBCC4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800CED88 000CBCC8  7C 08 02 A6 */ mflr r0
/* 800CED8C 000CBCCC  90 01 00 14 */ stw r0, 0x14(r1)
/* 800CED90 000CBCD0  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800CED94 000CBCD4  7C 7F 1B 78 */ mr r31, r3
/* 800CED98 000CBCD8  38 80 01 3E */ li r4, 0x13e
/* 800CED9C 000CBCDC  4B FF 31 D1 */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800CEDA0 000CBCE0  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800CEDA4 000CBCE4  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 800CEDA8 000CBCE8  7F E3 FB 78 */ mr r3, r31
/* 800CEDAC 000CBCEC  4B FF FD 49 */ bl setSubjectMode__9daAlink_cFv
/* 800CEDB0 000CBCF0  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 800CEDB4 000CBCF4  B0 1F 2F E6 */ sth r0, 0x2fe6(r31)
/* 800CEDB8 000CBCF8  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 800CEDBC 000CBCFC  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800CEDC0 000CBD00  41 82 00 1C */ beq lbl_800CEDDC
/* 800CEDC4 000CBD04  7F E3 FB 78 */ mr r3, r31
/* 800CEDC8 000CBD08  38 80 00 00 */ li r4, 0
/* 800CEDCC 000CBD0C  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800CEDD0 000CBD10  C0 42 92 C4 */ lfs f2, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800CEDD4 000CBD14  48 05 A9 05 */ bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 800CEDD8 000CBD18  48 00 00 18 */ b lbl_800CEDF0
lbl_800CEDDC:
/* 800CEDDC 000CBD1C  7F E3 FB 78 */ mr r3, r31
/* 800CEDE0 000CBD20  38 80 00 19 */ li r4, 0x19
/* 800CEDE4 000CBD24  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800CEDE8 000CBD28  C0 42 92 C4 */ lfs f2, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800CEDEC 000CBD2C  4B FD E1 F5 */ bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
lbl_800CEDF0:
/* 800CEDF0 000CBD30  38 60 00 01 */ li r3, 1
/* 800CEDF4 000CBD34  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800CEDF8 000CBD38  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800CEDFC 000CBD3C  7C 08 03 A6 */ mtlr r0
/* 800CEE00 000CBD40  38 21 00 10 */ addi r1, r1, 0x10
/* 800CEE04 000CBD44  4E 80 00 20 */ blr