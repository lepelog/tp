lbl_801D1D50:
/* 801D1D50  A8 64 00 00 */	lha r3, 0(r4)
/* 801D1D54  38 03 00 01 */	addi r0, r3, 1
/* 801D1D58  B0 04 00 00 */	sth r0, 0(r4)
/* 801D1D5C  A8 64 00 00 */	lha r3, 0(r4)
/* 801D1D60  2C 03 00 1E */	cmpwi r3, 0x1e
/* 801D1D64  4D 80 00 20 */	bltlr 
/* 801D1D68  38 03 FF E2 */	addi r0, r3, -30
/* 801D1D6C  B0 04 00 00 */	sth r0, 0(r4)
/* 801D1D70  4E 80 00 20 */	blr 