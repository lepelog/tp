.include "macros.inc"

.section .text, "ax" # 802dc23c


.global __dt__14JSUInputStreamFv
__dt__14JSUInputStreamFv:
/* 802DC23C 002D917C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DC240 002D9180  7C 08 02 A6 */	mflr r0
/* 802DC244 002D9184  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DC248 002D9188  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DC24C 002D918C  7C 7F 1B 79 */	or. r31, r3, r3
/* 802DC250 002D9190  41 82 00 30 */	beq lbl_802DC280
/* 802DC254 002D9194  3C 60 80 3D */	lis r3, lbl_803CC4D4@ha
/* 802DC258 002D9198  38 03 C4 D4 */	addi r0, r3, lbl_803CC4D4@l
/* 802DC25C 002D919C  90 1F 00 00 */	stw r0, 0(r31)
/* 802DC260 002D91A0  41 82 00 10 */	beq lbl_802DC270
/* 802DC264 002D91A4  3C 60 80 3C */	lis r3, lbl_803C2DF8@ha
/* 802DC268 002D91A8  38 03 2D F8 */	addi r0, r3, lbl_803C2DF8@l
/* 802DC26C 002D91AC  90 1F 00 00 */	stw r0, 0(r31)
lbl_802DC270:
/* 802DC270 002D91B0  7C 80 07 35 */	extsh. r0, r4
/* 802DC274 002D91B4  40 81 00 0C */	ble lbl_802DC280
/* 802DC278 002D91B8  7F E3 FB 78 */	mr r3, r31
/* 802DC27C 002D91BC  4B FF 2A C1 */	bl __dl__FPv
lbl_802DC280:
/* 802DC280 002D91C0  7F E3 FB 78 */	mr r3, r31
/* 802DC284 002D91C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DC288 002D91C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DC28C 002D91CC  7C 08 03 A6 */	mtlr r0
/* 802DC290 002D91D0  38 21 00 10 */	addi r1, r1, 0x10
/* 802DC294 002D91D4  4E 80 00 20 */	blr 

.global read__14JSUInputStreamFPvl
read__14JSUInputStreamFPvl:
/* 802DC298 002D91D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DC29C 002D91DC  7C 08 02 A6 */	mflr r0
/* 802DC2A0 002D91E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DC2A4 002D91E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DC2A8 002D91E8  93 C1 00 08 */	stw r30, 8(r1)
/* 802DC2AC 002D91EC  7C 7E 1B 78 */	mr r30, r3
/* 802DC2B0 002D91F0  7C BF 2B 78 */	mr r31, r5
/* 802DC2B4 002D91F4  81 83 00 00 */	lwz r12, 0(r3)
/* 802DC2B8 002D91F8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802DC2BC 002D91FC  7D 89 03 A6 */	mtctr r12
/* 802DC2C0 002D9200  4E 80 04 21 */	bctrl 
/* 802DC2C4 002D9204  7C 03 F8 00 */	cmpw r3, r31
/* 802DC2C8 002D9208  41 82 00 10 */	beq lbl_802DC2D8
/* 802DC2CC 002D920C  88 1E 00 04 */	lbz r0, 4(r30)
/* 802DC2D0 002D9210  60 00 00 01 */	ori r0, r0, 1
/* 802DC2D4 002D9214  98 1E 00 04 */	stb r0, 4(r30)
lbl_802DC2D8:
/* 802DC2D8 002D9218  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DC2DC 002D921C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DC2E0 002D9220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DC2E4 002D9224  7C 08 03 A6 */	mtlr r0
/* 802DC2E8 002D9228  38 21 00 10 */	addi r1, r1, 0x10
/* 802DC2EC 002D922C  4E 80 00 20 */	blr 
/* 802DC2F0 002D9230  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DC2F4 002D9234  7C 08 02 A6 */	mflr r0
/* 802DC2F8 002D9238  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DC2FC 002D923C  39 61 00 20 */	addi r11, r1, 0x20
/* 802DC300 002D9240  48 08 5E DD */	bl _savegpr_29
/* 802DC304 002D9244  7C 7D 1B 78 */	mr r29, r3
/* 802DC308 002D9248  7C 9E 23 78 */	mr r30, r4
/* 802DC30C 002D924C  3B E0 00 00 */	li r31, 0
/* 802DC310 002D9250  48 00 00 3C */	b lbl_802DC34C
lbl_802DC314:
/* 802DC314 002D9254  7F A3 EB 78 */	mr r3, r29
/* 802DC318 002D9258  38 81 00 08 */	addi r4, r1, 8
/* 802DC31C 002D925C  38 A0 00 01 */	li r5, 1
/* 802DC320 002D9260  81 9D 00 00 */	lwz r12, 0(r29)
/* 802DC324 002D9264  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802DC328 002D9268  7D 89 03 A6 */	mtctr r12
/* 802DC32C 002D926C  4E 80 04 21 */	bctrl 
/* 802DC330 002D9270  28 03 00 01 */	cmplwi r3, 1
/* 802DC334 002D9274  41 82 00 14 */	beq lbl_802DC348
/* 802DC338 002D9278  88 1D 00 04 */	lbz r0, 4(r29)
/* 802DC33C 002D927C  60 00 00 01 */	ori r0, r0, 1
/* 802DC340 002D9280  98 1D 00 04 */	stb r0, 4(r29)
/* 802DC344 002D9284  48 00 00 10 */	b lbl_802DC354
lbl_802DC348:
/* 802DC348 002D9288  3B FF 00 01 */	addi r31, r31, 1
lbl_802DC34C:
/* 802DC34C 002D928C  7C 1F F0 00 */	cmpw r31, r30
/* 802DC350 002D9290  41 80 FF C4 */	blt lbl_802DC314
lbl_802DC354:
/* 802DC354 002D9294  7F E3 FB 78 */	mr r3, r31
/* 802DC358 002D9298  39 61 00 20 */	addi r11, r1, 0x20
/* 802DC35C 002D929C  48 08 5E CD */	bl _restgpr_29
/* 802DC360 002D92A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DC364 002D92A4  7C 08 03 A6 */	mtlr r0
/* 802DC368 002D92A8  38 21 00 20 */	addi r1, r1, 0x20
/* 802DC36C 002D92AC  4E 80 00 20 */	blr 

