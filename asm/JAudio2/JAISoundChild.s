.include "macros.inc"

.section .text, "ax" # 802a2ab0


.global init__13JAISoundChildFv
init__13JAISoundChildFv:
/* 802A2AB0 0029F9F0  C0 42 BD D8 */	lfs f2, lbl_804557D8-_SDA2_BASE_(r2)
/* 802A2AB4 0029F9F4  D0 43 00 00 */	stfs f2, 0(r3)
/* 802A2AB8 0029F9F8  D0 43 00 08 */	stfs f2, 8(r3)
/* 802A2ABC 0029F9FC  C0 22 BD DC */	lfs f1, lbl_804557DC-_SDA2_BASE_(r2)
/* 802A2AC0 0029FA00  D0 23 00 04 */	stfs f1, 4(r3)
/* 802A2AC4 0029FA04  C0 02 BD E0 */	lfs f0, lbl_804557E0-_SDA2_BASE_(r2)
/* 802A2AC8 0029FA08  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802A2ACC 0029FA0C  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 802A2AD0 0029FA10  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 802A2AD4 0029FA14  38 00 00 00 */	li r0, 0
/* 802A2AD8 0029FA18  90 03 00 1C */	stw r0, 0x1c(r3)
/* 802A2ADC 0029FA1C  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 802A2AE0 0029FA20  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 802A2AE4 0029FA24  90 03 00 28 */	stw r0, 0x28(r3)
/* 802A2AE8 0029FA28  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 802A2AEC 0029FA2C  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 802A2AF0 0029FA30  90 03 00 34 */	stw r0, 0x34(r3)
/* 802A2AF4 0029FA34  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 802A2AF8 0029FA38  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 802A2AFC 0029FA3C  90 03 00 40 */	stw r0, 0x40(r3)
/* 802A2B00 0029FA40  D0 23 00 3C */	stfs f1, 0x3c(r3)
/* 802A2B04 0029FA44  D0 23 00 44 */	stfs f1, 0x44(r3)
/* 802A2B08 0029FA48  90 03 00 4C */	stw r0, 0x4c(r3)
/* 802A2B0C 0029FA4C  D0 23 00 48 */	stfs f1, 0x48(r3)
/* 802A2B10 0029FA50  D0 43 00 50 */	stfs f2, 0x50(r3)
/* 802A2B14 0029FA54  D0 43 00 58 */	stfs f2, 0x58(r3)
/* 802A2B18 0029FA58  D0 23 00 54 */	stfs f1, 0x54(r3)
/* 802A2B1C 0029FA5C  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 802A2B20 0029FA60  D0 23 00 60 */	stfs f1, 0x60(r3)
/* 802A2B24 0029FA64  4E 80 00 20 */	blr 

.global mixOut__13JAISoundChildFP8JASTrack
mixOut__13JAISoundChildFP8JASTrack:
/* 802A2B28 0029FA68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A2B2C 0029FA6C  7C 08 02 A6 */	mflr r0
/* 802A2B30 0029FA70  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A2B34 0029FA74  7C 65 1B 78 */	mr r5, r3
/* 802A2B38 0029FA78  C0 03 00 00 */	lfs f0, 0(r3)
/* 802A2B3C 0029FA7C  D4 05 00 50 */	stfsu f0, 0x50(r5)
/* 802A2B40 0029FA80  C0 03 00 04 */	lfs f0, 4(r3)
/* 802A2B44 0029FA84  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 802A2B48 0029FA88  C0 03 00 08 */	lfs f0, 8(r3)
/* 802A2B4C 0029FA8C  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 802A2B50 0029FA90  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 802A2B54 0029FA94  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 802A2B58 0029FA98  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 802A2B5C 0029FA9C  D0 03 00 60 */	stfs f0, 0x60(r3)
/* 802A2B60 0029FAA0  7C 83 23 78 */	mr r3, r4
/* 802A2B64 0029FAA4  38 80 00 00 */	li r4, 0
/* 802A2B68 0029FAA8  4B FE EE 8D */	bl assignExtBuffer__8JASTrackFUlP14JASSoundParams
/* 802A2B6C 0029FAAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A2B70 0029FAB0  7C 08 03 A6 */	mtlr r0
/* 802A2B74 0029FAB4  38 21 00 10 */	addi r1, r1, 0x10
/* 802A2B78 0029FAB8  4E 80 00 20 */	blr 

