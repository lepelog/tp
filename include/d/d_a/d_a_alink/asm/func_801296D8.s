/* 801296D8 00126618  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 801296DC 0012661C  7C 08 02 A6 */ mflr r0
/* 801296E0 00126620  90 01 00 14 */ stw r0, 0x14(r1)
/* 801296E4 00126624  FC 60 10 90 */ fmr f3, f2
/* 801296E8 00126628  C0 42 92 C0 */ lfs f2, lbl_80452CC0-_SDA2_BASE_(r2)
/* 801296EC 0012662C  38 A0 FF FF */ li r5, -1
/* 801296F0 00126630  48 00 00 15 */ bl setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
/* 801296F4 00126634  80 01 00 14 */ lwz r0, 0x14(r1)
/* 801296F8 00126638  7C 08 03 A6 */ mtlr r0
/* 801296FC 0012663C  38 21 00 10 */ addi r1, r1, 0x10
/* 80129700 00126640  4E 80 00 20 */ blr
