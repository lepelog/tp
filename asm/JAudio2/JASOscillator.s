.include "macros.inc"

.section .text, "ax" # 8029be94


.global __ct__13JASOscillatorFv
__ct__13JASOscillatorFv:
/* 8029BE94 00298DD4  38 00 00 00 */	li r0, 0
/* 8029BE98 00298DD8  90 03 00 00 */	stw r0, 0(r3)
/* 8029BE9C 00298DDC  B0 03 00 14 */	sth r0, 0x14(r3)
/* 8029BEA0 00298DE0  B0 03 00 16 */	sth r0, 0x16(r3)
/* 8029BEA4 00298DE4  98 03 00 18 */	stb r0, 0x18(r3)
/* 8029BEA8 00298DE8  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8029BEAC 00298DEC  C0 02 BC F8 */	lfs f0, lbl_804556F8-_SDA2_BASE_(r2)
/* 8029BEB0 00298DF0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8029BEB4 00298DF4  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8029BEB8 00298DF8  D0 03 00 08 */	stfs f0, 8(r3)
/* 8029BEBC 00298DFC  D0 03 00 04 */	stfs f0, 4(r3)
/* 8029BEC0 00298E00  4E 80 00 20 */	blr 

.global initStart__13JASOscillatorFPCQ213JASOscillator4Data
initStart__13JASOscillatorFPCQ213JASOscillator4Data:
/* 8029BEC4 00298E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029BEC8 00298E08  90 83 00 00 */	stw r4, 0(r3)
/* 8029BECC 00298E0C  C0 02 BC F8 */	lfs f0, lbl_804556F8-_SDA2_BASE_(r2)
/* 8029BED0 00298E10  D0 03 00 04 */	stfs f0, 4(r3)
/* 8029BED4 00298E14  D0 03 00 08 */	stfs f0, 8(r3)
/* 8029BED8 00298E18  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8029BEDC 00298E1C  38 00 00 00 */	li r0, 0
/* 8029BEE0 00298E20  B0 03 00 14 */	sth r0, 0x14(r3)
/* 8029BEE4 00298E24  B0 03 00 16 */	sth r0, 0x16(r3)
/* 8029BEE8 00298E28  28 04 00 00 */	cmplwi r4, 0
/* 8029BEEC 00298E2C  40 82 00 0C */	bne lbl_8029BEF8
/* 8029BEF0 00298E30  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8029BEF4 00298E34  48 00 00 6C */	b lbl_8029BF60
lbl_8029BEF8:
/* 8029BEF8 00298E38  80 83 00 00 */	lwz r4, 0(r3)
/* 8029BEFC 00298E3C  80 84 00 08 */	lwz r4, 8(r4)
/* 8029BF00 00298E40  28 04 00 00 */	cmplwi r4, 0
/* 8029BF04 00298E44  40 82 00 18 */	bne lbl_8029BF1C
/* 8029BF08 00298E48  38 00 00 02 */	li r0, 2
/* 8029BF0C 00298E4C  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8029BF10 00298E50  C0 02 BC FC */	lfs f0, lbl_804556FC-_SDA2_BASE_(r2)
/* 8029BF14 00298E54  D0 03 00 08 */	stfs f0, 8(r3)
/* 8029BF18 00298E58  48 00 00 48 */	b lbl_8029BF60
lbl_8029BF1C:
/* 8029BF1C 00298E5C  A8 04 00 04 */	lha r0, 4(r4)
/* 8029BF20 00298E60  C8 22 BD 08 */	lfd f1, lbl_80455708-_SDA2_BASE_(r2)
/* 8029BF24 00298E64  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8029BF28 00298E68  90 01 00 0C */	stw r0, 0xc(r1)
/* 8029BF2C 00298E6C  3C 00 43 30 */	lis r0, 0x4330
/* 8029BF30 00298E70  90 01 00 08 */	stw r0, 8(r1)
/* 8029BF34 00298E74  C8 01 00 08 */	lfd f0, 8(r1)
/* 8029BF38 00298E78  EC 20 08 28 */	fsubs f1, f0, f1
/* 8029BF3C 00298E7C  C0 02 BD 00 */	lfs f0, lbl_80455700-_SDA2_BASE_(r2)
/* 8029BF40 00298E80  EC 01 00 24 */	fdivs f0, f1, f0
/* 8029BF44 00298E84  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8029BF48 00298E88  80 83 00 00 */	lwz r4, 0(r3)
/* 8029BF4C 00298E8C  80 84 00 08 */	lwz r4, 8(r4)
/* 8029BF50 00298E90  A8 04 00 00 */	lha r0, 0(r4)
/* 8029BF54 00298E94  98 03 00 18 */	stb r0, 0x18(r3)
/* 8029BF58 00298E98  38 00 00 01 */	li r0, 1
/* 8029BF5C 00298E9C  90 03 00 1C */	stw r0, 0x1c(r3)
lbl_8029BF60:
/* 8029BF60 00298EA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8029BF64 00298EA4  4E 80 00 20 */	blr 