.global align__20JSURandomInputStreamFl
align__20JSURandomInputStreamFl:
/* 802DC370 002D92B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DC374 002D92B4  7C 08 02 A6 */	mflr r0
/* 802DC378 002D92B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DC37C 002D92BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DC380 002D92C0  93 C1 00 08 */	stw r30, 8(r1)
/* 802DC384 002D92C4  7C 7E 1B 78 */	mr r30, r3
/* 802DC388 002D92C8  7C 9F 23 78 */	mr r31, r4
/* 802DC38C 002D92CC  81 83 00 00 */	lwz r12, 0(r3)
/* 802DC390 002D92D0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802DC394 002D92D4  7D 89 03 A6 */	mtctr r12
/* 802DC398 002D92D8  4E 80 04 21 */	bctrl 
/* 802DC39C 002D92DC  7C 9F 1A 14 */	add r4, r31, r3
/* 802DC3A0 002D92E0  38 84 FF FF */	addi r4, r4, -1
/* 802DC3A4 002D92E4  38 1F FF FF */	addi r0, r31, -1
/* 802DC3A8 002D92E8  7C 84 00 78 */	andc r4, r4, r0
/* 802DC3AC 002D92EC  7F E3 20 51 */	subf. r31, r3, r4
/* 802DC3B0 002D92F0  41 82 00 30 */	beq lbl_802DC3E0
/* 802DC3B4 002D92F4  7F C3 F3 78 */	mr r3, r30
/* 802DC3B8 002D92F8  38 A0 00 00 */	li r5, 0
/* 802DC3BC 002D92FC  81 9E 00 00 */	lwz r12, 0(r30)
/* 802DC3C0 002D9300  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802DC3C4 002D9304  7D 89 03 A6 */	mtctr r12
/* 802DC3C8 002D9308  4E 80 04 21 */	bctrl 
/* 802DC3CC 002D930C  7C 03 F8 00 */	cmpw r3, r31
/* 802DC3D0 002D9310  41 82 00 10 */	beq lbl_802DC3E0
/* 802DC3D4 002D9314  88 1E 00 04 */	lbz r0, 4(r30)
/* 802DC3D8 002D9318  60 00 00 01 */	ori r0, r0, 1
/* 802DC3DC 002D931C  98 1E 00 04 */	stb r0, 4(r30)
lbl_802DC3E0:
/* 802DC3E0 002D9320  7F E3 FB 78 */	mr r3, r31
/* 802DC3E4 002D9324  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DC3E8 002D9328  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DC3EC 002D932C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DC3F0 002D9330  7C 08 03 A6 */	mtlr r0
/* 802DC3F4 002D9334  38 21 00 10 */	addi r1, r1, 0x10
/* 802DC3F8 002D9338  4E 80 00 20 */	blr 
/* 802DC3FC 002D933C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DC400 002D9340  7C 08 02 A6 */	mflr r0
/* 802DC404 002D9344  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DC408 002D9348  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DC40C 002D934C  93 C1 00 08 */	stw r30, 8(r1)
/* 802DC410 002D9350  7C 7E 1B 78 */	mr r30, r3
/* 802DC414 002D9354  7C 9F 23 78 */	mr r31, r4
/* 802DC418 002D9358  38 A0 00 01 */	li r5, 1
/* 802DC41C 002D935C  81 83 00 00 */	lwz r12, 0(r3)
/* 802DC420 002D9360  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802DC424 002D9364  7D 89 03 A6 */	mtctr r12
/* 802DC428 002D9368  4E 80 04 21 */	bctrl 
/* 802DC42C 002D936C  7C 03 F8 00 */	cmpw r3, r31
/* 802DC430 002D9370  41 82 00 10 */	beq lbl_802DC440
/* 802DC434 002D9374  88 1E 00 04 */	lbz r0, 4(r30)
/* 802DC438 002D9378  60 00 00 01 */	ori r0, r0, 1
/* 802DC43C 002D937C  98 1E 00 04 */	stb r0, 4(r30)
lbl_802DC440:
/* 802DC440 002D9380  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DC444 002D9384  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DC448 002D9388  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DC44C 002D938C  7C 08 03 A6 */	mtlr r0
/* 802DC450 002D9390  38 21 00 10 */	addi r1, r1, 0x10
/* 802DC454 002D9394  4E 80 00 20 */	blr 

