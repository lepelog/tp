.include "macros.inc"

.section .text, "ax" # 80339dd4


.global __OSFPRInit
__OSFPRInit:
/* 80339DD4 00336D14  7C 60 00 A6 */	mfmsr r3
/* 80339DD8 00336D18  60 63 20 00 */	ori r3, r3, 0x2000
/* 80339DDC 00336D1C  7C 60 01 24 */	mtmsr r3
/* 80339DE0 00336D20  7C 78 E2 A6 */	mfspr r3, 0x398
/* 80339DE4 00336D24  54 63 1F FF */	rlwinm. r3, r3, 3, 0x1f, 0x1f
/* 80339DE8 00336D28  41 82 00 8C */	beq lbl_80339E74
/* 80339DEC 00336D2C  3C 60 80 45 */	lis r3, lbl_80451618@ha
/* 80339DF0 00336D30  38 63 16 18 */	addi r3, r3, lbl_80451618@l
/* 80339DF4 00336D34  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 80339DF8 00336D38  10 20 00 90 */	ps_mr f1, f0
/* 80339DFC 00336D3C  10 40 00 90 */	ps_mr f2, f0
/* 80339E00 00336D40  10 60 00 90 */	ps_mr f3, f0
/* 80339E04 00336D44  10 80 00 90 */	ps_mr f4, f0
/* 80339E08 00336D48  10 A0 00 90 */	ps_mr f5, f0
/* 80339E0C 00336D4C  10 C0 00 90 */	ps_mr f6, f0
/* 80339E10 00336D50  10 E0 00 90 */	ps_mr f7, f0
/* 80339E14 00336D54  11 00 00 90 */	ps_mr f8, f0
/* 80339E18 00336D58  11 20 00 90 */	ps_mr f9, f0
/* 80339E1C 00336D5C  11 40 00 90 */	ps_mr f10, f0
/* 80339E20 00336D60  11 60 00 90 */	ps_mr f11, f0
/* 80339E24 00336D64  11 80 00 90 */	ps_mr f12, f0
/* 80339E28 00336D68  11 A0 00 90 */	ps_mr f13, f0
/* 80339E2C 00336D6C  11 C0 00 90 */	ps_mr f14, f0
/* 80339E30 00336D70  11 E0 00 90 */	ps_mr f15, f0
/* 80339E34 00336D74  12 00 00 90 */	ps_mr f16, f0
/* 80339E38 00336D78  12 20 00 90 */	ps_mr f17, f0
/* 80339E3C 00336D7C  12 40 00 90 */	ps_mr f18, f0
/* 80339E40 00336D80  12 60 00 90 */	ps_mr f19, f0
/* 80339E44 00336D84  12 80 00 90 */	ps_mr f20, f0
/* 80339E48 00336D88  12 A0 00 90 */	ps_mr f21, f0
/* 80339E4C 00336D8C  12 C0 00 90 */	ps_mr f22, f0
/* 80339E50 00336D90  12 E0 00 90 */	ps_mr f23, f0
/* 80339E54 00336D94  13 00 00 90 */	ps_mr f24, f0
/* 80339E58 00336D98  13 20 00 90 */	ps_mr f25, f0
/* 80339E5C 00336D9C  13 40 00 90 */	ps_mr f26, f0
/* 80339E60 00336DA0  13 60 00 90 */	ps_mr f27, f0
/* 80339E64 00336DA4  13 80 00 90 */	ps_mr f28, f0
/* 80339E68 00336DA8  13 A0 00 90 */	ps_mr f29, f0
/* 80339E6C 00336DAC  13 C0 00 90 */	ps_mr f30, f0
/* 80339E70 00336DB0  13 E0 00 90 */	ps_mr f31, f0
lbl_80339E74:
/* 80339E74 00336DB4  C8 0D 90 90 */	lfd f0, lbl_80451610-_SDA_BASE_(r13)
/* 80339E78 00336DB8  FC 20 00 90 */	fmr f1, f0
/* 80339E7C 00336DBC  FC 40 00 90 */	fmr f2, f0
/* 80339E80 00336DC0  FC 60 00 90 */	fmr f3, f0
/* 80339E84 00336DC4  FC 80 00 90 */	fmr f4, f0
/* 80339E88 00336DC8  FC A0 00 90 */	fmr f5, f0
/* 80339E8C 00336DCC  FC C0 00 90 */	fmr f6, f0
/* 80339E90 00336DD0  FC E0 00 90 */	fmr f7, f0
/* 80339E94 00336DD4  FD 00 00 90 */	fmr f8, f0
/* 80339E98 00336DD8  FD 20 00 90 */	fmr f9, f0
/* 80339E9C 00336DDC  FD 40 00 90 */	fmr f10, f0
/* 80339EA0 00336DE0  FD 60 00 90 */	fmr f11, f0
/* 80339EA4 00336DE4  FD 80 00 90 */	fmr f12, f0
/* 80339EA8 00336DE8  FD A0 00 90 */	fmr f13, f0
/* 80339EAC 00336DEC  FD C0 00 90 */	fmr f14, f0
/* 80339EB0 00336DF0  FD E0 00 90 */	fmr f15, f0
/* 80339EB4 00336DF4  FE 00 00 90 */	fmr f16, f0
/* 80339EB8 00336DF8  FE 20 00 90 */	fmr f17, f0
/* 80339EBC 00336DFC  FE 40 00 90 */	fmr f18, f0
/* 80339EC0 00336E00  FE 60 00 90 */	fmr f19, f0
/* 80339EC4 00336E04  FE 80 00 90 */	fmr f20, f0
/* 80339EC8 00336E08  FE A0 00 90 */	fmr f21, f0
/* 80339ECC 00336E0C  FE C0 00 90 */	fmr f22, f0
/* 80339ED0 00336E10  FE E0 00 90 */	fmr f23, f0
/* 80339ED4 00336E14  FF 00 00 90 */	fmr f24, f0
/* 80339ED8 00336E18  FF 20 00 90 */	fmr f25, f0
/* 80339EDC 00336E1C  FF 40 00 90 */	fmr f26, f0
/* 80339EE0 00336E20  FF 60 00 90 */	fmr f27, f0
/* 80339EE4 00336E24  FF 80 00 90 */	fmr f28, f0
/* 80339EE8 00336E28  FF A0 00 90 */	fmr f29, f0
/* 80339EEC 00336E2C  FF C0 00 90 */	fmr f30, f0
/* 80339EF0 00336E30  FF E0 00 90 */	fmr f31, f0
/* 80339EF4 00336E34  FD FE 05 8E */	mtfsf 0xff, f0
/* 80339EF8 00336E38  4E 80 00 20 */	blr 

.global OSGetConsoleType
OSGetConsoleType:
/* 80339EFC 00336E3C  80 6D 90 80 */	lwz r3, lbl_80451600-_SDA_BASE_(r13)
/* 80339F00 00336E40  28 03 00 00 */	cmplwi r3, 0
/* 80339F04 00336E44  41 82 00 10 */	beq lbl_80339F14
/* 80339F08 00336E48  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80339F0C 00336E4C  28 03 00 00 */	cmplwi r3, 0
/* 80339F10 00336E50  40 82 00 10 */	bne lbl_80339F20
lbl_80339F14:
/* 80339F14 00336E54  3C 60 10 00 */	lis r3, 0x10000002@ha
/* 80339F18 00336E58  38 63 00 02 */	addi r3, r3, 0x10000002@l
/* 80339F1C 00336E5C  48 00 00 04 */	b lbl_80339F20
lbl_80339F20:
/* 80339F20 00336E60  4E 80 00 20 */	blr 
.global InquiryCallback
InquiryCallback:
/* 80339F24 00336E64  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80339F28 00336E68  2C 00 00 00 */	cmpwi r0, 0
/* 80339F2C 00336E6C  41 82 00 08 */	beq lbl_80339F34
/* 80339F30 00336E70  48 00 00 20 */	b lbl_80339F50
lbl_80339F34:
/* 80339F34 00336E74  3C 60 80 45 */	lis r3, lbl_8044BA60@ha
/* 80339F38 00336E78  38 63 BA 60 */	addi r3, r3, lbl_8044BA60@l
/* 80339F3C 00336E7C  A0 03 00 02 */	lhz r0, 2(r3)
/* 80339F40 00336E80  3C 60 80 00 */	lis r3, 0x800030E6@ha
/* 80339F44 00336E84  60 00 80 00 */	ori r0, r0, 0x8000
/* 80339F48 00336E88  B0 03 30 E6 */	sth r0, 0x800030E6@l(r3)
/* 80339F4C 00336E8C  48 00 00 10 */	b lbl_80339F5C
lbl_80339F50:
/* 80339F50 00336E90  38 00 00 01 */	li r0, 1
/* 80339F54 00336E94  3C 60 80 00 */	lis r3, 0x800030E6@ha
/* 80339F58 00336E98  B0 03 30 E6 */	sth r0, 0x800030E6@l(r3)
lbl_80339F5C:
/* 80339F5C 00336E9C  4E 80 00 20 */	blr 

