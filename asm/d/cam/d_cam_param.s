.include "macros.inc"

.section .text, "ax" # 8008813c


.global dCamMath_NS_rationalBezierRatio
dCamMath_NS_rationalBezierRatio:
/* 8008813C 0008507C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80088140 00085080  7C 08 02 A6 */	mflr r0
/* 80088144 00085084  90 01 00 54 */	stw r0, 0x54(r1)
/* 80088148 00085088  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8008814C 0008508C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 80088150 00085090  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80088154 00085094  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 80088158 00085098  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 8008815C 0008509C  F3 A1 00 28 */	psq_st f29, 40(r1), 0, qr0
/* 80088160 000850A0  DB 81 00 10 */	stfd f28, 0x10(r1)
/* 80088164 000850A4  F3 81 00 18 */	psq_st f28, 24(r1), 0, qr0
/* 80088168 000850A8  FF C0 10 90 */	fmr f30, f2
/* 8008816C 000850AC  C0 02 8D C8 */	lfs f0, lbl_804527C8-_SDA2_BASE_(r2)
/* 80088170 000850B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80088174 000850B4  4C 41 13 82 */	cror 2, 1, 2
/* 80088178 000850B8  40 82 00 0C */	bne lbl_80088184
/* 8008817C 000850BC  CB E2 8D D0 */	lfd f31, lbl_804527D0-_SDA2_BASE_(r2)
/* 80088180 000850C0  48 00 00 0C */	b lbl_8008818C
lbl_80088184:
/* 80088184 000850C4  CB E2 8D D8 */	lfd f31, lbl_804527D8-_SDA2_BASE_(r2)
/* 80088188 000850C8  FC 20 08 50 */	fneg f1, f1
lbl_8008818C:
/* 8008818C 000850CC  C8 62 8D E0 */	lfd f3, lbl_804527E0-_SDA2_BASE_(r2)
/* 80088190 000850D0  FC 43 00 72 */	fmul f2, f3, f1
/* 80088194 000850D4  FC 02 07 B2 */	fmul f0, f2, f30
/* 80088198 000850D8  FC 40 10 28 */	fsub f2, f0, f2
/* 8008819C 000850DC  FC 03 07 B2 */	fmul f0, f3, f30
/* 800881A0 000850E0  FC 42 00 28 */	fsub f2, f2, f0
/* 800881A4 000850E4  FF A0 10 50 */	fneg f29, f2
/* 800881A8 000850E8  C8 02 8D D0 */	lfd f0, lbl_804527D0-_SDA2_BASE_(r2)
/* 800881AC 000850EC  FF 9D 00 28 */	fsub f28, f29, f0
/* 800881B0 000850F0  FC 42 00 B2 */	fmul f2, f2, f2
/* 800881B4 000850F4  C8 02 8D E8 */	lfd f0, lbl_804527E8-_SDA2_BASE_(r2)
/* 800881B8 000850F8  FC 00 07 32 */	fmul f0, f0, f28
/* 800881BC 000850FC  FC 00 00 72 */	fmul f0, f0, f1
/* 800881C0 00085100  FC 22 00 28 */	fsub f1, f2, f0
/* 800881C4 00085104  C8 02 8D F0 */	lfd f0, lbl_804527F0-_SDA2_BASE_(r2)
/* 800881C8 00085108  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800881CC 0008510C  40 81 00 0C */	ble lbl_800881D8
/* 800881D0 00085110  48 2E 48 85 */	bl func_8036CA54
/* 800881D4 00085114  48 00 00 08 */	b lbl_800881DC
lbl_800881D8:
/* 800881D8 00085118  FC 20 00 90 */	fmr f1, f0
lbl_800881DC:
/* 800881DC 0008511C  FC 3D 08 28 */	fsub f1, f29, f1
/* 800881E0 00085120  C8 02 8D E0 */	lfd f0, lbl_804527E0-_SDA2_BASE_(r2)
/* 800881E4 00085124  FC 40 07 32 */	fmul f2, f0, f28
/* 800881E8 00085128  C8 02 8D F8 */	lfd f0, lbl_804527F8-_SDA2_BASE_(r2)
/* 800881EC 0008512C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800881F0 00085130  41 81 00 10 */	bgt lbl_80088200
/* 800881F4 00085134  C8 02 8E 00 */	lfd f0, lbl_80452800-_SDA2_BASE_(r2)
/* 800881F8 00085138  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800881FC 0008513C  40 80 00 54 */	bge lbl_80088250
lbl_80088200:
/* 80088200 00085140  FC 41 10 24 */	fdiv f2, f1, f2
/* 80088204 00085144  FC 62 00 B2 */	fmul f3, f2, f2
/* 80088208 00085148  C8 02 8D D0 */	lfd f0, lbl_804527D0-_SDA2_BASE_(r2)
/* 8008820C 0008514C  FC 80 10 28 */	fsub f4, f0, f2
/* 80088210 00085150  FC 24 01 32 */	fmul f1, f4, f4
/* 80088214 00085154  C8 02 8D E0 */	lfd f0, lbl_804527E0-_SDA2_BASE_(r2)
/* 80088218 00085158  FC 00 01 32 */	fmul f0, f0, f4
/* 8008821C 0008515C  FC 00 00 B2 */	fmul f0, f0, f2
/* 80088220 00085160  FC 1E 00 32 */	fmul f0, f30, f0
/* 80088224 00085164  FC 01 00 2A */	fadd f0, f1, f0
/* 80088228 00085168  FC 23 00 2A */	fadd f1, f3, f0
/* 8008822C 0008516C  C8 02 8E 08 */	lfd f0, lbl_80452808-_SDA2_BASE_(r2)
/* 80088230 00085170  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80088234 00085174  40 81 00 14 */	ble lbl_80088248
/* 80088238 00085178  FC 03 08 24 */	fdiv f0, f3, f1
/* 8008823C 0008517C  FC 3F 00 32 */	fmul f1, f31, f0
/* 80088240 00085180  FC 20 08 18 */	frsp f1, f1
/* 80088244 00085184  48 00 00 10 */	b lbl_80088254
lbl_80088248:
/* 80088248 00085188  C0 22 8D C8 */	lfs f1, lbl_804527C8-_SDA2_BASE_(r2)
/* 8008824C 0008518C  48 00 00 08 */	b lbl_80088254
lbl_80088250:
/* 80088250 00085190  C0 22 8D C8 */	lfs f1, lbl_804527C8-_SDA2_BASE_(r2)
lbl_80088254:
/* 80088254 00085194  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 80088258 00085198  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8008825C 0008519C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 80088260 000851A0  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80088264 000851A4  E3 A1 00 28 */	psq_l f29, 40(r1), 0, qr0
/* 80088268 000851A8  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 8008826C 000851AC  E3 81 00 18 */	psq_l f28, 24(r1), 0, qr0
/* 80088270 000851B0  CB 81 00 10 */	lfd f28, 0x10(r1)
/* 80088274 000851B4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80088278 000851B8  7C 08 03 A6 */	mtlr r0
/* 8008827C 000851BC  38 21 00 50 */	addi r1, r1, 0x50
/* 80088280 000851C0  4E 80 00 20 */	blr 

