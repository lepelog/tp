.include "macros.inc"

.section .text, "ax" # 8023c0dc


.global dMsgScrnBase_c
dMsgScrnBase_c:
/* 8023C0DC 0023901C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023C0E0 00239020  7C 08 02 A6 */	mflr r0
/* 8023C0E4 00239024  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023C0E8 00239028  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023C0EC 0023902C  7C 7F 1B 78 */	mr r31, r3
/* 8023C0F0 00239030  3C 80 80 3A */	lis r4, lbl_803A6F88@ha
/* 8023C0F4 00239034  38 04 6F 88 */	addi r0, r4, lbl_803A6F88@l
/* 8023C0F8 00239038  90 03 00 00 */	stw r0, 0(r3)
/* 8023C0FC 0023903C  3C 80 80 3C */	lis r4, lbl_803C0D58@ha
/* 8023C100 00239040  38 04 0D 58 */	addi r0, r4, lbl_803C0D58@l
/* 8023C104 00239044  90 03 00 00 */	stw r0, 0(r3)
/* 8023C108 00239048  48 00 00 65 */	bl init__14dMsgScrnBase_cFv
/* 8023C10C 0023904C  7F E3 FB 78 */	mr r3, r31
/* 8023C110 00239050  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023C114 00239054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C118 00239058  7C 08 03 A6 */	mtlr r0
/* 8023C11C 0023905C  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C120 00239060  4E 80 00 20 */	blr 

.global __dt__14dMsgScrnBase_cFv
__dt__14dMsgScrnBase_cFv:
/* 8023C124 00239064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023C128 00239068  7C 08 02 A6 */	mflr r0
/* 8023C12C 0023906C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023C130 00239070  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023C134 00239074  7C 7F 1B 79 */	or. r31, r3, r3
/* 8023C138 00239078  41 82 00 1C */	beq lbl_8023C154
/* 8023C13C 0023907C  3C A0 80 3C */	lis r5, lbl_803C0D58@ha
/* 8023C140 00239080  38 05 0D 58 */	addi r0, r5, lbl_803C0D58@l
/* 8023C144 00239084  90 1F 00 00 */	stw r0, 0(r31)
/* 8023C148 00239088  7C 80 07 35 */	extsh. r0, r4
/* 8023C14C 0023908C  40 81 00 08 */	ble lbl_8023C154
/* 8023C150 00239090  48 09 2B ED */	bl __dl__FPv
lbl_8023C154:
/* 8023C154 00239094  7F E3 FB 78 */	mr r3, r31
/* 8023C158 00239098  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023C15C 0023909C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C160 002390A0  7C 08 03 A6 */	mtlr r0
/* 8023C164 002390A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C168 002390A8  4E 80 00 20 */	blr 

