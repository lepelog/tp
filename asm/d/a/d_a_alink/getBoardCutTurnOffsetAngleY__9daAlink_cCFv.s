lbl_800D0860:
/* 800D0860  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D0864  28 00 00 AD */	cmplwi r0, 0xad
/* 800D0868  40 82 00 0C */	bne lbl_800D0874
/* 800D086C  A8 63 30 12 */	lha r3, 0x3012(r3)
/* 800D0870  4E 80 00 20 */	blr 
lbl_800D0874:
/* 800D0874  38 60 00 00 */	li r3, 0
/* 800D0878  4E 80 00 20 */	blr 