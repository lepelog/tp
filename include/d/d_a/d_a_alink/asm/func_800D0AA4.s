/* 800D0AA4 000CD9E4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800D0AA8 000CD9E8  7C 08 02 A6 */ mflr r0
/* 800D0AAC 000CD9EC  90 01 00 14 */ stw r0, 0x14(r1)
/* 800D0AB0 000CD9F0  38 80 00 5E */ li r4, 0x5e
/* 800D0AB4 000CD9F4  48 05 7D 59 */ bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANMWolf
/* 800D0AB8 000CD9F8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800D0ABC 000CD9FC  7C 08 03 A6 */ mtlr r0
/* 800D0AC0 000CDA00  38 21 00 10 */ addi r1, r1, 0x10
/* 800D0AC4 000CDA04  4E 80 00 20 */ blr