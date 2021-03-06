.include "macros.inc"

.section .text, "ax" # 802a30d4


.global JAIStream_JASAramStreamCallback_
JAIStream_JASAramStreamCallback_:
/* 802A30D4 002A0014  2C 03 00 01 */	cmpwi r3, 1
/* 802A30D8 002A0018  41 82 00 14 */	beq lbl_802A30EC
/* 802A30DC 002A001C  4C 80 00 20 */	bgelr 
/* 802A30E0 002A0020  2C 03 00 00 */	cmpwi r3, 0
/* 802A30E4 002A0024  40 80 00 14 */	bge lbl_802A30F8
/* 802A30E8 002A0028  4E 80 00 20 */	blr 
lbl_802A30EC:
/* 802A30EC 002A002C  38 00 00 01 */	li r0, 1
/* 802A30F0 002A0030  98 05 02 C5 */	stb r0, 0x2c5(r5)
/* 802A30F4 002A0034  4E 80 00 20 */	blr 
lbl_802A30F8:
/* 802A30F8 002A0038  38 00 00 01 */	li r0, 1
/* 802A30FC 002A003C  98 05 02 C6 */	stb r0, 0x2c6(r5)
/* 802A3100 002A0040  4E 80 00 20 */	blr 

.global JAIStream
JAIStream:
/* 802A3104 002A0044  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A3108 002A0048  7C 08 02 A6 */	mflr r0
/* 802A310C 002A004C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A3110 002A0050  39 61 00 20 */	addi r11, r1, 0x20
/* 802A3114 002A0054  48 0B F0 C9 */	bl _savegpr_29
/* 802A3118 002A0058  7C 7D 1B 78 */	mr r29, r3
/* 802A311C 002A005C  7C 9E 23 78 */	mr r30, r4
/* 802A3120 002A0060  7C BF 2B 78 */	mr r31, r5
/* 802A3124 002A0064  4B FF F1 D5 */	bl JAISound
/* 802A3128 002A0068  38 7D 00 98 */	addi r3, r29, 0x98
/* 802A312C 002A006C  7F A4 EB 78 */	mr r4, r29
/* 802A3130 002A0070  48 03 8C CD */	bl JSUPtrLink
/* 802A3134 002A0074  3C 60 80 3D */	lis r3, lbl_803C99D8@ha
/* 802A3138 002A0078  38 03 99 D8 */	addi r0, r3, lbl_803C99D8@l
/* 802A313C 002A007C  90 1D 00 00 */	stw r0, 0(r29)
/* 802A3140 002A0080  38 7D 00 A8 */	addi r3, r29, 0xa8
/* 802A3144 002A0084  4B FF 32 65 */	bl JASAramStream
/* 802A3148 002A0088  38 80 00 00 */	li r4, 0
/* 802A314C 002A008C  90 9D 02 90 */	stw r4, 0x290(r29)
/* 802A3150 002A0090  93 FD 02 C0 */	stw r31, 0x2c0(r29)
/* 802A3154 002A0094  93 DD 02 B8 */	stw r30, 0x2b8(r29)
/* 802A3158 002A0098  90 9D 02 9C */	stw r4, 0x29c(r29)
/* 802A315C 002A009C  98 9D 02 C5 */	stb r4, 0x2c5(r29)
/* 802A3160 002A00A0  98 9D 02 C6 */	stb r4, 0x2c6(r29)
/* 802A3164 002A00A4  7C 83 23 78 */	mr r3, r4
/* 802A3168 002A00A8  38 00 00 06 */	li r0, 6
/* 802A316C 002A00AC  7C 09 03 A6 */	mtctr r0
lbl_802A3170:
/* 802A3170 002A00B0  38 03 02 A0 */	addi r0, r3, 0x2a0
/* 802A3174 002A00B4  7C 9D 01 2E */	stwx r4, r29, r0
/* 802A3178 002A00B8  38 63 00 04 */	addi r3, r3, 4
/* 802A317C 002A00BC  42 00 FF F4 */	bdnz lbl_802A3170
/* 802A3180 002A00C0  7F A3 EB 78 */	mr r3, r29
/* 802A3184 002A00C4  39 61 00 20 */	addi r11, r1, 0x20
/* 802A3188 002A00C8  48 0B F0 A1 */	bl _restgpr_29
/* 802A318C 002A00CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A3190 002A00D0  7C 08 03 A6 */	mtlr r0
/* 802A3194 002A00D4  38 21 00 20 */	addi r1, r1, 0x20
/* 802A3198 002A00D8  4E 80 00 20 */	blr 

.global JAIStream_NS_JAIStreamMgr_startID_
JAIStream_NS_JAIStreamMgr_startID_:
/* 802A319C 002A00DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A31A0 002A00E0  7C 08 02 A6 */	mflr r0
/* 802A31A4 002A00E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A31A8 002A00E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A31AC 002A00EC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802A31B0 002A00F0  7C 7E 1B 78 */	mr r30, r3
/* 802A31B4 002A00F4  7C 9F 23 78 */	mr r31, r4
/* 802A31B8 002A00F8  91 03 02 98 */	stw r8, 0x298(r3)
/* 802A31BC 002A00FC  90 A3 02 94 */	stw r5, 0x294(r3)
/* 802A31C0 002A0100  80 04 00 00 */	lwz r0, 0(r4)
/* 802A31C4 002A0104  90 01 00 0C */	stw r0, 0xc(r1)
/* 802A31C8 002A0108  38 81 00 0C */	addi r4, r1, 0xc
/* 802A31CC 002A010C  7C C5 33 78 */	mr r5, r6
/* 802A31D0 002A0110  7C E6 3B 78 */	mr r6, r7
/* 802A31D4 002A0114  4B FF F1 55 */	bl JAISound_NS_start_JAISound_
/* 802A31D8 002A0118  38 60 00 00 */	li r3, 0
/* 802A31DC 002A011C  90 7E 02 90 */	stw r3, 0x290(r30)
/* 802A31E0 002A0120  80 1E 02 C0 */	lwz r0, 0x2c0(r30)
/* 802A31E4 002A0124  28 00 00 00 */	cmplwi r0, 0
/* 802A31E8 002A0128  41 82 00 2C */	beq lbl_802A3214
/* 802A31EC 002A012C  80 1F 00 00 */	lwz r0, 0(r31)
/* 802A31F0 002A0130  90 01 00 08 */	stw r0, 8(r1)
/* 802A31F4 002A0134  80 7E 02 C0 */	lwz r3, 0x2c0(r30)
/* 802A31F8 002A0138  38 81 00 08 */	addi r4, r1, 8
/* 802A31FC 002A013C  81 83 00 00 */	lwz r12, 0(r3)
/* 802A3200 002A0140  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A3204 002A0144  7D 89 03 A6 */	mtctr r12
/* 802A3208 002A0148  4E 80 04 21 */	bctrl 
/* 802A320C 002A014C  90 7E 02 BC */	stw r3, 0x2bc(r30)
/* 802A3210 002A0150  48 00 00 08 */	b lbl_802A3218
lbl_802A3214:
/* 802A3214 002A0154  90 7E 02 BC */	stw r3, 0x2bc(r30)
lbl_802A3218:
/* 802A3218 002A0158  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A321C 002A015C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802A3220 002A0160  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A3224 002A0164  7C 08 03 A6 */	mtlr r0
/* 802A3228 002A0168  38 21 00 20 */	addi r1, r1, 0x20
/* 802A322C 002A016C  4E 80 00 20 */	blr 