.global incCounter__13JASOscillatorFf
incCounter__13JASOscillatorFf:
/* 8029BF68 00298EA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029BF6C 00298EAC  7C 08 02 A6 */	mflr r0
/* 8029BF70 00298EB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029BF74 00298EB4  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8029BF78 00298EB8  2C 00 00 01 */	cmpwi r0, 1
/* 8029BF7C 00298EBC  41 82 00 20 */	beq lbl_8029BF9C
/* 8029BF80 00298EC0  40 80 00 10 */	bge lbl_8029BF90
/* 8029BF84 00298EC4  2C 00 00 00 */	cmpwi r0, 0
/* 8029BF88 00298EC8  40 80 00 30 */	bge lbl_8029BFB8
/* 8029BF8C 00298ECC  48 00 00 10 */	b lbl_8029BF9C
lbl_8029BF90:
/* 8029BF90 00298ED0  2C 00 00 03 */	cmpwi r0, 3
/* 8029BF94 00298ED4  40 80 00 08 */	bge lbl_8029BF9C
/* 8029BF98 00298ED8  48 00 00 20 */	b lbl_8029BFB8
lbl_8029BF9C:
/* 8029BF9C 00298EDC  C0 43 00 04 */	lfs f2, 4(r3)
/* 8029BFA0 00298EE0  80 83 00 00 */	lwz r4, 0(r3)
/* 8029BFA4 00298EE4  C0 04 00 04 */	lfs f0, 4(r4)
/* 8029BFA8 00298EE8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8029BFAC 00298EEC  EC 02 00 2A */	fadds f0, f2, f0
/* 8029BFB0 00298EF0  D0 03 00 04 */	stfs f0, 4(r3)
/* 8029BFB4 00298EF4  48 00 01 2D */	bl update__13JASOscillatorFv
lbl_8029BFB8:
/* 8029BFB8 00298EF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029BFBC 00298EFC  7C 08 03 A6 */	mtlr r0
/* 8029BFC0 00298F00  38 21 00 10 */	addi r1, r1, 0x10
/* 8029BFC4 00298F04  4E 80 00 20 */	blr 

.global getValue__13JASOscillatorCFv
getValue__13JASOscillatorCFv:
/* 8029BFC8 00298F08  80 83 00 00 */	lwz r4, 0(r3)
/* 8029BFCC 00298F0C  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 8029BFD0 00298F10  C0 23 00 08 */	lfs f1, 8(r3)
/* 8029BFD4 00298F14  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8029BFD8 00298F18  EC 01 00 32 */	fmuls f0, f1, f0
/* 8029BFDC 00298F1C  EC 22 00 2A */	fadds f1, f2, f0
/* 8029BFE0 00298F20  4E 80 00 20 */	blr 

