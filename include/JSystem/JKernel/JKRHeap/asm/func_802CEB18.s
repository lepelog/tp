/* 802CEB18 002CBA58  38 05 00 03 */	addi r0, r5, 3
/* 802CEB1C 002CBA5C  54 00 F0 BF */	rlwinm. r0, r0, 0x1e, 2, 0x1f
/* 802CEB20 002CBA60  7C 09 03 A6 */	mtctr r0
/* 802CEB24 002CBA64  4D 82 00 20 */	beqlr 
lbl_802CEB28:
/* 802CEB28 002CBA68  80 04 00 00 */	lwz r0, 0(r4)
/* 802CEB2C 002CBA6C  90 03 00 00 */	stw r0, 0(r3)
/* 802CEB30 002CBA70  38 63 00 04 */	addi r3, r3, 4
/* 802CEB34 002CBA74  38 84 00 04 */	addi r4, r4, 4
/* 802CEB38 002CBA78  42 00 FF F0 */	bdnz lbl_802CEB28
/* 802CEB3C 002CBA7C  4E 80 00 20 */	blr 