.global dCamMath_NS_zoomFovy
dCamMath_NS_zoomFovy:
/* 80088284 000851C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80088288 000851C8  7C 08 02 A6 */	mflr r0
/* 8008828C 000851CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80088290 000851D0  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80088294 000851D4  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 80088298 000851D8  FF E0 10 90 */	fmr f31, f2
/* 8008829C 000851DC  38 61 00 08 */	addi r3, r1, 8
/* 800882A0 000851E0  48 1E 90 AD */	bl cDegree
/* 800882A4 000851E4  38 61 00 08 */	addi r3, r1, 8
/* 800882A8 000851E8  48 1E 91 71 */	bl cDegree_NS_Cos
/* 800882AC 000851EC  EF FF 00 72 */	fmuls f31, f31, f1
/* 800882B0 000851F0  38 61 00 08 */	addi r3, r1, 8
/* 800882B4 000851F4  48 1E 91 3D */	bl cDegree_NS_Sin
/* 800882B8 000851F8  FC 40 F8 90 */	fmr f2, f31
/* 800882BC 000851FC  48 1D F5 59 */	bl cM_atan2f__Fff
/* 800882C0 00085200  C0 02 8E 14 */	lfs f0, lbl_80452814-_SDA2_BASE_(r2)
/* 800882C4 00085204  EC 20 00 72 */	fmuls f1, f0, f1
/* 800882C8 00085208  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 800882CC 0008520C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 800882D0 00085210  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800882D4 00085214  7C 08 03 A6 */	mtlr r0
/* 800882D8 00085218  38 21 00 20 */	addi r1, r1, 0x20
/* 800882DC 0008521C  4E 80 00 20 */	blr 

.global cDegree_NS_dtor
cDegree_NS_dtor:
/* 800882E0 00085220  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800882E4 00085224  7C 08 02 A6 */	mflr r0
/* 800882E8 00085228  90 01 00 14 */	stw r0, 0x14(r1)
/* 800882EC 0008522C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800882F0 00085230  7C 7F 1B 79 */	or. r31, r3, r3
/* 800882F4 00085234  41 82 00 10 */	beq lbl_80088304
/* 800882F8 00085238  7C 80 07 35 */	extsh. r0, r4
/* 800882FC 0008523C  40 81 00 08 */	ble lbl_80088304
/* 80088300 00085240  48 24 6A 3D */	bl __dl__FPv
lbl_80088304:
/* 80088304 00085244  7F E3 FB 78 */	mr r3, r31
/* 80088308 00085248  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8008830C 0008524C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80088310 00085250  7C 08 03 A6 */	mtlr r0
/* 80088314 00085254  38 21 00 10 */	addi r1, r1, 0x10
/* 80088318 00085258  4E 80 00 20 */	blr 

.global dCamMath_NS_xyzRotateX
dCamMath_NS_xyzRotateX:
/* 8008831C 0008525C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80088320 00085260  7C 08 02 A6 */	mflr r0
/* 80088324 00085264  90 01 00 54 */	stw r0, 0x54(r1)
/* 80088328 00085268  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8008832C 0008526C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80088330 00085270  7C 7E 1B 78 */	mr r30, r3
/* 80088334 00085274  7C 9F 23 78 */	mr r31, r4
/* 80088338 00085278  A8 85 00 00 */	lha r4, 0(r5)
/* 8008833C 0008527C  38 61 00 14 */	addi r3, r1, 0x14
/* 80088340 00085280  4B F8 40 05 */	bl mDoMtx_XrotS
/* 80088344 00085284  38 61 00 14 */	addi r3, r1, 0x14
/* 80088348 00085288  7F E4 FB 78 */	mr r4, r31
/* 8008834C 0008528C  38 A1 00 08 */	addi r5, r1, 8
/* 80088350 00085290  48 2B EA 1D */	bl PSMTXMultVec
/* 80088354 00085294  C0 01 00 08 */	lfs f0, 8(r1)
/* 80088358 00085298  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8008835C 0008529C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80088360 000852A0  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80088364 000852A4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80088368 000852A8  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8008836C 000852AC  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80088370 000852B0  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80088374 000852B4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80088378 000852B8  7C 08 03 A6 */	mtlr r0
/* 8008837C 000852BC  38 21 00 50 */	addi r1, r1, 0x50
/* 80088380 000852C0  4E 80 00 20 */	blr 

