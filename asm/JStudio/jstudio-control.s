.include "macros.inc"

.section .text, "ax" # 80285114


.global __ct__Q27JStudio8TControlFv
__ct__Q27JStudio8TControlFv:
/* 80285114 00282054  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80285118 00282058  7C 08 02 A6 */	mflr r0
/* 8028511C 0028205C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80285120 00282060  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80285124 00282064  7C 7F 1B 78 */	mr r31, r3
/* 80285128 00282068  48 00 3F 8D */	bl __ct__Q37JStudio3stb8TControlFv
/* 8028512C 0028206C  3C 60 80 3C */	lis r3, lbl_803C4AF4@ha
/* 80285130 00282070  38 03 4A F4 */	addi r0, r3, lbl_803C4AF4@l
/* 80285134 00282074  90 1F 00 00 */	stw r0, 0(r31)
/* 80285138 00282078  38 7F 00 60 */	addi r3, r31, 0x60
/* 8028513C 0028207C  4B FF F5 2D */	bl __ct__Q37JStudio3fvb8TControlFv
/* 80285140 00282080  38 7F 00 74 */	addi r3, r31, 0x74
/* 80285144 00282084  4B FF BE 81 */	bl __ct__Q37JStudio3ctb8TControlFv
/* 80285148 00282088  38 00 00 00 */	li r0, 0
/* 8028514C 0028208C  98 1F 00 88 */	stb r0, 0x88(r31)
/* 80285150 00282090  98 1F 00 89 */	stb r0, 0x89(r31)
/* 80285154 00282094  3C 60 80 3A */	lis r3, lbl_8039AA40@ha
/* 80285158 00282098  38 83 AA 40 */	addi r4, r3, lbl_8039AA40@l
/* 8028515C 0028209C  80 64 00 00 */	lwz r3, 0(r4)
/* 80285160 002820A0  80 04 00 04 */	lwz r0, 4(r4)
/* 80285164 002820A4  90 61 00 08 */	stw r3, 8(r1)
/* 80285168 002820A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8028516C 002820AC  80 04 00 08 */	lwz r0, 8(r4)
/* 80285170 002820B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80285174 002820B4  7F E3 FB 78 */	mr r3, r31
/* 80285178 002820B8  38 81 00 08 */	addi r4, r1, 8
/* 8028517C 002820BC  C0 22 BA 58 */	lfs f1, lbl_80455458-_SDA2_BASE_(r2)
/* 80285180 002820C0  48 00 00 D1 */	bl transformOnSet_setOrigin_TxyzRy__Q27JStudio8TControlFRC3Vecf
/* 80285184 002820C4  7F E3 FB 78 */	mr r3, r31
/* 80285188 002820C8  38 81 00 08 */	addi r4, r1, 8
/* 8028518C 002820CC  C0 22 BA 58 */	lfs f1, lbl_80455458-_SDA2_BASE_(r2)
/* 80285190 002820D0  48 00 01 41 */	bl transformOnGet_setOrigin_TxyzRy__Q27JStudio8TControlFRC3Vecf
/* 80285194 002820D4  7F E3 FB 78 */	mr r3, r31
/* 80285198 002820D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8028519C 002820DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802851A0 002820E0  7C 08 03 A6 */	mtlr r0
/* 802851A4 002820E4  38 21 00 20 */	addi r1, r1, 0x20
/* 802851A8 002820E8  4E 80 00 20 */	blr 
/* 802851AC 002820EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802851B0 002820F0  7C 08 02 A6 */	mflr r0
/* 802851B4 002820F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802851B8 002820F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802851BC 002820FC  93 C1 00 08 */	stw r30, 8(r1)
/* 802851C0 00282100  7C 7E 1B 79 */	or. r30, r3, r3
/* 802851C4 00282104  7C 9F 23 78 */	mr r31, r4
/* 802851C8 00282108  41 82 00 44 */	beq lbl_8028520C
/* 802851CC 0028210C  3C 60 80 3C */	lis r3, lbl_803C4AF4@ha
/* 802851D0 00282110  38 03 4A F4 */	addi r0, r3, lbl_803C4AF4@l
/* 802851D4 00282114  90 1E 00 00 */	stw r0, 0(r30)
/* 802851D8 00282118  38 7E 00 74 */	addi r3, r30, 0x74
/* 802851DC 0028211C  38 80 FF FF */	li r4, -1
/* 802851E0 00282120  4B FF BE 15 */	bl __dt__Q37JStudio3ctb8TControlFv
/* 802851E4 00282124  38 7E 00 60 */	addi r3, r30, 0x60
/* 802851E8 00282128  38 80 FF FF */	li r4, -1
/* 802851EC 0028212C  4B FF F4 AD */	bl __dt__Q37JStudio3fvb8TControlFv
/* 802851F0 00282130  7F C3 F3 78 */	mr r3, r30
/* 802851F4 00282134  38 80 00 00 */	li r4, 0
/* 802851F8 00282138  48 00 3F 9D */	bl __dt__Q37JStudio3stb8TControlFv
/* 802851FC 0028213C  7F E0 07 35 */	extsh. r0, r31
/* 80285200 00282140  40 81 00 0C */	ble lbl_8028520C
/* 80285204 00282144  7F C3 F3 78 */	mr r3, r30
/* 80285208 00282148  48 04 9B 35 */	bl __dl__FPv
lbl_8028520C:
/* 8028520C 0028214C  7F C3 F3 78 */	mr r3, r30
/* 80285210 00282150  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80285214 00282154  83 C1 00 08 */	lwz r30, 8(r1)
/* 80285218 00282158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028521C 0028215C  7C 08 03 A6 */	mtlr r0
/* 80285220 00282160  38 21 00 10 */	addi r1, r1, 0x10
/* 80285224 00282164  4E 80 00 20 */	blr 

