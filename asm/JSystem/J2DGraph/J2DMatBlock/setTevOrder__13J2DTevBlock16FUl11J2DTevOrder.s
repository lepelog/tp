lbl_802F1D5C:
/* 802F1D5C  88 05 00 00 */	lbz r0, 0(r5)
/* 802F1D60  54 84 10 3A */	slwi r4, r4, 2
/* 802F1D64  7C 63 22 14 */	add r3, r3, r4
/* 802F1D68  98 03 00 16 */	stb r0, 0x16(r3)
/* 802F1D6C  88 05 00 01 */	lbz r0, 1(r5)
/* 802F1D70  98 03 00 17 */	stb r0, 0x17(r3)
/* 802F1D74  88 05 00 02 */	lbz r0, 2(r5)
/* 802F1D78  98 03 00 18 */	stb r0, 0x18(r3)
/* 802F1D7C  4E 80 00 20 */	blr 