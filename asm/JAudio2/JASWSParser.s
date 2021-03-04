.include "macros.inc"

.section .text, "ax" # 80298fb0


.global getGroupCount__11JASWSParserFPCv
getGroupCount__11JASWSParserFPCv:
/* 80298FB0 00295EF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80298FB4 00295EF4  7C 08 02 A6 */	mflr r0
/* 80298FB8 00295EF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80298FBC 00295EFC  80 83 00 14 */	lwz r4, 0x14(r3)
/* 80298FC0 00295F00  48 00 05 61 */	bl JSUConvertOffsetToPtr_X6_
/* 80298FC4 00295F04  80 63 00 08 */	lwz r3, 8(r3)
/* 80298FC8 00295F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80298FCC 00295F0C  7C 08 03 A6 */	mtlr r0
/* 80298FD0 00295F10  38 21 00 10 */	addi r1, r1, 0x10
/* 80298FD4 00295F14  4E 80 00 20 */	blr 

.global createWaveBank__11JASWSParserFPCvP7JKRHeap
createWaveBank__11JASWSParserFPCvP7JKRHeap:
/* 80298FD8 00295F18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80298FDC 00295F1C  7C 08 02 A6 */	mflr r0
/* 80298FE0 00295F20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80298FE4 00295F24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80298FE8 00295F28  93 C1 00 08 */	stw r30, 8(r1)
/* 80298FEC 00295F2C  7C 7E 1B 78 */	mr r30, r3
/* 80298FF0 00295F30  7C 9F 23 78 */	mr r31, r4
/* 80298FF4 00295F34  4B FF FF BD */	bl getGroupCount__11JASWSParserFPCv
/* 80298FF8 00295F38  28 03 00 01 */	cmplwi r3, 1
/* 80298FFC 00295F3C  40 82 00 14 */	bne lbl_80299010
/* 80299000 00295F40  7F C3 F3 78 */	mr r3, r30
/* 80299004 00295F44  7F E4 FB 78 */	mr r4, r31
/* 80299008 00295F48  48 00 02 5D */	bl createSimpleWaveBank__11JASWSParserFPCvP7JKRHeap
/* 8029900C 00295F4C  48 00 00 10 */	b lbl_8029901C
lbl_80299010:
/* 80299010 00295F50  7F C3 F3 78 */	mr r3, r30
/* 80299014 00295F54  7F E4 FB 78 */	mr r4, r31
/* 80299018 00295F58  48 00 00 1D */	bl createBasicWaveBank__11JASWSParserFPCvP7JKRHeap
lbl_8029901C:
/* 8029901C 00295F5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80299020 00295F60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80299024 00295F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80299028 00295F68  7C 08 03 A6 */	mtlr r0
/* 8029902C 00295F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80299030 00295F70  4E 80 00 20 */	blr 