.global dCamMath_NS_xyzRotateY
dCamMath_NS_xyzRotateY:
/* 80088384 000852C4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80088388 000852C8  7C 08 02 A6 */	mflr r0
/* 8008838C 000852CC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80088390 000852D0  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80088394 000852D4  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80088398 000852D8  7C 7E 1B 78 */	mr r30, r3
/* 8008839C 000852DC  7C 9F 23 78 */	mr r31, r4
/* 800883A0 000852E0  A8 85 00 00 */	lha r4, 0(r5)
/* 800883A4 000852E4  38 61 00 14 */	addi r3, r1, 0x14
/* 800883A8 000852E8  4B F8 40 35 */	bl mDoMtx_YrotS
/* 800883AC 000852EC  38 61 00 14 */	addi r3, r1, 0x14
/* 800883B0 000852F0  7F E4 FB 78 */	mr r4, r31
/* 800883B4 000852F4  38 A1 00 08 */	addi r5, r1, 8
/* 800883B8 000852F8  48 2B E9 B5 */	bl PSMTXMultVec
/* 800883BC 000852FC  C0 01 00 08 */	lfs f0, 8(r1)
/* 800883C0 00085300  D0 1E 00 00 */	stfs f0, 0(r30)
/* 800883C4 00085304  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800883C8 00085308  D0 1E 00 04 */	stfs f0, 4(r30)
/* 800883CC 0008530C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800883D0 00085310  D0 1E 00 08 */	stfs f0, 8(r30)
/* 800883D4 00085314  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 800883D8 00085318  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 800883DC 0008531C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800883E0 00085320  7C 08 03 A6 */	mtlr r0
/* 800883E4 00085324  38 21 00 50 */	addi r1, r1, 0x50
/* 800883E8 00085328  4E 80 00 20 */	blr 

.global dCamMath_NS_xyzHorizontalDistance
dCamMath_NS_xyzHorizontalDistance:
/* 800883EC 0008532C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800883F0 00085330  7C 08 02 A6 */	mflr r0
/* 800883F4 00085334  90 01 00 14 */	stw r0, 0x14(r1)
/* 800883F8 00085338  C0 23 00 00 */	lfs f1, 0(r3)
/* 800883FC 0008533C  C0 04 00 00 */	lfs f0, 0(r4)
/* 80088400 00085340  EC 41 00 28 */	fsubs f2, f1, f0
/* 80088404 00085344  C0 23 00 08 */	lfs f1, 8(r3)
/* 80088408 00085348  C0 04 00 08 */	lfs f0, 8(r4)
/* 8008840C 0008534C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80088410 00085350  FC 22 00 B2 */	fmul f1, f2, f2
/* 80088414 00085354  FC 00 00 32 */	fmul f0, f0, f0
/* 80088418 00085358  FC 21 00 2A */	fadd f1, f1, f0
/* 8008841C 0008535C  48 2E 46 39 */	bl func_8036CA54
/* 80088420 00085360  FC 20 08 18 */	frsp f1, f1
/* 80088424 00085364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80088428 00085368  7C 08 03 A6 */	mtlr r0
/* 8008842C 0008536C  38 21 00 10 */	addi r1, r1, 0x10
/* 80088430 00085370  4E 80 00 20 */	blr 

.global dCstick_c
dCstick_c:
/* 80088434 00085374  3C 80 80 3B */	lis r4, lbl_803AC518@ha
/* 80088438 00085378  38 04 C5 18 */	addi r0, r4, lbl_803AC518@l
/* 8008843C 0008537C  90 03 00 10 */	stw r0, 0x10(r3)
/* 80088440 00085380  C0 02 8E 18 */	lfs f0, lbl_80452818-_SDA2_BASE_(r2)
/* 80088444 00085384  D0 03 00 00 */	stfs f0, 0(r3)
/* 80088448 00085388  C0 02 8E 1C */	lfs f0, lbl_8045281C-_SDA2_BASE_(r2)
/* 8008844C 0008538C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80088450 00085390  38 00 00 06 */	li r0, 6
/* 80088454 00085394  90 03 00 08 */	stw r0, 8(r3)
/* 80088458 00085398  4E 80 00 20 */	blr 

.global dCstick_c_NS_Shift
dCstick_c_NS_Shift:
/* 8008845C 0008539C  38 60 00 00 */	li r3, 0
/* 80088460 000853A0  4E 80 00 20 */	blr 

