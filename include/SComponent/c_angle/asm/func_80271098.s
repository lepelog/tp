/* 80271098 0026DFD8  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8027109C 0026DFDC  C0 42 B8 1C */ lfs f2, lbl_8045521C-_SDA2_BASE_(r2)
/* 802710A0 0026DFE0  A8 03 00 00 */ lha r0, 0(r3)
/* 802710A4 0026DFE4  C8 22 B8 10 */ lfd f1, lbl_80455210-_SDA2_BASE_(r2)
/* 802710A8 0026DFE8  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 802710AC 0026DFEC  90 01 00 0C */ stw r0, 0xc(r1)
/* 802710B0 0026DFF0  3C 00 43 30 */ lis r0, 0x4330
/* 802710B4 0026DFF4  90 01 00 08 */ stw r0, 8(r1)
/* 802710B8 0026DFF8  C8 01 00 08 */ lfd f0, 8(r1)
/* 802710BC 0026DFFC  EC 00 08 28 */ fsubs f0, f0, f1
/* 802710C0 0026E000  EC 22 00 32 */ fmuls f1, f2, f0
/* 802710C4 0026E004  38 21 00 10 */ addi r1, r1, 0x10
/* 802710C8 0026E008  4E 80 00 20 */ blr