.global setFactory__Q27JStudio8TControlFPQ27JStudio8TFactory
setFactory__Q27JStudio8TControlFPQ27JStudio8TFactory:
/* 80285228 00282168  38 00 00 00 */	li r0, 0
/* 8028522C 0028216C  38 A0 00 00 */	li r5, 0
/* 80285230 00282170  28 04 00 00 */	cmplwi r4, 0
/* 80285234 00282174  41 82 00 0C */	beq lbl_80285240
/* 80285238 00282178  38 04 00 10 */	addi r0, r4, 0x10
/* 8028523C 0028217C  38 A4 00 14 */	addi r5, r4, 0x14
lbl_80285240:
/* 80285240 00282180  90 83 00 0C */	stw r4, 0xc(r3)
/* 80285244 00282184  90 03 00 64 */	stw r0, 0x64(r3)
/* 80285248 00282188  90 A3 00 78 */	stw r5, 0x78(r3)
/* 8028524C 0028218C  4E 80 00 20 */	blr 

.global transformOnSet_setOrigin_TxyzRy__Q27JStudio8TControlFRC3Vecf
transformOnSet_setOrigin_TxyzRy__Q27JStudio8TControlFRC3Vecf:
/* 80285250 00282190  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80285254 00282194  7C 08 02 A6 */	mflr r0
/* 80285258 00282198  90 01 00 44 */	stw r0, 0x44(r1)
/* 8028525C 0028219C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80285260 002821A0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80285264 002821A4  7C 7E 1B 78 */	mr r30, r3
/* 80285268 002821A8  7C 9F 23 78 */	mr r31, r4
/* 8028526C 002821AC  C0 04 00 00 */	lfs f0, 0(r4)
/* 80285270 002821B0  D0 03 00 8C */	stfs f0, 0x8c(r3)
/* 80285274 002821B4  C0 04 00 04 */	lfs f0, 4(r4)
/* 80285278 002821B8  D0 03 00 90 */	stfs f0, 0x90(r3)
/* 8028527C 002821BC  C0 04 00 08 */	lfs f0, 8(r4)
/* 80285280 002821C0  D0 03 00 94 */	stfs f0, 0x94(r3)
/* 80285284 002821C4  D0 23 00 A4 */	stfs f1, 0xa4(r3)
/* 80285288 002821C8  38 61 00 08 */	addi r3, r1, 8
/* 8028528C 002821CC  38 80 00 79 */	li r4, 0x79
/* 80285290 002821D0  C0 02 BA 5C */	lfs f0, lbl_8045545C-_SDA2_BASE_(r2)
/* 80285294 002821D4  EC 20 00 72 */	fmuls f1, f0, f1
/* 80285298 002821D8  48 0C 14 11 */	bl PSMTXRotRad
/* 8028529C 002821DC  38 61 00 08 */	addi r3, r1, 8
/* 802852A0 002821E0  38 9E 00 AC */	addi r4, r30, 0xac
/* 802852A4 002821E4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 802852A8 002821E8  C0 5F 00 04 */	lfs f2, 4(r31)
/* 802852AC 002821EC  C0 7F 00 08 */	lfs f3, 8(r31)
/* 802852B0 002821F0  48 0C 16 6D */	bl PSMTXTransApply
/* 802852B4 002821F4  38 60 00 01 */	li r3, 1
/* 802852B8 002821F8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802852BC 002821FC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802852C0 00282200  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802852C4 00282204  7C 08 03 A6 */	mtlr r0
/* 802852C8 00282208  38 21 00 40 */	addi r1, r1, 0x40
/* 802852CC 0028220C  4E 80 00 20 */	blr 

.global transformOnGet_setOrigin_TxyzRy__Q27JStudio8TControlFRC3Vecf
transformOnGet_setOrigin_TxyzRy__Q27JStudio8TControlFRC3Vecf:
/* 802852D0 00282210  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802852D4 00282214  7C 08 02 A6 */	mflr r0
/* 802852D8 00282218  90 01 00 84 */	stw r0, 0x84(r1)
/* 802852DC 0028221C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 802852E0 00282220  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 802852E4 00282224  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 802852E8 00282228  7C 7F 1B 78 */	mr r31, r3
/* 802852EC 0028222C  FF E0 08 90 */	fmr f31, f1
/* 802852F0 00282230  C0 24 00 00 */	lfs f1, 0(r4)
/* 802852F4 00282234  D0 23 00 98 */	stfs f1, 0x98(r3)
/* 802852F8 00282238  C0 44 00 04 */	lfs f2, 4(r4)
/* 802852FC 0028223C  D0 43 00 9C */	stfs f2, 0x9c(r3)
/* 80285300 00282240  C0 04 00 08 */	lfs f0, 8(r4)
/* 80285304 00282244  D0 03 00 A0 */	stfs f0, 0xa0(r3)
/* 80285308 00282248  D3 E3 00 A8 */	stfs f31, 0xa8(r3)
/* 8028530C 0028224C  38 61 00 38 */	addi r3, r1, 0x38
/* 80285310 00282250  FC 20 08 50 */	fneg f1, f1
/* 80285314 00282254  FC 40 10 50 */	fneg f2, f2
/* 80285318 00282258  FC 60 00 50 */	fneg f3, f0
/* 8028531C 0028225C  48 0C 15 CD */	bl PSMTXTrans
/* 80285320 00282260  38 61 00 08 */	addi r3, r1, 8
/* 80285324 00282264  38 80 00 79 */	li r4, 0x79
/* 80285328 00282268  C0 22 BA 5C */	lfs f1, lbl_8045545C-_SDA2_BASE_(r2)
/* 8028532C 0028226C  FC 00 F8 50 */	fneg f0, f31
/* 80285330 00282270  EC 21 00 32 */	fmuls f1, f1, f0
/* 80285334 00282274  48 0C 13 75 */	bl PSMTXRotRad
/* 80285338 00282278  38 61 00 08 */	addi r3, r1, 8
/* 8028533C 0028227C  38 81 00 38 */	addi r4, r1, 0x38
/* 80285340 00282280  38 BF 00 DC */	addi r5, r31, 0xdc
/* 80285344 00282284  48 0C 11 A1 */	bl PSMTXConcat
/* 80285348 00282288  38 60 00 01 */	li r3, 1
/* 8028534C 0028228C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 80285350 00282290  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80285354 00282294  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80285358 00282298  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8028535C 0028229C  7C 08 03 A6 */	mtlr r0
/* 80285360 002822A0  38 21 00 80 */	addi r1, r1, 0x80
/* 80285364 002822A4  4E 80 00 20 */	blr 