.global JAIStream_NS_prepare_prepareStream_
JAIStream_NS_prepare_prepareStream_:
/* 802A3230 002A0170  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A3234 002A0174  7C 08 02 A6 */	mflr r0
/* 802A3238 002A0178  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A323C 002A017C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A3240 002A0180  7C 7F 1B 78 */	mr r31, r3
/* 802A3244 002A0184  80 03 02 90 */	lwz r0, 0x290(r3)
/* 802A3248 002A0188  2C 00 00 02 */	cmpwi r0, 2
/* 802A324C 002A018C  41 82 01 60 */	beq lbl_802A33AC
/* 802A3250 002A0190  40 80 00 14 */	bge lbl_802A3264
/* 802A3254 002A0194  2C 00 00 00 */	cmpwi r0, 0
/* 802A3258 002A0198  41 82 00 1C */	beq lbl_802A3274
/* 802A325C 002A019C  40 80 00 7C */	bge lbl_802A32D8
/* 802A3260 002A01A0  48 00 01 7C */	b lbl_802A33DC
lbl_802A3264:
/* 802A3264 002A01A4  2C 00 00 04 */	cmpwi r0, 4
/* 802A3268 002A01A8  41 82 01 74 */	beq lbl_802A33DC
/* 802A326C 002A01AC  40 80 01 70 */	bge lbl_802A33DC
/* 802A3270 002A01B0  48 00 01 64 */	b lbl_802A33D4
lbl_802A3274:
/* 802A3274 002A01B4  80 7F 02 B8 */	lwz r3, 0x2b8(r31)
/* 802A3278 002A01B8  80 63 00 68 */	lwz r3, 0x68(r3)
/* 802A327C 002A01BC  38 81 00 08 */	addi r4, r1, 8
/* 802A3280 002A01C0  81 83 00 00 */	lwz r12, 0(r3)
/* 802A3284 002A01C4  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A3288 002A01C8  7D 89 03 A6 */	mtctr r12
/* 802A328C 002A01CC  4E 80 04 21 */	bctrl 
/* 802A3290 002A01D0  90 7F 02 9C */	stw r3, 0x29c(r31)
/* 802A3294 002A01D4  80 9F 02 9C */	lwz r4, 0x29c(r31)
/* 802A3298 002A01D8  28 04 00 00 */	cmplwi r4, 0
/* 802A329C 002A01DC  41 82 00 30 */	beq lbl_802A32CC
/* 802A32A0 002A01E0  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 802A32A4 002A01E4  80 A1 00 08 */	lwz r5, 8(r1)
.global JAIStream_JASAramStreamCallback_
/* 802A32A8 002A01E8  3C C0 80 2A */	lis r6, JAIStream_JASAramStreamCallback_@ha
.global JAIStream_JASAramStreamCallback_
/* 802A32AC 002A01EC  38 C6 30 D4 */	addi r6, r6, JAIStream_JASAramStreamCallback_@l
/* 802A32B0 002A01F0  7F E7 FB 78 */	mr r7, r31
/* 802A32B4 002A01F4  4B FF 31 E9 */	bl JASAramStream_NS_init
/* 802A32B8 002A01F8  38 00 00 01 */	li r0, 1
/* 802A32BC 002A01FC  90 1F 02 90 */	stw r0, 0x290(r31)
/* 802A32C0 002A0200  38 00 00 00 */	li r0, 0
/* 802A32C4 002A0204  90 1F 00 14 */	stw r0, 0x14(r31)
/* 802A32C8 002A0208  48 00 01 14 */	b lbl_802A33DC
lbl_802A32CC:
/* 802A32CC 002A020C  7F E3 FB 78 */	mr r3, r31
/* 802A32D0 002A0210  4B FF F3 9D */	bl JAISound_NS_increasePrepareCount_JAISound_
/* 802A32D4 002A0214  48 00 01 08 */	b lbl_802A33DC
lbl_802A32D8:
/* 802A32D8 002A0218  80 7F 00 08 */	lwz r3, 8(r31)
/* 802A32DC 002A021C  28 03 00 00 */	cmplwi r3, 0
/* 802A32E0 002A0220  41 82 00 A0 */	beq lbl_802A3380
/* 802A32E4 002A0224  38 80 00 00 */	li r4, 0
/* 802A32E8 002A0228  81 83 00 00 */	lwz r12, 0(r3)
/* 802A32EC 002A022C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A32F0 002A0230  7D 89 03 A6 */	mtctr r12
/* 802A32F4 002A0234  4E 80 04 21 */	bctrl 
/* 802A32F8 002A0238  C0 03 00 08 */	lfs f0, 8(r3)
/* 802A32FC 002A023C  D0 1F 02 20 */	stfs f0, 0x220(r31)
/* 802A3300 002A0240  C0 03 00 00 */	lfs f0, 0(r3)
/* 802A3304 002A0244  38 80 00 00 */	li r4, 0
/* 802A3308 002A0248  38 00 00 06 */	li r0, 6
/* 802A330C 002A024C  7C 09 03 A6 */	mtctr r0
lbl_802A3310:
/* 802A3310 002A0250  38 04 02 24 */	addi r0, r4, 0x224
/* 802A3314 002A0254  7C 1F 05 2E */	stfsx f0, r31, r0
/* 802A3318 002A0258  38 84 00 04 */	addi r4, r4, 4
/* 802A331C 002A025C  42 00 FF F4 */	bdnz lbl_802A3310
/* 802A3320 002A0260  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 802A3324 002A0264  38 80 00 00 */	li r4, 0
/* 802A3328 002A0268  38 00 00 06 */	li r0, 6
/* 802A332C 002A026C  7C 09 03 A6 */	mtctr r0
lbl_802A3330:
/* 802A3330 002A0270  38 04 02 3C */	addi r0, r4, 0x23c
/* 802A3334 002A0274  7C 1F 05 2E */	stfsx f0, r31, r0
/* 802A3338 002A0278  38 84 00 04 */	addi r4, r4, 4
/* 802A333C 002A027C  42 00 FF F4 */	bdnz lbl_802A3330
/* 802A3340 002A0280  C0 03 00 04 */	lfs f0, 4(r3)
/* 802A3344 002A0284  38 80 00 00 */	li r4, 0
/* 802A3348 002A0288  38 00 00 06 */	li r0, 6
/* 802A334C 002A028C  7C 09 03 A6 */	mtctr r0
lbl_802A3350:
/* 802A3350 002A0290  38 04 02 54 */	addi r0, r4, 0x254
/* 802A3354 002A0294  7C 1F 05 2E */	stfsx f0, r31, r0
/* 802A3358 002A0298  38 84 00 04 */	addi r4, r4, 4
/* 802A335C 002A029C  42 00 FF F4 */	bdnz lbl_802A3350
/* 802A3360 002A02A0  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 802A3364 002A02A4  38 60 00 00 */	li r3, 0
/* 802A3368 002A02A8  38 00 00 06 */	li r0, 6
/* 802A336C 002A02AC  7C 09 03 A6 */	mtctr r0
lbl_802A3370:
/* 802A3370 002A02B0  38 03 02 6C */	addi r0, r3, 0x26c
/* 802A3374 002A02B4  7C 1F 05 2E */	stfsx f0, r31, r0
/* 802A3378 002A02B8  38 63 00 04 */	addi r3, r3, 4
/* 802A337C 002A02BC  42 00 FF F4 */	bdnz lbl_802A3370
lbl_802A3380:
/* 802A3380 002A02C0  38 00 00 00 */	li r0, 0
/* 802A3384 002A02C4  98 1F 02 C5 */	stb r0, 0x2c5(r31)
/* 802A3388 002A02C8  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 802A338C 002A02CC  80 9F 02 94 */	lwz r4, 0x294(r31)
/* 802A3390 002A02D0  38 A0 FF FF */	li r5, -1
/* 802A3394 002A02D4  4B FF 31 C9 */	bl JASAramStream_NS_prepare
/* 802A3398 002A02D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A339C 002A02DC  41 82 00 40 */	beq lbl_802A33DC
/* 802A33A0 002A02E0  38 00 00 02 */	li r0, 2
/* 802A33A4 002A02E4  90 1F 02 90 */	stw r0, 0x290(r31)
/* 802A33A8 002A02E8  48 00 00 34 */	b lbl_802A33DC
lbl_802A33AC:
/* 802A33AC 002A02EC  88 1F 02 C5 */	lbz r0, 0x2c5(r31)
/* 802A33B0 002A02F0  28 00 00 00 */	cmplwi r0, 0
/* 802A33B4 002A02F4  41 82 00 18 */	beq lbl_802A33CC
/* 802A33B8 002A02F8  38 00 00 00 */	li r0, 0
/* 802A33BC 002A02FC  98 1F 02 C5 */	stb r0, 0x2c5(r31)
/* 802A33C0 002A0300  38 00 00 03 */	li r0, 3
/* 802A33C4 002A0304  90 1F 02 90 */	stw r0, 0x290(r31)
/* 802A33C8 002A0308  48 00 00 14 */	b lbl_802A33DC
lbl_802A33CC:
/* 802A33CC 002A030C  4B FF F2 A1 */	bl JAISound_NS_increasePrepareCount_JAISound_
/* 802A33D0 002A0310  48 00 00 0C */	b lbl_802A33DC
lbl_802A33D4:
/* 802A33D4 002A0314  38 60 00 01 */	li r3, 1
/* 802A33D8 002A0318  48 00 00 08 */	b lbl_802A33E0
lbl_802A33DC:
/* 802A33DC 002A031C  38 60 00 00 */	li r3, 0
lbl_802A33E0:
/* 802A33E0 002A0320  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A33E4 002A0324  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A33E8 002A0328  7C 08 03 A6 */	mtlr r0
/* 802A33EC 002A032C  38 21 00 20 */	addi r1, r1, 0x20
/* 802A33F0 002A0330  4E 80 00 20 */	blr 