.global init__14dMsgScrnBase_cFv
init__14dMsgScrnBase_cFv:
/* 8023C16C 002390AC  38 A0 00 00 */	li r5, 0
/* 8023C170 002390B0  90 A3 00 04 */	stw r5, 4(r3)
/* 8023C174 002390B4  90 A3 00 08 */	stw r5, 8(r3)
/* 8023C178 002390B8  90 A3 00 54 */	stw r5, 0x54(r3)
/* 8023C17C 002390BC  7C A4 2B 78 */	mr r4, r5
/* 8023C180 002390C0  38 00 00 07 */	li r0, 7
/* 8023C184 002390C4  7C 09 03 A6 */	mtctr r0
lbl_8023C188:
/* 8023C188 002390C8  7C C3 22 14 */	add r6, r3, r4
/* 8023C18C 002390CC  90 A6 00 0C */	stw r5, 0xc(r6)
/* 8023C190 002390D0  90 A6 00 28 */	stw r5, 0x28(r6)
/* 8023C194 002390D4  38 84 00 04 */	addi r4, r4, 4
/* 8023C198 002390D8  42 00 FF F0 */	bdnz lbl_8023C188
/* 8023C19C 002390DC  38 00 00 00 */	li r0, 0
/* 8023C1A0 002390E0  90 03 00 44 */	stw r0, 0x44(r3)
/* 8023C1A4 002390E4  90 03 00 48 */	stw r0, 0x48(r3)
/* 8023C1A8 002390E8  90 03 00 4C */	stw r0, 0x4c(r3)
/* 8023C1AC 002390EC  90 03 00 50 */	stw r0, 0x50(r3)
/* 8023C1B0 002390F0  C0 22 B1 A8 */	lfs f1, lbl_80454BA8-_SDA2_BASE_(r2)
/* 8023C1B4 002390F4  D0 23 00 5C */	stfs f1, 0x5c(r3)
/* 8023C1B8 002390F8  D0 23 00 58 */	stfs f1, 0x58(r3)
/* 8023C1BC 002390FC  D0 23 00 60 */	stfs f1, 0x60(r3)
/* 8023C1C0 00239100  D0 23 00 64 */	stfs f1, 0x64(r3)
/* 8023C1C4 00239104  D0 23 00 68 */	stfs f1, 0x68(r3)
/* 8023C1C8 00239108  C0 02 B1 AC */	lfs f0, lbl_80454BAC-_SDA2_BASE_(r2)
/* 8023C1CC 0023910C  D0 03 00 6C */	stfs f0, 0x6c(r3)
/* 8023C1D0 00239110  D0 03 00 70 */	stfs f0, 0x70(r3)
/* 8023C1D4 00239114  D0 23 00 74 */	stfs f1, 0x74(r3)
/* 8023C1D8 00239118  D0 23 00 78 */	stfs f1, 0x78(r3)
/* 8023C1DC 0023911C  D0 23 00 7C */	stfs f1, 0x7c(r3)
/* 8023C1E0 00239120  D0 23 00 80 */	stfs f1, 0x80(r3)
/* 8023C1E4 00239124  D0 23 00 84 */	stfs f1, 0x84(r3)
/* 8023C1E8 00239128  D0 23 00 88 */	stfs f1, 0x88(r3)
/* 8023C1EC 0023912C  D0 23 00 8C */	stfs f1, 0x8c(r3)
/* 8023C1F0 00239130  38 80 00 00 */	li r4, 0
/* 8023C1F4 00239134  38 00 00 03 */	li r0, 3
/* 8023C1F8 00239138  7C 09 03 A6 */	mtctr r0
lbl_8023C1FC:
/* 8023C1FC 0023913C  7C A3 22 14 */	add r5, r3, r4
/* 8023C200 00239140  D0 25 00 90 */	stfs f1, 0x90(r5)
/* 8023C204 00239144  D0 25 00 9C */	stfs f1, 0x9c(r5)
/* 8023C208 00239148  38 84 00 04 */	addi r4, r4, 4
/* 8023C20C 0023914C  42 00 FF F0 */	bdnz lbl_8023C1FC
/* 8023C210 00239150  C0 02 B1 A8 */	lfs f0, lbl_80454BA8-_SDA2_BASE_(r2)
/* 8023C214 00239154  D0 03 00 A8 */	stfs f0, 0xa8(r3)
/* 8023C218 00239158  D0 03 00 AC */	stfs f0, 0xac(r3)
/* 8023C21C 0023915C  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 8023C220 00239160  D0 03 00 B4 */	stfs f0, 0xb4(r3)
/* 8023C224 00239164  D0 03 00 B8 */	stfs f0, 0xb8(r3)
/* 8023C228 00239168  C0 02 B1 AC */	lfs f0, lbl_80454BAC-_SDA2_BASE_(r2)
/* 8023C22C 0023916C  D0 03 00 BC */	stfs f0, 0xbc(r3)
/* 8023C230 00239170  4E 80 00 20 */	blr 
/* 8023C234 00239174  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023C238 00239178  7C 08 02 A6 */	mflr r0
/* 8023C23C 0023917C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023C240 00239180  80 C3 00 48 */	lwz r6, 0x48(r3)
/* 8023C244 00239184  28 06 00 00 */	cmplwi r6, 0
/* 8023C248 00239188  41 82 00 1C */	beq lbl_8023C264
/* 8023C24C 0023918C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8023C250 00239190  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8023C254 00239194  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 8023C258 00239198  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 8023C25C 0023919C  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 8023C260 002391A0  4B E1 A5 35 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_8023C264:
/* 8023C264 002391A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C268 002391A8  7C 08 03 A6 */	mtlr r0
/* 8023C26C 002391AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C270 002391B0  4E 80 00 20 */	blr 
/* 8023C274 002391B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023C278 002391B8  7C 08 02 A6 */	mflr r0
/* 8023C27C 002391BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023C280 002391C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023C284 002391C4  93 C1 00 08 */	stw r30, 8(r1)
/* 8023C288 002391C8  7C 7E 1B 78 */	mr r30, r3
/* 8023C28C 002391CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8023C290 002391D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8023C294 002391D4  83 E3 5F 50 */	lwz r31, 0x5f50(r3)
/* 8023C298 002391D8  7F E3 FB 78 */	mr r3, r31
/* 8023C29C 002391DC  81 9F 00 00 */	lwz r12, 0(r31)
/* 8023C2A0 002391E0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8023C2A4 002391E4  7D 89 03 A6 */	mtctr r12
/* 8023C2A8 002391E8  4E 80 04 21 */	bctrl 
/* 8023C2AC 002391EC  80 7E 00 04 */	lwz r3, 4(r30)
/* 8023C2B0 002391F0  C0 22 B1 A8 */	lfs f1, lbl_80454BA8-_SDA2_BASE_(r2)
/* 8023C2B4 002391F4  FC 40 08 90 */	fmr f2, f1
/* 8023C2B8 002391F8  7F E4 FB 78 */	mr r4, r31
/* 8023C2BC 002391FC  48 0B CC 19 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 8023C2C0 00239200  7F C3 F3 78 */	mr r3, r30
/* 8023C2C4 00239204  81 9E 00 00 */	lwz r12, 0(r30)
/* 8023C2C8 00239208  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8023C2CC 0023920C  7D 89 03 A6 */	mtctr r12
/* 8023C2D0 00239210  4E 80 04 21 */	bctrl 
/* 8023C2D4 00239214  7F E3 FB 78 */	mr r3, r31
/* 8023C2D8 00239218  81 9F 00 00 */	lwz r12, 0(r31)
/* 8023C2DC 0023921C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8023C2E0 00239220  7D 89 03 A6 */	mtctr r12
/* 8023C2E4 00239224  4E 80 04 21 */	bctrl 
/* 8023C2E8 00239228  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023C2EC 0023922C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8023C2F0 00239230  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C2F4 00239234  7C 08 03 A6 */	mtlr r0
/* 8023C2F8 00239238  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C2FC 0023923C  4E 80 00 20 */	blr 
/* 8023C300 00239240  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023C304 00239244  7C 08 02 A6 */	mflr r0
/* 8023C308 00239248  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023C30C 0023924C  C0 22 B1 A8 */	lfs f1, lbl_80454BA8-_SDA2_BASE_(r2)
/* 8023C310 00239250  FC 40 08 90 */	fmr f2, f1
/* 8023C314 00239254  C0 62 B1 AC */	lfs f3, lbl_80454BAC-_SDA2_BASE_(r2)
/* 8023C318 00239258  48 00 00 15 */	bl drawOutFont__14dMsgScrnBase_cFfff
/* 8023C31C 0023925C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C320 00239260  7C 08 03 A6 */	mtlr r0
/* 8023C324 00239264  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C328 00239268  4E 80 00 20 */	blr 