.global dCamBGChk_c
dCamBGChk_c:
/* 80088464 000853A4  C0 02 8E 20 */	lfs f0, lbl_80452820-_SDA2_BASE_(r2)
/* 80088468 000853A8  D0 03 00 00 */	stfs f0, 0(r3)
/* 8008846C 000853AC  C0 02 8E 10 */	lfs f0, lbl_80452810-_SDA2_BASE_(r2)
/* 80088470 000853B0  D0 03 00 04 */	stfs f0, 4(r3)
/* 80088474 000853B4  C0 02 8E 24 */	lfs f0, lbl_80452824-_SDA2_BASE_(r2)
/* 80088478 000853B8  D0 03 00 08 */	stfs f0, 8(r3)
/* 8008847C 000853BC  C0 02 8E 28 */	lfs f0, lbl_80452828-_SDA2_BASE_(r2)
/* 80088480 000853C0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80088484 000853C4  C0 02 8E 2C */	lfs f0, lbl_8045282C-_SDA2_BASE_(r2)
/* 80088488 000853C8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8008848C 000853CC  C0 02 8E 30 */	lfs f0, lbl_80452830-_SDA2_BASE_(r2)
/* 80088490 000853D0  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80088494 000853D4  C0 02 8E 34 */	lfs f0, lbl_80452834-_SDA2_BASE_(r2)
/* 80088498 000853D8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8008849C 000853DC  C0 42 8E 38 */	lfs f2, lbl_80452838-_SDA2_BASE_(r2)
/* 800884A0 000853E0  D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 800884A4 000853E4  C0 02 8E 3C */	lfs f0, lbl_8045283C-_SDA2_BASE_(r2)
/* 800884A8 000853E8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 800884AC 000853EC  C0 22 8E 40 */	lfs f1, lbl_80452840-_SDA2_BASE_(r2)
/* 800884B0 000853F0  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 800884B4 000853F4  C0 02 8E 44 */	lfs f0, lbl_80452844-_SDA2_BASE_(r2)
/* 800884B8 000853F8  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 800884BC 000853FC  C0 02 8E 18 */	lfs f0, lbl_80452818-_SDA2_BASE_(r2)
/* 800884C0 00085400  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 800884C4 00085404  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 800884C8 00085408  C0 02 8E 48 */	lfs f0, lbl_80452848-_SDA2_BASE_(r2)
/* 800884CC 0008540C  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 800884D0 00085410  D0 43 00 38 */	stfs f2, 0x38(r3)
/* 800884D4 00085414  C0 02 8E 4C */	lfs f0, lbl_8045284C-_SDA2_BASE_(r2)
/* 800884D8 00085418  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 800884DC 0008541C  C0 02 8E 50 */	lfs f0, lbl_80452850-_SDA2_BASE_(r2)
/* 800884E0 00085420  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 800884E4 00085424  C0 02 8E 54 */	lfs f0, lbl_80452854-_SDA2_BASE_(r2)
/* 800884E8 00085428  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 800884EC 0008542C  4E 80 00 20 */	blr 

.global dCamParam_c
dCamParam_c:
/* 800884F0 00085430  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800884F4 00085434  7C 08 02 A6 */	mflr r0
/* 800884F8 00085438  90 01 00 14 */	stw r0, 0x14(r1)
/* 800884FC 0008543C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80088500 00085440  93 C1 00 08 */	stw r30, 8(r1)
/* 80088504 00085444  7C 7E 1B 78 */	mr r30, r3
/* 80088508 00085448  7C 9F 23 78 */	mr r31, r4
/* 8008850C 0008544C  3C 60 80 3B */	lis r3, lbl_803AC50C@ha
/* 80088510 00085450  38 03 C5 0C */	addi r0, r3, lbl_803AC50C@l
/* 80088514 00085454  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 80088518 00085458  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8008851C 0008545C  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l
/* 80088520 00085460  80 65 5D 88 */	lwz r3, 0x5d88(r5)
/* 80088524 00085464  3C 80 80 38 */	lis r4, lbl_8037A7E0@ha
/* 80088528 00085468  38 84 A7 E0 */	addi r4, r4, lbl_8037A7E0@l
/* 8008852C 0008546C  3C A5 00 02 */	addis r5, r5, 2
/* 80088530 00085470  38 C0 00 80 */	li r6, 0x80
/* 80088534 00085474  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80088538 00085478  4B FB 3E 45 */	bl dRes_control_c_NS_getRes_X1_
/* 8008853C 0008547C  38 03 00 08 */	addi r0, r3, 8
/* 80088540 00085480  90 1E 00 08 */	stw r0, 8(r30)
/* 80088544 00085484  80 03 00 04 */	lwz r0, 4(r3)
/* 80088548 00085488  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8008854C 0008548C  7F C3 F3 78 */	mr r3, r30
/* 80088550 00085490  7F E4 FB 78 */	mr r4, r31
/* 80088554 00085494  48 00 00 81 */	bl dCamParam_c_NS_Change
/* 80088558 00085498  38 00 00 FF */	li r0, 0xff
/* 8008855C 0008549C  98 1E 00 00 */	stb r0, 0(r30)
/* 80088560 000854A0  98 1E 00 01 */	stb r0, 1(r30)
/* 80088564 000854A4  98 1E 00 02 */	stb r0, 2(r30)
/* 80088568 000854A8  38 00 FF FF */	li r0, -1
/* 8008856C 000854AC  90 1E 00 04 */	stw r0, 4(r30)
/* 80088570 000854B0  7F C3 F3 78 */	mr r3, r30
/* 80088574 000854B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80088578 000854B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8008857C 000854BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80088580 000854C0  7C 08 03 A6 */	mtlr r0
/* 80088584 000854C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80088588 000854C8  4E 80 00 20 */	blr 

.global dCamParam_c_NS_dtor
dCamParam_c_NS_dtor:
/* 8008858C 000854CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80088590 000854D0  7C 08 02 A6 */	mflr r0
/* 80088594 000854D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80088598 000854D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8008859C 000854DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 800885A0 000854E0  41 82 00 1C */	beq lbl_800885BC
/* 800885A4 000854E4  3C A0 80 3B */	lis r5, lbl_803AC50C@ha
/* 800885A8 000854E8  38 05 C5 0C */	addi r0, r5, lbl_803AC50C@l
/* 800885AC 000854EC  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 800885B0 000854F0  7C 80 07 35 */	extsh. r0, r4
/* 800885B4 000854F4  40 81 00 08 */	ble lbl_800885BC
/* 800885B8 000854F8  48 24 67 85 */	bl __dl__FPv
lbl_800885BC:
/* 800885BC 000854FC  7F E3 FB 78 */	mr r3, r31
/* 800885C0 00085500  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800885C4 00085504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800885C8 00085508  7C 08 03 A6 */	mtlr r0
/* 800885CC 0008550C  38 21 00 10 */	addi r1, r1, 0x10
/* 800885D0 00085510  4E 80 00 20 */	blr 