.global JAIStream_NS_prepare_
JAIStream_NS_prepare_:
/* 802A33F4 002A0334  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A33F8 002A0338  7C 08 02 A6 */	mflr r0
/* 802A33FC 002A033C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A3400 002A0340  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A3404 002A0344  7C 7F 1B 78 */	mr r31, r3
/* 802A3408 002A0348  88 03 02 C6 */	lbz r0, 0x2c6(r3)
/* 802A340C 002A034C  28 00 00 00 */	cmplwi r0, 0
/* 802A3410 002A0350  40 82 00 74 */	bne lbl_802A3484
/* 802A3414 002A0354  88 1F 00 1E */	lbz r0, 0x1e(r31)
/* 802A3418 002A0358  2C 00 00 04 */	cmpwi r0, 4
/* 802A341C 002A035C  41 82 00 5C */	beq lbl_802A3478
/* 802A3420 002A0360  40 80 00 64 */	bge lbl_802A3484
/* 802A3424 002A0364  2C 00 00 01 */	cmpwi r0, 1
/* 802A3428 002A0368  41 82 00 38 */	beq lbl_802A3460
/* 802A342C 002A036C  40 80 00 58 */	bge lbl_802A3484
/* 802A3430 002A0370  2C 00 00 00 */	cmpwi r0, 0
/* 802A3434 002A0374  40 80 00 0C */	bge lbl_802A3440
/* 802A3438 002A0378  48 00 00 4C */	b lbl_802A3484
/* 802A343C 002A037C  48 00 00 48 */	b lbl_802A3484
lbl_802A3440:
/* 802A3440 002A0380  4B FF FD F1 */	bl JAIStream_NS_prepare_prepareStream_
/* 802A3444 002A0384  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A3448 002A0388  41 82 00 3C */	beq lbl_802A3484
/* 802A344C 002A038C  38 00 00 05 */	li r0, 5
/* 802A3450 002A0390  98 1F 00 1E */	stb r0, 0x1e(r31)
/* 802A3454 002A0394  7F E3 FB 78 */	mr r3, r31
/* 802A3458 002A0398  48 00 00 41 */	bl JAIStream_NS_prepare_startStream_
/* 802A345C 002A039C  48 00 00 28 */	b lbl_802A3484
lbl_802A3460:
/* 802A3460 002A03A0  4B FF FD D1 */	bl JAIStream_NS_prepare_prepareStream_
/* 802A3464 002A03A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A3468 002A03A8  41 82 00 1C */	beq lbl_802A3484
/* 802A346C 002A03AC  38 00 00 03 */	li r0, 3
/* 802A3470 002A03B0  98 1F 00 1E */	stb r0, 0x1e(r31)
/* 802A3474 002A03B4  48 00 00 10 */	b lbl_802A3484
lbl_802A3478:
/* 802A3478 002A03B8  38 00 00 05 */	li r0, 5
/* 802A347C 002A03BC  98 1F 00 1E */	stb r0, 0x1e(r31)
/* 802A3480 002A03C0  48 00 00 19 */	bl JAIStream_NS_prepare_startStream_
lbl_802A3484:
/* 802A3484 002A03C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A3488 002A03C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A348C 002A03CC  7C 08 03 A6 */	mtlr r0
/* 802A3490 002A03D0  38 21 00 10 */	addi r1, r1, 0x10
/* 802A3494 002A03D4  4E 80 00 20 */	blr 

