/* 801159F0 00112930  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 801159F4 00112934  7C 08 02 A6 */ mflr r0
/* 801159F8 00112938  90 01 00 14 */ stw r0, 0x14(r1)
/* 801159FC 0011293C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80115A00 00112940  7C 7F 1B 78 */ mr r31, r3
/* 80115A04 00112944  38 80 00 DB */ li r4, 0xdb
/* 80115A08 00112948  4B FA C5 65 */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80115A0C 0011294C  A8 1F 30 18 */ lha r0, 0x3018(r31)
/* 80115A10 00112950  2C 00 00 08 */ cmpwi r0, 8
/* 80115A14 00112954  40 82 00 2C */ bne lbl_80115A40
/* 80115A18 00112958  38 00 00 01 */ li r0, 1
/* 80115A1C 0011295C  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 80115A20 00112960  7F E3 FB 78 */ mr r3, r31
/* 80115A24 00112964  38 80 01 66 */ li r4, 0x166
/* 80115A28 00112968  3C A0 80 39 */ lis r5, lbl_8038EA70@ha
/* 80115A2C 0011296C  38 A5 EA 70 */ addi r5, r5, lbl_8038EA70@l
/* 80115A30 00112970  4B F9 76 C5 */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfParam
/* 80115A34 00112974  38 00 00 0C */ li r0, 0xc
/* 80115A38 00112978  98 1F 2F 99 */ stb r0, 0x2f99(r31)
/* 80115A3C 0011297C  48 00 00 30 */ b lbl_80115A6C
lbl_80115A40:
/* 80115A40 00112980  7F E3 FB 78 */ mr r3, r31
/* 80115A44 00112984  38 80 01 65 */ li r4, 0x165
/* 80115A48 00112988  3C A0 80 39 */ lis r5, lbl_8038EA70@ha
/* 80115A4C 0011298C  38 A5 EA 70 */ addi r5, r5, lbl_8038EA70@l
/* 80115A50 00112990  C0 25 00 3C */ lfs f1, 0x3c(r5)
/* 80115A54 00112994  C0 45 00 40 */ lfs f2, 0x40(r5)
/* 80115A58 00112998  4B F9 75 89 */ bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANMSpeed
/* 80115A5C 0011299C  38 00 00 0C */ li r0, 0xc
/* 80115A60 001129A0  98 1F 2F 99 */ stb r0, 0x2f99(r31)
/* 80115A64 001129A4  38 00 00 00 */ li r0, 0
/* 80115A68 001129A8  B0 1F 30 0C */ sth r0, 0x300c(r31)
lbl_80115A6C:
/* 80115A6C 001129AC  3C 60 80 42 */ lis r3, lbl_8042552C@ha
/* 80115A70 001129B0  C4 03 55 2C */ lfsu f0, lbl_8042552C@l(r3)
/* 80115A74 001129B4  D0 1F 35 88 */ stfs f0, 0x3588(r31)
/* 80115A78 001129B8  C0 03 00 04 */ lfs f0, 4(r3)
/* 80115A7C 001129BC  D0 1F 35 8C */ stfs f0, 0x358c(r31)
/* 80115A80 001129C0  C0 03 00 08 */ lfs f0, 8(r3)
/* 80115A84 001129C4  D0 1F 35 90 */ stfs f0, 0x3590(r31)
/* 80115A88 001129C8  38 60 00 01 */ li r3, 1
/* 80115A8C 001129CC  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80115A90 001129D0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80115A94 001129D4  7C 08 03 A6 */ mtlr r0
/* 80115A98 001129D8  38 21 00 10 */ addi r1, r1, 0x10
/* 80115A9C 001129DC  4E 80 00 20 */ blr