/* 80056E78 00053DB8  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80056E7C 00053DBC  7C 08 02 A6 */ mflr r0
/* 80056E80 00053DC0  90 01 00 14 */ stw r0, 0x14(r1)
/* 80056E84 00053DC4  7C 64 1B 78 */ mr r4, r3
/* 80056E88 00053DC8  3C 60 80 43 */ lis r3, lbl_80434AC8@ha
/* 80056E8C 00053DCC  38 63 4A C8 */ addi r3, r3, lbl_80434AC8@l
/* 80056E90 00053DD0  38 84 00 10 */ addi r4, r4, 0x10
/* 80056E94 00053DD4  48 01 26 79 */ bl drawCloudShadow__FPA4_fPPUc
/* 80056E98 00053DD8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80056E9C 00053DDC  7C 08 03 A6 */ mtlr r0
/* 80056EA0 00053DE0  38 21 00 10 */ addi r1, r1, 0x10
/* 80056EA4 00053DE4  4E 80 00 20 */ blr