.global JAIStream_NS_prepare_startStream_
JAIStream_NS_prepare_startStream_:
/* 802A3498 002A03D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A349C 002A03DC  7C 08 02 A6 */	mflr r0
/* 802A34A0 002A03E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A34A4 002A03E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A34A8 002A03E8  7C 7F 1B 78 */	mr r31, r3
/* 802A34AC 002A03EC  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 802A34B0 002A03F0  4B FF 31 69 */	bl JASAramStream_NS_start
/* 802A34B4 002A03F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A34B8 002A03F8  41 82 00 18 */	beq lbl_802A34D0
/* 802A34BC 002A03FC  38 00 00 00 */	li r0, 0
/* 802A34C0 002A0400  98 1F 02 C6 */	stb r0, 0x2c6(r31)
/* 802A34C4 002A0404  98 1F 02 C4 */	stb r0, 0x2c4(r31)
/* 802A34C8 002A0408  38 00 00 04 */	li r0, 4
/* 802A34CC 002A040C  90 1F 02 90 */	stw r0, 0x290(r31)
lbl_802A34D0:
/* 802A34D0 002A0410  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A34D4 002A0414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A34D8 002A0418  7C 08 03 A6 */	mtlr r0
/* 802A34DC 002A041C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A34E0 002A0420  4E 80 00 20 */	blr 