.global release__13JASOscillatorFv
release__13JASOscillatorFv:
/* 8029BFE4 00298F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029BFE8 00298F28  7C 08 02 A6 */	mflr r0
/* 8029BFEC 00298F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029BFF0 00298F30  80 A3 00 00 */	lwz r5, 0(r3)
/* 8029BFF4 00298F34  80 85 00 0C */	lwz r4, 0xc(r5)
/* 8029BFF8 00298F38  28 04 00 00 */	cmplwi r4, 0
/* 8029BFFC 00298F3C  40 82 00 1C */	bne lbl_8029C018
/* 8029C000 00298F40  A0 03 00 16 */	lhz r0, 0x16(r3)
/* 8029C004 00298F44  28 00 00 00 */	cmplwi r0, 0
/* 8029C008 00298F48  40 82 00 10 */	bne lbl_8029C018
/* 8029C00C 00298F4C  38 00 00 00 */	li r0, 0
/* 8029C010 00298F50  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8029C014 00298F54  48 00 00 BC */	b lbl_8029C0D0
lbl_8029C018:
/* 8029C018 00298F58  A0 03 00 16 */	lhz r0, 0x16(r3)
/* 8029C01C 00298F5C  28 00 00 00 */	cmplwi r0, 0
/* 8029C020 00298F60  41 82 00 3C */	beq lbl_8029C05C
/* 8029C024 00298F64  C0 22 BC F8 */	lfs f1, lbl_804556F8-_SDA2_BASE_(r2)
/* 8029C028 00298F68  D0 23 00 04 */	stfs f1, 4(r3)
/* 8029C02C 00298F6C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8029C030 00298F70  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8029C034 00298F74  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 8029C038 00298F78  38 00 00 00 */	li r0, 0
/* 8029C03C 00298F7C  B0 03 00 14 */	sth r0, 0x14(r3)
/* 8029C040 00298F80  A0 03 00 16 */	lhz r0, 0x16(r3)
/* 8029C044 00298F84  54 00 97 BE */	rlwinm r0, r0, 0x12, 0x1e, 0x1f
/* 8029C048 00298F88  98 03 00 18 */	stb r0, 0x18(r3)
/* 8029C04C 00298F8C  38 00 00 04 */	li r0, 4
/* 8029C050 00298F90  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8029C054 00298F94  48 00 00 8D */	bl update__13JASOscillatorFv
/* 8029C058 00298F98  48 00 00 78 */	b lbl_8029C0D0
lbl_8029C05C:
/* 8029C05C 00298F9C  80 05 00 08 */	lwz r0, 8(r5)
/* 8029C060 00298FA0  7C 00 20 40 */	cmplw r0, r4
/* 8029C064 00298FA4  41 82 00 60 */	beq lbl_8029C0C4
/* 8029C068 00298FA8  C0 02 BC F8 */	lfs f0, lbl_804556F8-_SDA2_BASE_(r2)
/* 8029C06C 00298FAC  D0 03 00 04 */	stfs f0, 4(r3)
/* 8029C070 00298FB0  C0 03 00 08 */	lfs f0, 8(r3)
/* 8029C074 00298FB4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8029C078 00298FB8  80 83 00 00 */	lwz r4, 0(r3)
/* 8029C07C 00298FBC  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8029C080 00298FC0  A8 04 00 04 */	lha r0, 4(r4)
/* 8029C084 00298FC4  C8 22 BD 08 */	lfd f1, lbl_80455708-_SDA2_BASE_(r2)
/* 8029C088 00298FC8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8029C08C 00298FCC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8029C090 00298FD0  3C 00 43 30 */	lis r0, 0x4330
/* 8029C094 00298FD4  90 01 00 08 */	stw r0, 8(r1)
/* 8029C098 00298FD8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8029C09C 00298FDC  EC 20 08 28 */	fsubs f1, f0, f1
/* 8029C0A0 00298FE0  C0 02 BD 00 */	lfs f0, lbl_80455700-_SDA2_BASE_(r2)
/* 8029C0A4 00298FE4  EC 01 00 24 */	fdivs f0, f1, f0
/* 8029C0A8 00298FE8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8029C0AC 00298FEC  38 00 00 00 */	li r0, 0
/* 8029C0B0 00298FF0  B0 03 00 14 */	sth r0, 0x14(r3)
/* 8029C0B4 00298FF4  80 83 00 00 */	lwz r4, 0(r3)
/* 8029C0B8 00298FF8  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8029C0BC 00298FFC  A8 04 00 00 */	lha r0, 0(r4)
/* 8029C0C0 00299000  98 03 00 18 */	stb r0, 0x18(r3)
lbl_8029C0C4:
/* 8029C0C4 00299004  38 00 00 03 */	li r0, 3
/* 8029C0C8 00299008  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8029C0CC 0029900C  48 00 00 15 */	bl update__13JASOscillatorFv
lbl_8029C0D0:
/* 8029C0D0 00299010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029C0D4 00299014  7C 08 03 A6 */	mtlr r0
/* 8029C0D8 00299018  38 21 00 10 */	addi r1, r1, 0x10
/* 8029C0DC 0029901C  4E 80 00 20 */	blr 