.global transform_setOrigin_ctb__Q27JStudio8TControlFRCQ37JStudio3ctb7TObject
transform_setOrigin_ctb__Q27JStudio8TControlFRCQ37JStudio3ctb7TObject:
/* 80285368 002822A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8028536C 002822AC  7C 08 02 A6 */	mflr r0
/* 80285370 002822B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80285374 002822B4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80285378 002822B8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8028537C 002822BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80285380 002822C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80285384 002822C4  7C 7E 1B 78 */	mr r30, r3
/* 80285388 002822C8  7C 9F 23 78 */	mr r31, r4
/* 8028538C 002822CC  7F E3 FB 78 */	mr r3, r31
/* 80285390 002822D0  81 9F 00 08 */	lwz r12, 8(r31)
/* 80285394 002822D4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80285398 002822D8  7D 89 03 A6 */	mtctr r12
/* 8028539C 002822DC  4E 80 04 21 */	bctrl 
/* 802853A0 002822E0  2C 03 00 01 */	cmpwi r3, 1
/* 802853A4 002822E4  41 82 00 08 */	beq lbl_802853AC
/* 802853A8 002822E8  48 00 00 68 */	b lbl_80285410
lbl_802853AC:
/* 802853AC 002822EC  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 802853B0 002822F0  3C 60 80 3A */	lis r3, lbl_8039AA4C@ha
/* 802853B4 002822F4  38 83 AA 4C */	addi r4, r3, lbl_8039AA4C@l
/* 802853B8 002822F8  80 64 00 00 */	lwz r3, 0(r4)
/* 802853BC 002822FC  80 04 00 04 */	lwz r0, 4(r4)
/* 802853C0 00282300  90 61 00 08 */	stw r3, 8(r1)
/* 802853C4 00282304  90 01 00 0C */	stw r0, 0xc(r1)
/* 802853C8 00282308  80 04 00 08 */	lwz r0, 8(r4)
/* 802853CC 0028230C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802853D0 00282310  C0 05 00 00 */	lfs f0, 0(r5)
/* 802853D4 00282314  D0 01 00 08 */	stfs f0, 8(r1)
/* 802853D8 00282318  C0 05 00 04 */	lfs f0, 4(r5)
/* 802853DC 0028231C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802853E0 00282320  C0 05 00 08 */	lfs f0, 8(r5)
/* 802853E4 00282324  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802853E8 00282328  C3 E5 00 0C */	lfs f31, 0xc(r5)
/* 802853EC 0028232C  7F C3 F3 78 */	mr r3, r30
/* 802853F0 00282330  38 81 00 08 */	addi r4, r1, 8
/* 802853F4 00282334  FC 20 F8 90 */	fmr f1, f31
/* 802853F8 00282338  4B FF FE 59 */	bl transformOnSet_setOrigin_TxyzRy__Q27JStudio8TControlFRC3Vecf
/* 802853FC 0028233C  7F C3 F3 78 */	mr r3, r30
/* 80285400 00282340  38 81 00 08 */	addi r4, r1, 8
/* 80285404 00282344  FC 20 F8 90 */	fmr f1, f31
/* 80285408 00282348  4B FF FE C9 */	bl transformOnGet_setOrigin_TxyzRy__Q27JStudio8TControlFRC3Vecf
/* 8028540C 0028234C  48 00 00 0C */	b lbl_80285418
lbl_80285410:
/* 80285410 00282350  38 60 00 00 */	li r3, 0
/* 80285414 00282354  48 00 00 08 */	b lbl_8028541C
lbl_80285418:
/* 80285418 00282358  38 60 00 01 */	li r3, 1
lbl_8028541C:
/* 8028541C 0028235C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80285420 00282360  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80285424 00282364  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80285428 00282368  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8028542C 0028236C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80285430 00282370  7C 08 03 A6 */	mtlr r0
/* 80285434 00282374  38 21 00 30 */	addi r1, r1, 0x30
/* 80285438 00282378  4E 80 00 20 */	blr 

.global transform_setOrigin_ctb__Q27JStudio8TControlFRCQ37JStudio3ctb7TObject_index
transform_setOrigin_ctb__Q27JStudio8TControlFRCQ37JStudio3ctb7TObject_index:
/* 8028543C 0028237C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80285440 00282380  7C 08 02 A6 */	mflr r0
/* 80285444 00282384  90 01 00 14 */	stw r0, 0x14(r1)
/* 80285448 00282388  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028544C 0028238C  7C 7F 1B 78 */	mr r31, r3
/* 80285450 00282390  38 7F 00 74 */	addi r3, r31, 0x74
/* 80285454 00282394  4B FF BD DD */	bl getObject__Q37JStudio3ctb8TControlFPCvUl_index
/* 80285458 00282398  7C 64 1B 79 */	or. r4, r3, r3
/* 8028545C 0028239C  40 82 00 0C */	bne lbl_80285468
/* 80285460 002823A0  38 60 00 00 */	li r3, 0
/* 80285464 002823A4  48 00 00 10 */	b lbl_80285474
lbl_80285468:
/* 80285468 002823A8  7F E3 FB 78 */	mr r3, r31
/* 8028546C 002823AC  4B FF FE FD */	bl transform_setOrigin_ctb__Q27JStudio8TControlFRCQ37JStudio3ctb7TObject
/* 80285470 002823B0  38 60 00 01 */	li r3, 1
lbl_80285474:
/* 80285474 002823B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80285478 002823B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028547C 002823BC  7C 08 03 A6 */	mtlr r0
/* 80285480 002823C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80285484 002823C4  4E 80 00 20 */	blr 

