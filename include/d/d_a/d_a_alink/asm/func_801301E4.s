/* 801301E4 0012D124  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 801301E8 0012D128  7C 08 02 A6 */ mflr r0
/* 801301EC 0012D12C  90 01 00 14 */ stw r0, 0x14(r1)
/* 801301F0 0012D130  93 E1 00 0C */ stw r31, 0xc(r1)
/* 801301F4 0012D134  7C 7F 1B 78 */ mr r31, r3
/* 801301F8 0012D138  38 80 01 11 */ li r4, 0x111
/* 801301FC 0012D13C  4B F9 2B A9 */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROCNotSameProc
/* 80130200 0012D140  2C 03 00 00 */ cmpwi r3, 0
/* 80130204 0012D144  40 82 00 0C */ bne lbl_80130210
/* 80130208 0012D148  38 60 00 00 */ li r3, 0
/* 8013020C 0012D14C  48 00 00 48 */ b lbl_80130254
lbl_80130210:
/* 80130210 0012D150  7F E3 FB 78 */ mr r3, r31
/* 80130214 0012D154  38 80 00 1C */ li r4, 0x1c
/* 80130218 0012D158  3C A0 80 39 */ lis r5, lbl_8038EE28@ha
/* 8013021C 0012D15C  38 A5 EE 28 */ addi r5, r5, lbl_8038EE28@l
/* 80130220 0012D160  C0 25 00 B8 */ lfs f1, 0xb8(r5)
/* 80130224 0012D164  C0 45 00 BC */ lfs f2, 0xbc(r5)
/* 80130228 0012D168  4B FF 94 B1 */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfWolfBaseSpeed
/* 8013022C 0012D16C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80130230 0012D170  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 80130234 0012D174  7F E3 FB 78 */ mr r3, r31
/* 80130238 0012D178  4B FF BF BD */ bl setWolfWaitSlip__9daAlink_cFv
/* 8013023C 0012D17C  38 00 00 78 */ li r0, 0x78
/* 80130240 0012D180  98 1F 2F 9D */ stb r0, 0x2f9d(r31)
/* 80130244 0012D184  7F E3 FB 78 */ mr r3, r31
/* 80130248 0012D188  38 80 00 01 */ li r4, 1
/* 8013024C 0012D18C  4B FF 0F 75 */ bl setFootEffectProcType__9daAlink_cFi
/* 80130250 0012D190  38 60 00 01 */ li r3, 1
lbl_80130254:
/* 80130254 0012D194  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80130258 0012D198  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8013025C 0012D19C  7C 08 03 A6 */ mtlr r0
/* 80130260 0012D1A0  38 21 00 10 */ addi r1, r1, 0x10
/* 80130264 0012D1A4  4E 80 00 20 */ blr