.global update__13JASOscillatorFv
update__13JASOscillatorFv:
/* 8029C0E0 00299020  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029C0E4 00299024  7C 08 02 A6 */	mflr r0
/* 8029C0E8 00299028  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029C0EC 0029902C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8029C0F0 00299030  2C 00 00 04 */	cmpwi r0, 4
/* 8029C0F4 00299034  40 82 00 60 */	bne lbl_8029C154
/* 8029C0F8 00299038  A0 03 00 16 */	lhz r0, 0x16(r3)
/* 8029C0FC 0029903C  54 00 04 BE */	clrlwi r0, r0, 0x12
/* 8029C100 00299040  C0 43 00 04 */	lfs f2, 4(r3)
/* 8029C104 00299044  C8 22 BD 08 */	lfd f1, lbl_80455708-_SDA2_BASE_(r2)
/* 8029C108 00299048  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 8029C10C 0029904C  90 81 00 0C */	stw r4, 0xc(r1)
/* 8029C110 00299050  3C 00 43 30 */	lis r0, 0x4330
/* 8029C114 00299054  90 01 00 08 */	stw r0, 8(r1)
/* 8029C118 00299058  C8 01 00 08 */	lfd f0, 8(r1)
/* 8029C11C 0029905C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8029C120 00299060  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8029C124 00299064  40 80 00 1C */	bge lbl_8029C140
/* 8029C128 00299068  90 81 00 0C */	stw r4, 0xc(r1)
/* 8029C12C 0029906C  90 01 00 08 */	stw r0, 8(r1)
/* 8029C130 00299070  C8 01 00 08 */	lfd f0, 8(r1)
/* 8029C134 00299074  EC 20 08 28 */	fsubs f1, f0, f1
/* 8029C138 00299078  48 00 01 89 */	bl updateCurrentValue__13JASOscillatorFf
/* 8029C13C 0029907C  48 00 01 74 */	b lbl_8029C2B0
lbl_8029C140:
/* 8029C140 00299080  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8029C144 00299084  D0 03 00 08 */	stfs f0, 8(r3)
/* 8029C148 00299088  38 00 00 00 */	li r0, 0
/* 8029C14C 0029908C  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8029C150 00299090  48 00 01 60 */	b lbl_8029C2B0
lbl_8029C154:
/* 8029C154 00299094  2C 00 00 02 */	cmpwi r0, 2
/* 8029C158 00299098  41 82 01 58 */	beq lbl_8029C2B0
/* 8029C15C 0029909C  2C 00 00 01 */	cmpwi r0, 1
/* 8029C160 002990A0  40 82 00 10 */	bne lbl_8029C170
/* 8029C164 002990A4  80 83 00 00 */	lwz r4, 0(r3)
/* 8029C168 002990A8  80 E4 00 08 */	lwz r7, 8(r4)
/* 8029C16C 002990AC  48 00 00 0C */	b lbl_8029C178
lbl_8029C170:
/* 8029C170 002990B0  80 83 00 00 */	lwz r4, 0(r3)
/* 8029C174 002990B4  80 E4 00 0C */	lwz r7, 0xc(r4)
lbl_8029C178:
/* 8029C178 002990B8  28 07 00 00 */	cmplwi r7, 0
/* 8029C17C 002990BC  40 82 00 10 */	bne lbl_8029C18C
/* 8029C180 002990C0  38 00 00 02 */	li r0, 2
/* 8029C184 002990C4  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8029C188 002990C8  48 00 01 28 */	b lbl_8029C2B0
lbl_8029C18C:
/* 8029C18C 002990CC  C8 42 BD 08 */	lfd f2, lbl_80455708-_SDA2_BASE_(r2)
/* 8029C190 002990D0  3C A0 43 30 */	lis r5, 0x4330
/* 8029C194 002990D4  48 00 00 C4 */	b lbl_8029C258
lbl_8029C198:
/* 8029C198 002990D8  C0 23 00 04 */	lfs f1, 4(r3)
/* 8029C19C 002990DC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8029C1A0 002990E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8029C1A4 002990E4  90 A1 00 08 */	stw r5, 8(r1)
/* 8029C1A8 002990E8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8029C1AC 002990EC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8029C1B0 002990F0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8029C1B4 002990F4  D0 03 00 04 */	stfs f0, 4(r3)
/* 8029C1B8 002990F8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8029C1BC 002990FC  D0 03 00 08 */	stfs f0, 8(r3)
/* 8029C1C0 00299100  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 8029C1C4 00299104  38 04 00 01 */	addi r0, r4, 1
/* 8029C1C8 00299108  B0 03 00 14 */	sth r0, 0x14(r3)
/* 8029C1CC 0029910C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8029C1D0 00299110  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8029C1D4 00299114  A0 03 00 14 */	lhz r0, 0x14(r3)
/* 8029C1D8 00299118  1C 00 00 06 */	mulli r0, r0, 6
/* 8029C1DC 0029911C  7C 87 02 14 */	add r4, r7, r0
/* 8029C1E0 00299120  A8 04 00 00 */	lha r0, 0(r4)
/* 8029C1E4 00299124  2C 00 00 0E */	cmpwi r0, 0xe
/* 8029C1E8 00299128  41 82 00 28 */	beq lbl_8029C210
/* 8029C1EC 0029912C  40 80 00 10 */	bge lbl_8029C1FC
/* 8029C1F0 00299130  2C 00 00 0D */	cmpwi r0, 0xd
/* 8029C1F4 00299134  40 80 00 28 */	bge lbl_8029C21C
/* 8029C1F8 00299138  48 00 00 30 */	b lbl_8029C228
lbl_8029C1FC:
/* 8029C1FC 0029913C  2C 00 00 10 */	cmpwi r0, 0x10
/* 8029C200 00299140  40 80 00 28 */	bge lbl_8029C228
/* 8029C204 00299144  38 00 00 00 */	li r0, 0
/* 8029C208 00299148  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8029C20C 0029914C  48 00 00 A4 */	b lbl_8029C2B0
lbl_8029C210:
/* 8029C210 00299150  38 00 00 02 */	li r0, 2
/* 8029C214 00299154  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8029C218 00299158  48 00 00 98 */	b lbl_8029C2B0
lbl_8029C21C:
/* 8029C21C 0029915C  A8 04 00 04 */	lha r0, 4(r4)
/* 8029C220 00299160  B0 03 00 14 */	sth r0, 0x14(r3)
/* 8029C224 00299164  48 00 00 34 */	b lbl_8029C258
lbl_8029C228:
/* 8029C228 00299168  98 03 00 18 */	stb r0, 0x18(r3)
/* 8029C22C 0029916C  A8 04 00 04 */	lha r0, 4(r4)
/* 8029C230 00299170  C8 22 BD 08 */	lfd f1, lbl_80455708-_SDA2_BASE_(r2)
/* 8029C234 00299174  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8029C238 00299178  90 01 00 0C */	stw r0, 0xc(r1)
/* 8029C23C 0029917C  3C 00 43 30 */	lis r0, 0x4330
/* 8029C240 00299180  90 01 00 08 */	stw r0, 8(r1)
/* 8029C244 00299184  C8 01 00 08 */	lfd f0, 8(r1)
/* 8029C248 00299188  EC 20 08 28 */	fsubs f1, f0, f1
/* 8029C24C 0029918C  C0 02 BD 00 */	lfs f0, lbl_80455700-_SDA2_BASE_(r2)
/* 8029C250 00299190  EC 01 00 24 */	fdivs f0, f1, f0
/* 8029C254 00299194  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_8029C258:
/* 8029C258 00299198  C0 23 00 04 */	lfs f1, 4(r3)
/* 8029C25C 0029919C  A0 03 00 14 */	lhz r0, 0x14(r3)
/* 8029C260 002991A0  1C C0 00 06 */	mulli r6, r0, 6
/* 8029C264 002991A4  38 06 00 02 */	addi r0, r6, 2
/* 8029C268 002991A8  7C 87 02 AE */	lhax r4, r7, r0
/* 8029C26C 002991AC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8029C270 002991B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8029C274 002991B4  90 A1 00 08 */	stw r5, 8(r1)
/* 8029C278 002991B8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8029C27C 002991BC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8029C280 002991C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029C284 002991C4  4C 41 13 82 */	cror 2, 1, 2
/* 8029C288 002991C8  41 82 FF 10 */	beq lbl_8029C198
/* 8029C28C 002991CC  7C 87 32 14 */	add r4, r7, r6
/* 8029C290 002991D0  A8 04 00 02 */	lha r0, 2(r4)
/* 8029C294 002991D4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8029C298 002991D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8029C29C 002991DC  3C 00 43 30 */	lis r0, 0x4330
/* 8029C2A0 002991E0  90 01 00 08 */	stw r0, 8(r1)
/* 8029C2A4 002991E4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8029C2A8 002991E8  EC 20 10 28 */	fsubs f1, f0, f2
/* 8029C2AC 002991EC  48 00 00 15 */	bl updateCurrentValue__13JASOscillatorFf
lbl_8029C2B0:
/* 8029C2B0 002991F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029C2B4 002991F4  7C 08 03 A6 */	mtlr r0
/* 8029C2B8 002991F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8029C2BC 002991FC  4E 80 00 20 */	blr 