.global JAIStream_NS_JAIStreamMgr_mixOut_
JAIStream_NS_JAIStreamMgr_mixOut_:
/* 802A34E4 002A0424  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802A34E8 002A0428  7C 08 02 A6 */	mflr r0
/* 802A34EC 002A042C  90 01 00 44 */	stw r0, 0x44(r1)
/* 802A34F0 002A0430  39 61 00 40 */	addi r11, r1, 0x40
/* 802A34F4 002A0434  48 0B EC E1 */	bl _savegpr_27
/* 802A34F8 002A0438  7C 7E 1B 78 */	mr r30, r3
/* 802A34FC 002A043C  7C BF 2B 78 */	mr r31, r5
/* 802A3500 002A0440  C0 02 BD F0 */	lfs f0, lbl_804557F0-_SDA2_BASE_(r2)
/* 802A3504 002A0444  D0 01 00 08 */	stfs f0, 8(r1)
/* 802A3508 002A0448  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802A350C 002A044C  C0 22 BD F4 */	lfs f1, lbl_804557F4-_SDA2_BASE_(r2)
/* 802A3510 002A0450  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 802A3514 002A0454  C0 02 BD F8 */	lfs f0, lbl_804557F8-_SDA2_BASE_(r2)
/* 802A3518 002A0458  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802A351C 002A045C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 802A3520 002A0460  38 7E 00 3C */	addi r3, r30, 0x3c
/* 802A3524 002A0464  38 A1 00 08 */	addi r5, r1, 8
/* 802A3528 002A0468  38 C0 00 00 */	li r6, 0
/* 802A352C 002A046C  88 1E 00 1C */	lbz r0, 0x1c(r30)
/* 802A3530 002A0470  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802A3534 002A0474  40 82 00 10 */	bne lbl_802A3544
/* 802A3538 002A0478  88 1F 00 00 */	lbz r0, 0(r31)
/* 802A353C 002A047C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802A3540 002A0480  41 82 00 08 */	beq lbl_802A3548
lbl_802A3544:
/* 802A3544 002A0484  38 C0 00 01 */	li r6, 1
lbl_802A3548:
/* 802A3548 002A0488  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 802A354C 002A048C  41 82 00 0C */	beq lbl_802A3558
/* 802A3550 002A0490  C0 22 BD F4 */	lfs f1, lbl_804557F4-_SDA2_BASE_(r2)
/* 802A3554 002A0494  48 00 00 08 */	b lbl_802A355C
lbl_802A3558:
/* 802A3558 002A0498  C0 3E 00 24 */	lfs f1, 0x24(r30)
lbl_802A355C:
/* 802A355C 002A049C  4B FF ED 25 */	bl JAISoundParams_NS_mixOutAll
/* 802A3560 002A04A0  80 7E 02 BC */	lwz r3, 0x2bc(r30)
/* 802A3564 002A04A4  28 03 00 00 */	cmplwi r3, 0
/* 802A3568 002A04A8  41 82 00 1C */	beq lbl_802A3584
/* 802A356C 002A04AC  7F C4 F3 78 */	mr r4, r30
/* 802A3570 002A04B0  38 A1 00 08 */	addi r5, r1, 8
/* 802A3574 002A04B4  81 83 00 00 */	lwz r12, 0(r3)
/* 802A3578 002A04B8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802A357C 002A04BC  7D 89 03 A6 */	mtctr r12
/* 802A3580 002A04C0  4E 80 04 21 */	bctrl 
lbl_802A3584:
/* 802A3584 002A04C4  3B A1 00 08 */	addi r29, r1, 8
/* 802A3588 002A04C8  80 1E 00 08 */	lwz r0, 8(r30)
/* 802A358C 002A04CC  28 00 00 00 */	cmplwi r0, 0
/* 802A3590 002A04D0  41 82 00 80 */	beq lbl_802A3610
/* 802A3594 002A04D4  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802A3598 002A04D8  28 00 00 00 */	cmplwi r0, 0
/* 802A359C 002A04DC  41 82 00 74 */	beq lbl_802A3610
/* 802A35A0 002A04E0  3B 80 00 00 */	li r28, 0
/* 802A35A4 002A04E4  48 00 00 50 */	b lbl_802A35F4
lbl_802A35A8:
/* 802A35A8 002A04E8  80 7E 00 08 */	lwz r3, 8(r30)
/* 802A35AC 002A04EC  7F 84 E3 78 */	mr r4, r28
/* 802A35B0 002A04F0  81 83 00 00 */	lwz r12, 0(r3)
/* 802A35B4 002A04F4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A35B8 002A04F8  7D 89 03 A6 */	mtctr r12
/* 802A35BC 002A04FC  4E 80 04 21 */	bctrl 
/* 802A35C0 002A0500  7C 7B 1B 79 */	or. r27, r3, r3
/* 802A35C4 002A0504  41 82 00 2C */	beq lbl_802A35F0
/* 802A35C8 002A0508  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802A35CC 002A050C  38 81 00 08 */	addi r4, r1, 8
/* 802A35D0 002A0510  80 BE 00 08 */	lwz r5, 8(r30)
/* 802A35D4 002A0514  7F 86 E3 78 */	mr r6, r28
/* 802A35D8 002A0518  81 83 00 00 */	lwz r12, 0(r3)
/* 802A35DC 002A051C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A35E0 002A0520  7D 89 03 A6 */	mtctr r12
/* 802A35E4 002A0524  4E 80 04 21 */	bctrl 
/* 802A35E8 002A0528  7F 7D DB 78 */	mr r29, r27
/* 802A35EC 002A052C  48 00 00 24 */	b lbl_802A3610
lbl_802A35F0:
/* 802A35F0 002A0530  3B 9C 00 01 */	addi r28, r28, 1
lbl_802A35F4:
/* 802A35F4 002A0534  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802A35F8 002A0538  81 83 00 00 */	lwz r12, 0(r3)
/* 802A35FC 002A053C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802A3600 002A0540  7D 89 03 A6 */	mtctr r12
/* 802A3604 002A0544  4E 80 04 21 */	bctrl 
/* 802A3608 002A0548  7C 1C 18 00 */	cmpw r28, r3
/* 802A360C 002A054C  41 80 FF 9C */	blt lbl_802A35A8
lbl_802A3610:
/* 802A3610 002A0550  38 60 00 00 */	li r3, 0
/* 802A3614 002A0554  38 00 00 06 */	li r0, 6
/* 802A3618 002A0558  7C 09 03 A6 */	mtctr r0
lbl_802A361C:
/* 802A361C 002A055C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 802A3620 002A0560  D0 1E 02 20 */	stfs f0, 0x220(r30)
/* 802A3624 002A0564  7C BE 1A 14 */	add r5, r30, r3
/* 802A3628 002A0568  80 85 02 A0 */	lwz r4, 0x2a0(r5)
/* 802A362C 002A056C  28 04 00 00 */	cmplwi r4, 0
/* 802A3630 002A0570  41 82 00 5C */	beq lbl_802A368C
/* 802A3634 002A0574  C0 24 00 00 */	lfs f1, 0(r4)
/* 802A3638 002A0578  C0 1D 00 00 */	lfs f0, 0(r29)
/* 802A363C 002A057C  EC 01 00 32 */	fmuls f0, f1, f0
/* 802A3640 002A0580  D0 05 02 24 */	stfs f0, 0x224(r5)
/* 802A3644 002A0584  80 85 02 A0 */	lwz r4, 0x2a0(r5)
/* 802A3648 002A0588  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 802A364C 002A058C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 802A3650 002A0590  EC 21 00 2A */	fadds f1, f1, f0
/* 802A3654 002A0594  C0 02 BD F8 */	lfs f0, lbl_804557F8-_SDA2_BASE_(r2)
/* 802A3658 002A0598  EC 01 00 28 */	fsubs f0, f1, f0
/* 802A365C 002A059C  D0 05 02 3C */	stfs f0, 0x23c(r5)
/* 802A3660 002A05A0  80 85 02 A0 */	lwz r4, 0x2a0(r5)
/* 802A3664 002A05A4  C0 24 00 04 */	lfs f1, 4(r4)
/* 802A3668 002A05A8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 802A366C 002A05AC  EC 01 00 2A */	fadds f0, f1, f0
/* 802A3670 002A05B0  D0 05 02 54 */	stfs f0, 0x254(r5)
/* 802A3674 002A05B4  80 85 02 A0 */	lwz r4, 0x2a0(r5)
/* 802A3678 002A05B8  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 802A367C 002A05BC  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 802A3680 002A05C0  EC 01 00 2A */	fadds f0, f1, f0
/* 802A3684 002A05C4  D0 05 02 6C */	stfs f0, 0x26c(r5)
/* 802A3688 002A05C8  48 00 00 24 */	b lbl_802A36AC
lbl_802A368C:
/* 802A368C 002A05CC  C0 1D 00 00 */	lfs f0, 0(r29)
/* 802A3690 002A05D0  D0 05 02 24 */	stfs f0, 0x224(r5)
/* 802A3694 002A05D4  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 802A3698 002A05D8  D0 05 02 3C */	stfs f0, 0x23c(r5)
/* 802A369C 002A05DC  C0 1D 00 04 */	lfs f0, 4(r29)
/* 802A36A0 002A05E0  D0 05 02 54 */	stfs f0, 0x254(r5)
/* 802A36A4 002A05E4  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 802A36A8 002A05E8  D0 05 02 6C */	stfs f0, 0x26c(r5)
lbl_802A36AC:
/* 802A36AC 002A05EC  38 63 00 04 */	addi r3, r3, 4
/* 802A36B0 002A05F0  42 00 FF 6C */	bdnz lbl_802A361C
/* 802A36B4 002A05F4  7F C3 F3 78 */	mr r3, r30
/* 802A36B8 002A05F8  4B FF FD 3D */	bl JAIStream_NS_prepare_
/* 802A36BC 002A05FC  80 1E 02 90 */	lwz r0, 0x290(r30)
/* 802A36C0 002A0600  2C 00 00 04 */	cmpwi r0, 4
/* 802A36C4 002A0604  40 82 00 44 */	bne lbl_802A3708
/* 802A36C8 002A0608  3B A0 00 00 */	li r29, 0
/* 802A36CC 002A060C  88 1E 00 1C */	lbz r0, 0x1c(r30)
/* 802A36D0 002A0610  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 802A36D4 002A0614  40 82 00 10 */	bne lbl_802A36E4
/* 802A36D8 002A0618  88 1F 00 00 */	lbz r0, 0(r31)
/* 802A36DC 002A061C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 802A36E0 002A0620  41 82 00 08 */	beq lbl_802A36E8
lbl_802A36E4:
/* 802A36E4 002A0624  3B A0 00 01 */	li r29, 1
lbl_802A36E8:
/* 802A36E8 002A0628  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 802A36EC 002A062C  88 1E 02 C4 */	lbz r0, 0x2c4(r30)
/* 802A36F0 002A0630  7C 03 00 40 */	cmplw r3, r0
/* 802A36F4 002A0634  41 82 00 14 */	beq lbl_802A3708
/* 802A36F8 002A0638  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 802A36FC 002A063C  7F A4 EB 78 */	mr r4, r29
/* 802A3700 002A0640  4B FF 2F 85 */	bl JASAramStream_NS_pause
/* 802A3704 002A0644  9B BE 02 C4 */	stb r29, 0x2c4(r30)
lbl_802A3708:
/* 802A3708 002A0648  39 61 00 40 */	addi r11, r1, 0x40
/* 802A370C 002A064C  48 0B EB 15 */	bl _restgpr_27
/* 802A3710 002A0650  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802A3714 002A0654  7C 08 03 A6 */	mtlr r0
/* 802A3718 002A0658  38 21 00 40 */	addi r1, r1, 0x40
/* 802A371C 002A065C  4E 80 00 20 */	blr 