.global drawOutFont__14dMsgScrnBase_cFfff
drawOutFont__14dMsgScrnBase_cFfff:
/* 8023C32C 0023926C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023C330 00239270  7C 08 02 A6 */	mflr r0
/* 8023C334 00239274  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023C338 00239278  80 63 00 44 */	lwz r3, 0x44(r3)
/* 8023C33C 0023927C  38 80 00 00 */	li r4, 0
/* 8023C340 00239280  81 83 00 00 */	lwz r12, 0(r3)
/* 8023C344 00239284  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8023C348 00239288  7D 89 03 A6 */	mtctr r12
/* 8023C34C 0023928C  4E 80 04 21 */	bctrl 
/* 8023C350 00239290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C354 00239294  7C 08 03 A6 */	mtlr r0
/* 8023C358 00239298  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C35C 0023929C  4E 80 00 20 */	blr 

.global setString__14dMsgScrnBase_cFPcPc
setString__14dMsgScrnBase_cFPcPc:
/* 8023C360 002392A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023C364 002392A4  7C 08 02 A6 */	mflr r0
/* 8023C368 002392A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023C36C 002392AC  39 61 00 20 */	addi r11, r1, 0x20
/* 8023C370 002392B0  48 12 5E 65 */	bl _savegpr_27
/* 8023C374 002392B4  7C 7B 1B 78 */	mr r27, r3
/* 8023C378 002392B8  7C 9C 23 78 */	mr r28, r4
/* 8023C37C 002392BC  7C BD 2B 78 */	mr r29, r5
/* 8023C380 002392C0  3B C0 00 00 */	li r30, 0
/* 8023C384 002392C4  3B E0 00 00 */	li r31, 0
lbl_8023C388:
/* 8023C388 002392C8  38 1F 00 0C */	addi r0, r31, 0xc
/* 8023C38C 002392CC  7C 7B 00 2E */	lwzx r3, r27, r0
/* 8023C390 002392D0  28 03 00 00 */	cmplwi r3, 0
/* 8023C394 002392D4  41 82 00 30 */	beq lbl_8023C3C4
/* 8023C398 002392D8  2C 1E 00 00 */	cmpwi r30, 0
/* 8023C39C 002392DC  40 82 00 18 */	bne lbl_8023C3B4
/* 8023C3A0 002392E0  80 63 00 04 */	lwz r3, 4(r3)
/* 8023C3A4 002392E4  48 0C 42 B5 */	bl getStringPtr__10J2DTextBoxCFv
/* 8023C3A8 002392E8  7F 84 E3 78 */	mr r4, r28
/* 8023C3AC 002392EC  48 12 C7 81 */	bl strcpy
/* 8023C3B0 002392F0  48 00 00 14 */	b lbl_8023C3C4
lbl_8023C3B4:
/* 8023C3B4 002392F4  80 63 00 04 */	lwz r3, 4(r3)
/* 8023C3B8 002392F8  48 0C 42 A1 */	bl getStringPtr__10J2DTextBoxCFv
/* 8023C3BC 002392FC  7F A4 EB 78 */	mr r4, r29
/* 8023C3C0 00239300  48 12 C7 6D */	bl strcpy
lbl_8023C3C4:
/* 8023C3C4 00239304  3B DE 00 01 */	addi r30, r30, 1
/* 8023C3C8 00239308  2C 1E 00 07 */	cmpwi r30, 7
/* 8023C3CC 0023930C  3B FF 00 04 */	addi r31, r31, 4
/* 8023C3D0 00239310  41 80 FF B8 */	blt lbl_8023C388
/* 8023C3D4 00239314  39 61 00 20 */	addi r11, r1, 0x20
/* 8023C3D8 00239318  48 12 5E 49 */	bl _restgpr_27
/* 8023C3DC 0023931C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023C3E0 00239320  7C 08 03 A6 */	mtlr r0
/* 8023C3E4 00239324  38 21 00 20 */	addi r1, r1, 0x20
/* 8023C3E8 00239328  4E 80 00 20 */	blr 