.global OSInit
OSInit:
/* 80339F60 00336EA0  7C 08 02 A6 */	mflr r0
/* 80339F64 00336EA4  90 01 00 04 */	stw r0, 4(r1)
/* 80339F68 00336EA8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80339F6C 00336EAC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80339F70 00336EB0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80339F74 00336EB4  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80339F78 00336EB8  80 0D 90 A0 */	lwz r0, lbl_80451620-_SDA_BASE_(r13)
/* 80339F7C 00336EBC  3C 60 80 45 */	lis r3, lbl_8044BA60@ha
/* 80339F80 00336EC0  3B E3 BA 60 */	addi r31, r3, lbl_8044BA60@l
/* 80339F84 00336EC4  2C 00 00 00 */	cmpwi r0, 0
/* 80339F88 00336EC8  3C 60 80 3D */	lis r3, lbl_803CF288@ha
/* 80339F8C 00336ECC  3B C3 F2 88 */	addi r30, r3, lbl_803CF288@l
/* 80339F90 00336ED0  40 82 04 94 */	bne lbl_8033A424
/* 80339F94 00336ED4  38 00 00 01 */	li r0, 1
/* 80339F98 00336ED8  90 0D 90 A0 */	stw r0, lbl_80451620-_SDA_BASE_(r13)
/* 80339F9C 00336EDC  48 00 87 81 */	bl __OSGetSystemTime
/* 80339FA0 00336EE0  90 8D 90 B4 */	stw r4, lbl_80451634-_SDA_BASE_(r13)
/* 80339FA4 00336EE4  90 6D 90 B0 */	stw r3, lbl_80451630-_SDA_BASE_(r13)
/* 80339FA8 00336EE8  48 00 37 4D */	bl __RAS_OSDisableInterrupts_begin 
/* 80339FAC 00336EEC  38 7F 00 50 */	addi r3, r31, 0x50
/* 80339FB0 00336EF0  48 00 2D 0D */	bl __OSGetExecParams
/* 80339FB4 00336EF4  38 60 00 00 */	li r3, 0
/* 80339FB8 00336EF8  4B FF FD 5D */	bl PPCMtmmcr0
/* 80339FBC 00336EFC  38 60 00 00 */	li r3, 0
/* 80339FC0 00336F00  4B FF FD 5D */	bl PPCMtmmcr1
/* 80339FC4 00336F04  38 60 00 00 */	li r3, 0
/* 80339FC8 00336F08  4B FF FD 5D */	bl PPCMtpmc1
/* 80339FCC 00336F0C  38 60 00 00 */	li r3, 0
/* 80339FD0 00336F10  4B FF FD 5D */	bl PPCMtpmc2
/* 80339FD4 00336F14  38 60 00 00 */	li r3, 0
/* 80339FD8 00336F18  4B FF FD 5D */	bl PPCMtpmc3
/* 80339FDC 00336F1C  38 60 00 00 */	li r3, 0
/* 80339FE0 00336F20  4B FF FD 5D */	bl PPCMtpmc4
/* 80339FE4 00336F24  4B FF FD C1 */	bl PPCDisableSpeculation
/* 80339FE8 00336F28  4B FF FD E5 */	bl PPCSetFpNonIEEEMode
/* 80339FEC 00336F2C  38 00 00 00 */	li r0, 0
/* 80339FF0 00336F30  3C 80 80 00 */	lis r4, 0x800000F4@ha
/* 80339FF4 00336F34  90 0D 90 84 */	stw r0, lbl_80451604-_SDA_BASE_(r13)
/* 80339FF8 00336F38  90 8D 90 80 */	stw r4, lbl_80451600-_SDA_BASE_(r13)
/* 80339FFC 00336F3C  90 0D 91 EC */	stw r0, lbl_8045176C-_SDA_BASE_(r13)
/* 8033A000 00336F40  80 64 00 F4 */	lwz r3, 0x800000F4@l(r4)
/* 8033A004 00336F44  28 03 00 00 */	cmplwi r3, 0
/* 8033A008 00336F48  41 82 00 34 */	beq lbl_8033A03C
/* 8033A00C 00336F4C  38 03 00 0C */	addi r0, r3, 0xc
/* 8033A010 00336F50  90 0D 90 84 */	stw r0, lbl_80451604-_SDA_BASE_(r13)
/* 8033A014 00336F54  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8033A018 00336F58  80 6D 90 84 */	lwz r3, lbl_80451604-_SDA_BASE_(r13)
/* 8033A01C 00336F5C  90 0D 92 F0 */	stw r0, lbl_80451870-_SDA_BASE_(r13)
/* 8033A020 00336F60  80 03 00 00 */	lwz r0, 0(r3)
/* 8033A024 00336F64  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8033A028 00336F68  98 04 30 E8 */	stb r0, 0x30e8(r4)
/* 8033A02C 00336F6C  80 0D 92 F0 */	lwz r0, lbl_80451870-_SDA_BASE_(r13)
/* 8033A030 00336F70  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8033A034 00336F74  98 04 30 E9 */	stb r0, 0x30e9(r4)
/* 8033A038 00336F78  48 00 00 28 */	b lbl_8033A060
lbl_8033A03C:
/* 8033A03C 00336F7C  80 04 00 34 */	lwz r0, 0x34(r4)
/* 8033A040 00336F80  28 00 00 00 */	cmplwi r0, 0
/* 8033A044 00336F84  41 82 00 1C */	beq lbl_8033A060
/* 8033A048 00336F88  88 64 30 E8 */	lbz r3, 0x30e8(r4)
/* 8033A04C 00336F8C  38 0D 90 88 */	addi r0, r13, lbl_80451608-_SDA_BASE_
/* 8033A050 00336F90  90 6D 90 88 */	stw r3, lbl_80451608-_SDA_BASE_(r13)
/* 8033A054 00336F94  90 0D 90 84 */	stw r0, lbl_80451604-_SDA_BASE_(r13)
/* 8033A058 00336F98  88 04 30 E9 */	lbz r0, 0x30e9(r4)
/* 8033A05C 00336F9C  90 0D 92 F0 */	stw r0, lbl_80451870-_SDA_BASE_(r13)
lbl_8033A060:
/* 8033A060 00336FA0  38 00 00 01 */	li r0, 1
/* 8033A064 00336FA4  80 6D 90 80 */	lwz r3, lbl_80451600-_SDA_BASE_(r13)
/* 8033A068 00336FA8  90 0D 91 EC */	stw r0, lbl_8045176C-_SDA_BASE_(r13)
/* 8033A06C 00336FAC  80 63 00 30 */	lwz r3, 0x30(r3)
/* 8033A070 00336FB0  28 03 00 00 */	cmplwi r3, 0
/* 8033A074 00336FB4  40 82 00 10 */	bne lbl_8033A084
/* 8033A078 00336FB8  3C 60 80 46 */	lis r3, 0x80459BE0@ha
/* 8033A07C 00336FBC  38 63 9B E0 */	addi r3, r3, 0x80459BE0@l
/* 8033A080 00336FC0  48 00 00 04 */	b lbl_8033A084
lbl_8033A084:
/* 8033A084 00336FC4  48 00 12 21 */	bl OSSetArenaLo
/* 8033A088 00336FC8  80 6D 90 80 */	lwz r3, lbl_80451600-_SDA_BASE_(r13)
/* 8033A08C 00336FCC  80 03 00 30 */	lwz r0, 0x30(r3)
/* 8033A090 00336FD0  28 00 00 00 */	cmplwi r0, 0
/* 8033A094 00336FD4  40 82 00 30 */	bne lbl_8033A0C4
/* 8033A098 00336FD8  80 6D 90 84 */	lwz r3, lbl_80451604-_SDA_BASE_(r13)
/* 8033A09C 00336FDC  28 03 00 00 */	cmplwi r3, 0
/* 8033A0A0 00336FE0  41 82 00 24 */	beq lbl_8033A0C4
/* 8033A0A4 00336FE4  80 03 00 00 */	lwz r0, 0(r3)
/* 8033A0A8 00336FE8  28 00 00 02 */	cmplwi r0, 2
/* 8033A0AC 00336FEC  40 80 00 18 */	bge lbl_8033A0C4
/* 8033A0B0 00336FF0  3C 60 80 45 */	lis r3, 0x80457BC8@ha
/* 8033A0B4 00336FF4  38 63 7B C8 */	addi r3, r3, 0x80457BC8@l
/* 8033A0B8 00336FF8  38 03 00 1F */	addi r0, r3, 0x1f
/* 8033A0BC 00336FFC  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 8033A0C0 00337000  48 00 11 E5 */	bl OSSetArenaLo
lbl_8033A0C4:
/* 8033A0C4 00337004  80 6D 90 80 */	lwz r3, lbl_80451600-_SDA_BASE_(r13)
/* 8033A0C8 00337008  80 63 00 34 */	lwz r3, 0x34(r3)
/* 8033A0CC 0033700C  28 03 00 00 */	cmplwi r3, 0
/* 8033A0D0 00337010  40 82 00 10 */	bne lbl_8033A0E0
/* 8033A0D4 00337014  3C 60 81 70 */	lis r3, 0x81700000@ha
/* 8033A0D8 00337018  38 63 00 00 */	addi r3, r3, 0x81700000@l
/* 8033A0DC 0033701C  48 00 00 04 */	b lbl_8033A0E0
lbl_8033A0E0:
/* 8033A0E0 00337020  48 00 11 BD */	bl OSSetArenaHi
/* 8033A0E4 00337024  48 00 03 5D */	bl OSExceptionInit
/* 8033A0E8 00337028  48 00 69 59 */	bl __OSInitSystemCall
/* 8033A0EC 0033702C  48 00 07 B5 */	bl OSInitAlarm
/* 8033A0F0 00337030  48 00 48 8D */	bl __OSModuleInit
/* 8033A0F4 00337034  48 00 36 7D */	bl __OSInterruptInit
.global __OSResetSWInterruptHandler
/* 8033A0F8 00337038  3C 60 80 34 */	lis r3, __OSResetSWInterruptHandler@ha
.global __OSResetSWInterruptHandler
/* 8033A0FC 0033703C  38 83 FA E4 */	addi r4, r3, __OSResetSWInterruptHandler@l
/* 8033A100 00337040  38 60 00 16 */	li r3, 0x16
/* 8033A104 00337044  48 00 36 3D */	bl __OSSetInterruptHandler
/* 8033A108 00337048  48 00 23 05 */	bl __OSContextInit
/* 8033A10C 0033704C  48 00 19 E5 */	bl __OSCacheInit
/* 8033A110 00337050  48 00 9D 45 */	bl EXIInit
/* 8033A114 00337054  48 00 B3 81 */	bl SIInit
/* 8033A118 00337058  48 00 5E F1 */	bl __OSInitSram
/* 8033A11C 0033705C  48 00 6A 01 */	bl __OSThreadInit
/* 8033A120 00337060  48 00 11 B9 */	bl __OSInitAudioSystem
/* 8033A124 00337064  4B FF FC 69 */	bl PPCMfhid2
/* 8033A128 00337068  54 63 00 80 */	rlwinm r3, r3, 0, 2, 0
/* 8033A12C 0033706C  4B FF FC 69 */	bl PPCMthid2
/* 8033A130 00337070  80 0D 90 A8 */	lwz r0, lbl_80451628-_SDA_BASE_(r13)
/* 8033A134 00337074  2C 00 00 00 */	cmpwi r0, 0
/* 8033A138 00337078  40 82 00 08 */	bne lbl_8033A140
/* 8033A13C 0033707C  48 00 4D B5 */	bl __OSInitMemoryProtection
lbl_8033A140:
/* 8033A140 00337080  38 7E 00 44 */	addi r3, r30, 0x44
/* 8033A144 00337084  4C C6 31 82 */	crclr 6
/* 8033A148 00337088  4B CC C9 75 */	bl OSReport
/* 8033A14C 0033708C  38 7E 00 54 */	addi r3, r30, 0x54
/* 8033A150 00337090  4C C6 31 82 */	crclr 6
/* 8033A154 00337094  38 9E 00 6C */	addi r4, r30, 0x6c
/* 8033A158 00337098  38 BE 00 78 */	addi r5, r30, 0x78
/* 8033A15C 0033709C  4B CC C9 61 */	bl OSReport
/* 8033A160 003370A0  38 7E 00 84 */	addi r3, r30, 0x84
/* 8033A164 003370A4  4C C6 31 82 */	crclr 6
/* 8033A168 003370A8  4B CC C9 55 */	bl OSReport
/* 8033A16C 003370AC  80 6D 90 80 */	lwz r3, lbl_80451600-_SDA_BASE_(r13)
/* 8033A170 003370B0  28 03 00 00 */	cmplwi r3, 0
/* 8033A174 003370B4  41 82 00 10 */	beq lbl_8033A184
/* 8033A178 003370B8  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 8033A17C 003370BC  28 04 00 00 */	cmplwi r4, 0
/* 8033A180 003370C0  40 82 00 10 */	bne lbl_8033A190
lbl_8033A184:
/* 8033A184 003370C4  3C 60 10 00 */	lis r3, 0x10000002@ha
/* 8033A188 003370C8  38 83 00 02 */	addi r4, r3, 0x10000002@l
/* 8033A18C 003370CC  48 00 00 04 */	b lbl_8033A190
lbl_8033A190:
/* 8033A190 003370D0  54 83 00 06 */	rlwinm r3, r4, 0, 0, 3
/* 8033A194 003370D4  3C 00 10 00 */	lis r0, 0x1000
/* 8033A198 003370D8  7C 03 00 00 */	cmpw r3, r0
/* 8033A19C 003370DC  41 82 00 34 */	beq lbl_8033A1D0
/* 8033A1A0 003370E0  40 80 00 10 */	bge lbl_8033A1B0
/* 8033A1A4 003370E4  2C 03 00 00 */	cmpwi r3, 0
/* 8033A1A8 003370E8  41 82 00 18 */	beq lbl_8033A1C0
/* 8033A1AC 003370EC  48 00 00 B8 */	b lbl_8033A264
lbl_8033A1B0:
/* 8033A1B0 003370F0  3C 00 20 00 */	lis r0, 0x2000
/* 8033A1B4 003370F4  7C 03 00 00 */	cmpw r3, r0
/* 8033A1B8 003370F8  41 82 00 18 */	beq lbl_8033A1D0
/* 8033A1BC 003370FC  48 00 00 A8 */	b lbl_8033A264
lbl_8033A1C0:
/* 8033A1C0 00337100  4C C6 31 82 */	crclr 6
/* 8033A1C4 00337104  38 7E 00 94 */	addi r3, r30, 0x94
/* 8033A1C8 00337108  4B CC C8 F5 */	bl OSReport
/* 8033A1CC 0033710C  48 00 00 A4 */	b lbl_8033A270
lbl_8033A1D0:
/* 8033A1D0 00337110  3C 60 10 00 */	lis r3, 0x10000002@ha
/* 8033A1D4 00337114  54 85 01 3E */	clrlwi r5, r4, 4
/* 8033A1D8 00337118  38 03 00 02 */	addi r0, r3, 0x10000002@l
/* 8033A1DC 0033711C  7C 05 00 00 */	cmpw r5, r0
/* 8033A1E0 00337120  41 82 00 48 */	beq lbl_8033A228
/* 8033A1E4 00337124  40 80 00 14 */	bge lbl_8033A1F8
/* 8033A1E8 00337128  7C 05 18 00 */	cmpw r5, r3
/* 8033A1EC 0033712C  41 82 00 1C */	beq lbl_8033A208
/* 8033A1F0 00337130  40 80 00 28 */	bge lbl_8033A218
/* 8033A1F4 00337134  48 00 00 54 */	b lbl_8033A248
lbl_8033A1F8:
/* 8033A1F8 00337138  38 03 00 04 */	addi r0, r3, 4
/* 8033A1FC 0033713C  7C 05 00 00 */	cmpw r5, r0
/* 8033A200 00337140  40 80 00 48 */	bge lbl_8033A248
/* 8033A204 00337144  48 00 00 34 */	b lbl_8033A238
lbl_8033A208:
/* 8033A208 00337148  38 7E 00 A0 */	addi r3, r30, 0xa0
/* 8033A20C 0033714C  4C C6 31 82 */	crclr 6
/* 8033A210 00337150  4B CC C8 AD */	bl OSReport
/* 8033A214 00337154  48 00 00 5C */	b lbl_8033A270
lbl_8033A218:
/* 8033A218 00337158  38 7E 00 B0 */	addi r3, r30, 0xb0
/* 8033A21C 0033715C  4C C6 31 82 */	crclr 6
/* 8033A220 00337160  4B CC C8 9D */	bl OSReport
/* 8033A224 00337164  48 00 00 4C */	b lbl_8033A270
lbl_8033A228:
/* 8033A228 00337168  38 7E 00 C0 */	addi r3, r30, 0xc0
/* 8033A22C 0033716C  4C C6 31 82 */	crclr 6
/* 8033A230 00337170  4B CC C8 8D */	bl OSReport
/* 8033A234 00337174  48 00 00 3C */	b lbl_8033A270
lbl_8033A238:
/* 8033A238 00337178  38 7E 00 D0 */	addi r3, r30, 0xd0
/* 8033A23C 0033717C  4C C6 31 82 */	crclr 6
/* 8033A240 00337180  4B CC C8 7D */	bl OSReport
/* 8033A244 00337184  48 00 00 2C */	b lbl_8033A270
lbl_8033A248:
/* 8033A248 00337188  54 86 01 3E */	clrlwi r6, r4, 4
/* 8033A24C 0033718C  4C C6 31 82 */	crclr 6
/* 8033A250 00337190  7C 85 23 78 */	mr r5, r4
/* 8033A254 00337194  38 7E 00 E0 */	addi r3, r30, 0xe0
/* 8033A258 00337198  38 86 FF FD */	addi r4, r6, -3
/* 8033A25C 0033719C  4B CC C8 61 */	bl OSReport
/* 8033A260 003371A0  48 00 00 10 */	b lbl_8033A270
lbl_8033A264:
/* 8033A264 003371A4  4C C6 31 82 */	crclr 6
/* 8033A268 003371A8  38 6D 84 04 */	addi r3, r13, lbl_80450984-_SDA_BASE_
/* 8033A26C 003371AC  4B CC C8 51 */	bl OSReport
lbl_8033A270:
/* 8033A270 003371B0  80 8D 90 80 */	lwz r4, lbl_80451600-_SDA_BASE_(r13)
/* 8033A274 003371B4  38 7E 00 FC */	addi r3, r30, 0xfc
/* 8033A278 003371B8  4C C6 31 82 */	crclr 6
/* 8033A27C 003371BC  80 04 00 28 */	lwz r0, 0x28(r4)
/* 8033A280 003371C0  54 04 65 3E */	srwi r4, r0, 0x14
/* 8033A284 003371C4  4B CC C8 39 */	bl OSReport
/* 8033A288 003371C8  48 00 10 05 */	bl OSGetArenaHi
/* 8033A28C 003371CC  7C 7D 1B 78 */	mr r29, r3
/* 8033A290 003371D0  48 00 10 05 */	bl OSGetArenaLo
/* 8033A294 003371D4  7C 64 1B 78 */	mr r4, r3
/* 8033A298 003371D8  4C C6 31 82 */	crclr 6
/* 8033A29C 003371DC  7F A5 EB 78 */	mr r5, r29
/* 8033A2A0 003371E0  38 7E 01 0C */	addi r3, r30, 0x10c
/* 8033A2A4 003371E4  4B CC C8 19 */	bl OSReport
/* 8033A2A8 003371E8  80 6D 84 00 */	lwz r3, lbl_80450980-_SDA_BASE_(r13)
/* 8033A2AC 003371EC  48 00 05 C9 */	bl OSRegisterVersion
/* 8033A2B0 003371F0  80 6D 90 84 */	lwz r3, lbl_80451604-_SDA_BASE_(r13)
/* 8033A2B4 003371F4  28 03 00 00 */	cmplwi r3, 0
/* 8033A2B8 003371F8  41 82 00 14 */	beq lbl_8033A2CC
/* 8033A2BC 003371FC  80 03 00 00 */	lwz r0, 0(r3)
/* 8033A2C0 00337200  28 00 00 02 */	cmplwi r0, 2
/* 8033A2C4 00337204  41 80 00 08 */	blt lbl_8033A2CC
/* 8033A2C8 00337208  48 03 78 B5 */	bl EnableMetroTRKInterrupts
lbl_8033A2CC:
/* 8033A2CC 0033720C  48 00 57 E1 */	bl OSGetResetCode
/* 8033A2D0 00337210  54 60 00 00 */	rlwinm r0, r3, 0, 0, 0
/* 8033A2D4 00337214  28 00 00 00 */	cmplwi r0, 0
/* 8033A2D8 00337218  41 82 00 0C */	beq lbl_8033A2E4
/* 8033A2DC 0033721C  38 00 00 01 */	li r0, 1
/* 8033A2E0 00337220  48 00 00 08 */	b lbl_8033A2E8
lbl_8033A2E4:
/* 8033A2E4 00337224  38 00 00 00 */	li r0, 0
lbl_8033A2E8:
/* 8033A2E8 00337228  2C 00 00 00 */	cmpwi r0, 0
/* 8033A2EC 0033722C  40 82 00 28 */	bne lbl_8033A314
/* 8033A2F0 00337230  48 00 0F 9D */	bl OSGetArenaHi
/* 8033A2F4 00337234  7C 7E 1B 78 */	mr r30, r3
/* 8033A2F8 00337238  48 00 0F 9D */	bl OSGetArenaLo
/* 8033A2FC 0033723C  7F C3 F0 50 */	subf r30, r3, r30
/* 8033A300 00337240  48 00 0F 95 */	bl OSGetArenaLo
/* 8033A304 00337244  7F C5 F3 78 */	mr r5, r30
/* 8033A308 00337248  38 80 00 00 */	li r4, 0
/* 8033A30C 0033724C  4B CC 91 4D */	bl memset
/* 8033A310 00337250  48 00 00 C0 */	b lbl_8033A3D0
lbl_8033A314:
/* 8033A314 00337254  3B BF 00 5C */	addi r29, r31, 0x5c
/* 8033A318 00337258  80 1D 00 00 */	lwz r0, 0(r29)
/* 8033A31C 0033725C  28 00 00 00 */	cmplwi r0, 0
/* 8033A320 00337260  40 82 00 28 */	bne lbl_8033A348
/* 8033A324 00337264  48 00 0F 69 */	bl OSGetArenaHi
/* 8033A328 00337268  7C 7E 1B 78 */	mr r30, r3
/* 8033A32C 0033726C  48 00 0F 69 */	bl OSGetArenaLo
/* 8033A330 00337270  7F C3 F0 50 */	subf r30, r3, r30
/* 8033A334 00337274  48 00 0F 61 */	bl OSGetArenaLo
/* 8033A338 00337278  7F C5 F3 78 */	mr r5, r30
/* 8033A33C 0033727C  38 80 00 00 */	li r4, 0
/* 8033A340 00337280  4B CC 91 19 */	bl memset
/* 8033A344 00337284  48 00 00 8C */	b lbl_8033A3D0
lbl_8033A348:
/* 8033A348 00337288  48 00 0F 4D */	bl OSGetArenaLo
/* 8033A34C 0033728C  80 1D 00 00 */	lwz r0, 0(r29)
/* 8033A350 00337290  7C 03 00 40 */	cmplw r3, r0
/* 8033A354 00337294  40 80 00 7C */	bge lbl_8033A3D0
/* 8033A358 00337298  48 00 0F 35 */	bl OSGetArenaHi
/* 8033A35C 0033729C  80 1D 00 00 */	lwz r0, 0(r29)
/* 8033A360 003372A0  7C 03 00 40 */	cmplw r3, r0
/* 8033A364 003372A4  41 81 00 28 */	bgt lbl_8033A38C
/* 8033A368 003372A8  48 00 0F 25 */	bl OSGetArenaHi
/* 8033A36C 003372AC  7C 7E 1B 78 */	mr r30, r3
/* 8033A370 003372B0  48 00 0F 25 */	bl OSGetArenaLo
/* 8033A374 003372B4  7F C3 F0 50 */	subf r30, r3, r30
/* 8033A378 003372B8  48 00 0F 1D */	bl OSGetArenaLo
/* 8033A37C 003372BC  7F C5 F3 78 */	mr r5, r30
/* 8033A380 003372C0  38 80 00 00 */	li r4, 0
/* 8033A384 003372C4  4B CC 90 D5 */	bl memset
/* 8033A388 003372C8  48 00 00 48 */	b lbl_8033A3D0
lbl_8033A38C:
/* 8033A38C 003372CC  48 00 0F 09 */	bl OSGetArenaLo
/* 8033A390 003372D0  80 1D 00 00 */	lwz r0, 0(r29)
/* 8033A394 003372D4  7F C3 00 50 */	subf r30, r3, r0
/* 8033A398 003372D8  48 00 0E FD */	bl OSGetArenaLo
/* 8033A39C 003372DC  7F C5 F3 78 */	mr r5, r30
/* 8033A3A0 003372E0  38 80 00 00 */	li r4, 0
/* 8033A3A4 003372E4  4B CC 90 B5 */	bl memset
/* 8033A3A8 003372E8  48 00 0E E5 */	bl OSGetArenaHi
/* 8033A3AC 003372EC  38 9F 00 60 */	addi r4, r31, 0x60
/* 8033A3B0 003372F0  83 A4 00 00 */	lwz r29, 0(r4)
/* 8033A3B4 003372F4  7C 03 E8 40 */	cmplw r3, r29
/* 8033A3B8 003372F8  40 81 00 18 */	ble lbl_8033A3D0
/* 8033A3BC 003372FC  48 00 0E D1 */	bl OSGetArenaHi
/* 8033A3C0 00337300  7C BD 18 50 */	subf r5, r29, r3
/* 8033A3C4 00337304  7F A3 EB 78 */	mr r3, r29
/* 8033A3C8 00337308  38 80 00 00 */	li r4, 0
/* 8033A3CC 0033730C  4B CC 90 8D */	bl memset
lbl_8033A3D0:
/* 8033A3D0 00337310  48 00 33 39 */	bl OSEnableInterrupts
/* 8033A3D4 00337314  80 0D 90 A8 */	lwz r0, lbl_80451628-_SDA_BASE_(r13)
/* 8033A3D8 00337318  2C 00 00 00 */	cmpwi r0, 0
/* 8033A3DC 0033731C  40 82 00 48 */	bne lbl_8033A424
/* 8033A3E0 00337320  48 00 ED 11 */	bl DVDInit
/* 8033A3E4 00337324  80 0D 90 8C */	lwz r0, lbl_8045160C-_SDA_BASE_(r13)
/* 8033A3E8 00337328  2C 00 00 00 */	cmpwi r0, 0
/* 8033A3EC 0033732C  41 82 00 18 */	beq lbl_8033A404
/* 8033A3F0 00337330  3C 60 00 01 */	lis r3, 0x00009000@ha
/* 8033A3F4 00337334  38 03 90 00 */	addi r0, r3, 0x00009000@l
/* 8033A3F8 00337338  3C 60 80 00 */	lis r3, 0x800030E6@ha
/* 8033A3FC 0033733C  B0 03 30 E6 */	sth r0, 0x800030E6@l(r3)
/* 8033A400 00337340  48 00 00 24 */	b lbl_8033A424
lbl_8033A404:
/* 8033A404 00337344  7F E3 FB 78 */	mr r3, r31
/* 8033A408 00337348  38 80 00 20 */	li r4, 0x20
/* 8033A40C 0033734C  48 00 11 75 */	bl DCInvalidateRange
.global InquiryCallback
/* 8033A410 00337350  3C 60 80 34 */	lis r3, InquiryCallback@ha
.global InquiryCallback
/* 8033A414 00337354  38 A3 9F 24 */	addi r5, r3, InquiryCallback@l
/* 8033A418 00337358  7F E4 FB 78 */	mr r4, r31
/* 8033A41C 0033735C  38 7F 00 20 */	addi r3, r31, 0x20
/* 8033A420 00337360  48 01 0C 49 */	bl DVDInquiryAsync
lbl_8033A424:
/* 8033A424 00337364  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8033A428 00337368  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8033A42C 0033736C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8033A430 00337370  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 8033A434 00337374  38 21 00 18 */	addi r1, r1, 0x18
/* 8033A438 00337378  7C 08 03 A6 */	mtlr r0
/* 8033A43C 0033737C  4E 80 00 20 */	blr 