.global calc__13JAISoundChildFv
calc__13JAISoundChildFv:
/* 802A2B7C 0029FABC  C0 23 00 00 */	lfs f1, 0(r3)
/* 802A2B80 0029FAC0  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 802A2B84 0029FAC4  28 04 00 01 */	cmplwi r4, 1
/* 802A2B88 0029FAC8  40 81 00 18 */	ble lbl_802A2BA0
/* 802A2B8C 0029FACC  38 04 FF FF */	addi r0, r4, -1
/* 802A2B90 0029FAD0  90 03 00 1C */	stw r0, 0x1c(r3)
/* 802A2B94 0029FAD4  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 802A2B98 0029FAD8  EC 21 00 2A */	fadds f1, f1, f0
/* 802A2B9C 0029FADC  48 00 00 14 */	b lbl_802A2BB0
lbl_802A2BA0:
/* 802A2BA0 0029FAE0  40 82 00 10 */	bne lbl_802A2BB0
/* 802A2BA4 0029FAE4  38 00 00 00 */	li r0, 0
/* 802A2BA8 0029FAE8  90 03 00 1C */	stw r0, 0x1c(r3)
/* 802A2BAC 0029FAEC  C0 23 00 18 */	lfs f1, 0x18(r3)
lbl_802A2BB0:
/* 802A2BB0 0029FAF0  D0 23 00 00 */	stfs f1, 0(r3)
/* 802A2BB4 0029FAF4  C0 23 00 08 */	lfs f1, 8(r3)
/* 802A2BB8 0029FAF8  80 83 00 28 */	lwz r4, 0x28(r3)
/* 802A2BBC 0029FAFC  28 04 00 01 */	cmplwi r4, 1
/* 802A2BC0 0029FB00  40 81 00 18 */	ble lbl_802A2BD8
/* 802A2BC4 0029FB04  38 04 FF FF */	addi r0, r4, -1
/* 802A2BC8 0029FB08  90 03 00 28 */	stw r0, 0x28(r3)
/* 802A2BCC 0029FB0C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802A2BD0 0029FB10  EC 21 00 2A */	fadds f1, f1, f0
/* 802A2BD4 0029FB14  48 00 00 14 */	b lbl_802A2BE8
lbl_802A2BD8:
/* 802A2BD8 0029FB18  40 82 00 10 */	bne lbl_802A2BE8
/* 802A2BDC 0029FB1C  38 00 00 00 */	li r0, 0
/* 802A2BE0 0029FB20  90 03 00 28 */	stw r0, 0x28(r3)
/* 802A2BE4 0029FB24  C0 23 00 24 */	lfs f1, 0x24(r3)
lbl_802A2BE8:
/* 802A2BE8 0029FB28  D0 23 00 08 */	stfs f1, 8(r3)
/* 802A2BEC 0029FB2C  C0 23 00 04 */	lfs f1, 4(r3)
/* 802A2BF0 0029FB30  80 83 00 34 */	lwz r4, 0x34(r3)
/* 802A2BF4 0029FB34  28 04 00 01 */	cmplwi r4, 1
/* 802A2BF8 0029FB38  40 81 00 18 */	ble lbl_802A2C10
/* 802A2BFC 0029FB3C  38 04 FF FF */	addi r0, r4, -1
/* 802A2C00 0029FB40  90 03 00 34 */	stw r0, 0x34(r3)
/* 802A2C04 0029FB44  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 802A2C08 0029FB48  EC 21 00 2A */	fadds f1, f1, f0
/* 802A2C0C 0029FB4C  48 00 00 14 */	b lbl_802A2C20
lbl_802A2C10:
/* 802A2C10 0029FB50  40 82 00 10 */	bne lbl_802A2C20
/* 802A2C14 0029FB54  38 00 00 00 */	li r0, 0
/* 802A2C18 0029FB58  90 03 00 34 */	stw r0, 0x34(r3)
/* 802A2C1C 0029FB5C  C0 23 00 30 */	lfs f1, 0x30(r3)
lbl_802A2C20:
/* 802A2C20 0029FB60  D0 23 00 04 */	stfs f1, 4(r3)
/* 802A2C24 0029FB64  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 802A2C28 0029FB68  80 83 00 4C */	lwz r4, 0x4c(r3)
/* 802A2C2C 0029FB6C  28 04 00 01 */	cmplwi r4, 1
/* 802A2C30 0029FB70  40 81 00 18 */	ble lbl_802A2C48
/* 802A2C34 0029FB74  38 04 FF FF */	addi r0, r4, -1
/* 802A2C38 0029FB78  90 03 00 4C */	stw r0, 0x4c(r3)
/* 802A2C3C 0029FB7C  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 802A2C40 0029FB80  EC 21 00 2A */	fadds f1, f1, f0
/* 802A2C44 0029FB84  48 00 00 14 */	b lbl_802A2C58
lbl_802A2C48:
/* 802A2C48 0029FB88  40 82 00 10 */	bne lbl_802A2C58
/* 802A2C4C 0029FB8C  38 00 00 00 */	li r0, 0
/* 802A2C50 0029FB90  90 03 00 4C */	stw r0, 0x4c(r3)
/* 802A2C54 0029FB94  C0 23 00 48 */	lfs f1, 0x48(r3)
lbl_802A2C58:
/* 802A2C58 0029FB98  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 802A2C5C 0029FB9C  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 802A2C60 0029FBA0  80 83 00 40 */	lwz r4, 0x40(r3)
/* 802A2C64 0029FBA4  28 04 00 01 */	cmplwi r4, 1
/* 802A2C68 0029FBA8  40 81 00 18 */	ble lbl_802A2C80
/* 802A2C6C 0029FBAC  38 04 FF FF */	addi r0, r4, -1
/* 802A2C70 0029FBB0  90 03 00 40 */	stw r0, 0x40(r3)
/* 802A2C74 0029FBB4  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 802A2C78 0029FBB8  EC 21 00 2A */	fadds f1, f1, f0
/* 802A2C7C 0029FBBC  48 00 00 14 */	b lbl_802A2C90
lbl_802A2C80:
/* 802A2C80 0029FBC0  40 82 00 10 */	bne lbl_802A2C90
/* 802A2C84 0029FBC4  38 00 00 00 */	li r0, 0
/* 802A2C88 0029FBC8  90 03 00 40 */	stw r0, 0x40(r3)
/* 802A2C8C 0029FBCC  C0 23 00 3C */	lfs f1, 0x3c(r3)
lbl_802A2C90:
/* 802A2C90 0029FBD0  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 802A2C94 0029FBD4  4E 80 00 20 */	blr 