.global dCamParam_c_NS_Change
dCamParam_c_NS_Change:
/* 800885D4 00085514  2C 04 00 00 */	cmpwi r4, 0
/* 800885D8 00085518  41 80 00 30 */	blt lbl_80088608
/* 800885DC 0008551C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800885E0 00085520  7C 04 00 00 */	cmpw r4, r0
/* 800885E4 00085524  40 80 00 24 */	bge lbl_80088608
/* 800885E8 00085528  90 83 00 14 */	stw r4, 0x14(r3)
/* 800885EC 0008552C  80 83 00 08 */	lwz r4, 8(r3)
/* 800885F0 00085530  80 03 00 14 */	lwz r0, 0x14(r3)
/* 800885F4 00085534  1C 00 00 78 */	mulli r0, r0, 0x78
/* 800885F8 00085538  7C 04 02 14 */	add r0, r4, r0
/* 800885FC 0008553C  90 03 00 10 */	stw r0, 0x10(r3)
/* 80088600 00085540  38 60 00 01 */	li r3, 1
/* 80088604 00085544  4E 80 00 20 */	blr 
lbl_80088608:
/* 80088608 00085548  38 00 00 00 */	li r0, 0
/* 8008860C 0008554C  90 03 00 14 */	stw r0, 0x14(r3)
/* 80088610 00085550  80 03 00 08 */	lwz r0, 8(r3)
/* 80088614 00085554  90 03 00 10 */	stw r0, 0x10(r3)
/* 80088618 00085558  38 60 00 00 */	li r3, 0
/* 8008861C 0008555C  4E 80 00 20 */	blr 

.global dCamParam_c_NS_SearchStyle
dCamParam_c_NS_SearchStyle:
/* 80088620 00085560  38 E0 FF FF */	li r7, -1
/* 80088624 00085564  39 00 00 00 */	li r8, 0
/* 80088628 00085568  38 A0 00 00 */	li r5, 0
/* 8008862C 0008556C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80088630 00085570  7C 09 03 A6 */	mtctr r0
/* 80088634 00085574  2C 00 00 00 */	cmpwi r0, 0
/* 80088638 00085578  40 81 00 28 */	ble lbl_80088660
lbl_8008863C:
/* 8008863C 0008557C  80 C3 00 08 */	lwz r6, 8(r3)
/* 80088640 00085580  7C 06 28 2E */	lwzx r0, r6, r5
/* 80088644 00085584  7C 04 00 40 */	cmplw r4, r0
/* 80088648 00085588  40 82 00 0C */	bne lbl_80088654
/* 8008864C 0008558C  7D 07 43 78 */	mr r7, r8
/* 80088650 00085590  48 00 00 10 */	b lbl_80088660
lbl_80088654:
/* 80088654 00085594  39 08 00 01 */	addi r8, r8, 1
/* 80088658 00085598  38 A5 00 78 */	addi r5, r5, 0x78
/* 8008865C 0008559C  42 00 FF E0 */	bdnz lbl_8008863C
lbl_80088660:
/* 80088660 000855A0  7C E3 3B 78 */	mr r3, r7
/* 80088664 000855A4  4E 80 00 20 */	blr 