.global createBasicWaveBank__11JASWSParserFPCvP7JKRHeap
createBasicWaveBank__11JASWSParserFPCvP7JKRHeap:
/* 80299034 00295F74  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80299038 00295F78  7C 08 02 A6 */	mflr r0
/* 8029903C 00295F7C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80299040 00295F80  39 61 00 60 */	addi r11, r1, 0x60
/* 80299044 00295F84  48 0C 91 75 */	bl _savegpr_20
/* 80299048 00295F88  7C 74 1B 78 */	mr r20, r3
/* 8029904C 00295F8C  7C 96 23 79 */	or. r22, r4, r4
/* 80299050 00295F90  40 82 00 08 */	bne lbl_80299058
/* 80299054 00295F94  82 CD 8C 90 */	lwz r22, lbl_80451210-_SDA_BASE_(r13)
lbl_80299058:
/* 80299058 00295F98  7E C3 B3 78 */	mr r3, r22
/* 8029905C 00295F9C  48 03 56 D1 */	bl getFreeSize__7JKRHeapCFv
/* 80299060 00295FA0  7C 7D 1B 78 */	mr r29, r3
/* 80299064 00295FA4  7E 9A A3 78 */	mr r26, r20
/* 80299068 00295FA8  38 60 00 28 */	li r3, 0x28
/* 8029906C 00295FAC  7E C4 B3 78 */	mr r4, r22
/* 80299070 00295FB0  38 A0 00 00 */	li r5, 0
/* 80299074 00295FB4  48 03 5C 25 */	bl __nw__FUlP7JKRHeapi
/* 80299078 00295FB8  7C 7C 1B 79 */	or. r28, r3, r3
/* 8029907C 00295FBC  41 82 00 0C */	beq lbl_80299088
/* 80299080 00295FC0  4B FF F4 79 */	bl JASBasicWaveBank
/* 80299084 00295FC4  7C 7C 1B 78 */	mr r28, r3
lbl_80299088:
/* 80299088 00295FC8  28 1C 00 00 */	cmplwi r28, 0
/* 8029908C 00295FCC  40 82 00 0C */	bne lbl_80299098
/* 80299090 00295FD0  38 60 00 00 */	li r3, 0
/* 80299094 00295FD4  48 00 01 B8 */	b lbl_8029924C
lbl_80299098:
/* 80299098 00295FD8  7F 43 D3 78 */	mr r3, r26
/* 8029909C 00295FDC  80 9A 00 14 */	lwz r4, 0x14(r26)
/* 802990A0 00295FE0  48 00 04 81 */	bl JSUConvertOffsetToPtr_X6_
/* 802990A4 00295FE4  7C 7E 1B 78 */	mr r30, r3
/* 802990A8 00295FE8  7F 83 E3 78 */	mr r3, r28
/* 802990AC 00295FEC  80 9E 00 08 */	lwz r4, 8(r30)
/* 802990B0 00295FF0  7E C5 B3 78 */	mr r5, r22
/* 802990B4 00295FF4  4B FF F5 B1 */	bl setGroupCount__16JASBasicWaveBankFUlP7JKRHeap
/* 802990B8 00295FF8  7F 83 E3 78 */	mr r3, r28
/* 802990BC 00295FFC  80 9A 00 0C */	lwz r4, 0xc(r26)
/* 802990C0 00296000  7E C5 B3 78 */	mr r5, r22
/* 802990C4 00296004  4B FF F6 4D */	bl setWaveTableSize__16JASBasicWaveBankFUlP7JKRHeap
/* 802990C8 00296008  3B 20 00 00 */	li r25, 0
/* 802990CC 0029600C  3A A0 00 00 */	li r21, 0
/* 802990D0 00296010  48 00 01 54 */	b lbl_80299224
lbl_802990D4:
/* 802990D4 00296014  7F 43 D3 78 */	mr r3, r26
/* 802990D8 00296018  38 15 00 0C */	addi r0, r21, 0xc
/* 802990DC 0029601C  7C 9E 00 2E */	lwzx r4, r30, r0
/* 802990E0 00296020  48 00 04 29 */	bl JSUConvertOffsetToPtr_X5_
/* 802990E4 00296024  7C 64 1B 78 */	mr r4, r3
/* 802990E8 00296028  7F 43 D3 78 */	mr r3, r26
/* 802990EC 0029602C  80 84 00 0C */	lwz r4, 0xc(r4)
/* 802990F0 00296030  48 00 04 01 */	bl JSUConvertOffsetToPtr_X4_
/* 802990F4 00296034  7C 7F 1B 78 */	mr r31, r3
/* 802990F8 00296038  7F 83 E3 78 */	mr r3, r28
/* 802990FC 0029603C  7F 24 CB 78 */	mr r4, r25
/* 80299100 00296040  4B FF F5 41 */	bl getWaveGroup__16JASBasicWaveBankFUl
/* 80299104 00296044  7C 78 1B 78 */	mr r24, r3
/* 80299108 00296048  7F 43 D3 78 */	mr r3, r26
/* 8029910C 0029604C  80 9A 00 10 */	lwz r4, 0x10(r26)
/* 80299110 00296050  48 00 03 C9 */	bl JSUConvertOffsetToPtr_X3_
/* 80299114 00296054  7C 64 1B 78 */	mr r4, r3
/* 80299118 00296058  7F 43 D3 78 */	mr r3, r26
/* 8029911C 0029605C  38 15 00 08 */	addi r0, r21, 8
/* 80299120 00296060  7C 84 00 2E */	lwzx r4, r4, r0
/* 80299124 00296064  48 00 03 9D */	bl JSUConvertOffsetToPtr_X2_
/* 80299128 00296068  7C 7B 1B 78 */	mr r27, r3
/* 8029912C 0029606C  7F 03 C3 78 */	mr r3, r24
/* 80299130 00296070  80 9F 00 04 */	lwz r4, 4(r31)
/* 80299134 00296074  7E C5 B3 78 */	mr r5, r22
/* 80299138 00296078  4B FF F9 4D */	bl setWaveCount__Q216JASBasicWaveBank10TWaveGroupFUlP7JKRHeap
/* 8029913C 0029607C  3A E0 00 00 */	li r23, 0
/* 80299140 00296080  3A 80 00 00 */	li r20, 0
/* 80299144 00296084  48 00 00 C0 */	b lbl_80299204
lbl_80299148:
/* 80299148 00296088  7F 43 D3 78 */	mr r3, r26
/* 8029914C 0029608C  38 14 00 74 */	addi r0, r20, 0x74
/* 80299150 00296090  7C 9B 00 2E */	lwzx r4, r27, r0
/* 80299154 00296094  48 00 03 55 */	bl JSUConvertOffsetToPtr_X1_
/* 80299158 00296098  38 00 00 3C */	li r0, 0x3c
/* 8029915C 0029609C  98 01 00 09 */	stb r0, 9(r1)
/* 80299160 002960A0  38 0D 82 38 */	addi r0, r13, lbl_804507B8-_SDA_BASE_
/* 80299164 002960A4  90 01 00 28 */	stw r0, 0x28(r1)
/* 80299168 002960A8  88 03 00 01 */	lbz r0, 1(r3)
/* 8029916C 002960AC  98 01 00 08 */	stb r0, 8(r1)
/* 80299170 002960B0  88 03 00 02 */	lbz r0, 2(r3)
/* 80299174 002960B4  98 01 00 09 */	stb r0, 9(r1)
/* 80299178 002960B8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8029917C 002960BC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80299180 002960C0  80 03 00 08 */	lwz r0, 8(r3)
/* 80299184 002960C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80299188 002960C8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8029918C 002960CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80299190 002960D0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80299194 002960D4  30 00 FF FF */	addic r0, r0, -1
/* 80299198 002960D8  7C 80 01 10 */	subfe r4, r0, r0
/* 8029919C 002960DC  38 00 00 FF */	li r0, 0xff
/* 802991A0 002960E0  7C 00 20 78 */	andc r0, r0, r4
/* 802991A4 002960E4  98 01 00 0A */	stb r0, 0xa(r1)
/* 802991A8 002960E8  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802991AC 002960EC  90 01 00 18 */	stw r0, 0x18(r1)
/* 802991B0 002960F0  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802991B4 002960F4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802991B8 002960F8  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 802991BC 002960FC  90 01 00 20 */	stw r0, 0x20(r1)
/* 802991C0 00296100  A8 03 00 20 */	lha r0, 0x20(r3)
/* 802991C4 00296104  B0 01 00 24 */	sth r0, 0x24(r1)
/* 802991C8 00296108  A8 03 00 22 */	lha r0, 0x22(r3)
/* 802991CC 0029610C  B0 01 00 26 */	sth r0, 0x26(r1)
/* 802991D0 00296110  7F 43 D3 78 */	mr r3, r26
/* 802991D4 00296114  38 14 00 08 */	addi r0, r20, 8
/* 802991D8 00296118  7C 9F 00 2E */	lwzx r4, r31, r0
/* 802991DC 0029611C  48 00 02 B5 */	bl JSUConvertOffsetToPtr
/* 802991E0 00296120  80 03 00 00 */	lwz r0, 0(r3)
/* 802991E4 00296124  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 802991E8 00296128  7F 83 E3 78 */	mr r3, r28
/* 802991EC 0029612C  7F 04 C3 78 */	mr r4, r24
/* 802991F0 00296130  7E E5 BB 78 */	mr r5, r23
/* 802991F4 00296134  38 E1 00 08 */	addi r7, r1, 8
/* 802991F8 00296138  4B FF F7 19 */	bl setWaveInfo__16JASBasicWaveBankFPQ216JASBasicWaveBank10TWaveGroupiUsRC11JASWaveInfo
/* 802991FC 0029613C  3A F7 00 01 */	addi r23, r23, 1
/* 80299200 00296140  3A 94 00 04 */	addi r20, r20, 4
lbl_80299204:
/* 80299204 00296144  80 1F 00 04 */	lwz r0, 4(r31)
/* 80299208 00296148  7C 17 00 40 */	cmplw r23, r0
/* 8029920C 0029614C  41 80 FF 3C */	blt lbl_80299148
/* 80299210 00296150  7F 03 C3 78 */	mr r3, r24
/* 80299214 00296154  7F 64 DB 78 */	mr r4, r27
/* 80299218 00296158  48 00 14 F5 */	bl setFileName__10JASWaveArcFPCc
/* 8029921C 0029615C  3B 39 00 01 */	addi r25, r25, 1
/* 80299220 00296160  3A B5 00 04 */	addi r21, r21, 4
lbl_80299224:
/* 80299224 00296164  80 1E 00 08 */	lwz r0, 8(r30)
/* 80299228 00296168  7C 19 00 40 */	cmplw r25, r0
/* 8029922C 0029616C  41 80 FE A8 */	blt lbl_802990D4
/* 80299230 00296170  7E C3 B3 78 */	mr r3, r22
/* 80299234 00296174  48 03 54 F9 */	bl getFreeSize__7JKRHeapCFv
/* 80299238 00296178  7C 63 E8 50 */	subf r3, r3, r29
/* 8029923C 0029617C  80 0D 8D 00 */	lwz r0, lbl_80451280-_SDA_BASE_(r13)
/* 80299240 00296180  7C 00 1A 14 */	add r0, r0, r3
/* 80299244 00296184  90 0D 8D 00 */	stw r0, lbl_80451280-_SDA_BASE_(r13)
/* 80299248 00296188  7F 83 E3 78 */	mr r3, r28
lbl_8029924C:
/* 8029924C 0029618C  39 61 00 60 */	addi r11, r1, 0x60
/* 80299250 00296190  48 0C 8F B5 */	bl _restgpr_20
/* 80299254 00296194  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80299258 00296198  7C 08 03 A6 */	mtlr r0
/* 8029925C 0029619C  38 21 00 60 */	addi r1, r1, 0x60
/* 80299260 002961A0  4E 80 00 20 */	blr 