.global OSExceptionInit
OSExceptionInit:
/* 8033A440 00337380  7C 08 02 A6 */	mflr r0
/* 8033A444 00337384  90 01 00 04 */	stw r0, 4(r1)
/* 8033A448 00337388  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 8033A44C 0033738C  BE 81 00 08 */	stmw r20, 8(r1)
/* 8033A450 00337390  3C 60 80 00 */	lis r3, 0x80000060@ha
/* 8033A454 00337394  80 03 00 60 */	lwz r0, 0x80000060@l(r3)
.global __OSEVSetNumber 
/* 8033A458 00337398  3C 80 80 34 */	lis r4, __OSEVSetNumber @ha
.global __OSEVSetNumber 
/* 8033A45C 0033739C  3B C4 A7 80 */	addi r30, r4, __OSEVSetNumber @l
.global __OSEVStart 
/* 8033A460 003373A0  3C A0 80 34 */	lis r5, __OSEVStart @ha
/* 8033A464 003373A4  83 3E 00 00 */	lwz r25, 0(r30)
.global __OSEVEnd 
/* 8033A468 003373A8  3C 80 80 34 */	lis r4, __OSEVEnd @ha
.global __OSEVStart 
/* 8033A46C 003373AC  38 A5 A7 18 */	addi r5, r5, __OSEVStart @l
.global __OSEVEnd 
/* 8033A470 003373B0  38 84 A7 B0 */	addi r4, r4, __OSEVEnd @l
/* 8033A474 003373B4  3C C0 80 3D */	lis r6, lbl_803CF288@ha
/* 8033A478 003373B8  28 00 00 00 */	cmplwi r0, 0
/* 8033A47C 003373BC  7C B8 2B 78 */	mr r24, r5
/* 8033A480 003373C0  3B A6 F2 88 */	addi r29, r6, lbl_803CF288@l
/* 8033A484 003373C4  7E E5 20 50 */	subf r23, r5, r4
/* 8033A488 003373C8  3A 83 00 60 */	addi r20, r3, 0x60
/* 8033A48C 003373CC  40 82 00 4C */	bne lbl_8033A4D8
/* 8033A490 003373D0  38 7D 01 60 */	addi r3, r29, 0x160
/* 8033A494 003373D4  4C C6 31 82 */	crclr 6
/* 8033A498 003373D8  48 00 BF 9D */	bl DBPrintf
.global __OSDBINTSTART 
/* 8033A49C 003373DC  3C 80 80 34 */	lis r4, __OSDBINTSTART @ha
.global __OSDBJUMPSTART 
/* 8033A4A0 003373E0  3C 60 80 34 */	lis r3, __OSDBJUMPSTART @ha
.global __OSDBJUMPSTART 
/* 8033A4A4 003373E4  38 03 A6 E4 */	addi r0, r3, __OSDBJUMPSTART @l
.global __OSDBINTSTART 
/* 8033A4A8 003373E8  38 84 A6 C0 */	addi r4, r4, __OSDBINTSTART @l
/* 8033A4AC 003373EC  7E A4 00 50 */	subf r21, r4, r0
/* 8033A4B0 003373F0  7E 83 A3 78 */	mr r3, r20
/* 8033A4B4 003373F4  7E A5 AB 78 */	mr r5, r21
/* 8033A4B8 003373F8  4B CC 90 89 */	bl memcpy
/* 8033A4BC 003373FC  7E 83 A3 78 */	mr r3, r20
/* 8033A4C0 00337400  7E A4 AB 78 */	mr r4, r21
/* 8033A4C4 00337404  48 00 11 49 */	bl DCFlushRangeNoSync
/* 8033A4C8 00337408  7C 00 04 AC */	sync 0
/* 8033A4CC 0033740C  7E 83 A3 78 */	mr r3, r20
/* 8033A4D0 00337410  7E A4 AB 78 */	mr r4, r21
/* 8033A4D4 00337414  48 00 11 BD */	bl ICInvalidateRange
lbl_8033A4D8:
.global __OSDBJUMPSTART 
/* 8033A4D8 00337418  3C 80 80 34 */	lis r4, __OSDBJUMPSTART @ha
/* 8033A4DC 0033741C  3C 60 80 34 */	lis r3, __OSDBJUMPEND @ha
.global __OSDBJUMPSTART 
/* 8033A4E0 00337420  3B E4 A6 E4 */	addi r31, r4, __OSDBJUMPSTART @l
/* 8033A4E4 00337424  38 03 A6 E8 */	addi r0, r3, __OSDBJUMPEND @l
/* 8033A4E8 00337428  3B 9D 01 24 */	addi r28, r29, 0x124
/* 8033A4EC 0033742C  7F 7F 00 50 */	subf r27, r31, r0
/* 8033A4F0 00337430  3B 40 00 00 */	li r26, 0
/* 8033A4F4 00337434  48 00 00 04 */	b lbl_8033A4F8
lbl_8033A4F8:
.global __DBVECTOR 
/* 8033A4F8 00337438  3C 60 80 34 */	lis r3, __DBVECTOR @ha
.global __DBVECTOR 
/* 8033A4FC 0033743C  3A A3 A7 70 */	addi r21, r3, __DBVECTOR @l
/* 8033A500 00337440  3E C0 60 00 */	lis r22, 0x6000
/* 8033A504 00337444  48 00 00 04 */	b lbl_8033A508
lbl_8033A508:
/* 8033A508 00337448  48 00 01 48 */	b lbl_8033A650
lbl_8033A50C:
/* 8033A50C 0033744C  80 6D 90 84 */	lwz r3, lbl_80451604-_SDA_BASE_(r13)
/* 8033A510 00337450  28 03 00 00 */	cmplwi r3, 0
/* 8033A514 00337454  41 82 00 34 */	beq lbl_8033A548
/* 8033A518 00337458  80 03 00 00 */	lwz r0, 0(r3)
/* 8033A51C 0033745C  28 00 00 02 */	cmplwi r0, 2
/* 8033A520 00337460  41 80 00 28 */	blt lbl_8033A548
/* 8033A524 00337464  7F 43 D3 78 */	mr r3, r26
/* 8033A528 00337468  48 00 BE F1 */	bl __DBIsExceptionMarked
/* 8033A52C 0033746C  2C 03 00 00 */	cmpwi r3, 0
/* 8033A530 00337470  41 82 00 18 */	beq lbl_8033A548
/* 8033A534 00337474  38 7D 01 7C */	addi r3, r29, 0x17c
/* 8033A538 00337478  4C C6 31 82 */	crclr 6
/* 8033A53C 0033747C  57 44 06 3E */	clrlwi r4, r26, 0x18
/* 8033A540 00337480  48 00 BE F5 */	bl DBPrintf
/* 8033A544 00337484  48 00 01 04 */	b lbl_8033A648
lbl_8033A548:
/* 8033A548 00337488  57 54 06 3E */	clrlwi r20, r26, 0x18
/* 8033A54C 0033748C  7F 20 A3 78 */	or r0, r25, r20
/* 8033A550 00337490  90 1E 00 00 */	stw r0, 0(r30)
/* 8033A554 00337494  7F 43 D3 78 */	mr r3, r26
/* 8033A558 00337498  48 00 BE C1 */	bl __DBIsExceptionMarked
/* 8033A55C 0033749C  2C 03 00 00 */	cmpwi r3, 0
/* 8033A560 003374A0  41 82 00 28 */	beq lbl_8033A588
/* 8033A564 003374A4  7E 84 A3 78 */	mr r4, r20
/* 8033A568 003374A8  4C C6 31 82 */	crclr 6
/* 8033A56C 003374AC  38 7D 01 AC */	addi r3, r29, 0x1ac
/* 8033A570 003374B0  48 00 BE C5 */	bl DBPrintf
/* 8033A574 003374B4  7E A3 AB 78 */	mr r3, r21
/* 8033A578 003374B8  7F E4 FB 78 */	mr r4, r31
/* 8033A57C 003374BC  7F 65 DB 78 */	mr r5, r27
/* 8033A580 003374C0  4B CC 8F C1 */	bl memcpy
/* 8033A584 003374C4  48 00 00 90 */	b lbl_8033A614
lbl_8033A588:
/* 8033A588 003374C8  7E A4 AB 78 */	mr r4, r21
/* 8033A58C 003374CC  48 00 00 04 */	b lbl_8033A590
lbl_8033A590:
/* 8033A590 003374D0  28 1B 00 00 */	cmplwi r27, 0
/* 8033A594 003374D4  38 7B 00 03 */	addi r3, r27, 3
/* 8033A598 003374D8  54 63 F0 BE */	srwi r3, r3, 2
/* 8033A59C 003374DC  40 81 00 78 */	ble lbl_8033A614
/* 8033A5A0 003374E0  54 60 E8 FE */	srwi r0, r3, 3
/* 8033A5A4 003374E4  28 00 00 00 */	cmplwi r0, 0
/* 8033A5A8 003374E8  7C 09 03 A6 */	mtctr r0
/* 8033A5AC 003374EC  41 82 00 54 */	beq lbl_8033A600
/* 8033A5B0 003374F0  48 00 00 04 */	b lbl_8033A5B4
lbl_8033A5B4:
/* 8033A5B4 003374F4  92 C4 00 00 */	stw r22, 0(r4)
/* 8033A5B8 003374F8  38 84 00 04 */	addi r4, r4, 4
/* 8033A5BC 003374FC  92 C4 00 00 */	stw r22, 0(r4)
/* 8033A5C0 00337500  38 84 00 04 */	addi r4, r4, 4
/* 8033A5C4 00337504  92 C4 00 00 */	stw r22, 0(r4)
/* 8033A5C8 00337508  38 84 00 04 */	addi r4, r4, 4
/* 8033A5CC 0033750C  92 C4 00 00 */	stw r22, 0(r4)
/* 8033A5D0 00337510  38 84 00 04 */	addi r4, r4, 4
/* 8033A5D4 00337514  92 C4 00 00 */	stw r22, 0(r4)
/* 8033A5D8 00337518  38 84 00 04 */	addi r4, r4, 4
/* 8033A5DC 0033751C  92 C4 00 00 */	stw r22, 0(r4)
/* 8033A5E0 00337520  38 84 00 04 */	addi r4, r4, 4
/* 8033A5E4 00337524  92 C4 00 00 */	stw r22, 0(r4)
/* 8033A5E8 00337528  38 84 00 04 */	addi r4, r4, 4
/* 8033A5EC 0033752C  92 C4 00 00 */	stw r22, 0(r4)
/* 8033A5F0 00337530  38 84 00 04 */	addi r4, r4, 4
/* 8033A5F4 00337534  42 00 FF C0 */	bdnz lbl_8033A5B4
/* 8033A5F8 00337538  70 63 00 07 */	andi. r3, r3, 7
/* 8033A5FC 0033753C  41 82 00 18 */	beq lbl_8033A614
lbl_8033A600:
/* 8033A600 00337540  7C 69 03 A6 */	mtctr r3
/* 8033A604 00337544  48 00 00 04 */	b lbl_8033A608
lbl_8033A608:
/* 8033A608 00337548  92 C4 00 00 */	stw r22, 0(r4)
/* 8033A60C 0033754C  38 84 00 04 */	addi r4, r4, 4
/* 8033A610 00337550  42 00 FF F8 */	bdnz lbl_8033A608
lbl_8033A614:
/* 8033A614 00337554  80 7C 00 00 */	lwz r3, 0(r28)
/* 8033A618 00337558  7F 04 C3 78 */	mr r4, r24
/* 8033A61C 0033755C  7E E5 BB 78 */	mr r5, r23
/* 8033A620 00337560  3E 83 80 00 */	addis r20, r3, 0x8000
/* 8033A624 00337564  7E 83 A3 78 */	mr r3, r20
/* 8033A628 00337568  4B CC 8F 19 */	bl memcpy
/* 8033A62C 0033756C  7E 83 A3 78 */	mr r3, r20
/* 8033A630 00337570  7E E4 BB 78 */	mr r4, r23
/* 8033A634 00337574  48 00 0F D9 */	bl DCFlushRangeNoSync
/* 8033A638 00337578  7C 00 04 AC */	sync 0
/* 8033A63C 0033757C  7E 83 A3 78 */	mr r3, r20
/* 8033A640 00337580  7E E4 BB 78 */	mr r4, r23
/* 8033A644 00337584  48 00 10 4D */	bl ICInvalidateRange
lbl_8033A648:
/* 8033A648 00337588  3B 9C 00 04 */	addi r28, r28, 4
/* 8033A64C 0033758C  3B 5A 00 01 */	addi r26, r26, 1
lbl_8033A650:
/* 8033A650 00337590  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 8033A654 00337594  28 00 00 0F */	cmplwi r0, 0xf
/* 8033A658 00337598  41 80 FE B4 */	blt lbl_8033A50C
/* 8033A65C 0033759C  3C 60 80 00 */	lis r3, 0x80003000@ha
/* 8033A660 003375A0  38 03 30 00 */	addi r0, r3, 0x80003000@l
/* 8033A664 003375A4  90 0D 90 A4 */	stw r0, lbl_80451624-_SDA_BASE_(r13)
/* 8033A668 003375A8  3A 80 00 00 */	li r20, 0
/* 8033A66C 003375AC  48 00 00 04 */	b lbl_8033A670
lbl_8033A670:
.global OSDefaultExceptionHandler
/* 8033A670 003375B0  3C 60 80 34 */	lis r3, OSDefaultExceptionHandler@ha
.global OSDefaultExceptionHandler
/* 8033A674 003375B4  3A E3 A7 B4 */	addi r23, r3, OSDefaultExceptionHandler@l
/* 8033A678 003375B8  48 00 00 04 */	b lbl_8033A67C
lbl_8033A67C:
/* 8033A67C 003375BC  48 00 00 14 */	b lbl_8033A690
lbl_8033A680:
/* 8033A680 003375C0  7E 83 A3 78 */	mr r3, r20
/* 8033A684 003375C4  7E E4 BB 78 */	mr r4, r23
/* 8033A688 003375C8  48 00 00 61 */	bl __OSDBJUMPEND 
/* 8033A68C 003375CC  3A 94 00 01 */	addi r20, r20, 1
lbl_8033A690:
/* 8033A690 003375D0  56 80 06 3E */	clrlwi r0, r20, 0x18
/* 8033A694 003375D4  28 00 00 0F */	cmplwi r0, 0xf
/* 8033A698 003375D8  41 80 FF E8 */	blt lbl_8033A680
/* 8033A69C 003375DC  93 3E 00 00 */	stw r25, 0(r30)
/* 8033A6A0 003375E0  38 7D 01 DC */	addi r3, r29, 0x1dc
/* 8033A6A4 003375E4  4C C6 31 82 */	crclr 6
/* 8033A6A8 003375E8  48 00 BD 8D */	bl DBPrintf
/* 8033A6AC 003375EC  BA 81 00 08 */	lmw r20, 8(r1)
/* 8033A6B0 003375F0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8033A6B4 003375F4  38 21 00 38 */	addi r1, r1, 0x38
/* 8033A6B8 003375F8  7C 08 03 A6 */	mtlr r0
/* 8033A6BC 003375FC  4E 80 00 20 */	blr 
.global __OSDBINTSTART 
__OSDBINTSTART :
/* 8033A6C0 00337600  38 A0 00 40 */	li r5, 0x40
/* 8033A6C4 00337604  7C 68 02 A6 */	mflr r3
/* 8033A6C8 00337608  90 65 00 0C */	stw r3, 0xc(r5)
/* 8033A6CC 0033760C  80 65 00 08 */	lwz r3, 8(r5)
/* 8033A6D0 00337610  64 63 80 00 */	oris r3, r3, 0x8000
/* 8033A6D4 00337614  7C 68 03 A6 */	mtlr r3
/* 8033A6D8 00337618  38 60 00 30 */	li r3, 0x30
/* 8033A6DC 0033761C  7C 60 01 24 */	mtmsr r3
/* 8033A6E0 00337620  4E 80 00 20 */	blr 
.global __OSDBJUMPSTART 
__OSDBJUMPSTART :
/* 8033A6E4 00337624  48 00 00 63 */	bla 0x60

