/* 801300D4 0012D014  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 801300D8 0012D018  7C 08 02 A6 */ mflr r0
/* 801300DC 0012D01C  90 01 00 14 */ stw r0, 0x14(r1)
/* 801300E0 0012D020  93 E1 00 0C */ stw r31, 0xc(r1)
/* 801300E4 0012D024  7C 7F 1B 78 */ mr r31, r3
/* 801300E8 0012D028  38 80 01 10 */ li r4, 0x110
/* 801300EC 0012D02C  4B F9 1E 81 */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 801300F0 0012D030  7F E3 FB 78 */ mr r3, r31
/* 801300F4 0012D034  38 80 00 1F */ li r4, 0x1f
/* 801300F8 0012D038  3C A0 80 39 */ lis r5, lbl_8038F3F0@ha
/* 801300FC 0012D03C  38 A5 F3 F0 */ addi r5, r5, lbl_8038F3F0@l
/* 80130100 0012D040  38 A5 00 28 */ addi r5, r5, 0x28
/* 80130104 0012D044  4B FF 97 45 */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfWolfParam
/* 80130108 0012D048  C0 3F 33 98 */ lfs f1, 0x3398(r31)
/* 8013010C 0012D04C  C0 02 92 98 */ lfs f0, lbl_80452C98-_SDA2_BASE_(r2)
/* 80130110 0012D050  EC 01 00 32 */ fmuls f0, f1, f0
/* 80130114 0012D054  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 80130118 0012D058  38 00 00 FF */ li r0, 0xff
/* 8013011C 0012D05C  98 1F 08 28 */ stb r0, 0x828(r31)
/* 80130120 0012D060  38 60 00 01 */ li r3, 1
/* 80130124 0012D064  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80130128 0012D068  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8013012C 0012D06C  7C 08 03 A6 */ mtlr r0
/* 80130130 0012D070  38 21 00 10 */ addi r1, r1, 0x10
/* 80130134 0012D074  4E 80 00 20 */ blr