.global JAIStream_NS_die_JAIStream_
JAIStream_NS_die_JAIStream_:
/* 802A3720 002A0660  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A3724 002A0664  7C 08 02 A6 */	mflr r0
/* 802A3728 002A0668  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A372C 002A066C  39 61 00 20 */	addi r11, r1, 0x20
/* 802A3730 002A0670  48 0B EA A5 */	bl _savegpr_27
/* 802A3734 002A0674  7C 7D 1B 78 */	mr r29, r3
/* 802A3738 002A0678  4B FF EE B9 */	bl JAISound_NS_die_JAISound_
/* 802A373C 002A067C  3B C0 00 00 */	li r30, 0
/* 802A3740 002A0680  3B 80 00 00 */	li r28, 0
lbl_802A3744:
/* 802A3744 002A0684  3B FC 02 A0 */	addi r31, r28, 0x2a0
/* 802A3748 002A0688  7F 7D F8 2E */	lwzx r27, r29, r31
/* 802A374C 002A068C  28 1B 00 00 */	cmplwi r27, 0
/* 802A3750 002A0690  41 82 00 5C */	beq lbl_802A37AC
/* 802A3754 002A0694  88 0D 8D 98 */	lbz r0, lbl_80451318-_SDA_BASE_(r13)
/* 802A3758 002A0698  7C 00 07 75 */	extsb. r0, r0
/* 802A375C 002A069C  40 82 00 34 */	bne lbl_802A3790
/* 802A3760 002A06A0  3C 60 80 43 */	lis r3, lbl_804340B0@ha
/* 802A3764 002A06A4  38 63 40 B0 */	addi r3, r3, lbl_804340B0@l
/* 802A3768 002A06A8  4B FE D0 E1 */	bl JASGenericMemPool
/* 802A376C 002A06AC  3C 60 80 43 */	lis r3, lbl_804340B0@ha
/* 802A3770 002A06B0  38 63 40 B0 */	addi r3, r3, lbl_804340B0@l
.global JASMemPool_NS_dtor_X1_
/* 802A3774 002A06B4  3C 80 80 2A */	lis r4, JASMemPool_NS_dtor_X1_@ha
.global JASMemPool_NS_dtor_X1_
/* 802A3778 002A06B8  38 84 12 68 */	addi r4, r4, JASMemPool_NS_dtor_X1_@l
/* 802A377C 002A06BC  3C A0 80 43 */	lis r5, lbl_804340E0@ha
/* 802A3780 002A06C0  38 A5 40 E0 */	addi r5, r5, lbl_804340E0@l
/* 802A3784 002A06C4  48 0B E4 A1 */	bl func_80361C24
/* 802A3788 002A06C8  38 00 00 01 */	li r0, 1
/* 802A378C 002A06CC  98 0D 8D 98 */	stb r0, lbl_80451318-_SDA_BASE_(r13)
lbl_802A3790:
/* 802A3790 002A06D0  3C 60 80 43 */	lis r3, lbl_804340B0@ha
/* 802A3794 002A06D4  38 63 40 B0 */	addi r3, r3, lbl_804340B0@l
/* 802A3798 002A06D8  7F 64 DB 78 */	mr r4, r27
/* 802A379C 002A06DC  38 A0 00 64 */	li r5, 0x64
/* 802A37A0 002A06E0  4B FE D1 F5 */	bl JASGenericMemPool_NS_free
/* 802A37A4 002A06E4  38 00 00 00 */	li r0, 0
/* 802A37A8 002A06E8  7C 1D F9 2E */	stwx r0, r29, r31
lbl_802A37AC:
/* 802A37AC 002A06EC  3B DE 00 01 */	addi r30, r30, 1
/* 802A37B0 002A06F0  2C 1E 00 06 */	cmpwi r30, 6
/* 802A37B4 002A06F4  3B 9C 00 04 */	addi r28, r28, 4
/* 802A37B8 002A06F8  41 80 FF 8C */	blt lbl_802A3744
/* 802A37BC 002A06FC  80 9D 02 BC */	lwz r4, 0x2bc(r29)
/* 802A37C0 002A0700  28 04 00 00 */	cmplwi r4, 0
/* 802A37C4 002A0704  41 82 00 20 */	beq lbl_802A37E4
/* 802A37C8 002A0708  80 7D 02 C0 */	lwz r3, 0x2c0(r29)
/* 802A37CC 002A070C  81 83 00 00 */	lwz r12, 0(r3)
/* 802A37D0 002A0710  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802A37D4 002A0714  7D 89 03 A6 */	mtctr r12
/* 802A37D8 002A0718  4E 80 04 21 */	bctrl 
/* 802A37DC 002A071C  38 00 00 00 */	li r0, 0
/* 802A37E0 002A0720  90 1D 02 BC */	stw r0, 0x2bc(r29)
lbl_802A37E4:
/* 802A37E4 002A0724  39 61 00 20 */	addi r11, r1, 0x20
/* 802A37E8 002A0728  48 0B EA 39 */	bl _restgpr_27
/* 802A37EC 002A072C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A37F0 002A0730  7C 08 03 A6 */	mtlr r0
/* 802A37F4 002A0734  38 21 00 20 */	addi r1, r1, 0x20
/* 802A37F8 002A0738  4E 80 00 20 */	blr 
/* 802A37FC 002A073C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A3800 002A0740  7C 08 02 A6 */	mflr r0
/* 802A3804 002A0744  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A3808 002A0748  88 03 02 C6 */	lbz r0, 0x2c6(r3)
/* 802A380C 002A074C  28 00 00 00 */	cmplwi r0, 0
/* 802A3810 002A0750  41 82 00 10 */	beq lbl_802A3820
/* 802A3814 002A0754  4B FF FF 0D */	bl JAIStream_NS_die_JAIStream_
/* 802A3818 002A0758  38 60 00 01 */	li r3, 1
/* 802A381C 002A075C  48 00 00 60 */	b lbl_802A387C
lbl_802A3820:
/* 802A3820 002A0760  80 03 02 90 */	lwz r0, 0x290(r3)
/* 802A3824 002A0764  2C 00 00 04 */	cmpwi r0, 4
/* 802A3828 002A0768  41 82 00 3C */	beq lbl_802A3864
/* 802A382C 002A076C  40 80 00 4C */	bge lbl_802A3878
/* 802A3830 002A0770  2C 00 00 02 */	cmpwi r0, 2
/* 802A3834 002A0774  40 80 00 1C */	bge lbl_802A3850
/* 802A3838 002A0778  2C 00 00 00 */	cmpwi r0, 0
/* 802A383C 002A077C  40 80 00 08 */	bge lbl_802A3844
/* 802A3840 002A0780  48 00 00 38 */	b lbl_802A3878
lbl_802A3844:
/* 802A3844 002A0784  4B FF FE DD */	bl JAIStream_NS_die_JAIStream_
/* 802A3848 002A0788  38 60 00 01 */	li r3, 1
/* 802A384C 002A078C  48 00 00 30 */	b lbl_802A387C
lbl_802A3850:
/* 802A3850 002A0790  38 00 00 05 */	li r0, 5
/* 802A3854 002A0794  90 03 02 90 */	stw r0, 0x290(r3)
/* 802A3858 002A0798  38 63 00 A8 */	addi r3, r3, 0xa8
/* 802A385C 002A079C  4B FF 2E 71 */	bl JASAramStream_NS_cancel
/* 802A3860 002A07A0  48 00 00 18 */	b lbl_802A3878
lbl_802A3864:
/* 802A3864 002A07A4  38 00 00 06 */	li r0, 6
/* 802A3868 002A07A8  90 03 02 90 */	stw r0, 0x290(r3)
/* 802A386C 002A07AC  38 63 00 A8 */	addi r3, r3, 0xa8
/* 802A3870 002A07B0  38 80 00 0A */	li r4, 0xa
/* 802A3874 002A07B4  4B FF 2D D9 */	bl JASAramStream_NS_stop
lbl_802A3878:
/* 802A3878 002A07B8  38 60 00 00 */	li r3, 0
lbl_802A387C:
/* 802A387C 002A07BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A3880 002A07C0  7C 08 03 A6 */	mtlr r0
/* 802A3884 002A07C4  38 21 00 10 */	addi r1, r1, 0x10
/* 802A3888 002A07C8  4E 80 00 20 */	blr 