.global __OSDBJUMPEND 
__OSDBJUMPEND :
/* 8033A6E8 00337628  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8033A6EC 0033762C  80 6D 90 A4 */	lwz r3, lbl_80451624-_SDA_BASE_(r13)
/* 8033A6F0 00337630  54 00 10 3A */	slwi r0, r0, 2
/* 8033A6F4 00337634  7C A3 02 14 */	add r5, r3, r0
/* 8033A6F8 00337638  80 65 00 00 */	lwz r3, 0(r5)
/* 8033A6FC 0033763C  90 85 00 00 */	stw r4, 0(r5)
/* 8033A700 00337640  4E 80 00 20 */	blr 

.global __OSGetExceptionHandler
__OSGetExceptionHandler:
/* 8033A704 00337644  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8033A708 00337648  80 6D 90 A4 */	lwz r3, lbl_80451624-_SDA_BASE_(r13)
/* 8033A70C 0033764C  54 00 10 3A */	slwi r0, r0, 2
/* 8033A710 00337650  7C 63 00 2E */	lwzx r3, r3, r0
/* 8033A714 00337654  4E 80 00 20 */	blr 
.global __OSEVStart 
__OSEVStart :
/* 8033A718 00337658  7C 90 43 A6 */	mtspr 0x110, r4
/* 8033A71C 0033765C  80 80 00 C0 */	lwz r4, 0xc0(0)
/* 8033A720 00337660  90 64 00 0C */	stw r3, 0xc(r4)
/* 8033A724 00337664  7C 70 42 A6 */	mfspr r3, 0x110
/* 8033A728 00337668  90 64 00 10 */	stw r3, 0x10(r4)
/* 8033A72C 0033766C  90 A4 00 14 */	stw r5, 0x14(r4)
/* 8033A730 00337670  A0 64 01 A2 */	lhz r3, 0x1a2(r4)
/* 8033A734 00337674  60 63 00 02 */	ori r3, r3, 2
/* 8033A738 00337678  B0 64 01 A2 */	sth r3, 0x1a2(r4)
/* 8033A73C 0033767C  7C 60 00 26 */	mfcr r3
/* 8033A740 00337680  90 64 00 80 */	stw r3, 0x80(r4)
/* 8033A744 00337684  7C 68 02 A6 */	mflr r3
/* 8033A748 00337688  90 64 00 84 */	stw r3, 0x84(r4)
/* 8033A74C 0033768C  7C 69 02 A6 */	mfctr r3
/* 8033A750 00337690  90 64 00 88 */	stw r3, 0x88(r4)
/* 8033A754 00337694  7C 61 02 A6 */	mfxer r3
/* 8033A758 00337698  90 64 00 8C */	stw r3, 0x8c(r4)
/* 8033A75C 0033769C  7C 7A 02 A6 */	mfspr r3, 0x1a
/* 8033A760 003376A0  90 64 01 98 */	stw r3, 0x198(r4)
/* 8033A764 003376A4  7C 7B 02 A6 */	mfspr r3, 0x1b
/* 8033A768 003376A8  90 64 01 9C */	stw r3, 0x19c(r4)
/* 8033A76C 003376AC  7C 65 1B 78 */	mr r5, r3
.global __DBVECTOR 
__DBVECTOR :
/* 8033A770 003376B0  60 00 00 00 */	nop 
/* 8033A774 003376B4  7C 60 00 A6 */	mfmsr r3
/* 8033A778 003376B8  60 63 00 30 */	ori r3, r3, 0x30
/* 8033A77C 003376BC  7C 7B 03 A6 */	mtspr 0x1b, r3
.global __OSEVSetNumber 
__OSEVSetNumber :
/* 8033A780 003376C0  38 60 00 00 */	li r3, 0
/* 8033A784 003376C4  80 80 00 D4 */	lwz r4, 0xd4(0)
/* 8033A788 003376C8  54 A5 07 BD */	rlwinm. r5, r5, 0, 0x1e, 0x1e
/* 8033A78C 003376CC  40 82 00 14 */	bne lbl_8033A7A0
.global OSDefaultExceptionHandler
/* 8033A790 003376D0  3C A0 80 34 */	lis r5, OSDefaultExceptionHandler@ha
.global OSDefaultExceptionHandler
/* 8033A794 003376D4  38 A5 A7 B4 */	addi r5, r5, OSDefaultExceptionHandler@l
/* 8033A798 003376D8  7C BA 03 A6 */	mtspr 0x1a, r5
/* 8033A79C 003376DC  4C 00 00 64 */	rfi 
lbl_8033A7A0:
/* 8033A7A0 003376E0  54 65 15 BA */	rlwinm r5, r3, 2, 0x16, 0x1d
/* 8033A7A4 003376E4  80 A5 30 00 */	lwz r5, 0x3000(r5)
/* 8033A7A8 003376E8  7C BA 03 A6 */	mtspr 0x1a, r5
/* 8033A7AC 003376EC  4C 00 00 64 */	rfi 
.global __OSEVEnd 
__OSEVEnd :
/* 8033A7B0 003376F0  60 00 00 00 */	nop 
.global OSDefaultExceptionHandler
OSDefaultExceptionHandler:
/* 8033A7B4 003376F4  90 04 00 00 */	stw r0, 0(r4)
/* 8033A7B8 003376F8  90 24 00 04 */	stw r1, 4(r4)
/* 8033A7BC 003376FC  90 44 00 08 */	stw r2, 8(r4)
/* 8033A7C0 00337700  BC C4 00 18 */	stmw r6, 0x18(r4)
/* 8033A7C4 00337704  7C 11 E2 A6 */	mfspr r0, 0x391
/* 8033A7C8 00337708  90 04 01 A8 */	stw r0, 0x1a8(r4)
/* 8033A7CC 0033770C  7C 12 E2 A6 */	mfspr r0, 0x392
/* 8033A7D0 00337710  90 04 01 AC */	stw r0, 0x1ac(r4)
/* 8033A7D4 00337714  7C 13 E2 A6 */	mfspr r0, 0x393
/* 8033A7D8 00337718  90 04 01 B0 */	stw r0, 0x1b0(r4)
/* 8033A7DC 0033771C  7C 14 E2 A6 */	mfspr r0, 0x394
/* 8033A7E0 00337720  90 04 01 B4 */	stw r0, 0x1b4(r4)
/* 8033A7E4 00337724  7C 15 E2 A6 */	mfspr r0, 0x395
/* 8033A7E8 00337728  90 04 01 B8 */	stw r0, 0x1b8(r4)
/* 8033A7EC 0033772C  7C 16 E2 A6 */	mfspr r0, 0x396
/* 8033A7F0 00337730  90 04 01 BC */	stw r0, 0x1bc(r4)
/* 8033A7F4 00337734  7C 17 E2 A6 */	mfspr r0, 0x397
/* 8033A7F8 00337738  90 04 01 C0 */	stw r0, 0x1c0(r4)
/* 8033A7FC 0033773C  7C B2 02 A6 */	mfdsisr r5
/* 8033A800 00337740  7C D3 02 A6 */	mfdar r6
/* 8033A804 00337744  94 21 FF F8 */	stwu r1, -8(r1)
/* 8033A808 00337748  48 00 1F 90 */	b __OSUnhandledException

