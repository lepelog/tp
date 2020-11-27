.include "macros.inc"

.section .text, "ax" # 8015e010


/* 8015E010 0015AF50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015E014 0015AF54  7C 08 02 A6 */	mflr r0
/* 8015E018 0015AF58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015E01C 0015AF5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015E020 0015AF60  7C 7F 1B 78 */	mr r31, r3
/* 8015E024 0015AF64  4B EB AB 41 */	bl fopAc_ac_c
/* 8015E028 0015AF68  3C 60 80 3C */	lis r3, lbl_803BA078@ha
/* 8015E02C 0015AF6C  38 03 A0 78 */	addi r0, r3, lbl_803BA078@l
/* 8015E030 0015AF70  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8015E034 0015AF74  38 00 FF FF */	li r0, -1
/* 8015E038 0015AF78  90 1F 05 88 */	stw r0, 0x588(r31)
/* 8015E03C 0015AF7C  38 60 00 00 */	li r3, 0
/* 8015E040 0015AF80  98 7F 05 6C */	stb r3, 0x56c(r31)
/* 8015E044 0015AF84  38 00 00 01 */	li r0, 1
/* 8015E048 0015AF88  98 1F 05 6D */	stb r0, 0x56d(r31)
/* 8015E04C 0015AF8C  90 7F 05 8C */	stw r3, 0x58c(r31)
/* 8015E050 0015AF90  38 00 00 D6 */	li r0, 0xd6
/* 8015E054 0015AF94  98 1F 05 80 */	stb r0, 0x580(r31)
/* 8015E058 0015AF98  98 7F 05 84 */	stb r3, 0x584(r31)
/* 8015E05C 0015AF9C  98 7F 05 85 */	stb r3, 0x585(r31)
/* 8015E060 0015AFA0  7F E3 FB 78 */	mr r3, r31
/* 8015E064 0015AFA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015E068 0015AFA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015E06C 0015AFAC  7C 08 03 A6 */	mtlr r0
/* 8015E070 0015AFB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8015E074 0015AFB4  4E 80 00 20 */	blr 
/* 8015E078 0015AFB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015E07C 0015AFBC  7C 08 02 A6 */	mflr r0
/* 8015E080 0015AFC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015E084 0015AFC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015E088 0015AFC8  93 C1 00 08 */	stw r30, 8(r1)
/* 8015E08C 0015AFCC  7C 7F 1B 78 */	mr r31, r3
/* 8015E090 0015AFD0  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 8015E094 0015AFD4  2C 00 00 01 */	cmpwi r0, 1
/* 8015E098 0015AFD8  41 82 00 B0 */	beq lbl_8015E148
/* 8015E09C 0015AFDC  40 80 00 10 */	bge lbl_8015E0AC
/* 8015E0A0 0015AFE0  2C 00 00 00 */	cmpwi r0, 0
/* 8015E0A4 0015AFE4  40 80 00 14 */	bge lbl_8015E0B8
/* 8015E0A8 0015AFE8  48 00 01 AC */	b lbl_8015E254
lbl_8015E0AC:
/* 8015E0AC 0015AFEC  2C 00 00 03 */	cmpwi r0, 3
/* 8015E0B0 0015AFF0  40 80 01 A4 */	bge lbl_8015E254
/* 8015E0B4 0015AFF4  48 00 00 F0 */	b lbl_8015E1A4
lbl_8015E0B8:
/* 8015E0B8 0015AFF8  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8015E0BC 0015AFFC  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8015E0C0 0015B000  41 82 00 78 */	beq lbl_8015E138
/* 8015E0C4 0015B004  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 8015E0C8 0015B008  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 8015E0CC 0015B00C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8015E0D0 0015B010  4B EB EA D1 */	bl fopAcM_cancelCarryNow
/* 8015E0D4 0015B014  7F E3 FB 78 */	mr r3, r31
/* 8015E0D8 0015B018  38 80 00 00 */	li r4, 0
/* 8015E0DC 0015B01C  38 A0 00 00 */	li r5, 0
/* 8015E0E0 0015B020  4B EB D8 F1 */	bl fopAcM_orderItemEvent
/* 8015E0E4 0015B024  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8015E0E8 0015B028  60 00 00 08 */	ori r0, r0, 8
/* 8015E0EC 0015B02C  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 8015E0F0 0015B030  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8015E0F4 0015B034  88 9F 05 80 */	lbz r4, 0x580(r31)
/* 8015E0F8 0015B038  38 A0 FF FF */	li r5, -1
/* 8015E0FC 0015B03C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8015E100 0015B040  7C 06 07 74 */	extsb r6, r0
/* 8015E104 0015B044  38 E0 00 00 */	li r7, 0
/* 8015E108 0015B048  39 00 00 00 */	li r8, 0
/* 8015E10C 0015B04C  4B EB DB 69 */	bl fopAcM_createItemForTrBoxDemo
/* 8015E110 0015B050  90 7F 05 88 */	stw r3, 0x588(r31)
/* 8015E114 0015B054  38 00 00 01 */	li r0, 1
/* 8015E118 0015B058  90 1F 05 8C */	stw r0, 0x58c(r31)
/* 8015E11C 0015B05C  88 7F 05 80 */	lbz r3, 0x580(r31)
/* 8015E120 0015B060  48 07 BE 1D */	bl dMenu_Insect_c_NS_isCatchNotGiveInsect
/* 8015E124 0015B064  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8015E128 0015B068  41 82 01 2C */	beq lbl_8015E254
/* 8015E12C 0015B06C  38 00 00 01 */	li r0, 1
/* 8015E130 0015B070  98 1F 05 85 */	stb r0, 0x585(r31)
/* 8015E134 0015B074  48 00 01 20 */	b lbl_8015E254
lbl_8015E138:
/* 8015E138 0015B078  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 8015E13C 0015B07C  60 00 00 10 */	ori r0, r0, 0x10
/* 8015E140 0015B080  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8015E144 0015B084  48 00 01 10 */	b lbl_8015E254
lbl_8015E148:
/* 8015E148 0015B088  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 8015E14C 0015B08C  28 00 00 04 */	cmplwi r0, 4
/* 8015E150 0015B090  40 82 00 38 */	bne lbl_8015E188
/* 8015E154 0015B094  80 9F 05 88 */	lwz r4, 0x588(r31)
/* 8015E158 0015B098  3C 04 00 01 */	addis r0, r4, 1
/* 8015E15C 0015B09C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8015E160 0015B0A0  41 82 00 14 */	beq lbl_8015E174
/* 8015E164 0015B0A4  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 8015E168 0015B0A8  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 8015E16C 0015B0AC  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8015E170 0015B0B0  4B EE 55 7D */	bl dEvt_control_c_NS_setPtI_Id
lbl_8015E174:
/* 8015E174 0015B0B4  38 00 00 00 */	li r0, 0
/* 8015E178 0015B0B8  98 1F 05 6D */	stb r0, 0x56d(r31)
/* 8015E17C 0015B0BC  38 00 00 02 */	li r0, 2
/* 8015E180 0015B0C0  90 1F 05 8C */	stw r0, 0x58c(r31)
/* 8015E184 0015B0C4  48 00 00 D0 */	b lbl_8015E254
lbl_8015E188:
/* 8015E188 0015B0C8  38 80 00 00 */	li r4, 0
/* 8015E18C 0015B0CC  38 A0 00 00 */	li r5, 0
/* 8015E190 0015B0D0  4B EB D8 41 */	bl fopAcM_orderItemEvent
/* 8015E194 0015B0D4  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8015E198 0015B0D8  60 00 00 08 */	ori r0, r0, 8
/* 8015E19C 0015B0DC  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 8015E1A0 0015B0E0  48 00 00 B4 */	b lbl_8015E254
lbl_8015E1A4:
/* 8015E1A4 0015B0E4  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 8015E1A8 0015B0E8  3B C3 61 C0 */	addi r30, r3, lbl_804061C0@l
/* 8015E1AC 0015B0EC  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 8015E1B0 0015B0F0  3C 80 80 39 */	lis r4, lbl_80393D98@ha
/* 8015E1B4 0015B0F4  38 84 3D 98 */	addi r4, r4, lbl_80393D98@l
/* 8015E1B8 0015B0F8  4B EE 99 25 */	bl dEvent_manager_c_NS_endCheckOld
/* 8015E1BC 0015B0FC  2C 03 00 00 */	cmpwi r3, 0
/* 8015E1C0 0015B100  41 82 00 94 */	beq lbl_8015E254
/* 8015E1C4 0015B104  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 8015E1C8 0015B108  4B EE 42 A1 */	bl dEvt_control_c_NS_reset
/* 8015E1CC 0015B10C  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 8015E1D0 0015B110  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 8015E1D4 0015B114  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8015E1D8 0015B118  A8 1F 05 82 */	lha r0, 0x582(r31)
/* 8015E1DC 0015B11C  54 00 08 3C */	slwi r0, r0, 1
/* 8015E1E0 0015B120  3C 80 80 3A */	lis r4, lbl_803A7288@ha
/* 8015E1E4 0015B124  38 84 72 88 */	addi r4, r4, lbl_803A7288@l
/* 8015E1E8 0015B128  7C 84 02 2E */	lhzx r4, r4, r0
/* 8015E1EC 0015B12C  4B ED 67 D1 */	bl isEventBit__11dSv_event_cCFUs
/* 8015E1F0 0015B130  2C 03 00 00 */	cmpwi r3, 0
/* 8015E1F4 0015B134  40 82 00 10 */	bne lbl_8015E204
/* 8015E1F8 0015B138  88 1F 05 85 */	lbz r0, 0x585(r31)
/* 8015E1FC 0015B13C  28 00 00 00 */	cmplwi r0, 0
/* 8015E200 0015B140  41 82 00 4C */	beq lbl_8015E24C
lbl_8015E204:
/* 8015E204 0015B144  38 00 00 01 */	li r0, 1
/* 8015E208 0015B148  98 1F 05 6D */	stb r0, 0x56d(r31)
/* 8015E20C 0015B14C  38 00 00 00 */	li r0, 0
/* 8015E210 0015B150  90 1F 05 8C */	stw r0, 0x58c(r31)
/* 8015E214 0015B154  88 1F 05 84 */	lbz r0, 0x584(r31)
/* 8015E218 0015B158  28 00 00 00 */	cmplwi r0, 0
/* 8015E21C 0015B15C  40 82 00 38 */	bne lbl_8015E254
/* 8015E220 0015B160  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8015E224 0015B164  38 80 00 00 */	li r4, 0
/* 8015E228 0015B168  38 A0 FF FF */	li r5, -1
/* 8015E22C 0015B16C  38 C0 FF FF */	li r6, -1
/* 8015E230 0015B170  38 E0 00 00 */	li r7, 0
/* 8015E234 0015B174  39 00 00 00 */	li r8, 0
/* 8015E238 0015B178  39 20 00 00 */	li r9, 0
/* 8015E23C 0015B17C  4B EB E0 05 */	bl fopAcM_createItem
/* 8015E240 0015B180  38 00 00 01 */	li r0, 1
/* 8015E244 0015B184  98 1F 05 84 */	stb r0, 0x584(r31)
/* 8015E248 0015B188  48 00 00 0C */	b lbl_8015E254
lbl_8015E24C:
/* 8015E24C 0015B18C  7F E3 FB 78 */	mr r3, r31
/* 8015E250 0015B190  4B EB BA 2D */	bl fopAcM_delete
lbl_8015E254:
/* 8015E254 0015B194  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015E258 0015B198  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015E25C 0015B19C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015E260 0015B1A0  7C 08 03 A6 */	mtlr r0
/* 8015E264 0015B1A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8015E268 0015B1A8  4E 80 00 20 */	blr 
/* 8015E26C 0015B1AC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8015E270 0015B1B0  7C 08 02 A6 */	mflr r0
/* 8015E274 0015B1B4  90 01 00 74 */	stw r0, 0x74(r1)
/* 8015E278 0015B1B8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8015E27C 0015B1BC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 8015E280 0015B1C0  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8015E284 0015B1C4  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 8015E288 0015B1C8  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 8015E28C 0015B1CC  F3 A1 00 48 */	psq_st f29, 72(r1), 0, qr0
/* 8015E290 0015B1D0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8015E294 0015B1D4  7C 7F 1B 78 */	mr r31, r3
/* 8015E298 0015B1D8  FF A0 08 90 */	fmr f29, f1
/* 8015E29C 0015B1DC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8015E2A0 0015B1E0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8015E2A4 0015B1E4  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 8015E2A8 0015B1E8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8015E2AC 0015B1EC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8015E2B0 0015B1F0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8015E2B4 0015B1F4  C0 02 9B E0 */	lfs f0, lbl_804535E0-_SDA2_BASE_(r2)
/* 8015E2B8 0015B1F8  EC 01 00 2A */	fadds f0, f1, f0
/* 8015E2BC 0015B1FC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8015E2C0 0015B200  38 61 00 08 */	addi r3, r1, 8
/* 8015E2C4 0015B204  38 81 00 14 */	addi r4, r1, 0x14
/* 8015E2C8 0015B208  4B EB 70 49 */	bl mDoLib_project
/* 8015E2CC 0015B20C  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 8015E2D0 0015B210  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 8015E2D4 0015B214  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 8015E2D8 0015B218  28 03 00 00 */	cmplwi r3, 0
/* 8015E2DC 0015B21C  41 82 00 0C */	beq lbl_8015E2E8
/* 8015E2E0 0015B220  C0 63 0B 68 */	lfs f3, 0xb68(r3)
/* 8015E2E4 0015B224  48 00 00 08 */	b lbl_8015E2EC
lbl_8015E2E8:
/* 8015E2E8 0015B228  C0 62 9B E4 */	lfs f3, lbl_804535E4-_SDA2_BASE_(r2)
lbl_8015E2EC:
/* 8015E2EC 0015B22C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8015E2F0 0015B230  C0 02 9B E4 */	lfs f0, lbl_804535E4-_SDA2_BASE_(r2)
/* 8015E2F4 0015B234  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015E2F8 0015B238  40 81 00 60 */	ble lbl_8015E358
/* 8015E2FC 0015B23C  C0 02 9B E8 */	lfs f0, lbl_804535E8-_SDA2_BASE_(r2)
/* 8015E300 0015B240  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015E304 0015B244  40 80 00 54 */	bge lbl_8015E358
/* 8015E308 0015B248  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8015E30C 0015B24C  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 8015E310 0015B250  40 81 00 48 */	ble lbl_8015E358
/* 8015E314 0015B254  C0 02 9B EC */	lfs f0, lbl_804535EC-_SDA2_BASE_(r2)
/* 8015E318 0015B258  EC 00 18 28 */	fsubs f0, f0, f3
/* 8015E31C 0015B25C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8015E320 0015B260  40 80 00 38 */	bge lbl_8015E358
/* 8015E324 0015B264  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 8015E328 0015B268  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 8015E32C 0015B26C  3C 63 00 02 */	addis r3, r3, 2
/* 8015E330 0015B270  FC 00 08 1E */	fctiwz f0, f1
/* 8015E334 0015B274  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8015E338 0015B278  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8015E33C 0015B27C  FC 00 10 1E */	fctiwz f0, f2
/* 8015E340 0015B280  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8015E344 0015B284  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 8015E348 0015B288  38 DF 05 78 */	addi r6, r31, 0x578
/* 8015E34C 0015B28C  38 63 C0 F4 */	addi r3, r3, -16140
/* 8015E350 0015B290  4B EF 7C C9 */	bl dDlst_peekZ_c_NS_newData
/* 8015E354 0015B294  48 00 00 0C */	b lbl_8015E360
lbl_8015E358:
/* 8015E358 0015B298  38 00 00 00 */	li r0, 0
/* 8015E35C 0015B29C  90 1F 05 78 */	stw r0, 0x578(r31)
lbl_8015E360:
/* 8015E360 0015B2A0  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 8015E364 0015B2A4  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 8015E368 0015B2A8  80 63 61 B0 */	lwz r3, 0x61b0(r3)
/* 8015E36C 0015B2AC  C3 E3 00 C8 */	lfs f31, 0xc8(r3)
/* 8015E370 0015B2B0  C3 C3 00 CC */	lfs f30, 0xcc(r3)
/* 8015E374 0015B2B4  38 61 00 08 */	addi r3, r1, 8
/* 8015E378 0015B2B8  38 81 00 14 */	addi r4, r1, 0x14
/* 8015E37C 0015B2BC  4B EB 71 71 */	bl mDoLib_pos2camera
/* 8015E380 0015B2C0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8015E384 0015B2C4  EC 20 E8 2A */	fadds f1, f0, f29
/* 8015E388 0015B2C8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8015E38C 0015B2CC  C0 02 9B E4 */	lfs f0, lbl_804535E4-_SDA2_BASE_(r2)
/* 8015E390 0015B2D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8015E394 0015B2D4  40 82 00 0C */	bne lbl_8015E3A0
/* 8015E398 0015B2D8  C0 02 9B F0 */	lfs f0, lbl_804535F0-_SDA2_BASE_(r2)
/* 8015E39C 0015B2DC  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_8015E3A0:
/* 8015E3A0 0015B2E0  C0 62 9B F4 */	lfs f3, lbl_804535F4-_SDA2_BASE_(r2)
/* 8015E3A4 0015B2E4  C0 42 9B F8 */	lfs f2, lbl_804535F8-_SDA2_BASE_(r2)
/* 8015E3A8 0015B2E8  EC 3E 07 F2 */	fmuls f1, f30, f31
/* 8015E3AC 0015B2EC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8015E3B0 0015B2F0  EC 01 00 24 */	fdivs f0, f1, f0
/* 8015E3B4 0015B2F4  EC 3F 00 2A */	fadds f1, f31, f0
/* 8015E3B8 0015B2F8  EC 1E F8 28 */	fsubs f0, f30, f31
/* 8015E3BC 0015B2FC  EC 01 00 24 */	fdivs f0, f1, f0
/* 8015E3C0 0015B300  EC 02 00 2A */	fadds f0, f2, f0
/* 8015E3C4 0015B304  EC 03 00 32 */	fmuls f0, f3, f0
/* 8015E3C8 0015B308  D0 1F 05 7C */	stfs f0, 0x57c(r31)
/* 8015E3CC 0015B30C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 8015E3D0 0015B310  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8015E3D4 0015B314  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 8015E3D8 0015B318  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8015E3DC 0015B31C  E3 A1 00 48 */	psq_l f29, 72(r1), 0, qr0
/* 8015E3E0 0015B320  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 8015E3E4 0015B324  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8015E3E8 0015B328  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8015E3EC 0015B32C  7C 08 03 A6 */	mtlr r0
/* 8015E3F0 0015B330  38 21 00 70 */	addi r1, r1, 0x70
/* 8015E3F4 0015B334  4E 80 00 20 */	blr 