.global dCamSetup_c
dCamSetup_c:
/* 80088668 000855A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8008866C 000855AC  7C 08 02 A6 */	mflr r0
/* 80088670 000855B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80088674 000855B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80088678 000855B8  7C 7F 1B 78 */	mr r31, r3
/* 8008867C 000855BC  3C 60 80 3B */	lis r3, lbl_803AC500@ha
/* 80088680 000855C0  38 03 C5 00 */	addi r0, r3, lbl_803AC500@l
/* 80088684 000855C4  90 1F 00 FC */	stw r0, 0xfc(r31)
/* 80088688 000855C8  38 7F 01 00 */	addi r3, r31, 0x100
/* 8008868C 000855CC  4B FF FD A9 */	bl dCstick_c
/* 80088690 000855D0  38 7F 01 14 */	addi r3, r31, 0x114
/* 80088694 000855D4  4B FF FD D1 */	bl dCamBGChk_c
/* 80088698 000855D8  C0 02 8E 10 */	lfs f0, lbl_80452810-_SDA2_BASE_(r2)
/* 8008869C 000855DC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 800886A0 000855E0  C0 22 8E 5C */	lfs f1, lbl_8045285C-_SDA2_BASE_(r2)
/* 800886A4 000855E4  D0 3F 00 04 */	stfs f1, 4(r31)
/* 800886A8 000855E8  38 60 00 01 */	li r3, 1
/* 800886AC 000855EC  90 7F 00 0C */	stw r3, 0xc(r31)
/* 800886B0 000855F0  38 00 FF FF */	li r0, -1
/* 800886B4 000855F4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 800886B8 000855F8  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 800886BC 000855FC  C0 62 8E 18 */	lfs f3, lbl_80452818-_SDA2_BASE_(r2)
/* 800886C0 00085600  D0 7F 00 20 */	stfs f3, 0x20(r31)
/* 800886C4 00085604  C1 22 8E 60 */	lfs f9, lbl_80452860-_SDA2_BASE_(r2)
/* 800886C8 00085608  D1 3F 00 24 */	stfs f9, 0x24(r31)
/* 800886CC 0008560C  C0 22 8E 4C */	lfs f1, lbl_8045284C-_SDA2_BASE_(r2)
/* 800886D0 00085610  D0 3F 00 60 */	stfs f1, 0x60(r31)
/* 800886D4 00085614  C0 22 8E 64 */	lfs f1, lbl_80452864-_SDA2_BASE_(r2)
/* 800886D8 00085618  D0 3F 00 5C */	stfs f1, 0x5c(r31)
/* 800886DC 0008561C  C0 22 8E 68 */	lfs f1, lbl_80452868-_SDA2_BASE_(r2)
/* 800886E0 00085620  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 800886E4 00085624  C1 02 8E 6C */	lfs f8, lbl_8045286C-_SDA2_BASE_(r2)
/* 800886E8 00085628  D1 1F 00 2C */	stfs f8, 0x2c(r31)
/* 800886EC 0008562C  C0 E2 8E 70 */	lfs f7, lbl_80452870-_SDA2_BASE_(r2)
/* 800886F0 00085630  D0 FF 00 50 */	stfs f7, 0x50(r31)
/* 800886F4 00085634  C0 22 8E 48 */	lfs f1, lbl_80452848-_SDA2_BASE_(r2)
/* 800886F8 00085638  D0 3F 00 30 */	stfs f1, 0x30(r31)
/* 800886FC 0008563C  C0 22 8E 74 */	lfs f1, lbl_80452874-_SDA2_BASE_(r2)
/* 80088700 00085640  D0 3F 00 38 */	stfs f1, 0x38(r31)
/* 80088704 00085644  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 80088708 00085648  C0 22 8E 78 */	lfs f1, lbl_80452878-_SDA2_BASE_(r2)
/* 8008870C 0008564C  D0 3F 00 58 */	stfs f1, 0x58(r31)
/* 80088710 00085650  C0 22 8E 7C */	lfs f1, lbl_8045287C-_SDA2_BASE_(r2)
/* 80088714 00085654  D0 3F 00 44 */	stfs f1, 0x44(r31)
/* 80088718 00085658  C0 C2 8E 80 */	lfs f6, lbl_80452880-_SDA2_BASE_(r2)
/* 8008871C 0008565C  D0 DF 00 54 */	stfs f6, 0x54(r31)
/* 80088720 00085660  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 80088724 00085664  C0 42 8E 24 */	lfs f2, lbl_80452824-_SDA2_BASE_(r2)
/* 80088728 00085668  D0 5F 00 34 */	stfs f2, 0x34(r31)
/* 8008872C 0008566C  C0 22 8E 84 */	lfs f1, lbl_80452884-_SDA2_BASE_(r2)
/* 80088730 00085670  D0 3F 00 48 */	stfs f1, 0x48(r31)
/* 80088734 00085674  C0 A2 8E 88 */	lfs f5, lbl_80452888-_SDA2_BASE_(r2)
/* 80088738 00085678  D0 BF 00 40 */	stfs f5, 0x40(r31)
/* 8008873C 0008567C  C0 22 8E 8C */	lfs f1, lbl_8045288C-_SDA2_BASE_(r2)
/* 80088740 00085680  D0 3F 00 64 */	stfs f1, 0x64(r31)
/* 80088744 00085684  C0 22 8E 90 */	lfs f1, lbl_80452890-_SDA2_BASE_(r2)
/* 80088748 00085688  D0 3F 00 68 */	stfs f1, 0x68(r31)
/* 8008874C 0008568C  38 00 00 96 */	li r0, 0x96
/* 80088750 00085690  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 80088754 00085694  D0 BF 00 B4 */	stfs f5, 0xb4(r31)
/* 80088758 00085698  C0 82 8E 3C */	lfs f4, lbl_8045283C-_SDA2_BASE_(r2)
/* 8008875C 0008569C  D0 9F 00 B8 */	stfs f4, 0xb8(r31)
/* 80088760 000856A0  D0 7F 00 BC */	stfs f3, 0xbc(r31)
/* 80088764 000856A4  C0 22 8E 44 */	lfs f1, lbl_80452844-_SDA2_BASE_(r2)
/* 80088768 000856A8  D0 3F 00 A4 */	stfs f1, 0xa4(r31)
/* 8008876C 000856AC  C0 22 8E 94 */	lfs f1, lbl_80452894-_SDA2_BASE_(r2)
/* 80088770 000856B0  D0 3F 00 A8 */	stfs f1, 0xa8(r31)
/* 80088774 000856B4  B0 7F 00 08 */	sth r3, 8(r31)
/* 80088778 000856B8  38 00 01 18 */	li r0, 0x118
/* 8008877C 000856BC  B0 1F 00 0A */	sth r0, 0xa(r31)
/* 80088780 000856C0  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 80088784 000856C4  60 00 02 00 */	ori r0, r0, 0x200
/* 80088788 000856C8  B0 1F 00 0A */	sth r0, 0xa(r31)
/* 8008878C 000856CC  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 80088790 000856D0  60 00 04 00 */	ori r0, r0, 0x400
/* 80088794 000856D4  B0 1F 00 0A */	sth r0, 0xa(r31)
/* 80088798 000856D8  C0 22 8E 98 */	lfs f1, lbl_80452898-_SDA2_BASE_(r2)
/* 8008879C 000856DC  D0 3F 00 C0 */	stfs f1, 0xc0(r31)
/* 800887A0 000856E0  38 60 00 5A */	li r3, 0x5a
/* 800887A4 000856E4  90 7F 00 C4 */	stw r3, 0xc4(r31)
/* 800887A8 000856E8  C0 62 8E 38 */	lfs f3, lbl_80452838-_SDA2_BASE_(r2)
/* 800887AC 000856EC  D0 7F 00 C8 */	stfs f3, 0xc8(r31)
/* 800887B0 000856F0  38 00 00 28 */	li r0, 0x28
/* 800887B4 000856F4  90 1F 00 CC */	stw r0, 0xcc(r31)
/* 800887B8 000856F8  C0 22 8E 58 */	lfs f1, lbl_80452858-_SDA2_BASE_(r2)
/* 800887BC 000856FC  D0 3F 00 D0 */	stfs f1, 0xd0(r31)
/* 800887C0 00085700  C0 22 8E 9C */	lfs f1, lbl_8045289C-_SDA2_BASE_(r2)
/* 800887C4 00085704  D0 3F 00 6C */	stfs f1, 0x6c(r31)
/* 800887C8 00085708  C0 22 8E A0 */	lfs f1, lbl_804528A0-_SDA2_BASE_(r2)
/* 800887CC 0008570C  D0 3F 00 70 */	stfs f1, 0x70(r31)
/* 800887D0 00085710  90 7F 00 74 */	stw r3, 0x74(r31)
/* 800887D4 00085714  38 80 00 1E */	li r4, 0x1e
/* 800887D8 00085718  90 9F 00 94 */	stw r4, 0x94(r31)
/* 800887DC 0008571C  D0 5F 00 88 */	stfs f2, 0x88(r31)
/* 800887E0 00085720  D1 3F 00 90 */	stfs f9, 0x90(r31)
/* 800887E4 00085724  C0 42 8E 40 */	lfs f2, lbl_80452840-_SDA2_BASE_(r2)
/* 800887E8 00085728  D0 5F 00 8C */	stfs f2, 0x8c(r31)
/* 800887EC 0008572C  D0 7F 00 78 */	stfs f3, 0x78(r31)
/* 800887F0 00085730  C0 22 8E 28 */	lfs f1, lbl_80452828-_SDA2_BASE_(r2)
/* 800887F4 00085734  D0 3F 00 7C */	stfs f1, 0x7c(r31)
/* 800887F8 00085738  D0 5F 00 80 */	stfs f2, 0x80(r31)
/* 800887FC 0008573C  C0 22 8E A4 */	lfs f1, lbl_804528A4-_SDA2_BASE_(r2)
/* 80088800 00085740  D0 3F 00 84 */	stfs f1, 0x84(r31)
/* 80088804 00085744  D0 BF 00 D4 */	stfs f5, 0xd4(r31)
/* 80088808 00085748  D0 FF 00 D8 */	stfs f7, 0xd8(r31)
/* 8008880C 0008574C  C0 22 8E 34 */	lfs f1, lbl_80452834-_SDA2_BASE_(r2)
/* 80088810 00085750  D0 3F 00 98 */	stfs f1, 0x98(r31)
/* 80088814 00085754  D0 9F 00 A0 */	stfs f4, 0xa0(r31)
/* 80088818 00085758  38 00 00 3C */	li r0, 0x3c
/* 8008881C 0008575C  B0 1F 00 DC */	sth r0, 0xdc(r31)
/* 80088820 00085760  38 60 00 78 */	li r3, 0x78
/* 80088824 00085764  B0 7F 00 DE */	sth r3, 0xde(r31)
/* 80088828 00085768  A0 1F 00 08 */	lhz r0, 8(r31)
/* 8008882C 0008576C  60 00 48 00 */	ori r0, r0, 0x4800
/* 80088830 00085770  B0 1F 00 08 */	sth r0, 8(r31)
/* 80088834 00085774  C0 42 8D C8 */	lfs f2, lbl_804527C8-_SDA2_BASE_(r2)
/* 80088838 00085778  D0 5F 01 5C */	stfs f2, 0x15c(r31)
/* 8008883C 0008577C  D0 5F 01 60 */	stfs f2, 0x160(r31)
/* 80088840 00085780  A0 1F 00 08 */	lhz r0, 8(r31)
/* 80088844 00085784  60 00 08 00 */	ori r0, r0, 0x800
/* 80088848 00085788  B0 1F 00 08 */	sth r0, 8(r31)
/* 8008884C 0008578C  90 7F 01 64 */	stw r3, 0x164(r31)
/* 80088850 00085790  D1 1F 01 68 */	stfs f8, 0x168(r31)
/* 80088854 00085794  C0 22 8E A8 */	lfs f1, lbl_804528A8-_SDA2_BASE_(r2)
/* 80088858 00085798  D0 3F 01 6C */	stfs f1, 0x16c(r31)
/* 8008885C 0008579C  D0 DF 00 E0 */	stfs f6, 0xe0(r31)
/* 80088860 000857A0  38 00 00 19 */	li r0, 0x19
/* 80088864 000857A4  90 1F 00 EC */	stw r0, 0xec(r31)
/* 80088868 000857A8  C0 22 8E AC */	lfs f1, lbl_804528AC-_SDA2_BASE_(r2)
/* 8008886C 000857AC  D0 3F 00 F4 */	stfs f1, 0xf4(r31)
/* 80088870 000857B0  D0 1F 00 F8 */	stfs f0, 0xf8(r31)
/* 80088874 000857B4  38 00 00 0C */	li r0, 0xc
/* 80088878 000857B8  90 1F 00 F0 */	stw r0, 0xf0(r31)
/* 8008887C 000857BC  C0 02 8E B0 */	lfs f0, lbl_804528B0-_SDA2_BASE_(r2)
/* 80088880 000857C0  D0 1F 00 E4 */	stfs f0, 0xe4(r31)
/* 80088884 000857C4  D0 5F 00 E8 */	stfs f2, 0xe8(r31)
/* 80088888 000857C8  90 9F 01 70 */	stw r4, 0x170(r31)
/* 8008888C 000857CC  38 00 02 58 */	li r0, 0x258
/* 80088890 000857D0  90 1F 01 74 */	stw r0, 0x174(r31)
/* 80088894 000857D4  90 7F 01 78 */	stw r3, 0x178(r31)
/* 80088898 000857D8  48 0F 8D A9 */	bl dCam_getBody
/* 8008889C 000857DC  48 0F 81 A5 */	bl dCamera_c_NS_EventRecoverNotime
/* 800888A0 000857E0  7F E3 FB 78 */	mr r3, r31
/* 800888A4 000857E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800888A8 000857E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800888AC 000857EC  7C 08 03 A6 */	mtlr r0
/* 800888B0 000857F0  38 21 00 10 */	addi r1, r1, 0x10
/* 800888B4 000857F4  4E 80 00 20 */	blr 