.global setRubyString__14dMsgScrnBase_cFPc
setRubyString__14dMsgScrnBase_cFPc:
/* 8023C3EC 0023932C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023C3F0 00239330  7C 08 02 A6 */	mflr r0
/* 8023C3F4 00239334  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023C3F8 00239338  39 61 00 20 */	addi r11, r1, 0x20
/* 8023C3FC 0023933C  48 12 5D DD */	bl _savegpr_28
/* 8023C400 00239340  7C 7C 1B 78 */	mr r28, r3
/* 8023C404 00239344  7C 9D 23 78 */	mr r29, r4
/* 8023C408 00239348  3B C0 00 00 */	li r30, 0
/* 8023C40C 0023934C  3B E0 00 00 */	li r31, 0
lbl_8023C410:
/* 8023C410 00239350  38 1F 00 28 */	addi r0, r31, 0x28
/* 8023C414 00239354  7C 7C 00 2E */	lwzx r3, r28, r0
/* 8023C418 00239358  28 03 00 00 */	cmplwi r3, 0
/* 8023C41C 0023935C  41 82 00 14 */	beq lbl_8023C430
/* 8023C420 00239360  80 63 00 04 */	lwz r3, 4(r3)
/* 8023C424 00239364  48 0C 42 35 */	bl getStringPtr__10J2DTextBoxCFv
/* 8023C428 00239368  7F A4 EB 78 */	mr r4, r29
/* 8023C42C 0023936C  48 12 C7 01 */	bl strcpy
lbl_8023C430:
/* 8023C430 00239370  3B DE 00 01 */	addi r30, r30, 1
/* 8023C434 00239374  2C 1E 00 03 */	cmpwi r30, 3
/* 8023C438 00239378  3B FF 00 04 */	addi r31, r31, 4
/* 8023C43C 0023937C  41 80 FF D4 */	blt lbl_8023C410
/* 8023C440 00239380  39 61 00 20 */	addi r11, r1, 0x20
/* 8023C444 00239384  48 12 5D E1 */	bl _restgpr_28
/* 8023C448 00239388  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023C44C 0023938C  7C 08 03 A6 */	mtlr r0
/* 8023C450 00239390  38 21 00 20 */	addi r1, r1, 0x20
/* 8023C454 00239394  4E 80 00 20 */	blr 
/* 8023C458 00239398  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023C45C 0023939C  7C 08 02 A6 */	mflr r0
/* 8023C460 002393A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023C464 002393A4  80 63 00 08 */	lwz r3, 8(r3)
/* 8023C468 002393A8  FC 40 08 90 */	fmr f2, f1
/* 8023C46C 002393AC  48 01 81 CD */	bl paneScale__8CPaneMgrFff
/* 8023C470 002393B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C474 002393B4  7C 08 03 A6 */	mtlr r0
/* 8023C478 002393B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C47C 002393BC  4E 80 00 20 */	blr 
/* 8023C480 002393C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023C484 002393C4  7C 08 02 A6 */	mflr r0
/* 8023C488 002393C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023C48C 002393CC  80 63 00 08 */	lwz r3, 8(r3)
/* 8023C490 002393D0  48 01 81 21 */	bl paneTrans__8CPaneMgrFff
/* 8023C494 002393D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C498 002393D8  7C 08 03 A6 */	mtlr r0
/* 8023C49C 002393DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C4A0 002393E0  4E 80 00 20 */	blr 
/* 8023C4A4 002393E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023C4A8 002393E8  7C 08 02 A6 */	mflr r0
/* 8023C4AC 002393EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023C4B0 002393F0  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8023C4B4 002393F4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8023C4B8 002393F8  7C 7F 1B 78 */	mr r31, r3
/* 8023C4BC 002393FC  FF E0 08 90 */	fmr f31, f1
/* 8023C4C0 00239400  81 83 00 00 */	lwz r12, 0(r3)
/* 8023C4C4 00239404  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8023C4C8 00239408  7D 89 03 A6 */	mtctr r12
/* 8023C4CC 0023940C  4E 80 04 21 */	bctrl 
/* 8023C4D0 00239410  80 7F 00 08 */	lwz r3, 8(r31)
/* 8023C4D4 00239414  FC 20 F8 90 */	fmr f1, f31
/* 8023C4D8 00239418  48 01 92 F9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8023C4DC 0023941C  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8023C4E0 00239420  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8023C4E4 00239424  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023C4E8 00239428  7C 08 03 A6 */	mtlr r0
/* 8023C4EC 0023942C  38 21 00 20 */	addi r1, r1, 0x20
/* 8023C4F0 00239430  4E 80 00 20 */	blr 
/* 8023C4F4 00239434  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023C4F8 00239438  7C 08 02 A6 */	mflr r0
/* 8023C4FC 0023943C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023C500 00239440  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8023C504 00239444  39 61 00 18 */	addi r11, r1, 0x18
/* 8023C508 00239448  48 12 5C D1 */	bl _savegpr_28
/* 8023C50C 0023944C  7C 7C 1B 78 */	mr r28, r3
/* 8023C510 00239450  FF E0 08 90 */	fmr f31, f1
/* 8023C514 00239454  3B A0 00 00 */	li r29, 0
/* 8023C518 00239458  3B E0 00 00 */	li r31, 0
lbl_8023C51C:
/* 8023C51C 0023945C  7F DC FA 14 */	add r30, r28, r31
/* 8023C520 00239460  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8023C524 00239464  28 03 00 00 */	cmplwi r3, 0
/* 8023C528 00239468  41 82 00 0C */	beq lbl_8023C534
/* 8023C52C 0023946C  FC 20 F8 90 */	fmr f1, f31
/* 8023C530 00239470  48 01 92 A1 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_8023C534:
/* 8023C534 00239474  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 8023C538 00239478  28 03 00 00 */	cmplwi r3, 0
/* 8023C53C 0023947C  41 82 00 0C */	beq lbl_8023C548
/* 8023C540 00239480  FC 20 F8 90 */	fmr f1, f31
/* 8023C544 00239484  48 01 92 8D */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_8023C548:
/* 8023C548 00239488  3B BD 00 01 */	addi r29, r29, 1
/* 8023C54C 0023948C  2C 1D 00 07 */	cmpwi r29, 7
/* 8023C550 00239490  3B FF 00 04 */	addi r31, r31, 4
/* 8023C554 00239494  41 80 FF C8 */	blt lbl_8023C51C
/* 8023C558 00239498  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8023C55C 0023949C  39 61 00 18 */	addi r11, r1, 0x18
/* 8023C560 002394A0  48 12 5C C5 */	bl _restgpr_28
/* 8023C564 002394A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023C568 002394A8  7C 08 03 A6 */	mtlr r0
/* 8023C56C 002394AC  38 21 00 20 */	addi r1, r1, 0x20
/* 8023C570 002394B0  4E 80 00 20 */	blr 

