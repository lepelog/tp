/* 800982B4 000951F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800982B8 000951F8  7C 08 02 A6 */	mflr r0
/* 800982BC 000951FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800982C0 00095200  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800982C4 00095204  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 800982C8 00095208  A8 64 5D CA */	lha r3, 0x5dca(r4)
/* 800982CC 0009520C  38 03 00 05 */	addi r0, r3, 5
/* 800982D0 00095210  B0 04 5D CA */	sth r0, 0x5dca(r4)
/* 800982D4 00095214  4B F9 59 D5 */	bl dComIfGs_getMaxLifeGauge__Fv
/* 800982D8 00095218  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 800982DC 0009521C  C8 22 91 E0 */	lfd f1, lbl_80452BE0-_SDA2_BASE_(r2)
/* 800982E0 00095220  90 01 00 0C */	stw r0, 0xc(r1)
/* 800982E4 00095224  3C 00 43 30 */	lis r0, 0x4330
/* 800982E8 00095228  90 01 00 08 */	stw r0, 8(r1)
/* 800982EC 0009522C  C8 01 00 08 */	lfd f0, 8(r1)
/* 800982F0 00095230  EC 20 08 28 */	fsubs f1, f0, f1
/* 800982F4 00095234  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800982F8 00095238  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800982FC 0009523C  C0 03 5D C0 */	lfs f0, 0x5dc0(r3)
/* 80098300 00095240  EC 00 08 2A */	fadds f0, f0, f1
/* 80098304 00095244  D0 03 5D C0 */	stfs f0, 0x5dc0(r3)
/* 80098308 00095248  38 00 00 00 */	li r0, 0
/* 8009830C 0009524C  98 03 5E B6 */	stb r0, 0x5eb6(r3)
/* 80098310 00095250  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 80098314 00095254  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 80098318 00095258  7D 89 03 A6 */	mtctr r12
/* 8009831C 0009525C  4E 80 04 21 */	bctrl 
/* 80098320 00095260  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80098324 00095264  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80098328 00095268  38 63 09 58 */	addi r3, r3, 0x958
/* 8009832C 0009526C  38 80 00 04 */	li r4, 4
/* 80098330 00095270  4B F9 C5 E9 */	bl onDungeonItem__12dSv_memBit_cFi
/* 80098334 00095274  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098338 00095278  7C 08 03 A6 */	mtlr r0
/* 8009833C 0009527C  38 21 00 10 */	addi r1, r1, 0x10
/* 80098340 00095280  4E 80 00 20 */	blr 