.global dCamSetup_c_NS_dtor
dCamSetup_c_NS_dtor:
/* 800888B8 000857F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800888BC 000857FC  7C 08 02 A6 */	mflr r0
/* 800888C0 00085800  90 01 00 14 */	stw r0, 0x14(r1)
/* 800888C4 00085804  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800888C8 00085808  7C 7F 1B 79 */	or. r31, r3, r3
/* 800888CC 0008580C  41 82 00 34 */	beq lbl_80088900
/* 800888D0 00085810  3C 60 80 3B */	lis r3, lbl_803AC500@ha
/* 800888D4 00085814  38 03 C5 00 */	addi r0, r3, lbl_803AC500@l
/* 800888D8 00085818  90 1F 00 FC */	stw r0, 0xfc(r31)
/* 800888DC 0008581C  34 1F 01 00 */	addic. r0, r31, 0x100
/* 800888E0 00085820  41 82 00 10 */	beq lbl_800888F0
/* 800888E4 00085824  3C 60 80 3B */	lis r3, lbl_803AC518@ha
/* 800888E8 00085828  38 03 C5 18 */	addi r0, r3, lbl_803AC518@l
/* 800888EC 0008582C  90 1F 01 10 */	stw r0, 0x110(r31)
lbl_800888F0:
/* 800888F0 00085830  7C 80 07 35 */	extsh. r0, r4
/* 800888F4 00085834  40 81 00 0C */	ble lbl_80088900
/* 800888F8 00085838  7F E3 FB 78 */	mr r3, r31
/* 800888FC 0008583C  48 24 64 41 */	bl __dl__FPv
lbl_80088900:
/* 80088900 00085840  7F E3 FB 78 */	mr r3, r31
/* 80088904 00085844  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80088908 00085848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8008890C 0008584C  7C 08 03 A6 */	mtlr r0
/* 80088910 00085850  38 21 00 10 */	addi r1, r1, 0x10
/* 80088914 00085854  4E 80 00 20 */	blr 

