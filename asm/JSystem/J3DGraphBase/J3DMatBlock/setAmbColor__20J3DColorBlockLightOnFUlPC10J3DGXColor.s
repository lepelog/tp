lbl_80322F24:
/* 80322F24  88 05 00 00 */	lbz r0, 0(r5)
/* 80322F28  54 84 10 3A */	slwi r4, r4, 2
/* 80322F2C  7C 63 22 14 */	add r3, r3, r4
/* 80322F30  98 03 00 0C */	stb r0, 0xc(r3)
/* 80322F34  88 05 00 01 */	lbz r0, 1(r5)
/* 80322F38  98 03 00 0D */	stb r0, 0xd(r3)
/* 80322F3C  88 05 00 02 */	lbz r0, 2(r5)
/* 80322F40  98 03 00 0E */	stb r0, 0xe(r3)
/* 80322F44  88 05 00 03 */	lbz r0, 3(r5)
/* 80322F48  98 03 00 0F */	stb r0, 0xf(r3)
/* 80322F4C  4E 80 00 20 */	blr 