lbl_80618620:
/* 80618620  3C 60 80 62 */	lis r3, lit_3788@ha
/* 80618624  C0 03 AD 90 */	lfs f0, lit_3788@l(r3)
/* 80618628  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8061862C  4C 81 00 20 */	blelr 
/* 80618630  FC 00 08 34 */	frsqrte f0, f1
/* 80618634  EC 20 00 72 */	fmuls f1, f0, f1
/* 80618638  4E 80 00 20 */	blr 