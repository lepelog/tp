lbl_8026F624:
/* 8026F624  C0 04 00 00 */	lfs f0, 0(r4)
/* 8026F628  D0 03 00 00 */	stfs f0, 0(r3)
/* 8026F62C  C0 04 00 04 */	lfs f0, 4(r4)
/* 8026F630  D0 03 00 04 */	stfs f0, 4(r3)
/* 8026F634  C0 04 00 08 */	lfs f0, 8(r4)
/* 8026F638  D0 03 00 08 */	stfs f0, 8(r3)
/* 8026F63C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8026F640  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8026F644  4E 80 00 20 */	blr 