.global createSimpleWaveBank__11JASWSParserFPCvP7JKRHeap
createSimpleWaveBank__11JASWSParserFPCvP7JKRHeap:
/* 80299264 002961A4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80299268 002961A8  7C 08 02 A6 */	mflr r0
/* 8029926C 002961AC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80299270 002961B0  39 61 00 60 */	addi r11, r1, 0x60
/* 80299274 002961B4  48 0C 8F 51 */	bl _savegpr_23
/* 80299278 002961B8  7C 77 1B 78 */	mr r23, r3
/* 8029927C 002961BC  7C 99 23 79 */	or. r25, r4, r4
/* 80299280 002961C0  40 82 00 08 */	bne lbl_80299288
/* 80299284 002961C4  83 2D 8C 90 */	lwz r25, lbl_80451210-_SDA_BASE_(r13)
lbl_80299288:
/* 80299288 002961C8  7F 23 CB 78 */	mr r3, r25
/* 8029928C 002961CC  48 03 54 A1 */	bl getFreeSize__7JKRHeapCFv
/* 80299290 002961D0  7C 7E 1B 78 */	mr r30, r3
/* 80299294 002961D4  7E FB BB 78 */	mr r27, r23
/* 80299298 002961D8  7E E3 BB 78 */	mr r3, r23
/* 8029929C 002961DC  80 97 00 14 */	lwz r4, 0x14(r23)
/* 802992A0 002961E0  48 00 02 81 */	bl JSUConvertOffsetToPtr_X6_
/* 802992A4 002961E4  7C 78 1B 78 */	mr r24, r3
/* 802992A8 002961E8  80 03 00 08 */	lwz r0, 8(r3)
/* 802992AC 002961EC  28 00 00 01 */	cmplwi r0, 1
/* 802992B0 002961F0  41 82 00 0C */	beq lbl_802992BC
/* 802992B4 002961F4  38 60 00 00 */	li r3, 0
/* 802992B8 002961F8  48 00 01 C0 */	b lbl_80299478
lbl_802992BC:
/* 802992BC 002961FC  38 60 00 80 */	li r3, 0x80
/* 802992C0 00296200  7F 24 CB 78 */	mr r4, r25
/* 802992C4 00296204  38 A0 00 00 */	li r5, 0
/* 802992C8 00296208  48 03 59 D1 */	bl __nw__FUlP7JKRHeapi
/* 802992CC 0029620C  7C 7D 1B 79 */	or. r29, r3, r3
/* 802992D0 00296210  41 82 00 0C */	beq lbl_802992DC
/* 802992D4 00296214  4B FF F9 C1 */	bl JASSimpleWaveBank
/* 802992D8 00296218  7C 7D 1B 78 */	mr r29, r3
lbl_802992DC:
/* 802992DC 0029621C  28 1D 00 00 */	cmplwi r29, 0
/* 802992E0 00296220  40 82 00 0C */	bne lbl_802992EC
/* 802992E4 00296224  38 60 00 00 */	li r3, 0
/* 802992E8 00296228  48 00 01 90 */	b lbl_80299478
lbl_802992EC:
/* 802992EC 0029622C  3B 40 00 00 */	li r26, 0
/* 802992F0 00296230  7F 63 DB 78 */	mr r3, r27
/* 802992F4 00296234  80 98 00 0C */	lwz r4, 0xc(r24)
/* 802992F8 00296238  48 00 02 11 */	bl JSUConvertOffsetToPtr_X5_
/* 802992FC 0029623C  7C 64 1B 78 */	mr r4, r3
/* 80299300 00296240  7F 63 DB 78 */	mr r3, r27
/* 80299304 00296244  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80299308 00296248  48 00 01 E9 */	bl JSUConvertOffsetToPtr_X4_
/* 8029930C 0029624C  7C 7F 1B 78 */	mr r31, r3
/* 80299310 00296250  7F 63 DB 78 */	mr r3, r27
/* 80299314 00296254  80 9B 00 10 */	lwz r4, 0x10(r27)
/* 80299318 00296258  48 00 01 C1 */	bl JSUConvertOffsetToPtr_X3_
/* 8029931C 0029625C  7C 64 1B 78 */	mr r4, r3
/* 80299320 00296260  7F 63 DB 78 */	mr r3, r27
/* 80299324 00296264  80 84 00 08 */	lwz r4, 8(r4)
/* 80299328 00296268  48 00 01 99 */	bl JSUConvertOffsetToPtr_X2_
/* 8029932C 0029626C  7C 7C 1B 78 */	mr r28, r3
/* 80299330 00296270  3A E0 00 00 */	li r23, 0
/* 80299334 00296274  3B 00 00 00 */	li r24, 0
/* 80299338 00296278  48 00 00 30 */	b lbl_80299368
lbl_8029933C:
/* 8029933C 0029627C  7F 63 DB 78 */	mr r3, r27
/* 80299340 00296280  38 18 00 08 */	addi r0, r24, 8
/* 80299344 00296284  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80299348 00296288  48 00 01 49 */	bl JSUConvertOffsetToPtr
/* 8029934C 0029628C  80 03 00 00 */	lwz r0, 0(r3)
/* 80299350 00296290  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80299354 00296294  7C 1A 00 40 */	cmplw r26, r0
/* 80299358 00296298  40 80 00 08 */	bge lbl_80299360
/* 8029935C 0029629C  7C 1A 03 78 */	mr r26, r0
lbl_80299360:
/* 80299360 002962A0  3A F7 00 01 */	addi r23, r23, 1
/* 80299364 002962A4  3B 18 00 04 */	addi r24, r24, 4
lbl_80299368:
/* 80299368 002962A8  80 1F 00 04 */	lwz r0, 4(r31)
/* 8029936C 002962AC  7C 17 00 40 */	cmplw r23, r0
/* 80299370 002962B0  41 80 FF CC */	blt lbl_8029933C
/* 80299374 002962B4  7F A3 EB 78 */	mr r3, r29
/* 80299378 002962B8  38 9A 00 01 */	addi r4, r26, 1
/* 8029937C 002962BC  7F 25 CB 78 */	mr r5, r25
/* 80299380 002962C0  4B FF FA 61 */	bl setWaveTableSize__17JASSimpleWaveBankFUlP7JKRHeap
/* 80299384 002962C4  3B 40 00 00 */	li r26, 0
/* 80299388 002962C8  3B 00 00 00 */	li r24, 0
/* 8029938C 002962CC  48 00 00 B8 */	b lbl_80299444
lbl_80299390:
/* 80299390 002962D0  7F 63 DB 78 */	mr r3, r27
/* 80299394 002962D4  38 18 00 74 */	addi r0, r24, 0x74
/* 80299398 002962D8  7C 9C 00 2E */	lwzx r4, r28, r0
/* 8029939C 002962DC  48 00 01 0D */	bl JSUConvertOffsetToPtr_X1_
/* 802993A0 002962E0  38 00 00 3C */	li r0, 0x3c
/* 802993A4 002962E4  98 01 00 09 */	stb r0, 9(r1)
/* 802993A8 002962E8  38 0D 82 38 */	addi r0, r13, lbl_804507B8-_SDA_BASE_
/* 802993AC 002962EC  90 01 00 28 */	stw r0, 0x28(r1)
/* 802993B0 002962F0  88 03 00 01 */	lbz r0, 1(r3)
/* 802993B4 002962F4  98 01 00 08 */	stb r0, 8(r1)
/* 802993B8 002962F8  88 03 00 02 */	lbz r0, 2(r3)
/* 802993BC 002962FC  98 01 00 09 */	stb r0, 9(r1)
/* 802993C0 00296300  C0 03 00 04 */	lfs f0, 4(r3)
/* 802993C4 00296304  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802993C8 00296308  80 03 00 08 */	lwz r0, 8(r3)
/* 802993CC 0029630C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802993D0 00296310  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802993D4 00296314  90 01 00 14 */	stw r0, 0x14(r1)
/* 802993D8 00296318  80 03 00 10 */	lwz r0, 0x10(r3)
/* 802993DC 0029631C  30 00 FF FF */	addic r0, r0, -1
/* 802993E0 00296320  7C 80 01 10 */	subfe r4, r0, r0
/* 802993E4 00296324  38 00 00 FF */	li r0, 0xff
/* 802993E8 00296328  7C 00 20 78 */	andc r0, r0, r4
/* 802993EC 0029632C  98 01 00 0A */	stb r0, 0xa(r1)
/* 802993F0 00296330  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802993F4 00296334  90 01 00 18 */	stw r0, 0x18(r1)
/* 802993F8 00296338  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802993FC 0029633C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80299400 00296340  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80299404 00296344  90 01 00 20 */	stw r0, 0x20(r1)
/* 80299408 00296348  A8 03 00 20 */	lha r0, 0x20(r3)
/* 8029940C 0029634C  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80299410 00296350  A8 03 00 22 */	lha r0, 0x22(r3)
/* 80299414 00296354  B0 01 00 26 */	sth r0, 0x26(r1)
/* 80299418 00296358  7F 63 DB 78 */	mr r3, r27
/* 8029941C 0029635C  38 18 00 08 */	addi r0, r24, 8
/* 80299420 00296360  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80299424 00296364  48 00 00 6D */	bl JSUConvertOffsetToPtr
/* 80299428 00296368  80 03 00 00 */	lwz r0, 0(r3)
/* 8029942C 0029636C  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 80299430 00296370  7F A3 EB 78 */	mr r3, r29
/* 80299434 00296374  38 A1 00 08 */	addi r5, r1, 8
/* 80299438 00296378  4B FF FA 4D */	bl setWaveInfo__17JASSimpleWaveBankFUlRC11JASWaveInfo
/* 8029943C 0029637C  3B 5A 00 01 */	addi r26, r26, 1
/* 80299440 00296380  3B 18 00 04 */	addi r24, r24, 4
lbl_80299444:
/* 80299444 00296384  80 1F 00 04 */	lwz r0, 4(r31)
/* 80299448 00296388  7C 1A 00 40 */	cmplw r26, r0
/* 8029944C 0029638C  41 80 FF 44 */	blt lbl_80299390
/* 80299450 00296390  38 7D 00 04 */	addi r3, r29, 4
/* 80299454 00296394  7F 84 E3 78 */	mr r4, r28
/* 80299458 00296398  48 00 12 B5 */	bl setFileName__10JASWaveArcFPCc
/* 8029945C 0029639C  7F 23 CB 78 */	mr r3, r25
/* 80299460 002963A0  48 03 52 CD */	bl getFreeSize__7JKRHeapCFv
/* 80299464 002963A4  7C 63 F0 50 */	subf r3, r3, r30
/* 80299468 002963A8  80 0D 8D 00 */	lwz r0, lbl_80451280-_SDA_BASE_(r13)
/* 8029946C 002963AC  7C 00 1A 14 */	add r0, r0, r3
/* 80299470 002963B0  90 0D 8D 00 */	stw r0, lbl_80451280-_SDA_BASE_(r13)
/* 80299474 002963B4  7F A3 EB 78 */	mr r3, r29
lbl_80299478:
/* 80299478 002963B8  39 61 00 60 */	addi r11, r1, 0x60
/* 8029947C 002963BC  48 0C 8D 95 */	bl _restgpr_23
/* 80299480 002963C0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80299484 002963C4  7C 08 03 A6 */	mtlr r0
/* 80299488 002963C8  38 21 00 60 */	addi r1, r1, 0x60
/* 8029948C 002963CC  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr
JSUConvertOffsetToPtr:
/* 80299490 002963D0  28 04 00 00 */	cmplwi r4, 0
/* 80299494 002963D4  40 82 00 0C */	bne lbl_802994A0
/* 80299498 002963D8  38 60 00 00 */	li r3, 0
/* 8029949C 002963DC  4E 80 00 20 */	blr 
lbl_802994A0:
/* 802994A0 002963E0  7C 63 22 14 */	add r3, r3, r4
/* 802994A4 002963E4  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr_X1_
JSUConvertOffsetToPtr_X1_:
/* 802994A8 002963E8  28 04 00 00 */	cmplwi r4, 0
/* 802994AC 002963EC  40 82 00 0C */	bne lbl_802994B8
/* 802994B0 002963F0  38 60 00 00 */	li r3, 0
/* 802994B4 002963F4  4E 80 00 20 */	blr 
lbl_802994B8:
/* 802994B8 002963F8  7C 63 22 14 */	add r3, r3, r4
/* 802994BC 002963FC  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr_X2_
JSUConvertOffsetToPtr_X2_:
/* 802994C0 00296400  28 04 00 00 */	cmplwi r4, 0
/* 802994C4 00296404  40 82 00 0C */	bne lbl_802994D0
/* 802994C8 00296408  38 60 00 00 */	li r3, 0
/* 802994CC 0029640C  4E 80 00 20 */	blr 
lbl_802994D0:
/* 802994D0 00296410  7C 63 22 14 */	add r3, r3, r4
/* 802994D4 00296414  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr_X3_
JSUConvertOffsetToPtr_X3_:
/* 802994D8 00296418  28 04 00 00 */	cmplwi r4, 0
/* 802994DC 0029641C  40 82 00 0C */	bne lbl_802994E8
/* 802994E0 00296420  38 60 00 00 */	li r3, 0
/* 802994E4 00296424  4E 80 00 20 */	blr 
lbl_802994E8:
/* 802994E8 00296428  7C 63 22 14 */	add r3, r3, r4
/* 802994EC 0029642C  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr_X4_
JSUConvertOffsetToPtr_X4_:
/* 802994F0 00296430  28 04 00 00 */	cmplwi r4, 0
/* 802994F4 00296434  40 82 00 0C */	bne lbl_80299500
/* 802994F8 00296438  38 60 00 00 */	li r3, 0
/* 802994FC 0029643C  4E 80 00 20 */	blr 
lbl_80299500:
/* 80299500 00296440  7C 63 22 14 */	add r3, r3, r4
/* 80299504 00296444  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr_X5_
JSUConvertOffsetToPtr_X5_:
/* 80299508 00296448  28 04 00 00 */	cmplwi r4, 0
/* 8029950C 0029644C  40 82 00 0C */	bne lbl_80299518
/* 80299510 00296450  38 60 00 00 */	li r3, 0
/* 80299514 00296454  4E 80 00 20 */	blr 
lbl_80299518:
/* 80299518 00296458  7C 63 22 14 */	add r3, r3, r4
/* 8029951C 0029645C  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr_X6_
JSUConvertOffsetToPtr_X6_:
/* 80299520 00296460  28 04 00 00 */	cmplwi r4, 0
/* 80299524 00296464  40 82 00 0C */	bne lbl_80299530
/* 80299528 00296468  38 60 00 00 */	li r3, 0
/* 8029952C 0029646C  4E 80 00 20 */	blr 
lbl_80299530:
/* 80299530 00296470  7C 63 22 14 */	add r3, r3, r4
/* 80299534 00296474  4E 80 00 20 */	blr 