.global __dt__Q27JStudio13TCreateObjectFv
__dt__Q27JStudio13TCreateObjectFv:
/* 80285488 002823C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028548C 002823CC  7C 08 02 A6 */	mflr r0
/* 80285490 002823D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80285494 002823D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80285498 002823D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8028549C 002823DC  41 82 00 1C */	beq lbl_802854B8
/* 802854A0 002823E0  3C A0 80 3A */	lis r5, lbl_803A7934@ha
/* 802854A4 002823E4  38 05 79 34 */	addi r0, r5, lbl_803A7934@l
/* 802854A8 002823E8  90 1F 00 00 */	stw r0, 0(r31)
/* 802854AC 002823EC  7C 80 07 35 */	extsh. r0, r4
/* 802854B0 002823F0  40 81 00 08 */	ble lbl_802854B8
/* 802854B4 002823F4  48 04 98 89 */	bl __dl__FPv
lbl_802854B8:
/* 802854B8 002823F8  7F E3 FB 78 */	mr r3, r31
/* 802854BC 002823FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802854C0 00282400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802854C4 00282404  7C 08 03 A6 */	mtlr r0
/* 802854C8 00282408  38 21 00 10 */	addi r1, r1, 0x10
/* 802854CC 0028240C  4E 80 00 20 */	blr 
/* 802854D0 00282410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802854D4 00282414  7C 08 02 A6 */	mflr r0
/* 802854D8 00282418  90 01 00 14 */	stw r0, 0x14(r1)
/* 802854DC 0028241C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802854E0 00282420  93 C1 00 08 */	stw r30, 8(r1)
/* 802854E4 00282424  7C 7E 1B 79 */	or. r30, r3, r3
/* 802854E8 00282428  7C 9F 23 78 */	mr r31, r4
/* 802854EC 0028242C  41 82 00 58 */	beq lbl_80285544
/* 802854F0 00282430  3C 60 80 3C */	lis r3, lbl_803C4AE0@ha
/* 802854F4 00282434  38 03 4A E0 */	addi r0, r3, lbl_803C4AE0@l
/* 802854F8 00282438  90 1E 00 00 */	stw r0, 0(r30)
/* 802854FC 0028243C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80285500 00282440  38 80 FF FF */	li r4, -1
/* 80285504 00282444  4B FF BD 71 */	bl __dt__Q37JStudio3ctb8TFactoryFv
/* 80285508 00282448  38 7E 00 10 */	addi r3, r30, 0x10
/* 8028550C 0028244C  38 80 FF FF */	li r4, -1
/* 80285510 00282450  4B FF F4 09 */	bl __dt__Q37JStudio3fvb8TFactoryFv
/* 80285514 00282454  34 1E 00 04 */	addic. r0, r30, 4
/* 80285518 00282458  41 82 00 10 */	beq lbl_80285528
/* 8028551C 0028245C  38 7E 00 04 */	addi r3, r30, 4
/* 80285520 00282460  38 80 00 00 */	li r4, 0
/* 80285524 00282464  48 05 74 F9 */	bl __dt__Q27JGadget13TNodeLinkListFv
lbl_80285528:
/* 80285528 00282468  7F C3 F3 78 */	mr r3, r30
/* 8028552C 0028246C  38 80 00 00 */	li r4, 0
/* 80285530 00282470  48 00 40 85 */	bl __dt__Q37JStudio3stb8TFactoryFv
/* 80285534 00282474  7F E0 07 35 */	extsh. r0, r31
/* 80285538 00282478  40 81 00 0C */	ble lbl_80285544
/* 8028553C 0028247C  7F C3 F3 78 */	mr r3, r30
/* 80285540 00282480  48 04 97 FD */	bl __dl__FPv
lbl_80285544:
/* 80285544 00282484  7F C3 F3 78 */	mr r3, r30
/* 80285548 00282488  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028554C 0028248C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80285550 00282490  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80285554 00282494  7C 08 03 A6 */	mtlr r0
/* 80285558 00282498  38 21 00 10 */	addi r1, r1, 0x10
/* 8028555C 0028249C  4E 80 00 20 */	blr 

