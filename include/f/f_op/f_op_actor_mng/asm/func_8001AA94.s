/* 8001AA94 000179D4  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8001AA98 000179D8  7C 08 02 A6 */ mflr r0
/* 8001AA9C 000179DC  90 01 00 24 */ stw r0, 0x24(r1)
/* 8001AAA0 000179E0  38 A3 04 D0 */ addi r5, r3, 0x4d0
/* 8001AAA4 000179E4  38 84 04 D0 */ addi r4, r4, 0x4d0
/* 8001AAA8 000179E8  38 61 00 14 */ addi r3, r1, 0x14
/* 8001AAAC 000179EC  48 24 C0 89 */ bl __mi__4cXyzCFRC3Vec
/* 8001AAB0 000179F0  C0 01 00 14 */ lfs f0, 0x14(r1)
/* 8001AAB4 000179F4  D0 01 00 08 */ stfs f0, 8(r1)
/* 8001AAB8 000179F8  C0 02 82 04 */ lfs f0, lbl_80451C04-_SDA2_BASE_(r2)
/* 8001AABC 000179FC  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 8001AAC0 00017A00  C0 01 00 1C */ lfs f0, 0x1c(r1)
/* 8001AAC4 00017A04  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 8001AAC8 00017A08  38 61 00 08 */ addi r3, r1, 8
/* 8001AACC 00017A0C  48 32 C6 6D */ bl PSVECSquareMag
/* 8001AAD0 00017A10  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8001AAD4 00017A14  7C 08 03 A6 */ mtlr r0
/* 8001AAD8 00017A18  38 21 00 20 */ addi r1, r1, 0x20
/* 8001AADC 00017A1C  4E 80 00 20 */ blr