/* 800E11D8 000DE118  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800E11DC 000DE11C  7C 08 02 A6 */ mflr r0
/* 800E11E0 000DE120  90 01 00 14 */ stw r0, 0x14(r1)
/* 800E11E4 000DE124  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800E11E8 000DE128  7C 7F 1B 78 */ mr r31, r3
/* 800E11EC 000DE12C  38 80 00 62 */ li r4, 0x62
/* 800E11F0 000DE130  4B FE 1B B5 */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROCNotSameProc
/* 800E11F4 000DE134  2C 03 00 00 */ cmpwi r3, 0
/* 800E11F8 000DE138  40 82 00 0C */ bne lbl_800E1204
/* 800E11FC 000DE13C  38 60 00 00 */ li r3, 0
/* 800E1200 000DE140  48 00 00 34 */ b lbl_800E1234
lbl_800E1204:
/* 800E1204 000DE144  7F E3 FB 78 */ mr r3, r31
/* 800E1208 000DE148  38 80 00 BB */ li r4, 0xbb
/* 800E120C 000DE14C  3C A0 80 39 */ lis r5, lbl_8038E6C8@ha
/* 800E1210 000DE150  38 A5 E6 C8 */ addi r5, r5, lbl_8038E6C8@l
/* 800E1214 000DE154  38 A5 00 14 */ addi r5, r5, 0x14
/* 800E1218 000DE158  4B FC BE DD */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfParam
/* 800E121C 000DE15C  7F E3 FB 78 */ mr r3, r31
/* 800E1220 000DE160  4B FF F4 11 */ bl setBoomerangCatchAnime__9daAlink_cFv
/* 800E1224 000DE164  80 1F 05 70 */ lwz r0, 0x570(r31)
/* 800E1228 000DE168  54 00 06 F2 */ rlwinm r0, r0, 0, 0x1b, 0x19
/* 800E122C 000DE16C  90 1F 05 70 */ stw r0, 0x570(r31)
/* 800E1230 000DE170  38 60 00 01 */ li r3, 1
lbl_800E1234:
/* 800E1234 000DE174  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800E1238 000DE178  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800E123C 000DE17C  7C 08 03 A6 */ mtlr r0
/* 800E1240 000DE180  38 21 00 10 */ addi r1, r1, 0x10
/* 800E1244 000DE184  4E 80 00 20 */ blr