.global updateCurrentValue__13JASOscillatorFf
updateCurrentValue__13JASOscillatorFf:
/* 8029C2C0 00299200  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8029C2C4 00299204  7C 08 02 A6 */	mflr r0
/* 8029C2C8 00299208  90 01 00 34 */	stw r0, 0x34(r1)
/* 8029C2CC 0029920C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8029C2D0 00299210  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8029C2D4 00299214  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8029C2D8 00299218  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8029C2DC 0029921C  7C 7E 1B 78 */	mr r30, r3
/* 8029C2E0 00299220  88 03 00 18 */	lbz r0, 0x18(r3)
/* 8029C2E4 00299224  54 00 10 3A */	slwi r0, r0, 2
/* 8029C2E8 00299228  3C 60 80 3C */	lis r3, lbl_803C78A8@ha
/* 8029C2EC 0029922C  38 63 78 A8 */	addi r3, r3, lbl_803C78A8@l
/* 8029C2F0 00299230  7F E3 00 2E */	lwzx r31, r3, r0
/* 8029C2F4 00299234  C0 42 BD 10 */	lfs f2, lbl_80455710-_SDA2_BASE_(r2)
/* 8029C2F8 00299238  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8029C2FC 0029923C  EC 00 08 24 */	fdivs f0, f0, f1
/* 8029C300 00299240  EF E2 00 32 */	fmuls f31, f2, f0
/* 8029C304 00299244  FC 20 F8 90 */	fmr f1, f31
/* 8029C308 00299248  48 0C 5D A5 */	bl __cvt_fp2unsigned
/* 8029C30C 0029924C  C8 22 BD 18 */	lfd f1, lbl_80455718-_SDA2_BASE_(r2)
/* 8029C310 00299250  90 61 00 0C */	stw r3, 0xc(r1)
/* 8029C314 00299254  3C 00 43 30 */	lis r0, 0x4330
/* 8029C318 00299258  90 01 00 08 */	stw r0, 8(r1)
/* 8029C31C 0029925C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8029C320 00299260  EC 00 08 28 */	fsubs f0, f0, f1
/* 8029C324 00299264  EC 5F 00 28 */	fsubs f2, f31, f0
/* 8029C328 00299268  54 60 10 3A */	slwi r0, r3, 2
/* 8029C32C 0029926C  C0 62 BC FC */	lfs f3, lbl_804556FC-_SDA2_BASE_(r2)
/* 8029C330 00299270  EC 23 10 28 */	fsubs f1, f3, f2
/* 8029C334 00299274  7C 1F 04 2E */	lfsx f0, r31, r0
/* 8029C338 00299278  EC 21 00 32 */	fmuls f1, f1, f0
/* 8029C33C 0029927C  7C 7F 02 14 */	add r3, r31, r0
/* 8029C340 00299280  C0 03 00 04 */	lfs f0, 4(r3)
/* 8029C344 00299284  EC 02 00 32 */	fmuls f0, f2, f0
/* 8029C348 00299288  EC 81 00 2A */	fadds f4, f1, f0
/* 8029C34C 0029928C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8029C350 00299290  EC 40 01 32 */	fmuls f2, f0, f4
/* 8029C354 00299294  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8029C358 00299298  EC 03 20 28 */	fsubs f0, f3, f4
/* 8029C35C 0029929C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8029C360 002992A0  EC 02 00 2A */	fadds f0, f2, f0
/* 8029C364 002992A4  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8029C368 002992A8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8029C36C 002992AC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8029C370 002992B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8029C374 002992B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8029C378 002992B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8029C37C 002992BC  7C 08 03 A6 */	mtlr r0
/* 8029C380 002992C0  38 21 00 30 */	addi r1, r1, 0x30
/* 8029C384 002992C4  4E 80 00 20 */	blr 