.global __OSPSInit
__OSPSInit:
/* 8033A80C 0033774C  7C 08 02 A6 */	mflr r0
/* 8033A810 00337750  90 01 00 04 */	stw r0, 4(r1)
/* 8033A814 00337754  94 21 FF F8 */	stwu r1, -8(r1)
/* 8033A818 00337758  4B FF F5 75 */	bl PPCMfhid2
/* 8033A81C 0033775C  64 63 A0 00 */	oris r3, r3, 0xa000
/* 8033A820 00337760  4B FF F5 75 */	bl PPCMthid2
/* 8033A824 00337764  48 00 0E A1 */	bl ICFlashInvalidate
/* 8033A828 00337768  7C 00 04 AC */	sync 0
/* 8033A82C 0033776C  38 60 00 00 */	li r3, 0
/* 8033A830 00337770  7C 70 E3 A6 */	mtspr 0x390, r3
/* 8033A834 00337774  7C 71 E3 A6 */	mtspr 0x391, r3
/* 8033A838 00337778  7C 72 E3 A6 */	mtspr 0x392, r3
/* 8033A83C 0033777C  7C 73 E3 A6 */	mtspr 0x393, r3
/* 8033A840 00337780  7C 74 E3 A6 */	mtspr 0x394, r3
/* 8033A844 00337784  7C 75 E3 A6 */	mtspr 0x395, r3
/* 8033A848 00337788  7C 76 E3 A6 */	mtspr 0x396, r3
/* 8033A84C 0033778C  7C 77 E3 A6 */	mtspr 0x397, r3
/* 8033A850 00337790  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8033A854 00337794  38 21 00 08 */	addi r1, r1, 8
/* 8033A858 00337798  7C 08 03 A6 */	mtlr r0
/* 8033A85C 0033779C  4E 80 00 20 */	blr 