.global appendCreateObject__Q27JStudio8TFactoryFPQ27JStudio13TCreateObject
appendCreateObject__Q27JStudio8TFactoryFPQ27JStudio13TCreateObject:
/* 80285560 002824A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80285564 002824A4  7C 08 02 A6 */	mflr r0
/* 80285568 002824A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028556C 002824AC  7C 65 1B 78 */	mr r5, r3
/* 80285570 002824B0  38 05 00 08 */	addi r0, r5, 8
/* 80285574 002824B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80285578 002824B8  90 01 00 08 */	stw r0, 8(r1)
/* 8028557C 002824BC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80285580 002824C0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80285584 002824C4  38 C4 00 04 */	addi r6, r4, 4
/* 80285588 002824C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028558C 002824CC  38 61 00 10 */	addi r3, r1, 0x10
/* 80285590 002824D0  38 85 00 04 */	addi r4, r5, 4
/* 80285594 002824D4  38 A1 00 14 */	addi r5, r1, 0x14
/* 80285598 002824D8  48 05 76 11 */	bl Insert__Q27JGadget13TNodeLinkListFQ37JGadget13TNodeLinkList8iteratorPQ27JGadget13TLinkListNode
/* 8028559C 002824DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802855A0 002824E0  7C 08 03 A6 */	mtlr r0
/* 802855A4 002824E4  38 21 00 20 */	addi r1, r1, 0x20
/* 802855A8 002824E8  4E 80 00 20 */	blr 
/* 802855AC 002824EC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802855B0 002824F0  7C 08 02 A6 */	mflr r0
/* 802855B4 002824F4  90 01 00 54 */	stw r0, 0x54(r1)
/* 802855B8 002824F8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 802855BC 002824FC  7C 9F 23 78 */	mr r31, r4
/* 802855C0 00282500  38 03 00 08 */	addi r0, r3, 8
/* 802855C4 00282504  90 01 00 24 */	stw r0, 0x24(r1)
/* 802855C8 00282508  90 01 00 20 */	stw r0, 0x20(r1)
/* 802855CC 0028250C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802855D0 00282510  90 01 00 30 */	stw r0, 0x30(r1)
/* 802855D4 00282514  80 63 00 08 */	lwz r3, 8(r3)
/* 802855D8 00282518  90 61 00 1C */	stw r3, 0x1c(r1)
/* 802855DC 0028251C  90 61 00 18 */	stw r3, 0x18(r1)
/* 802855E0 00282520  90 61 00 2C */	stw r3, 0x2c(r1)
/* 802855E4 00282524  90 61 00 28 */	stw r3, 0x28(r1)
/* 802855E8 00282528  90 61 00 3C */	stw r3, 0x3c(r1)
/* 802855EC 0028252C  90 01 00 40 */	stw r0, 0x40(r1)
/* 802855F0 00282530  48 00 00 3C */	b lbl_8028562C
lbl_802855F4:
/* 802855F4 00282534  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 802855F8 00282538  38 64 FF FC */	addi r3, r4, -4
/* 802855FC 0028253C  80 04 00 00 */	lwz r0, 0(r4)
/* 80285600 00282540  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80285604 00282544  38 81 00 38 */	addi r4, r1, 0x38
/* 80285608 00282548  7F E5 FB 78 */	mr r5, r31
/* 8028560C 0028254C  81 83 00 00 */	lwz r12, 0(r3)
/* 80285610 00282550  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80285614 00282554  7D 89 03 A6 */	mtctr r12
/* 80285618 00282558  4E 80 04 21 */	bctrl 
/* 8028561C 0028255C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80285620 00282560  41 82 00 0C */	beq lbl_8028562C
/* 80285624 00282564  80 61 00 38 */	lwz r3, 0x38(r1)
/* 80285628 00282568  48 00 00 30 */	b lbl_80285658
lbl_8028562C:
/* 8028562C 0028256C  80 61 00 40 */	lwz r3, 0x40(r1)
/* 80285630 00282570  90 61 00 14 */	stw r3, 0x14(r1)
/* 80285634 00282574  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80285638 00282578  90 01 00 10 */	stw r0, 0x10(r1)
/* 8028563C 0028257C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80285640 00282580  90 01 00 08 */	stw r0, 8(r1)
/* 80285644 00282584  7C 00 18 50 */	subf r0, r0, r3
/* 80285648 00282588  7C 00 00 34 */	cntlzw r0, r0
/* 8028564C 0028258C  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 80285650 00282590  41 82 FF A4 */	beq lbl_802855F4
/* 80285654 00282594  38 60 00 00 */	li r3, 0
lbl_80285658:
/* 80285658 00282598  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8028565C 0028259C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80285660 002825A0  7C 08 03 A6 */	mtlr r0
/* 80285664 002825A4  38 21 00 50 */	addi r1, r1, 0x50
/* 80285668 002825A8  4E 80 00 20 */	blr 

.global __ct__Q27JStudio6TParseFPQ27JStudio8TControl
__ct__Q27JStudio6TParseFPQ27JStudio8TControl:
/* 8028566C 002825AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80285670 002825B0  7C 08 02 A6 */	mflr r0
/* 80285674 002825B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80285678 002825B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028567C 002825BC  7C 7F 1B 78 */	mr r31, r3
/* 80285680 002825C0  48 00 3F C1 */	bl __ct__Q37JStudio3stb6TParseFPQ37JStudio3stb8TControl
/* 80285684 002825C4  3C 60 80 3C */	lis r3, lbl_803C4AC0@ha
/* 80285688 002825C8  38 03 4A C0 */	addi r0, r3, lbl_803C4AC0@l
/* 8028568C 002825CC  90 1F 00 00 */	stw r0, 0(r31)
/* 80285690 002825D0  7F E3 FB 78 */	mr r3, r31
/* 80285694 002825D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80285698 002825D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028569C 002825DC  7C 08 03 A6 */	mtlr r0
/* 802856A0 002825E0  38 21 00 10 */	addi r1, r1, 0x10
/* 802856A4 002825E4  4E 80 00 20 */	blr 

