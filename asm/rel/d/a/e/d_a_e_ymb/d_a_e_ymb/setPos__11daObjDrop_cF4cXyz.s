lbl_8082187C:
/* 8082187C  C0 04 00 00 */	lfs f0, 0(r4)
/* 80821880  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 80821884  C0 04 00 04 */	lfs f0, 4(r4)
/* 80821888  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 8082188C  C0 04 00 08 */	lfs f0, 8(r4)
/* 80821890  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 80821894  4E 80 00 20 */	blr 