.global __OSGetDIConfig
__OSGetDIConfig:
/* 8033A860 003377A0  3C 60 CC 00 */	lis r3, 0xCC006000@ha
/* 8033A864 003377A4  38 63 60 00 */	addi r3, r3, 0xCC006000@l
/* 8033A868 003377A8  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8033A86C 003377AC  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8033A870 003377B0  4E 80 00 20 */	blr 

.global OSRegisterVersion
OSRegisterVersion:
/* 8033A874 003377B4  7C 08 02 A6 */	mflr r0
/* 8033A878 003377B8  90 01 00 04 */	stw r0, 4(r1)
/* 8033A87C 003377BC  94 21 FF F8 */	stwu r1, -8(r1)
/* 8033A880 003377C0  7C 64 1B 78 */	mr r4, r3
/* 8033A884 003377C4  4C C6 31 82 */	crclr 6
/* 8033A888 003377C8  38 6D 84 0C */	addi r3, r13, lbl_8045098C-_SDA_BASE_
/* 8033A88C 003377CC  4B CC C2 31 */	bl OSReport
/* 8033A890 003377D0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8033A894 003377D4  38 21 00 08 */	addi r1, r1, 8
/* 8033A898 003377D8  7C 08 03 A6 */	mtlr r0
/* 8033A89C 003377DC  4E 80 00 20 */	blr 