.global JAIStream_NS_JAIStreamMgr_calc_
JAIStream_NS_JAIStreamMgr_calc_:
/* 802A388C 002A07CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A3890 002A07D0  7C 08 02 A6 */	mflr r0
/* 802A3894 002A07D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A3898 002A07D8  39 61 00 20 */	addi r11, r1, 0x20
/* 802A389C 002A07DC  48 0B E9 41 */	bl _savegpr_29
/* 802A38A0 002A07E0  7C 7D 1B 78 */	mr r29, r3
/* 802A38A4 002A07E4  88 03 02 C6 */	lbz r0, 0x2c6(r3)
/* 802A38A8 002A07E8  28 00 00 00 */	cmplwi r0, 0
/* 802A38AC 002A07EC  41 82 00 28 */	beq lbl_802A38D4
/* 802A38B0 002A07F0  38 60 00 00 */	li r3, 0
/* 802A38B4 002A07F4  90 7D 02 90 */	stw r3, 0x290(r29)
/* 802A38B8 002A07F8  88 1D 00 1F */	lbz r0, 0x1f(r29)
/* 802A38BC 002A07FC  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 802A38C0 002A0800  98 1D 00 1F */	stb r0, 0x1f(r29)
/* 802A38C4 002A0804  38 60 00 01 */	li r3, 1
/* 802A38C8 002A0808  88 1D 00 1F */	lbz r0, 0x1f(r29)
/* 802A38CC 002A080C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802A38D0 002A0810  98 1D 00 1F */	stb r0, 0x1f(r29)
lbl_802A38D4:
/* 802A38D4 002A0814  7F A3 EB 78 */	mr r3, r29
/* 802A38D8 002A0818  4B FF ED E1 */	bl JAISound_NS_calc_JAISound_
/* 802A38DC 002A081C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A38E0 002A0820  41 82 00 50 */	beq lbl_802A3930
/* 802A38E4 002A0824  3B C0 00 00 */	li r30, 0
/* 802A38E8 002A0828  3B E0 00 00 */	li r31, 0
lbl_802A38EC:
/* 802A38EC 002A082C  38 1F 02 A0 */	addi r0, r31, 0x2a0
/* 802A38F0 002A0830  7C 7D 00 2E */	lwzx r3, r29, r0
/* 802A38F4 002A0834  28 03 00 00 */	cmplwi r3, 0
/* 802A38F8 002A0838  41 82 00 08 */	beq lbl_802A3900
/* 802A38FC 002A083C  4B FF F2 81 */	bl JAISoundChild_NS_calc
lbl_802A3900:
/* 802A3900 002A0840  3B DE 00 01 */	addi r30, r30, 1
/* 802A3904 002A0844  2C 1E 00 06 */	cmpwi r30, 6
/* 802A3908 002A0848  3B FF 00 04 */	addi r31, r31, 4
/* 802A390C 002A084C  41 80 FF E0 */	blt lbl_802A38EC
/* 802A3910 002A0850  80 7D 02 BC */	lwz r3, 0x2bc(r29)
/* 802A3914 002A0854  28 03 00 00 */	cmplwi r3, 0
/* 802A3918 002A0858  41 82 00 18 */	beq lbl_802A3930
/* 802A391C 002A085C  7F A4 EB 78 */	mr r4, r29
/* 802A3920 002A0860  81 83 00 00 */	lwz r12, 0(r3)
/* 802A3924 002A0864  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A3928 002A0868  7D 89 03 A6 */	mtctr r12
/* 802A392C 002A086C  4E 80 04 21 */	bctrl 
lbl_802A3930:
/* 802A3930 002A0870  39 61 00 20 */	addi r11, r1, 0x20
/* 802A3934 002A0874  48 0B E8 F5 */	bl _restgpr_29
/* 802A3938 002A0878  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A393C 002A087C  7C 08 03 A6 */	mtlr r0
/* 802A3940 002A0880  38 21 00 20 */	addi r1, r1, 0x20
/* 802A3944 002A0884  4E 80 00 20 */	blr 
/* 802A3948 002A0888  38 60 00 06 */	li r3, 6
/* 802A394C 002A088C  4E 80 00 20 */	blr 
/* 802A3950 002A0890  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A3954 002A0894  7C 08 02 A6 */	mflr r0
/* 802A3958 002A0898  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A395C 002A089C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A3960 002A08A0  93 C1 00 08 */	stw r30, 8(r1)
/* 802A3964 002A08A4  54 80 10 3A */	slwi r0, r4, 2
/* 802A3968 002A08A8  7F C3 02 14 */	add r30, r3, r0
/* 802A396C 002A08AC  80 1E 02 A0 */	lwz r0, 0x2a0(r30)
/* 802A3970 002A08B0  28 00 00 00 */	cmplwi r0, 0
/* 802A3974 002A08B4  40 82 00 94 */	bne lbl_802A3A08
/* 802A3978 002A08B8  88 0D 8D 98 */	lbz r0, lbl_80451318-_SDA_BASE_(r13)
/* 802A397C 002A08BC  7C 00 07 75 */	extsb. r0, r0
/* 802A3980 002A08C0  40 82 00 34 */	bne lbl_802A39B4
/* 802A3984 002A08C4  3C 60 80 43 */	lis r3, lbl_804340B0@ha
/* 802A3988 002A08C8  38 63 40 B0 */	addi r3, r3, lbl_804340B0@l
/* 802A398C 002A08CC  4B FE CE BD */	bl JASGenericMemPool
/* 802A3990 002A08D0  3C 60 80 43 */	lis r3, lbl_804340B0@ha
/* 802A3994 002A08D4  38 63 40 B0 */	addi r3, r3, lbl_804340B0@l
.global JASMemPool_NS_dtor_X1_
/* 802A3998 002A08D8  3C 80 80 2A */	lis r4, JASMemPool_NS_dtor_X1_@ha
.global JASMemPool_NS_dtor_X1_
/* 802A399C 002A08DC  38 84 12 68 */	addi r4, r4, JASMemPool_NS_dtor_X1_@l
/* 802A39A0 002A08E0  3C A0 80 43 */	lis r5, lbl_804340E0@ha
/* 802A39A4 002A08E4  38 A5 40 E0 */	addi r5, r5, lbl_804340E0@l
/* 802A39A8 002A08E8  48 0B E2 7D */	bl func_80361C24
/* 802A39AC 002A08EC  38 00 00 01 */	li r0, 1
/* 802A39B0 002A08F0  98 0D 8D 98 */	stb r0, lbl_80451318-_SDA_BASE_(r13)
lbl_802A39B4:
/* 802A39B4 002A08F4  3C 60 80 43 */	lis r3, lbl_804340B0@ha
/* 802A39B8 002A08F8  38 63 40 B0 */	addi r3, r3, lbl_804340B0@l
/* 802A39BC 002A08FC  38 80 00 64 */	li r4, 0x64
/* 802A39C0 002A0900  4B FE CF 89 */	bl JASGenericMemPool_NS_alloc
/* 802A39C4 002A0904  7C 7F 1B 79 */	or. r31, r3, r3
/* 802A39C8 002A0908  41 82 00 3C */	beq lbl_802A3A04
/* 802A39CC 002A090C  C0 42 BD F0 */	lfs f2, lbl_804557F0-_SDA2_BASE_(r2)
/* 802A39D0 002A0910  D0 5F 00 00 */	stfs f2, 0(r31)
/* 802A39D4 002A0914  D0 5F 00 08 */	stfs f2, 8(r31)
/* 802A39D8 002A0918  C0 22 BD F4 */	lfs f1, lbl_804557F4-_SDA2_BASE_(r2)
/* 802A39DC 002A091C  D0 3F 00 04 */	stfs f1, 4(r31)
/* 802A39E0 002A0920  C0 02 BD F8 */	lfs f0, lbl_804557F8-_SDA2_BASE_(r2)
/* 802A39E4 002A0924  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 802A39E8 002A0928  D0 3F 00 10 */	stfs f1, 0x10(r31)
/* 802A39EC 002A092C  D0 5F 00 50 */	stfs f2, 0x50(r31)
/* 802A39F0 002A0930  D0 5F 00 58 */	stfs f2, 0x58(r31)
/* 802A39F4 002A0934  D0 3F 00 54 */	stfs f1, 0x54(r31)
/* 802A39F8 002A0938  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 802A39FC 002A093C  D0 3F 00 60 */	stfs f1, 0x60(r31)
/* 802A3A00 002A0940  4B FF F0 B1 */	bl JAISoundChild_NS_init
lbl_802A3A04:
/* 802A3A04 002A0944  93 FE 02 A0 */	stw r31, 0x2a0(r30)
lbl_802A3A08:
/* 802A3A08 002A0948  80 7E 02 A0 */	lwz r3, 0x2a0(r30)
/* 802A3A0C 002A094C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A3A10 002A0950  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A3A14 002A0954  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A3A18 002A0958  7C 08 03 A6 */	mtlr r0
/* 802A3A1C 002A095C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A3A20 002A0960  4E 80 00 20 */	blr 
/* 802A3A24 002A0964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A3A28 002A0968  7C 08 02 A6 */	mflr r0
/* 802A3A2C 002A096C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A3A30 002A0970  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A3A34 002A0974  93 C1 00 08 */	stw r30, 8(r1)
/* 802A3A38 002A0978  54 80 10 3A */	slwi r0, r4, 2
/* 802A3A3C 002A097C  7F C3 02 14 */	add r30, r3, r0
/* 802A3A40 002A0980  83 FE 02 A0 */	lwz r31, 0x2a0(r30)
/* 802A3A44 002A0984  28 1F 00 00 */	cmplwi r31, 0
/* 802A3A48 002A0988  41 82 00 5C */	beq lbl_802A3AA4
/* 802A3A4C 002A098C  88 0D 8D 98 */	lbz r0, lbl_80451318-_SDA_BASE_(r13)
/* 802A3A50 002A0990  7C 00 07 75 */	extsb. r0, r0
/* 802A3A54 002A0994  40 82 00 34 */	bne lbl_802A3A88
/* 802A3A58 002A0998  3C 60 80 43 */	lis r3, lbl_804340B0@ha
/* 802A3A5C 002A099C  38 63 40 B0 */	addi r3, r3, lbl_804340B0@l
/* 802A3A60 002A09A0  4B FE CD E9 */	bl JASGenericMemPool
/* 802A3A64 002A09A4  3C 60 80 43 */	lis r3, lbl_804340B0@ha
/* 802A3A68 002A09A8  38 63 40 B0 */	addi r3, r3, lbl_804340B0@l
.global JASMemPool_NS_dtor_X1_
/* 802A3A6C 002A09AC  3C 80 80 2A */	lis r4, JASMemPool_NS_dtor_X1_@ha
.global JASMemPool_NS_dtor_X1_
/* 802A3A70 002A09B0  38 84 12 68 */	addi r4, r4, JASMemPool_NS_dtor_X1_@l
/* 802A3A74 002A09B4  3C A0 80 43 */	lis r5, lbl_804340E0@ha
/* 802A3A78 002A09B8  38 A5 40 E0 */	addi r5, r5, lbl_804340E0@l
/* 802A3A7C 002A09BC  48 0B E1 A9 */	bl func_80361C24
/* 802A3A80 002A09C0  38 00 00 01 */	li r0, 1
/* 802A3A84 002A09C4  98 0D 8D 98 */	stb r0, lbl_80451318-_SDA_BASE_(r13)
lbl_802A3A88:
/* 802A3A88 002A09C8  3C 60 80 43 */	lis r3, lbl_804340B0@ha
/* 802A3A8C 002A09CC  38 63 40 B0 */	addi r3, r3, lbl_804340B0@l
/* 802A3A90 002A09D0  7F E4 FB 78 */	mr r4, r31
/* 802A3A94 002A09D4  38 A0 00 64 */	li r5, 0x64
/* 802A3A98 002A09D8  4B FE CE FD */	bl JASGenericMemPool_NS_free
/* 802A3A9C 002A09DC  38 00 00 00 */	li r0, 0
/* 802A3AA0 002A09E0  90 1E 02 A0 */	stw r0, 0x2a0(r30)
lbl_802A3AA4:
/* 802A3AA4 002A09E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A3AA8 002A09E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A3AAC 002A09EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A3AB0 002A09F0  7C 08 03 A6 */	mtlr r0
/* 802A3AB4 002A09F4  38 21 00 10 */	addi r1, r1, 0x10
/* 802A3AB8 002A09F8  4E 80 00 20 */	blr 
/* 802A3ABC 002A09FC  38 60 00 00 */	li r3, 0
/* 802A3AC0 002A0A00  4E 80 00 20 */	blr 
/* 802A3AC4 002A0A04  38 60 00 00 */	li r3, 0
/* 802A3AC8 002A0A08  4E 80 00 20 */	blr 
/* 802A3ACC 002A0A0C  4E 80 00 20 */	blr 
/* 802A3AD0 002A0A10  38 60 00 00 */	li r3, 0
/* 802A3AD4 002A0A14  4E 80 00 20 */	blr 