.global isTalkNow__14dMsgScrnBase_cFv
isTalkNow__14dMsgScrnBase_cFv:
/* 8023C574 002394B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023C578 002394B8  7C 08 02 A6 */	mflr r0
/* 8023C57C 002394BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023C580 002394C0  4B FF BC AD */	bl getStatus__12dMsgObject_cFv
/* 8023C584 002394C4  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8023C588 002394C8  38 03 FF FB */	addi r0, r3, -5
/* 8023C58C 002394CC  28 00 00 13 */	cmplwi r0, 0x13
/* 8023C590 002394D0  41 81 00 24 */	bgt lbl_8023C5B4
/* 8023C594 002394D4  3C 60 80 3C */	lis r3, lbl_803C0D08@ha
/* 8023C598 002394D8  38 63 0D 08 */	addi r3, r3, lbl_803C0D08@l
/* 8023C59C 002394DC  54 00 10 3A */	slwi r0, r0, 2
/* 8023C5A0 002394E0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8023C5A4 002394E4  7C 09 03 A6 */	mtctr r0
/* 8023C5A8 002394E8  4E 80 04 20 */	bctr 
/* 8023C5AC 002394EC  38 60 00 01 */	li r3, 1
/* 8023C5B0 002394F0  48 00 00 08 */	b lbl_8023C5B8
lbl_8023C5B4:
/* 8023C5B4 002394F4  38 60 00 00 */	li r3, 0
lbl_8023C5B8:
/* 8023C5B8 002394F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C5BC 002394FC  7C 08 03 A6 */	mtlr r0
/* 8023C5C0 00239500  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C5C4 00239504  4E 80 00 20 */	blr 