.global __dt__Q27JStudio6TParseFv
__dt__Q27JStudio6TParseFv:
/* 802856A8 002825E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802856AC 002825EC  7C 08 02 A6 */	mflr r0
/* 802856B0 002825F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802856B4 002825F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802856B8 002825F8  93 C1 00 08 */	stw r30, 8(r1)
/* 802856BC 002825FC  7C 7E 1B 79 */	or. r30, r3, r3
/* 802856C0 00282600  7C 9F 23 78 */	mr r31, r4
/* 802856C4 00282604  41 82 00 28 */	beq lbl_802856EC
/* 802856C8 00282608  3C 80 80 3C */	lis r4, lbl_803C4AC0@ha
/* 802856CC 0028260C  38 04 4A C0 */	addi r0, r4, lbl_803C4AC0@l
/* 802856D0 00282610  90 1E 00 00 */	stw r0, 0(r30)
/* 802856D4 00282614  38 80 00 00 */	li r4, 0
/* 802856D8 00282618  48 00 3F 89 */	bl __dt__Q37JStudio3stb6TParseFv
/* 802856DC 0028261C  7F E0 07 35 */	extsh. r0, r31
/* 802856E0 00282620  40 81 00 0C */	ble lbl_802856EC
/* 802856E4 00282624  7F C3 F3 78 */	mr r3, r30
/* 802856E8 00282628  48 04 96 55 */	bl __dl__FPv
lbl_802856EC:
/* 802856EC 0028262C  7F C3 F3 78 */	mr r3, r30
/* 802856F0 00282630  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802856F4 00282634  83 C1 00 08 */	lwz r30, 8(r1)
/* 802856F8 00282638  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802856FC 0028263C  7C 08 03 A6 */	mtlr r0
/* 80285700 00282640  38 21 00 10 */	addi r1, r1, 0x10
/* 80285704 00282644  4E 80 00 20 */	blr 
/* 80285708 00282648  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8028570C 0028264C  7C 08 02 A6 */	mflr r0
/* 80285710 00282650  90 01 00 34 */	stw r0, 0x34(r1)
/* 80285714 00282654  39 61 00 30 */	addi r11, r1, 0x30
/* 80285718 00282658  48 0D CA C5 */	bl _savegpr_29
/* 8028571C 0028265C  7C 7D 1B 78 */	mr r29, r3
/* 80285720 00282660  7C BE 2B 78 */	mr r30, r5
/* 80285724 00282664  80 64 00 00 */	lwz r3, 0(r4)
/* 80285728 00282668  3B E3 00 10 */	addi r31, r3, 0x10
/* 8028572C 0028266C  7F E3 FB 78 */	mr r3, r31
/* 80285730 00282670  38 82 BA 60 */	addi r4, r2, lbl_80455460-_SDA2_BASE_
/* 80285734 00282674  38 A0 00 08 */	li r5, 8
/* 80285738 00282678  48 0E 09 55 */	bl func_8036608C
/* 8028573C 0028267C  2C 03 00 00 */	cmpwi r3, 0
/* 80285740 00282680  41 82 00 0C */	beq lbl_8028574C
/* 80285744 00282684  38 60 00 00 */	li r3, 0
/* 80285748 00282688  48 00 00 84 */	b lbl_802857CC
lbl_8028574C:
/* 8028574C 0028268C  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 80285750 00282690  28 00 00 02 */	cmplwi r0, 2
/* 80285754 00282694  40 80 00 0C */	bge lbl_80285760
/* 80285758 00282698  38 60 00 00 */	li r3, 0
/* 8028575C 0028269C  48 00 00 70 */	b lbl_802857CC
lbl_80285760:
/* 80285760 002826A0  28 00 00 06 */	cmplwi r0, 6
/* 80285764 002826A4  40 81 00 0C */	ble lbl_80285770
/* 80285768 002826A8  38 60 00 00 */	li r3, 0
/* 8028576C 002826AC  48 00 00 60 */	b lbl_802857CC
lbl_80285770:
/* 80285770 002826B0  83 FD 00 04 */	lwz r31, 4(r29)
/* 80285774 002826B4  57 C0 05 EF */	rlwinm. r0, r30, 0, 0x17, 0x17
/* 80285778 002826B8  40 82 00 50 */	bne lbl_802857C8
/* 8028577C 002826BC  3C 60 80 3A */	lis r3, lbl_8039AA58@ha
/* 80285780 002826C0  38 83 AA 58 */	addi r4, r3, lbl_8039AA58@l
/* 80285784 002826C4  80 64 00 00 */	lwz r3, 0(r4)
/* 80285788 002826C8  80 04 00 04 */	lwz r0, 4(r4)
/* 8028578C 002826CC  90 61 00 08 */	stw r3, 8(r1)
/* 80285790 002826D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80285794 002826D4  80 04 00 08 */	lwz r0, 8(r4)
/* 80285798 002826D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8028579C 002826DC  7F E3 FB 78 */	mr r3, r31
/* 802857A0 002826E0  38 81 00 08 */	addi r4, r1, 8
/* 802857A4 002826E4  C0 22 BA 58 */	lfs f1, lbl_80455458-_SDA2_BASE_(r2)
/* 802857A8 002826E8  4B FF FA A9 */	bl transformOnSet_setOrigin_TxyzRy__Q27JStudio8TControlFRC3Vecf
/* 802857AC 002826EC  7F E3 FB 78 */	mr r3, r31
/* 802857B0 002826F0  38 81 00 08 */	addi r4, r1, 8
/* 802857B4 002826F4  C0 22 BA 58 */	lfs f1, lbl_80455458-_SDA2_BASE_(r2)
/* 802857B8 002826F8  4B FF FB 19 */	bl transformOnGet_setOrigin_TxyzRy__Q27JStudio8TControlFRC3Vecf
/* 802857BC 002826FC  38 00 00 00 */	li r0, 0
/* 802857C0 00282700  98 1F 00 88 */	stb r0, 0x88(r31)
/* 802857C4 00282704  98 1F 00 89 */	stb r0, 0x89(r31)
lbl_802857C8:
/* 802857C8 00282708  38 60 00 01 */	li r3, 1
lbl_802857CC:
/* 802857CC 0028270C  39 61 00 30 */	addi r11, r1, 0x30
/* 802857D0 00282710  48 0D CA 59 */	bl _restgpr_29
/* 802857D4 00282714  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802857D8 00282718  7C 08 03 A6 */	mtlr r0
/* 802857DC 0028271C  38 21 00 30 */	addi r1, r1, 0x30
/* 802857E0 00282720  4E 80 00 20 */	blr 
/* 802857E4 00282724  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802857E8 00282728  7C 08 02 A6 */	mflr r0
/* 802857EC 0028272C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802857F0 00282730  80 C4 00 00 */	lwz r6, 0(r4)
/* 802857F4 00282734  80 E6 00 04 */	lwz r7, 4(r6)
/* 802857F8 00282738  3C C0 4A 46 */	lis r6, 0x4A465642@ha
/* 802857FC 0028273C  38 06 56 42 */	addi r0, r6, 0x4A465642@l
/* 80285800 00282740  7C 07 00 00 */	cmpw r7, r0
/* 80285804 00282744  41 82 00 1C */	beq lbl_80285820
/* 80285808 00282748  40 80 00 28 */	bge lbl_80285830
/* 8028580C 0028274C  3C C0 4A 43 */	lis r6, 0x4A435442@ha
/* 80285810 00282750  38 06 54 42 */	addi r0, r6, 0x4A435442@l
/* 80285814 00282754  7C 07 00 00 */	cmpw r7, r0
/* 80285818 00282758  41 82 00 10 */	beq lbl_80285828
/* 8028581C 0028275C  48 00 00 14 */	b lbl_80285830
lbl_80285820:
/* 80285820 00282760  48 00 00 25 */	bl parseBlock_block_fvb___Q27JStudio6TParseFRCQ47JStudio3stb4data13TParse_TBlockUl
/* 80285824 00282764  48 00 00 10 */	b lbl_80285834
lbl_80285828:
/* 80285828 00282768  48 00 00 C9 */	bl parseBlock_block_ctb___Q27JStudio6TParseFRCQ47JStudio3stb4data13TParse_TBlockUl
/* 8028582C 0028276C  48 00 00 08 */	b lbl_80285834
lbl_80285830:
/* 80285830 00282770  48 00 3F B9 */	bl parseBlock_block__Q37JStudio3stb6TParseFRCQ47JStudio3stb4data13TParse_TBlockUl
lbl_80285834:
/* 80285834 00282774  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80285838 00282778  7C 08 03 A6 */	mtlr r0
/* 8028583C 0028277C  38 21 00 10 */	addi r1, r1, 0x10
/* 80285840 00282780  4E 80 00 20 */	blr 