.global dCamSetup_c_NS_CheckLatitudeRange
dCamSetup_c_NS_CheckLatitudeRange:
/* 80088918 00085858  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8008891C 0008585C  C0 22 8E B4 */	lfs f1, lbl_804528B4-_SDA2_BASE_(r2)
/* 80088920 00085860  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 80088924 00085864  EC 01 00 32 */	fmuls f0, f1, f0
/* 80088928 00085868  FC 00 00 1E */	fctiwz f0, f0
/* 8008892C 0008586C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80088930 00085870  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80088934 00085874  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 80088938 00085878  EC 01 00 32 */	fmuls f0, f1, f0
/* 8008893C 0008587C  FC 00 00 1E */	fctiwz f0, f0
/* 80088940 00085880  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80088944 00085884  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80088948 00085888  A8 C4 00 00 */	lha r6, 0(r4)
/* 8008894C 0008588C  7C A0 07 34 */	extsh r0, r5
/* 80088950 00085890  7C 06 00 00 */	cmpw r6, r0
/* 80088954 00085894  40 81 00 10 */	ble lbl_80088964
/* 80088958 00085898  B0 A4 00 00 */	sth r5, 0(r4)
/* 8008895C 0008589C  38 60 00 00 */	li r3, 0
/* 80088960 000858A0  48 00 00 20 */	b lbl_80088980
lbl_80088964:
/* 80088964 000858A4  7C 60 07 34 */	extsh r0, r3
/* 80088968 000858A8  7C 06 00 00 */	cmpw r6, r0
/* 8008896C 000858AC  40 80 00 10 */	bge lbl_8008897C
/* 80088970 000858B0  B0 64 00 00 */	sth r3, 0(r4)
/* 80088974 000858B4  38 60 00 00 */	li r3, 0
/* 80088978 000858B8  48 00 00 08 */	b lbl_80088980
lbl_8008897C:
/* 8008897C 000858BC  38 60 00 01 */	li r3, 1
lbl_80088980:
/* 80088980 000858C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80088984 000858C4  4E 80 00 20 */	blr 

.global dCamSetup_c_NS_PlayerHideDist
dCamSetup_c_NS_PlayerHideDist:
/* 80088988 000858C8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8008898C 000858CC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80088990 000858D0  80 84 5D B4 */	lwz r4, 0x5db4(r4)
/* 80088994 000858D4  80 04 05 74 */	lwz r0, 0x574(r4)
/* 80088998 000858D8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8008899C 000858DC  41 82 00 0C */	beq lbl_800889A8
/* 800889A0 000858E0  C0 22 8E 54 */	lfs f1, lbl_80452854-_SDA2_BASE_(r2)
/* 800889A4 000858E4  4E 80 00 20 */	blr 
lbl_800889A8:
/* 800889A8 000858E8  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 800889AC 000858EC  4E 80 00 20 */	blr 
/* 800889B0 000858F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800889B4 000858F4  7C 08 02 A6 */	mflr r0
/* 800889B8 000858F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800889BC 000858FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800889C0 00085900  7C 7F 1B 79 */	or. r31, r3, r3
/* 800889C4 00085904  41 82 00 1C */	beq lbl_800889E0
/* 800889C8 00085908  3C A0 80 3B */	lis r5, lbl_803AC518@ha
/* 800889CC 0008590C  38 05 C5 18 */	addi r0, r5, lbl_803AC518@l
/* 800889D0 00085910  90 1F 00 10 */	stw r0, 0x10(r31)
/* 800889D4 00085914  7C 80 07 35 */	extsh. r0, r4
/* 800889D8 00085918  40 81 00 08 */	ble lbl_800889E0
/* 800889DC 0008591C  48 24 63 61 */	bl __dl__FPv
lbl_800889E0:
/* 800889E0 00085920  7F E3 FB 78 */	mr r3, r31
/* 800889E4 00085924  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800889E8 00085928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800889EC 0008592C  7C 08 03 A6 */	mtlr r0
/* 800889F0 00085930  38 21 00 10 */	addi r1, r1, 0x10
/* 800889F4 00085934  4E 80 00 20 */	blr 