.global peek__20JSURandomInputStreamFPvl
peek__20JSURandomInputStreamFPvl:
/* 802DC458 002D9398  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DC45C 002D939C  7C 08 02 A6 */	mflr r0
/* 802DC460 002D93A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DC464 002D93A4  39 61 00 20 */	addi r11, r1, 0x20
/* 802DC468 002D93A8  48 08 5D 71 */	bl _savegpr_28
/* 802DC46C 002D93AC  7C 7C 1B 78 */	mr r28, r3
/* 802DC470 002D93B0  7C 9D 23 78 */	mr r29, r4
/* 802DC474 002D93B4  7C BE 2B 78 */	mr r30, r5
/* 802DC478 002D93B8  81 83 00 00 */	lwz r12, 0(r3)
/* 802DC47C 002D93BC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802DC480 002D93C0  7D 89 03 A6 */	mtctr r12
/* 802DC484 002D93C4  4E 80 04 21 */	bctrl 
/* 802DC488 002D93C8  7C 7F 1B 78 */	mr r31, r3
/* 802DC48C 002D93CC  7F 83 E3 78 */	mr r3, r28
/* 802DC490 002D93D0  7F A4 EB 78 */	mr r4, r29
/* 802DC494 002D93D4  7F C5 F3 78 */	mr r5, r30
/* 802DC498 002D93D8  4B FF FE 01 */	bl read__14JSUInputStreamFPvl
/* 802DC49C 002D93DC  7C 7E 1B 79 */	or. r30, r3, r3
/* 802DC4A0 002D93E0  41 82 00 20 */	beq lbl_802DC4C0
/* 802DC4A4 002D93E4  7F 83 E3 78 */	mr r3, r28
/* 802DC4A8 002D93E8  7F E4 FB 78 */	mr r4, r31
/* 802DC4AC 002D93EC  38 A0 00 00 */	li r5, 0
/* 802DC4B0 002D93F0  81 9C 00 00 */	lwz r12, 0(r28)
/* 802DC4B4 002D93F4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802DC4B8 002D93F8  7D 89 03 A6 */	mtctr r12
/* 802DC4BC 002D93FC  4E 80 04 21 */	bctrl 
lbl_802DC4C0:
/* 802DC4C0 002D9400  7F C3 F3 78 */	mr r3, r30
/* 802DC4C4 002D9404  39 61 00 20 */	addi r11, r1, 0x20
/* 802DC4C8 002D9408  48 08 5D 5D */	bl _restgpr_28
/* 802DC4CC 002D940C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DC4D0 002D9410  7C 08 03 A6 */	mtlr r0
/* 802DC4D4 002D9414  38 21 00 20 */	addi r1, r1, 0x20
/* 802DC4D8 002D9418  4E 80 00 20 */	blr 

.global seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
seek__20JSURandomInputStreamFl17JSUStreamSeekFrom:
/* 802DC4DC 002D941C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DC4E0 002D9420  7C 08 02 A6 */	mflr r0
/* 802DC4E4 002D9424  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DC4E8 002D9428  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DC4EC 002D942C  7C 7F 1B 78 */	mr r31, r3
/* 802DC4F0 002D9430  81 83 00 00 */	lwz r12, 0(r3)
/* 802DC4F4 002D9434  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802DC4F8 002D9438  7D 89 03 A6 */	mtctr r12
/* 802DC4FC 002D943C  4E 80 04 21 */	bctrl 
/* 802DC500 002D9440  88 1F 00 04 */	lbz r0, 4(r31)
/* 802DC504 002D9444  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 802DC508 002D9448  98 1F 00 04 */	stb r0, 4(r31)
/* 802DC50C 002D944C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DC510 002D9450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DC514 002D9454  7C 08 03 A6 */	mtlr r0
/* 802DC518 002D9458  38 21 00 10 */	addi r1, r1, 0x10
/* 802DC51C 002D945C  4E 80 00 20 */	blr 