.global parseBlock_block_fvb___Q27JStudio6TParseFRCQ47JStudio3stb4data13TParse_TBlockUl
parseBlock_block_fvb___Q27JStudio6TParseFRCQ47JStudio3stb4data13TParse_TBlockUl:
/* 80285844 00282784  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80285848 00282788  7C 08 02 A6 */	mflr r0
/* 8028584C 0028278C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80285850 00282790  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80285854 00282794  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80285858 00282798  80 C3 00 04 */	lwz r6, 4(r3)
/* 8028585C 0028279C  80 64 00 00 */	lwz r3, 0(r4)
/* 80285860 002827A0  3B E3 00 08 */	addi r31, r3, 8
/* 80285864 002827A4  54 BE 07 3E */	clrlwi r30, r5, 0x1c
/* 80285868 002827A8  54 A0 06 F7 */	rlwinm. r0, r5, 0, 0x1b, 0x1b
/* 8028586C 002827AC  41 82 00 08 */	beq lbl_80285874
/* 80285870 002827B0  63 DE 00 10 */	ori r30, r30, 0x10
lbl_80285874:
/* 80285874 002827B4  54 A0 06 B5 */	rlwinm. r0, r5, 0, 0x1a, 0x1a
/* 80285878 002827B8  41 82 00 08 */	beq lbl_80285880
/* 8028587C 002827BC  63 DE 00 20 */	ori r30, r30, 0x20
lbl_80285880:
/* 80285880 002827C0  54 A0 06 73 */	rlwinm. r0, r5, 0, 0x19, 0x19
/* 80285884 002827C4  41 82 00 08 */	beq lbl_8028588C
/* 80285888 002827C8  63 DE 00 40 */	ori r30, r30, 0x40
lbl_8028588C:
/* 8028588C 002827CC  38 61 00 0C */	addi r3, r1, 0xc
/* 80285890 002827D0  38 86 00 60 */	addi r4, r6, 0x60
/* 80285894 002827D4  4B FF F2 49 */	bl __ct__Q37JStudio3fvb6TParseFPQ37JStudio3fvb8TControl
/* 80285898 002827D8  93 E1 00 08 */	stw r31, 8(r1)
/* 8028589C 002827DC  38 61 00 0C */	addi r3, r1, 0xc
/* 802858A0 002827E0  38 81 00 08 */	addi r4, r1, 8
/* 802858A4 002827E4  7F C5 F3 78 */	mr r5, r30
/* 802858A8 002827E8  48 05 70 69 */	bl parse_next__Q37JGadget6binary19TParse_header_blockFPPCvUl
/* 802858AC 002827EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802858B0 002827F0  40 82 00 18 */	bne lbl_802858C8
/* 802858B4 002827F4  38 61 00 0C */	addi r3, r1, 0xc
/* 802858B8 002827F8  38 80 FF FF */	li r4, -1
/* 802858BC 002827FC  4B FF F2 41 */	bl __dt__Q37JStudio3fvb6TParseFv
/* 802858C0 00282800  38 60 00 00 */	li r3, 0
/* 802858C4 00282804  48 00 00 14 */	b lbl_802858D8
lbl_802858C8:
/* 802858C8 00282808  38 61 00 0C */	addi r3, r1, 0xc
/* 802858CC 0028280C  38 80 FF FF */	li r4, -1
/* 802858D0 00282810  4B FF F2 2D */	bl __dt__Q37JStudio3fvb6TParseFv
/* 802858D4 00282814  38 60 00 01 */	li r3, 1
lbl_802858D8:
/* 802858D8 00282818  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802858DC 0028281C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802858E0 00282820  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802858E4 00282824  7C 08 03 A6 */	mtlr r0
/* 802858E8 00282828  38 21 00 20 */	addi r1, r1, 0x20
/* 802858EC 0028282C  4E 80 00 20 */	blr 

