lbl_8036067C:
/* 8036067C  80 A2 CB 80 */	lwz r5, __GXData(r2)
/* 80360680  80 05 05 9C */	lwz r0, 0x59c(r5)
/* 80360684  2C 00 00 22 */	cmpwi r0, 0x22
/* 80360688  41 82 00 2C */	beq lbl_803606B4
/* 8036068C  40 80 00 74 */	bge lbl_80360700
/* 80360690  2C 00 00 0B */	cmpwi r0, 0xb
/* 80360694  40 80 00 10 */	bge lbl_803606A4
/* 80360698  2C 00 00 00 */	cmpwi r0, 0
/* 8036069C  40 80 00 18 */	bge lbl_803606B4
/* 803606A0  48 00 00 60 */	b lbl_80360700
lbl_803606A4:
/* 803606A4  2C 00 00 1B */	cmpwi r0, 0x1b
/* 803606A8  40 80 00 44 */	bge lbl_803606EC
/* 803606AC  48 00 00 28 */	b lbl_803606D4
/* 803606B0  48 00 00 50 */	b lbl_80360700
lbl_803606B4:
/* 803606B4  38 00 00 10 */	li r0, 0x10
/* 803606B8  3C C0 CC 01 */	lis r6, 0xCC01 /* 0xCC008000@ha */
/* 803606BC  98 06 80 00 */	stb r0, 0x8000(r6)
/* 803606C0  38 A0 10 06 */	li r5, 0x1006
/* 803606C4  38 00 00 00 */	li r0, 0
/* 803606C8  90 A6 80 00 */	stw r5, -0x8000(r6)
/* 803606CC  90 06 80 00 */	stw r0, -0x8000(r6)
/* 803606D0  48 00 00 30 */	b lbl_80360700
lbl_803606D4:
/* 803606D4  38 00 00 61 */	li r0, 0x61
/* 803606D8  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 803606DC  98 05 80 00 */	stb r0, 0x8000(r5)
/* 803606E0  3C 00 23 00 */	lis r0, 0x2300
/* 803606E4  90 05 80 00 */	stw r0, -0x8000(r5)
/* 803606E8  48 00 00 18 */	b lbl_80360700
lbl_803606EC:
/* 803606EC  38 00 00 61 */	li r0, 0x61
/* 803606F0  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 803606F4  98 05 80 00 */	stb r0, 0x8000(r5)
/* 803606F8  3C 00 24 00 */	lis r0, 0x2400
/* 803606FC  90 05 80 00 */	stw r0, -0x8000(r5)
lbl_80360700:
/* 80360700  80 C2 CB 80 */	lwz r6, __GXData(r2)
/* 80360704  80 06 05 A0 */	lwz r0, 0x5a0(r6)
/* 80360708  2C 00 00 15 */	cmpwi r0, 0x15
/* 8036070C  41 82 00 2C */	beq lbl_80360738
/* 80360710  40 80 00 7C */	bge lbl_8036078C
/* 80360714  2C 00 00 09 */	cmpwi r0, 9
/* 80360718  40 80 00 10 */	bge lbl_80360728
/* 8036071C  2C 00 00 00 */	cmpwi r0, 0
/* 80360720  40 80 00 18 */	bge lbl_80360738
/* 80360724  48 00 00 68 */	b lbl_8036078C
lbl_80360728:
/* 80360728  2C 00 00 11 */	cmpwi r0, 0x11
/* 8036072C  40 80 00 54 */	bge lbl_80360780
/* 80360730  48 00 00 20 */	b lbl_80360750
/* 80360734  48 00 00 58 */	b lbl_8036078C
lbl_80360738:
/* 80360738  38 00 00 61 */	li r0, 0x61
/* 8036073C  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360740  98 05 80 00 */	stb r0, 0x8000(r5)
/* 80360744  3C 00 67 00 */	lis r0, 0x6700
/* 80360748  90 05 80 00 */	stw r0, -0x8000(r5)
/* 8036074C  48 00 00 40 */	b lbl_8036078C
lbl_80360750:
/* 80360750  80 A6 05 A4 */	lwz r5, 0x5a4(r6)
/* 80360754  38 00 00 00 */	li r0, 0
/* 80360758  50 05 26 36 */	rlwimi r5, r0, 4, 0x18, 0x1b
/* 8036075C  90 A6 05 A4 */	stw r5, 0x5a4(r6)
/* 80360760  38 00 00 08 */	li r0, 8
/* 80360764  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360768  98 05 80 00 */	stb r0, 0x8000(r5)
/* 8036076C  38 00 00 20 */	li r0, 0x20
/* 80360770  98 05 80 00 */	stb r0, -0x8000(r5)
/* 80360774  80 06 05 A4 */	lwz r0, 0x5a4(r6)
/* 80360778  90 05 80 00 */	stw r0, -0x8000(r5)
/* 8036077C  48 00 00 10 */	b lbl_8036078C
lbl_80360780:
/* 80360780  80 AD 93 A4 */	lwz r5, __cpReg(r13)
/* 80360784  38 00 00 00 */	li r0, 0
/* 80360788  B0 05 00 06 */	sth r0, 6(r5)
lbl_8036078C:
/* 8036078C  80 A2 CB 80 */	lwz r5, __GXData(r2)
/* 80360790  90 65 05 9C */	stw r3, 0x59c(r5)
/* 80360794  80 05 05 9C */	lwz r0, 0x59c(r5)
/* 80360798  28 00 00 23 */	cmplwi r0, 0x23
/* 8036079C  41 81 04 1C */	bgt lbl_80360BB8
/* 803607A0  3C 60 80 3D */	lis r3, lit_181@ha
/* 803607A4  38 63 28 B4 */	addi r3, r3, lit_181@l
/* 803607A8  54 00 10 3A */	slwi r0, r0, 2
/* 803607AC  7C 03 00 2E */	lwzx r0, r3, r0
/* 803607B0  7C 09 03 A6 */	mtctr r0
/* 803607B4  4E 80 04 20 */	bctr 
/* 803607B8  38 00 00 10 */	li r0, 0x10
/* 803607BC  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 803607C0  98 05 80 00 */	stb r0, 0x8000(r5)
/* 803607C4  38 60 10 06 */	li r3, 0x1006
/* 803607C8  38 00 02 73 */	li r0, 0x273
/* 803607CC  90 65 80 00 */	stw r3, -0x8000(r5)
/* 803607D0  90 05 80 00 */	stw r0, -0x8000(r5)
/* 803607D4  48 00 03 E4 */	b lbl_80360BB8
/* 803607D8  38 00 00 10 */	li r0, 0x10
/* 803607DC  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 803607E0  98 05 80 00 */	stb r0, 0x8000(r5)
/* 803607E4  38 60 10 06 */	li r3, 0x1006
/* 803607E8  38 00 01 4A */	li r0, 0x14a
/* 803607EC  90 65 80 00 */	stw r3, -0x8000(r5)
/* 803607F0  90 05 80 00 */	stw r0, -0x8000(r5)
/* 803607F4  48 00 03 C4 */	b lbl_80360BB8
/* 803607F8  38 00 00 10 */	li r0, 0x10
/* 803607FC  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360800  98 05 80 00 */	stb r0, 0x8000(r5)
/* 80360804  38 60 10 06 */	li r3, 0x1006
/* 80360808  38 00 01 6B */	li r0, 0x16b
/* 8036080C  90 65 80 00 */	stw r3, -0x8000(r5)
/* 80360810  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80360814  48 00 03 A4 */	b lbl_80360BB8
/* 80360818  38 00 00 10 */	li r0, 0x10
/* 8036081C  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360820  98 05 80 00 */	stb r0, 0x8000(r5)
/* 80360824  38 60 10 06 */	li r3, 0x1006
/* 80360828  38 00 00 84 */	li r0, 0x84
/* 8036082C  90 65 80 00 */	stw r3, -0x8000(r5)
/* 80360830  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80360834  48 00 03 84 */	b lbl_80360BB8
/* 80360838  38 00 00 10 */	li r0, 0x10
/* 8036083C  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360840  98 05 80 00 */	stb r0, 0x8000(r5)
/* 80360844  38 60 10 06 */	li r3, 0x1006
/* 80360848  38 00 00 C6 */	li r0, 0xc6
/* 8036084C  90 65 80 00 */	stw r3, -0x8000(r5)
/* 80360850  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80360854  48 00 03 64 */	b lbl_80360BB8
/* 80360858  38 00 00 10 */	li r0, 0x10
/* 8036085C  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360860  98 05 80 00 */	stb r0, 0x8000(r5)
/* 80360864  38 60 10 06 */	li r3, 0x1006
/* 80360868  38 00 02 10 */	li r0, 0x210
/* 8036086C  90 65 80 00 */	stw r3, -0x8000(r5)
/* 80360870  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80360874  48 00 03 44 */	b lbl_80360BB8
/* 80360878  38 00 00 10 */	li r0, 0x10
/* 8036087C  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360880  98 05 80 00 */	stb r0, 0x8000(r5)
/* 80360884  38 60 10 06 */	li r3, 0x1006
/* 80360888  38 00 02 52 */	li r0, 0x252
/* 8036088C  90 65 80 00 */	stw r3, -0x8000(r5)
/* 80360890  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80360894  48 00 03 24 */	b lbl_80360BB8
/* 80360898  38 00 00 10 */	li r0, 0x10
/* 8036089C  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 803608A0  98 05 80 00 */	stb r0, 0x8000(r5)
/* 803608A4  38 60 10 06 */	li r3, 0x1006
/* 803608A8  38 00 02 31 */	li r0, 0x231
/* 803608AC  90 65 80 00 */	stw r3, -0x8000(r5)
/* 803608B0  90 05 80 00 */	stw r0, -0x8000(r5)
/* 803608B4  48 00 03 04 */	b lbl_80360BB8
/* 803608B8  38 00 00 10 */	li r0, 0x10
/* 803608BC  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 803608C0  98 05 80 00 */	stb r0, 0x8000(r5)
/* 803608C4  38 60 10 06 */	li r3, 0x1006
/* 803608C8  38 00 01 AD */	li r0, 0x1ad
/* 803608CC  90 65 80 00 */	stw r3, -0x8000(r5)
/* 803608D0  90 05 80 00 */	stw r0, -0x8000(r5)
/* 803608D4  48 00 02 E4 */	b lbl_80360BB8
/* 803608D8  38 00 00 10 */	li r0, 0x10
/* 803608DC  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 803608E0  98 05 80 00 */	stb r0, 0x8000(r5)
/* 803608E4  38 60 10 06 */	li r3, 0x1006
/* 803608E8  38 00 01 CE */	li r0, 0x1ce
/* 803608EC  90 65 80 00 */	stw r3, -0x8000(r5)
/* 803608F0  90 05 80 00 */	stw r0, -0x8000(r5)
/* 803608F4  48 00 02 C4 */	b lbl_80360BB8
/* 803608F8  38 00 00 10 */	li r0, 0x10
/* 803608FC  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360900  98 05 80 00 */	stb r0, 0x8000(r5)
/* 80360904  38 60 10 06 */	li r3, 0x1006
/* 80360908  38 00 00 21 */	li r0, 0x21
/* 8036090C  90 65 80 00 */	stw r3, -0x8000(r5)
/* 80360910  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80360914  48 00 02 A4 */	b lbl_80360BB8
/* 80360918  38 00 00 10 */	li r0, 0x10
/* 8036091C  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360920  98 05 80 00 */	stb r0, 0x8000(r5)
/* 80360924  38 60 10 06 */	li r3, 0x1006
/* 80360928  38 00 01 53 */	li r0, 0x153
/* 8036092C  90 65 80 00 */	stw r3, -0x8000(r5)
/* 80360930  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80360934  48 00 02 84 */	b lbl_80360BB8
/* 80360938  38 00 00 61 */	li r0, 0x61
/* 8036093C  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360940  3C 60 23 01 */	lis r3, 0x2301 /* 0x2300AE7F@ha */
/* 80360944  98 05 80 00 */	stb r0, 0x8000(r5)
/* 80360948  38 03 AE 7F */	addi r0, r3, 0xAE7F /* 0x2300AE7F@l */
/* 8036094C  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80360950  48 00 02 68 */	b lbl_80360BB8
/* 80360954  38 00 00 61 */	li r0, 0x61
/* 80360958  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 8036095C  3C 60 23 01 */	lis r3, 0x2301 /* 0x23008E7F@ha */
/* 80360960  98 05 80 00 */	stb r0, 0x8000(r5)
/* 80360964  38 03 8E 7F */	addi r0, r3, 0x8E7F /* 0x23008E7F@l */
/* 80360968  90 05 80 00 */	stw r0, -0x8000(r5)
/* 8036096C  48 00 02 4C */	b lbl_80360BB8
/* 80360970  38 00 00 61 */	li r0, 0x61
/* 80360974  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360978  3C 60 23 01 */	lis r3, 0x2301 /* 0x23009E7F@ha */
/* 8036097C  98 05 80 00 */	stb r0, 0x8000(r5)
/* 80360980  38 03 9E 7F */	addi r0, r3, 0x9E7F /* 0x23009E7F@l */
/* 80360984  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80360988  48 00 02 30 */	b lbl_80360BB8
/* 8036098C  38 00 00 61 */	li r0, 0x61
/* 80360990  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360994  3C 60 23 00 */	lis r3, 0x2300 /* 0x23001E7F@ha */
/* 80360998  98 05 80 00 */	stb r0, 0x8000(r5)
/* 8036099C  38 03 1E 7F */	addi r0, r3, 0x1E7F /* 0x23001E7F@l */
/* 803609A0  90 05 80 00 */	stw r0, -0x8000(r5)
/* 803609A4  48 00 02 14 */	b lbl_80360BB8
/* 803609A8  38 00 00 61 */	li r0, 0x61
/* 803609AC  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 803609B0  3C 60 23 01 */	lis r3, 0x2301 /* 0x2300AC3F@ha */
/* 803609B4  98 05 80 00 */	stb r0, 0x8000(r5)
/* 803609B8  38 03 AC 3F */	addi r0, r3, 0xAC3F /* 0x2300AC3F@l */
/* 803609BC  90 05 80 00 */	stw r0, -0x8000(r5)
/* 803609C0  48 00 01 F8 */	b lbl_80360BB8
/* 803609C4  38 00 00 61 */	li r0, 0x61
/* 803609C8  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 803609CC  3C 60 23 01 */	lis r3, 0x2301 /* 0x2300AC7F@ha */
/* 803609D0  98 05 80 00 */	stb r0, 0x8000(r5)
/* 803609D4  38 03 AC 7F */	addi r0, r3, 0xAC7F /* 0x2300AC7F@l */
/* 803609D8  90 05 80 00 */	stw r0, -0x8000(r5)
/* 803609DC  48 00 01 DC */	b lbl_80360BB8
/* 803609E0  38 00 00 61 */	li r0, 0x61
/* 803609E4  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 803609E8  3C 60 23 01 */	lis r3, 0x2301 /* 0x2300ACBF@ha */
/* 803609EC  98 05 80 00 */	stb r0, 0x8000(r5)
/* 803609F0  38 03 AC BF */	addi r0, r3, 0xACBF /* 0x2300ACBF@l */
/* 803609F4  90 05 80 00 */	stw r0, -0x8000(r5)
/* 803609F8  48 00 01 C0 */	b lbl_80360BB8
/* 803609FC  38 00 00 61 */	li r0, 0x61
/* 80360A00  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360A04  3C 60 23 01 */	lis r3, 0x2301 /* 0x2300ACFF@ha */
/* 80360A08  98 05 80 00 */	stb r0, 0x8000(r5)
/* 80360A0C  38 03 AC FF */	addi r0, r3, 0xACFF /* 0x2300ACFF@l */
/* 80360A10  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80360A14  48 00 01 A4 */	b lbl_80360BB8
/* 80360A18  38 00 00 61 */	li r0, 0x61
/* 80360A1C  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360A20  3C 60 23 01 */	lis r3, 0x2301 /* 0x2300AD3F@ha */
/* 80360A24  98 05 80 00 */	stb r0, 0x8000(r5)
/* 80360A28  38 03 AD 3F */	addi r0, r3, 0xAD3F /* 0x2300AD3F@l */
/* 80360A2C  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80360A30  48 00 01 88 */	b lbl_80360BB8
/* 80360A34  38 00 00 61 */	li r0, 0x61
/* 80360A38  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360A3C  3C 60 23 01 */	lis r3, 0x2301 /* 0x2300AD7F@ha */
/* 80360A40  98 05 80 00 */	stb r0, 0x8000(r5)
/* 80360A44  38 03 AD 7F */	addi r0, r3, 0xAD7F /* 0x2300AD7F@l */
/* 80360A48  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80360A4C  48 00 01 6C */	b lbl_80360BB8
/* 80360A50  38 00 00 61 */	li r0, 0x61
/* 80360A54  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360A58  3C 60 23 01 */	lis r3, 0x2301 /* 0x2300ADBF@ha */
/* 80360A5C  98 05 80 00 */	stb r0, 0x8000(r5)
/* 80360A60  38 03 AD BF */	addi r0, r3, 0xADBF /* 0x2300ADBF@l */
/* 80360A64  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80360A68  48 00 01 50 */	b lbl_80360BB8
/* 80360A6C  38 00 00 61 */	li r0, 0x61
/* 80360A70  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360A74  3C 60 23 01 */	lis r3, 0x2301 /* 0x2300ADFF@ha */
/* 80360A78  98 05 80 00 */	stb r0, 0x8000(r5)
/* 80360A7C  38 03 AD FF */	addi r0, r3, 0xADFF /* 0x2300ADFF@l */
/* 80360A80  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80360A84  48 00 01 34 */	b lbl_80360BB8
/* 80360A88  38 00 00 61 */	li r0, 0x61
/* 80360A8C  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360A90  3C 60 23 01 */	lis r3, 0x2301 /* 0x2300AE3F@ha */
/* 80360A94  98 05 80 00 */	stb r0, 0x8000(r5)
/* 80360A98  38 03 AE 3F */	addi r0, r3, 0xAE3F /* 0x2300AE3F@l */
/* 80360A9C  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80360AA0  48 00 01 18 */	b lbl_80360BB8
/* 80360AA4  38 00 00 61 */	li r0, 0x61
/* 80360AA8  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360AAC  3C 60 23 01 */	lis r3, 0x2301 /* 0x2300A27F@ha */
/* 80360AB0  98 05 80 00 */	stb r0, 0x8000(r5)
/* 80360AB4  38 03 A2 7F */	addi r0, r3, 0xA27F /* 0x2300A27F@l */
/* 80360AB8  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80360ABC  48 00 00 FC */	b lbl_80360BB8
/* 80360AC0  38 00 00 61 */	li r0, 0x61
/* 80360AC4  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360AC8  3C 60 23 01 */	lis r3, 0x2301 /* 0x2300A67F@ha */
/* 80360ACC  98 05 80 00 */	stb r0, 0x8000(r5)
/* 80360AD0  38 03 A6 7F */	addi r0, r3, 0xA67F /* 0x2300A67F@l */
/* 80360AD4  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80360AD8  48 00 00 E0 */	b lbl_80360BB8
/* 80360ADC  38 00 00 61 */	li r0, 0x61
/* 80360AE0  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360AE4  3C 60 23 01 */	lis r3, 0x2301 /* 0x2300AA7F@ha */
/* 80360AE8  98 05 80 00 */	stb r0, 0x8000(r5)
/* 80360AEC  38 03 AA 7F */	addi r0, r3, 0xAA7F /* 0x2300AA7F@l */
/* 80360AF0  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80360AF4  48 00 00 C4 */	b lbl_80360BB8
/* 80360AF8  38 00 00 61 */	li r0, 0x61
/* 80360AFC  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360B00  3C 60 24 03 */	lis r3, 0x2403 /* 0x2402C0C6@ha */
/* 80360B04  98 05 80 00 */	stb r0, 0x8000(r5)
/* 80360B08  38 03 C0 C6 */	addi r0, r3, 0xC0C6 /* 0x2402C0C6@l */
/* 80360B0C  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80360B10  48 00 00 A8 */	b lbl_80360BB8
/* 80360B14  38 00 00 61 */	li r0, 0x61
/* 80360B18  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360B1C  3C 60 24 03 */	lis r3, 0x2403 /* 0x2402C16B@ha */
/* 80360B20  98 05 80 00 */	stb r0, 0x8000(r5)
/* 80360B24  38 03 C1 6B */	addi r0, r3, 0xC16B /* 0x2402C16B@l */
/* 80360B28  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80360B2C  48 00 00 8C */	b lbl_80360BB8
/* 80360B30  38 00 00 61 */	li r0, 0x61
/* 80360B34  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360B38  3C 60 24 03 */	lis r3, 0x2403 /* 0x2402C0E7@ha */
/* 80360B3C  98 05 80 00 */	stb r0, 0x8000(r5)
/* 80360B40  38 03 C0 E7 */	addi r0, r3, 0xC0E7 /* 0x2402C0E7@l */
/* 80360B44  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80360B48  48 00 00 70 */	b lbl_80360BB8
/* 80360B4C  38 00 00 61 */	li r0, 0x61
/* 80360B50  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360B54  3C 60 24 03 */	lis r3, 0x2403 /* 0x2402C108@ha */
/* 80360B58  98 05 80 00 */	stb r0, 0x8000(r5)
/* 80360B5C  38 03 C1 08 */	addi r0, r3, 0xC108 /* 0x2402C108@l */
/* 80360B60  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80360B64  48 00 00 54 */	b lbl_80360BB8
/* 80360B68  38 00 00 61 */	li r0, 0x61
/* 80360B6C  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360B70  3C 60 24 03 */	lis r3, 0x2403 /* 0x2402C129@ha */
/* 80360B74  98 05 80 00 */	stb r0, 0x8000(r5)
/* 80360B78  38 03 C1 29 */	addi r0, r3, 0xC129 /* 0x2402C129@l */
/* 80360B7C  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80360B80  48 00 00 38 */	b lbl_80360BB8
/* 80360B84  38 00 00 61 */	li r0, 0x61
/* 80360B88  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360B8C  3C 60 24 03 */	lis r3, 0x2403 /* 0x2402C14A@ha */
/* 80360B90  98 05 80 00 */	stb r0, 0x8000(r5)
/* 80360B94  38 03 C1 4A */	addi r0, r3, 0xC14A /* 0x2402C14A@l */
/* 80360B98  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80360B9C  48 00 00 1C */	b lbl_80360BB8
/* 80360BA0  38 00 00 61 */	li r0, 0x61
/* 80360BA4  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80360BA8  3C 60 24 03 */	lis r3, 0x2403 /* 0x2402C1AD@ha */
/* 80360BAC  98 05 80 00 */	stb r0, 0x8000(r5)
/* 80360BB0  38 03 C1 AD */	addi r0, r3, 0xC1AD /* 0x2402C1AD@l */
/* 80360BB4  90 05 80 00 */	stw r0, -0x8000(r5)
lbl_80360BB8:
/* 80360BB8  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 80360BBC  90 83 05 A0 */	stw r4, 0x5a0(r3)
/* 80360BC0  80 03 05 A0 */	lwz r0, 0x5a0(r3)
/* 80360BC4  28 00 00 16 */	cmplwi r0, 0x16
/* 80360BC8  41 81 02 EC */	bgt lbl_80360EB4
/* 80360BCC  3C 80 80 3D */	lis r4, lit_182@ha
/* 80360BD0  38 84 28 58 */	addi r4, r4, lit_182@l
/* 80360BD4  54 00 10 3A */	slwi r0, r0, 2
/* 80360BD8  7C 04 00 2E */	lwzx r0, r4, r0
/* 80360BDC  7C 09 03 A6 */	mtctr r0
/* 80360BE0  4E 80 04 20 */	bctr 
/* 80360BE4  38 00 00 61 */	li r0, 0x61
/* 80360BE8  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 80360BEC  3C 60 67 00 */	lis r3, 0x6700 /* 0x67000042@ha */
/* 80360BF0  98 04 80 00 */	stb r0, 0x8000(r4)
/* 80360BF4  38 03 00 42 */	addi r0, r3, 0x0042 /* 0x67000042@l */
/* 80360BF8  90 04 80 00 */	stw r0, -0x8000(r4)
/* 80360BFC  48 00 02 B8 */	b lbl_80360EB4
/* 80360C00  38 00 00 61 */	li r0, 0x61
/* 80360C04  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 80360C08  3C 60 67 00 */	lis r3, 0x6700 /* 0x67000084@ha */
/* 80360C0C  98 04 80 00 */	stb r0, 0x8000(r4)
/* 80360C10  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x67000084@l */
/* 80360C14  90 04 80 00 */	stw r0, -0x8000(r4)
/* 80360C18  48 00 02 9C */	b lbl_80360EB4
/* 80360C1C  38 00 00 61 */	li r0, 0x61
/* 80360C20  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 80360C24  3C 60 67 00 */	lis r3, 0x6700 /* 0x67000063@ha */
/* 80360C28  98 04 80 00 */	stb r0, 0x8000(r4)
/* 80360C2C  38 03 00 63 */	addi r0, r3, 0x0063 /* 0x67000063@l */
/* 80360C30  90 04 80 00 */	stw r0, -0x8000(r4)
/* 80360C34  48 00 02 80 */	b lbl_80360EB4
/* 80360C38  38 00 00 61 */	li r0, 0x61
/* 80360C3C  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 80360C40  3C 60 67 00 */	lis r3, 0x6700 /* 0x67000129@ha */
/* 80360C44  98 04 80 00 */	stb r0, 0x8000(r4)
/* 80360C48  38 03 01 29 */	addi r0, r3, 0x0129 /* 0x67000129@l */
/* 80360C4C  90 04 80 00 */	stw r0, -0x8000(r4)
/* 80360C50  48 00 02 64 */	b lbl_80360EB4
/* 80360C54  38 00 00 61 */	li r0, 0x61
/* 80360C58  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 80360C5C  3C 60 67 00 */	lis r3, 0x6700 /* 0x67000252@ha */
/* 80360C60  98 04 80 00 */	stb r0, 0x8000(r4)
/* 80360C64  38 03 02 52 */	addi r0, r3, 0x0252 /* 0x67000252@l */
/* 80360C68  90 04 80 00 */	stw r0, -0x8000(r4)
/* 80360C6C  48 00 02 48 */	b lbl_80360EB4
/* 80360C70  38 00 00 61 */	li r0, 0x61
/* 80360C74  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 80360C78  3C 60 67 00 */	lis r3, 0x6700 /* 0x67000021@ha */
/* 80360C7C  98 04 80 00 */	stb r0, 0x8000(r4)
/* 80360C80  38 03 00 21 */	addi r0, r3, 0x0021 /* 0x67000021@l */
/* 80360C84  90 04 80 00 */	stw r0, -0x8000(r4)
/* 80360C88  48 00 02 2C */	b lbl_80360EB4
/* 80360C8C  38 00 00 61 */	li r0, 0x61
/* 80360C90  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 80360C94  3C 60 67 00 */	lis r3, 0x6700 /* 0x6700014B@ha */
/* 80360C98  98 04 80 00 */	stb r0, 0x8000(r4)
/* 80360C9C  38 03 01 4B */	addi r0, r3, 0x014B /* 0x6700014B@l */
/* 80360CA0  90 04 80 00 */	stw r0, -0x8000(r4)
/* 80360CA4  48 00 02 10 */	b lbl_80360EB4
/* 80360CA8  38 00 00 61 */	li r0, 0x61
/* 80360CAC  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 80360CB0  3C 60 67 00 */	lis r3, 0x6700 /* 0x6700018D@ha */
/* 80360CB4  98 04 80 00 */	stb r0, 0x8000(r4)
/* 80360CB8  38 03 01 8D */	addi r0, r3, 0x018D /* 0x6700018D@l */
/* 80360CBC  90 04 80 00 */	stw r0, -0x8000(r4)
/* 80360CC0  48 00 01 F4 */	b lbl_80360EB4
/* 80360CC4  38 00 00 61 */	li r0, 0x61
/* 80360CC8  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 80360CCC  3C 60 67 00 */	lis r3, 0x6700 /* 0x670001CF@ha */
/* 80360CD0  98 04 80 00 */	stb r0, 0x8000(r4)
/* 80360CD4  38 03 01 CF */	addi r0, r3, 0x01CF /* 0x670001CF@l */
/* 80360CD8  90 04 80 00 */	stw r0, -0x8000(r4)
/* 80360CDC  48 00 01 D8 */	b lbl_80360EB4
/* 80360CE0  38 00 00 61 */	li r0, 0x61
/* 80360CE4  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 80360CE8  3C 60 67 00 */	lis r3, 0x6700 /* 0x67000211@ha */
/* 80360CEC  98 04 80 00 */	stb r0, 0x8000(r4)
/* 80360CF0  38 03 02 11 */	addi r0, r3, 0x0211 /* 0x67000211@l */
/* 80360CF4  90 04 80 00 */	stw r0, -0x8000(r4)
/* 80360CF8  48 00 01 BC */	b lbl_80360EB4
/* 80360CFC  80 83 05 A4 */	lwz r4, 0x5a4(r3)
/* 80360D00  38 00 00 02 */	li r0, 2
/* 80360D04  50 04 26 36 */	rlwimi r4, r0, 4, 0x18, 0x1b
/* 80360D08  90 83 05 A4 */	stw r4, 0x5a4(r3)
/* 80360D0C  38 00 00 08 */	li r0, 8
/* 80360D10  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 80360D14  98 04 80 00 */	stb r0, 0x8000(r4)
/* 80360D18  38 00 00 20 */	li r0, 0x20
/* 80360D1C  98 04 80 00 */	stb r0, -0x8000(r4)
/* 80360D20  80 03 05 A4 */	lwz r0, 0x5a4(r3)
/* 80360D24  90 04 80 00 */	stw r0, -0x8000(r4)
/* 80360D28  48 00 01 8C */	b lbl_80360EB4
/* 80360D2C  80 83 05 A4 */	lwz r4, 0x5a4(r3)
/* 80360D30  38 00 00 03 */	li r0, 3
/* 80360D34  50 04 26 36 */	rlwimi r4, r0, 4, 0x18, 0x1b
/* 80360D38  90 83 05 A4 */	stw r4, 0x5a4(r3)
/* 80360D3C  38 00 00 08 */	li r0, 8
/* 80360D40  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 80360D44  98 04 80 00 */	stb r0, 0x8000(r4)
/* 80360D48  38 00 00 20 */	li r0, 0x20
/* 80360D4C  98 04 80 00 */	stb r0, -0x8000(r4)
/* 80360D50  80 03 05 A4 */	lwz r0, 0x5a4(r3)
/* 80360D54  90 04 80 00 */	stw r0, -0x8000(r4)
/* 80360D58  48 00 01 5C */	b lbl_80360EB4
/* 80360D5C  80 83 05 A4 */	lwz r4, 0x5a4(r3)
/* 80360D60  38 00 00 04 */	li r0, 4
/* 80360D64  50 04 26 36 */	rlwimi r4, r0, 4, 0x18, 0x1b
/* 80360D68  90 83 05 A4 */	stw r4, 0x5a4(r3)
/* 80360D6C  38 00 00 08 */	li r0, 8
/* 80360D70  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 80360D74  98 04 80 00 */	stb r0, 0x8000(r4)
/* 80360D78  38 00 00 20 */	li r0, 0x20
/* 80360D7C  98 04 80 00 */	stb r0, -0x8000(r4)
/* 80360D80  80 03 05 A4 */	lwz r0, 0x5a4(r3)
/* 80360D84  90 04 80 00 */	stw r0, -0x8000(r4)
/* 80360D88  48 00 01 2C */	b lbl_80360EB4
/* 80360D8C  80 83 05 A4 */	lwz r4, 0x5a4(r3)
/* 80360D90  38 00 00 05 */	li r0, 5
/* 80360D94  50 04 26 36 */	rlwimi r4, r0, 4, 0x18, 0x1b
/* 80360D98  90 83 05 A4 */	stw r4, 0x5a4(r3)
/* 80360D9C  38 00 00 08 */	li r0, 8
/* 80360DA0  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 80360DA4  98 04 80 00 */	stb r0, 0x8000(r4)
/* 80360DA8  38 00 00 20 */	li r0, 0x20
/* 80360DAC  98 04 80 00 */	stb r0, -0x8000(r4)
/* 80360DB0  80 03 05 A4 */	lwz r0, 0x5a4(r3)
/* 80360DB4  90 04 80 00 */	stw r0, -0x8000(r4)
/* 80360DB8  48 00 00 FC */	b lbl_80360EB4
/* 80360DBC  80 83 05 A4 */	lwz r4, 0x5a4(r3)
/* 80360DC0  38 00 00 06 */	li r0, 6
/* 80360DC4  50 04 26 36 */	rlwimi r4, r0, 4, 0x18, 0x1b
/* 80360DC8  90 83 05 A4 */	stw r4, 0x5a4(r3)
/* 80360DCC  38 00 00 08 */	li r0, 8
/* 80360DD0  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 80360DD4  98 04 80 00 */	stb r0, 0x8000(r4)
/* 80360DD8  38 00 00 20 */	li r0, 0x20
/* 80360DDC  98 04 80 00 */	stb r0, -0x8000(r4)
/* 80360DE0  80 03 05 A4 */	lwz r0, 0x5a4(r3)
/* 80360DE4  90 04 80 00 */	stw r0, -0x8000(r4)
/* 80360DE8  48 00 00 CC */	b lbl_80360EB4
/* 80360DEC  80 83 05 A4 */	lwz r4, 0x5a4(r3)
/* 80360DF0  38 00 00 07 */	li r0, 7
/* 80360DF4  50 04 26 36 */	rlwimi r4, r0, 4, 0x18, 0x1b
/* 80360DF8  90 83 05 A4 */	stw r4, 0x5a4(r3)
/* 80360DFC  38 00 00 08 */	li r0, 8
/* 80360E00  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 80360E04  98 04 80 00 */	stb r0, 0x8000(r4)
/* 80360E08  38 00 00 20 */	li r0, 0x20
/* 80360E0C  98 04 80 00 */	stb r0, -0x8000(r4)
/* 80360E10  80 03 05 A4 */	lwz r0, 0x5a4(r3)
/* 80360E14  90 04 80 00 */	stw r0, -0x8000(r4)
/* 80360E18  48 00 00 9C */	b lbl_80360EB4
/* 80360E1C  80 83 05 A4 */	lwz r4, 0x5a4(r3)
/* 80360E20  38 00 00 09 */	li r0, 9
/* 80360E24  50 04 26 36 */	rlwimi r4, r0, 4, 0x18, 0x1b
/* 80360E28  90 83 05 A4 */	stw r4, 0x5a4(r3)
/* 80360E2C  38 00 00 08 */	li r0, 8
/* 80360E30  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 80360E34  98 04 80 00 */	stb r0, 0x8000(r4)
/* 80360E38  38 00 00 20 */	li r0, 0x20
/* 80360E3C  98 04 80 00 */	stb r0, -0x8000(r4)
/* 80360E40  80 03 05 A4 */	lwz r0, 0x5a4(r3)
/* 80360E44  90 04 80 00 */	stw r0, -0x8000(r4)
/* 80360E48  48 00 00 6C */	b lbl_80360EB4
/* 80360E4C  80 03 05 A4 */	lwz r0, 0x5a4(r3)
/* 80360E50  38 A0 00 08 */	li r5, 8
/* 80360E54  50 A0 26 36 */	rlwimi r0, r5, 4, 0x18, 0x1b
/* 80360E58  90 03 05 A4 */	stw r0, 0x5a4(r3)
/* 80360E5C  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 80360E60  38 00 00 20 */	li r0, 0x20
/* 80360E64  98 A4 80 00 */	stb r5, 0x8000(r4)
/* 80360E68  98 04 80 00 */	stb r0, -0x8000(r4)
/* 80360E6C  80 03 05 A4 */	lwz r0, 0x5a4(r3)
/* 80360E70  90 04 80 00 */	stw r0, -0x8000(r4)
/* 80360E74  48 00 00 40 */	b lbl_80360EB4
/* 80360E78  80 6D 93 A4 */	lwz r3, __cpReg(r13)
/* 80360E7C  38 00 00 02 */	li r0, 2
/* 80360E80  B0 03 00 06 */	sth r0, 6(r3)
/* 80360E84  48 00 00 30 */	b lbl_80360EB4
/* 80360E88  80 6D 93 A4 */	lwz r3, __cpReg(r13)
/* 80360E8C  38 00 00 03 */	li r0, 3
/* 80360E90  B0 03 00 06 */	sth r0, 6(r3)
/* 80360E94  48 00 00 20 */	b lbl_80360EB4
/* 80360E98  80 6D 93 A4 */	lwz r3, __cpReg(r13)
/* 80360E9C  38 00 00 04 */	li r0, 4
/* 80360EA0  B0 03 00 06 */	sth r0, 6(r3)
/* 80360EA4  48 00 00 10 */	b lbl_80360EB4
/* 80360EA8  80 6D 93 A4 */	lwz r3, __cpReg(r13)
/* 80360EAC  38 00 00 05 */	li r0, 5
/* 80360EB0  B0 03 00 06 */	sth r0, 6(r3)
lbl_80360EB4:
/* 80360EB4  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 80360EB8  38 00 00 00 */	li r0, 0
/* 80360EBC  B0 03 00 02 */	sth r0, 2(r3)
/* 80360EC0  4E 80 00 20 */	blr 