.global parseBlock_block_ctb___Q27JStudio6TParseFRCQ47JStudio3stb4data13TParse_TBlockUl
parseBlock_block_ctb___Q27JStudio6TParseFRCQ47JStudio3stb4data13TParse_TBlockUl:
/* 802858F0 00282830  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802858F4 00282834  7C 08 02 A6 */	mflr r0
/* 802858F8 00282838  90 01 00 34 */	stw r0, 0x34(r1)
/* 802858FC 0028283C  39 61 00 30 */	addi r11, r1, 0x30
/* 80285900 00282840  48 0D C8 D9 */	bl _savegpr_28
/* 80285904 00282844  7C BC 2B 78 */	mr r28, r5
/* 80285908 00282848  83 E3 00 04 */	lwz r31, 4(r3)
/* 8028590C 0028284C  80 64 00 00 */	lwz r3, 0(r4)
/* 80285910 00282850  3B C3 00 08 */	addi r30, r3, 8
/* 80285914 00282854  54 BD 07 3E */	clrlwi r29, r5, 0x1c
/* 80285918 00282858  54 A0 06 F7 */	rlwinm. r0, r5, 0, 0x1b, 0x1b
/* 8028591C 0028285C  41 82 00 08 */	beq lbl_80285924
/* 80285920 00282860  63 BD 00 10 */	ori r29, r29, 0x10
lbl_80285924:
/* 80285924 00282864  57 80 06 B5 */	rlwinm. r0, r28, 0, 0x1a, 0x1a
/* 80285928 00282868  41 82 00 08 */	beq lbl_80285930
/* 8028592C 0028286C  63 BD 00 20 */	ori r29, r29, 0x20
lbl_80285930:
/* 80285930 00282870  57 80 06 73 */	rlwinm. r0, r28, 0, 0x19, 0x19
/* 80285934 00282874  41 82 00 08 */	beq lbl_8028593C
/* 80285938 00282878  63 BD 00 40 */	ori r29, r29, 0x40
lbl_8028593C:
/* 8028593C 0028287C  38 61 00 0C */	addi r3, r1, 0xc
/* 80285940 00282880  38 9F 00 74 */	addi r4, r31, 0x74
/* 80285944 00282884  4B FF BA 19 */	bl __ct__Q37JStudio3ctb6TParseFPQ37JStudio3ctb8TControl
/* 80285948 00282888  93 C1 00 08 */	stw r30, 8(r1)
/* 8028594C 0028288C  38 61 00 0C */	addi r3, r1, 0xc
/* 80285950 00282890  38 81 00 08 */	addi r4, r1, 8
/* 80285954 00282894  7F A5 EB 78 */	mr r5, r29
/* 80285958 00282898  48 05 6F B9 */	bl parse_next__Q37JGadget6binary19TParse_header_blockFPPCvUl
/* 8028595C 0028289C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80285960 002828A0  40 82 00 18 */	bne lbl_80285978
/* 80285964 002828A4  38 61 00 0C */	addi r3, r1, 0xc
/* 80285968 002828A8  38 80 FF FF */	li r4, -1
/* 8028596C 002828AC  4B FF BA 11 */	bl __dt__Q37JStudio3ctb6TParseFv
/* 80285970 002828B0  38 60 00 00 */	li r3, 0
/* 80285974 002828B4  48 00 00 50 */	b lbl_802859C4
lbl_80285978:
/* 80285978 002828B8  57 80 05 AD */	rlwinm. r0, r28, 0, 0x16, 0x16
/* 8028597C 002828BC  40 82 00 38 */	bne lbl_802859B4
/* 80285980 002828C0  7F E3 FB 78 */	mr r3, r31
/* 80285984 002828C4  38 80 00 00 */	li r4, 0
/* 80285988 002828C8  4B FF FA B5 */	bl transform_setOrigin_ctb__Q27JStudio8TControlFRCQ37JStudio3ctb7TObject_index
/* 8028598C 002828CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80285990 002828D0  40 82 00 18 */	bne lbl_802859A8
/* 80285994 002828D4  38 61 00 0C */	addi r3, r1, 0xc
/* 80285998 002828D8  38 80 FF FF */	li r4, -1
/* 8028599C 002828DC  4B FF B9 E1 */	bl __dt__Q37JStudio3ctb6TParseFv
/* 802859A0 002828E0  38 60 00 00 */	li r3, 0
/* 802859A4 002828E4  48 00 00 20 */	b lbl_802859C4
lbl_802859A8:
/* 802859A8 002828E8  38 00 00 01 */	li r0, 1
/* 802859AC 002828EC  98 1F 00 88 */	stb r0, 0x88(r31)
/* 802859B0 002828F0  98 1F 00 89 */	stb r0, 0x89(r31)
lbl_802859B4:
/* 802859B4 002828F4  38 61 00 0C */	addi r3, r1, 0xc
/* 802859B8 002828F8  38 80 FF FF */	li r4, -1
/* 802859BC 002828FC  4B FF B9 C1 */	bl __dt__Q37JStudio3ctb6TParseFv
/* 802859C0 00282900  38 60 00 01 */	li r3, 1
lbl_802859C4:
/* 802859C4 00282904  39 61 00 30 */	addi r11, r1, 0x30
/* 802859C8 00282908  48 0D C8 5D */	bl _restgpr_28
/* 802859CC 0028290C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802859D0 00282910  7C 08 03 A6 */	mtlr r0
/* 802859D4 00282914  38 21 00 30 */	addi r1, r1, 0x30
/* 802859D8 00282918  4E 80 00 20 */	blr 

