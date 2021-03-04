.include "macros.inc"

.section .text, "ax" # 802a4244


.global JAUAudioArcInterpreter
JAUAudioArcInterpreter:
/* 802A4244 002A1184  3C 80 80 3D */	lis r4, lbl_803C9A30@ha
/* 802A4248 002A1188  38 04 9A 30 */	addi r0, r4, lbl_803C9A30@l
/* 802A424C 002A118C  90 03 00 00 */	stw r0, 0(r3)
/* 802A4250 002A1190  38 00 00 00 */	li r0, 0
/* 802A4254 002A1194  90 03 00 08 */	stw r0, 8(r3)
/* 802A4258 002A1198  90 03 00 04 */	stw r0, 4(r3)
/* 802A425C 002A119C  4E 80 00 20 */	blr 

.global __dt__22JAUAudioArcInterpreterFv
__dt__22JAUAudioArcInterpreterFv:
/* 802A4260 002A11A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A4264 002A11A4  7C 08 02 A6 */	mflr r0
/* 802A4268 002A11A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A426C 002A11AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A4270 002A11B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 802A4274 002A11B4  41 82 00 1C */	beq lbl_802A4290
/* 802A4278 002A11B8  3C A0 80 3D */	lis r5, lbl_803C9A30@ha
/* 802A427C 002A11BC  38 05 9A 30 */	addi r0, r5, lbl_803C9A30@l
/* 802A4280 002A11C0  90 1F 00 00 */	stw r0, 0(r31)
/* 802A4284 002A11C4  7C 80 07 35 */	extsh. r0, r4
/* 802A4288 002A11C8  40 81 00 08 */	ble lbl_802A4290
/* 802A428C 002A11CC  48 02 AA B1 */	bl __dl__FPv
lbl_802A4290:
/* 802A4290 002A11D0  7F E3 FB 78 */	mr r3, r31
/* 802A4294 002A11D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A4298 002A11D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A429C 002A11DC  7C 08 03 A6 */	mtlr r0
/* 802A42A0 002A11E0  38 21 00 10 */	addi r1, r1, 0x10
/* 802A42A4 002A11E4  4E 80 00 20 */	blr 

.global parse__22JAUAudioArcInterpreterFPCv
parse__22JAUAudioArcInterpreterFPCv:
/* 802A42A8 002A11E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A42AC 002A11EC  7C 08 02 A6 */	mflr r0
/* 802A42B0 002A11F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A42B4 002A11F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A42B8 002A11F8  7C 7F 1B 78 */	mr r31, r3
/* 802A42BC 002A11FC  90 83 00 08 */	stw r4, 8(r3)
/* 802A42C0 002A1200  80 03 00 08 */	lwz r0, 8(r3)
/* 802A42C4 002A1204  90 03 00 04 */	stw r0, 4(r3)
/* 802A42C8 002A1208  80 63 00 04 */	lwz r3, 4(r3)
/* 802A42CC 002A120C  80 83 00 00 */	lwz r4, 0(r3)
/* 802A42D0 002A1210  38 03 00 04 */	addi r0, r3, 4
/* 802A42D4 002A1214  90 1F 00 04 */	stw r0, 4(r31)
/* 802A42D8 002A1218  3C 04 BE BF */	addis r0, r4, 0xbebf
/* 802A42DC 002A121C  28 00 5F 3C */	cmplwi r0, 0x5f3c
/* 802A42E0 002A1220  41 82 00 0C */	beq lbl_802A42EC
/* 802A42E4 002A1224  38 60 00 00 */	li r3, 0
/* 802A42E8 002A1228  48 00 00 18 */	b lbl_802A4300
lbl_802A42EC:
/* 802A42EC 002A122C  7F E3 FB 78 */	mr r3, r31
/* 802A42F0 002A1230  48 00 00 2D */	bl readCommand___22JAUAudioArcInterpreterFv
/* 802A42F4 002A1234  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A42F8 002A1238  40 82 FF F4 */	bne lbl_802A42EC
/* 802A42FC 002A123C  38 60 00 01 */	li r3, 1
lbl_802A4300:
/* 802A4300 002A1240  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A4304 002A1244  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A4308 002A1248  7C 08 03 A6 */	mtlr r0
/* 802A430C 002A124C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A4310 002A1250  4E 80 00 20 */	blr 
/* 802A4314 002A1254  38 60 00 00 */	li r3, 0
/* 802A4318 002A1258  4E 80 00 20 */	blr 

.global readCommand___22JAUAudioArcInterpreterFv
readCommand___22JAUAudioArcInterpreterFv:
/* 802A431C 002A125C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A4320 002A1260  7C 08 02 A6 */	mflr r0
/* 802A4324 002A1264  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A4328 002A1268  80 A3 00 04 */	lwz r5, 4(r3)
/* 802A432C 002A126C  80 85 00 00 */	lwz r4, 0(r5)
/* 802A4330 002A1270  38 05 00 04 */	addi r0, r5, 4
/* 802A4334 002A1274  90 03 00 04 */	stw r0, 4(r3)
/* 802A4338 002A1278  3C E0 62 73 */	lis r7, 0x62736674@ha
/* 802A433C 002A127C  38 07 66 74 */	addi r0, r7, 0x62736674@l
/* 802A4340 002A1280  7C 04 00 00 */	cmpw r4, r0
/* 802A4344 002A1284  41 82 03 5C */	beq lbl_802A46A0
/* 802A4348 002A1288  40 80 00 84 */	bge lbl_802A43CC
/* 802A434C 002A128C  3C C0 62 6D */	lis r6, 0x626D7320@ha
/* 802A4350 002A1290  38 06 73 20 */	addi r0, r6, 0x626D7320@l
/* 802A4354 002A1294  7C 04 00 00 */	cmpw r4, r0
/* 802A4358 002A1298  41 82 02 7C */	beq lbl_802A45D4
/* 802A435C 002A129C  40 80 00 3C */	bge lbl_802A4398
/* 802A4360 002A12A0  3C A0 3E 5F */	lis r5, 0x3E5F626C@ha
/* 802A4364 002A12A4  38 05 62 6C */	addi r0, r5, 0x3E5F626C@l
/* 802A4368 002A12A8  7C 04 00 00 */	cmpw r4, r0
/* 802A436C 002A12AC  41 82 01 94 */	beq lbl_802A4500
/* 802A4370 002A12B0  40 80 00 14 */	bge lbl_802A4384
/* 802A4374 002A12B4  38 05 41 41 */	addi r0, r5, 0x4141
/* 802A4378 002A12B8  7C 04 00 00 */	cmpw r4, r0
/* 802A437C 002A12BC  41 82 00 C0 */	beq lbl_802A443C
/* 802A4380 002A12C0  48 00 03 9C */	b lbl_802A471C
lbl_802A4384:
/* 802A4384 002A12C4  3C A0 62 6C */	lis r5, 0x626C5F3C@ha
/* 802A4388 002A12C8  38 05 5F 3C */	addi r0, r5, 0x626C5F3C@l
/* 802A438C 002A12CC  7C 04 00 00 */	cmpw r4, r0
/* 802A4390 002A12D0  41 82 01 3C */	beq lbl_802A44CC
/* 802A4394 002A12D4  48 00 03 88 */	b lbl_802A471C
lbl_802A4398:
/* 802A4398 002A12D8  3C A0 62 6E */	lis r5, 0x626E6B20@ha
/* 802A439C 002A12DC  38 05 6B 20 */	addi r0, r5, 0x626E6B20@l
/* 802A43A0 002A12E0  7C 04 00 00 */	cmpw r4, r0
/* 802A43A4 002A12E4  41 82 00 EC */	beq lbl_802A4490
/* 802A43A8 002A12E8  40 80 00 14 */	bge lbl_802A43BC
/* 802A43AC 002A12EC  38 06 73 61 */	addi r0, r6, 0x7361
/* 802A43B0 002A12F0  7C 04 00 00 */	cmpw r4, r0
/* 802A43B4 002A12F4  41 82 02 70 */	beq lbl_802A4624
/* 802A43B8 002A12F8  48 00 03 64 */	b lbl_802A471C
lbl_802A43BC:
/* 802A43BC 002A12FC  38 07 63 20 */	addi r0, r7, 0x6320
/* 802A43C0 002A1300  7C 04 00 00 */	cmpw r4, r0
/* 802A43C4 002A1304  41 82 01 50 */	beq lbl_802A4514
/* 802A43C8 002A1308  48 00 03 54 */	b lbl_802A471C
lbl_802A43CC:
/* 802A43CC 002A130C  3C A0 73 65 */	lis r5, 0x73656374@ha
/* 802A43D0 002A1310  38 05 63 74 */	addi r0, r5, 0x73656374@l
/* 802A43D4 002A1314  7C 04 00 00 */	cmpw r4, r0
/* 802A43D8 002A1318  41 82 02 F4 */	beq lbl_802A46CC
/* 802A43DC 002A131C  40 80 00 38 */	bge lbl_802A4414
/* 802A43E0 002A1320  38 07 74 6E */	addi r0, r7, 0x746e
/* 802A43E4 002A1324  7C 04 00 00 */	cmpw r4, r0
/* 802A43E8 002A1328  41 82 01 AC */	beq lbl_802A4594
/* 802A43EC 002A132C  40 80 00 14 */	bge lbl_802A4400
/* 802A43F0 002A1330  38 07 74 20 */	addi r0, r7, 0x7420
/* 802A43F4 002A1334  7C 04 00 00 */	cmpw r4, r0
/* 802A43F8 002A1338  41 82 01 5C */	beq lbl_802A4554
/* 802A43FC 002A133C  48 00 03 20 */	b lbl_802A471C
lbl_802A4400:
/* 802A4400 002A1340  3C A0 64 73 */	lis r5, 0x64737162@ha
/* 802A4404 002A1344  38 05 71 62 */	addi r0, r5, 0x64737162@l
/* 802A4408 002A1348  7C 04 00 00 */	cmpw r4, r0
/* 802A440C 002A134C  41 82 02 70 */	beq lbl_802A467C
/* 802A4410 002A1350  48 00 03 0C */	b lbl_802A471C
lbl_802A4414:
/* 802A4414 002A1354  3C A0 77 73 */	lis r5, 0x77732020@ha
/* 802A4418 002A1358  38 05 20 20 */	addi r0, r5, 0x77732020@l
/* 802A441C 002A135C  7C 04 00 00 */	cmpw r4, r0
/* 802A4420 002A1360  41 82 00 24 */	beq lbl_802A4444
/* 802A4424 002A1364  40 80 02 F8 */	bge lbl_802A471C
/* 802A4428 002A1368  3C A0 76 62 */	lis r5, 0x76626E6B@ha
/* 802A442C 002A136C  38 05 6E 6B */	addi r0, r5, 0x76626E6B@l
/* 802A4430 002A1370  7C 04 00 00 */	cmpw r4, r0
/* 802A4434 002A1374  41 82 02 14 */	beq lbl_802A4648
/* 802A4438 002A1378  48 00 02 E4 */	b lbl_802A471C
lbl_802A443C:
/* 802A443C 002A137C  38 60 00 00 */	li r3, 0
/* 802A4440 002A1380  48 00 02 F0 */	b lbl_802A4730
lbl_802A4444:
/* 802A4444 002A1384  80 A3 00 04 */	lwz r5, 4(r3)
/* 802A4448 002A1388  80 85 00 00 */	lwz r4, 0(r5)
/* 802A444C 002A138C  38 05 00 04 */	addi r0, r5, 4
/* 802A4450 002A1390  90 03 00 04 */	stw r0, 4(r3)
/* 802A4454 002A1394  80 A3 00 04 */	lwz r5, 4(r3)
/* 802A4458 002A1398  80 E5 00 00 */	lwz r7, 0(r5)
/* 802A445C 002A139C  38 05 00 04 */	addi r0, r5, 4
/* 802A4460 002A13A0  90 03 00 04 */	stw r0, 4(r3)
/* 802A4464 002A13A4  80 A3 00 04 */	lwz r5, 4(r3)
/* 802A4468 002A13A8  80 C5 00 00 */	lwz r6, 0(r5)
/* 802A446C 002A13AC  38 05 00 04 */	addi r0, r5, 4
/* 802A4470 002A13B0  90 03 00 04 */	stw r0, 4(r3)
/* 802A4474 002A13B4  80 03 00 08 */	lwz r0, 8(r3)
/* 802A4478 002A13B8  7C A0 3A 14 */	add r5, r0, r7
/* 802A447C 002A13BC  81 83 00 00 */	lwz r12, 0(r3)
/* 802A4480 002A13C0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A4484 002A13C4  7D 89 03 A6 */	mtctr r12
/* 802A4488 002A13C8  4E 80 04 21 */	bctrl 
/* 802A448C 002A13CC  48 00 02 A0 */	b lbl_802A472C
lbl_802A4490:
/* 802A4490 002A13D0  80 A3 00 04 */	lwz r5, 4(r3)
/* 802A4494 002A13D4  80 85 00 00 */	lwz r4, 0(r5)
/* 802A4498 002A13D8  38 05 00 04 */	addi r0, r5, 4
/* 802A449C 002A13DC  90 03 00 04 */	stw r0, 4(r3)
/* 802A44A0 002A13E0  80 A3 00 04 */	lwz r5, 4(r3)
/* 802A44A4 002A13E4  80 C5 00 00 */	lwz r6, 0(r5)
/* 802A44A8 002A13E8  38 05 00 04 */	addi r0, r5, 4
/* 802A44AC 002A13EC  90 03 00 04 */	stw r0, 4(r3)
/* 802A44B0 002A13F0  80 03 00 08 */	lwz r0, 8(r3)
/* 802A44B4 002A13F4  7C A0 32 14 */	add r5, r0, r6
/* 802A44B8 002A13F8  81 83 00 00 */	lwz r12, 0(r3)
/* 802A44BC 002A13FC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802A44C0 002A1400  7D 89 03 A6 */	mtctr r12
/* 802A44C4 002A1404  4E 80 04 21 */	bctrl 
/* 802A44C8 002A1408  48 00 02 64 */	b lbl_802A472C
lbl_802A44CC:
/* 802A44CC 002A140C  80 A3 00 04 */	lwz r5, 4(r3)
/* 802A44D0 002A1410  80 85 00 00 */	lwz r4, 0(r5)
/* 802A44D4 002A1414  38 05 00 04 */	addi r0, r5, 4
/* 802A44D8 002A1418  90 03 00 04 */	stw r0, 4(r3)
/* 802A44DC 002A141C  80 C3 00 04 */	lwz r6, 4(r3)
/* 802A44E0 002A1420  80 A6 00 00 */	lwz r5, 0(r6)
/* 802A44E4 002A1424  38 06 00 04 */	addi r0, r6, 4
/* 802A44E8 002A1428  90 03 00 04 */	stw r0, 4(r3)
/* 802A44EC 002A142C  81 83 00 00 */	lwz r12, 0(r3)
/* 802A44F0 002A1430  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802A44F4 002A1434  7D 89 03 A6 */	mtctr r12
/* 802A44F8 002A1438  4E 80 04 21 */	bctrl 
/* 802A44FC 002A143C  48 00 02 30 */	b lbl_802A472C
lbl_802A4500:
/* 802A4500 002A1440  81 83 00 00 */	lwz r12, 0(r3)
/* 802A4504 002A1444  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802A4508 002A1448  7D 89 03 A6 */	mtctr r12
/* 802A450C 002A144C  4E 80 04 21 */	bctrl 
/* 802A4510 002A1450  48 00 02 1C */	b lbl_802A472C
lbl_802A4514:
/* 802A4514 002A1454  80 83 00 04 */	lwz r4, 4(r3)
/* 802A4518 002A1458  80 A4 00 00 */	lwz r5, 0(r4)
/* 802A451C 002A145C  38 04 00 04 */	addi r0, r4, 4
/* 802A4520 002A1460  90 03 00 04 */	stw r0, 4(r3)
/* 802A4524 002A1464  80 83 00 04 */	lwz r4, 4(r3)
/* 802A4528 002A1468  80 C4 00 00 */	lwz r6, 0(r4)
/* 802A452C 002A146C  38 04 00 04 */	addi r0, r4, 4
/* 802A4530 002A1470  90 03 00 04 */	stw r0, 4(r3)
/* 802A4534 002A1474  80 03 00 08 */	lwz r0, 8(r3)
/* 802A4538 002A1478  7C 80 2A 14 */	add r4, r0, r5
/* 802A453C 002A147C  7C A5 30 50 */	subf r5, r5, r6
/* 802A4540 002A1480  81 83 00 00 */	lwz r12, 0(r3)
/* 802A4544 002A1484  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802A4548 002A1488  7D 89 03 A6 */	mtctr r12
/* 802A454C 002A148C  4E 80 04 21 */	bctrl 
/* 802A4550 002A1490  48 00 01 DC */	b lbl_802A472C
lbl_802A4554:
/* 802A4554 002A1494  80 83 00 04 */	lwz r4, 4(r3)
/* 802A4558 002A1498  80 A4 00 00 */	lwz r5, 0(r4)
/* 802A455C 002A149C  38 04 00 04 */	addi r0, r4, 4
/* 802A4560 002A14A0  90 03 00 04 */	stw r0, 4(r3)
/* 802A4564 002A14A4  80 83 00 04 */	lwz r4, 4(r3)
/* 802A4568 002A14A8  80 C4 00 00 */	lwz r6, 0(r4)
/* 802A456C 002A14AC  38 04 00 04 */	addi r0, r4, 4
/* 802A4570 002A14B0  90 03 00 04 */	stw r0, 4(r3)
/* 802A4574 002A14B4  80 03 00 08 */	lwz r0, 8(r3)
/* 802A4578 002A14B8  7C 80 2A 14 */	add r4, r0, r5
/* 802A457C 002A14BC  7C A5 30 50 */	subf r5, r5, r6
/* 802A4580 002A14C0  81 83 00 00 */	lwz r12, 0(r3)
/* 802A4584 002A14C4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802A4588 002A14C8  7D 89 03 A6 */	mtctr r12
/* 802A458C 002A14CC  4E 80 04 21 */	bctrl 
/* 802A4590 002A14D0  48 00 01 9C */	b lbl_802A472C
lbl_802A4594:
/* 802A4594 002A14D4  80 83 00 04 */	lwz r4, 4(r3)
/* 802A4598 002A14D8  80 A4 00 00 */	lwz r5, 0(r4)
/* 802A459C 002A14DC  38 04 00 04 */	addi r0, r4, 4
/* 802A45A0 002A14E0  90 03 00 04 */	stw r0, 4(r3)
/* 802A45A4 002A14E4  80 83 00 04 */	lwz r4, 4(r3)
/* 802A45A8 002A14E8  80 C4 00 00 */	lwz r6, 0(r4)
/* 802A45AC 002A14EC  38 04 00 04 */	addi r0, r4, 4
/* 802A45B0 002A14F0  90 03 00 04 */	stw r0, 4(r3)
/* 802A45B4 002A14F4  80 03 00 08 */	lwz r0, 8(r3)
/* 802A45B8 002A14F8  7C 80 2A 14 */	add r4, r0, r5
/* 802A45BC 002A14FC  7C A5 30 50 */	subf r5, r5, r6
/* 802A45C0 002A1500  81 83 00 00 */	lwz r12, 0(r3)
/* 802A45C4 002A1504  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A45C8 002A1508  7D 89 03 A6 */	mtctr r12
/* 802A45CC 002A150C  4E 80 04 21 */	bctrl 
/* 802A45D0 002A1510  48 00 01 5C */	b lbl_802A472C
lbl_802A45D4:
/* 802A45D4 002A1514  80 A3 00 04 */	lwz r5, 4(r3)
/* 802A45D8 002A1518  80 85 00 00 */	lwz r4, 0(r5)
/* 802A45DC 002A151C  38 05 00 04 */	addi r0, r5, 4
/* 802A45E0 002A1520  90 03 00 04 */	stw r0, 4(r3)
/* 802A45E4 002A1524  80 A3 00 04 */	lwz r5, 4(r3)
/* 802A45E8 002A1528  80 C5 00 00 */	lwz r6, 0(r5)
/* 802A45EC 002A152C  38 05 00 04 */	addi r0, r5, 4
/* 802A45F0 002A1530  90 03 00 04 */	stw r0, 4(r3)
/* 802A45F4 002A1534  80 A3 00 04 */	lwz r5, 4(r3)
/* 802A45F8 002A1538  80 E5 00 00 */	lwz r7, 0(r5)
/* 802A45FC 002A153C  38 05 00 04 */	addi r0, r5, 4
/* 802A4600 002A1540  90 03 00 04 */	stw r0, 4(r3)
/* 802A4604 002A1544  80 03 00 08 */	lwz r0, 8(r3)
/* 802A4608 002A1548  7C A0 32 14 */	add r5, r0, r6
/* 802A460C 002A154C  7C C6 38 50 */	subf r6, r6, r7
/* 802A4610 002A1550  81 83 00 00 */	lwz r12, 0(r3)
/* 802A4614 002A1554  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802A4618 002A1558  7D 89 03 A6 */	mtctr r12
/* 802A461C 002A155C  4E 80 04 21 */	bctrl 
/* 802A4620 002A1560  48 00 01 0C */	b lbl_802A472C
lbl_802A4624:
/* 802A4624 002A1564  80 A3 00 04 */	lwz r5, 4(r3)
/* 802A4628 002A1568  80 85 00 00 */	lwz r4, 0(r5)
/* 802A462C 002A156C  38 05 00 04 */	addi r0, r5, 4
/* 802A4630 002A1570  90 03 00 04 */	stw r0, 4(r3)
/* 802A4634 002A1574  81 83 00 00 */	lwz r12, 0(r3)
/* 802A4638 002A1578  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802A463C 002A157C  7D 89 03 A6 */	mtctr r12
/* 802A4640 002A1580  4E 80 04 21 */	bctrl 
/* 802A4644 002A1584  48 00 00 E8 */	b lbl_802A472C
lbl_802A4648:
/* 802A4648 002A1588  80 A3 00 04 */	lwz r5, 4(r3)
/* 802A464C 002A158C  80 85 00 00 */	lwz r4, 0(r5)
/* 802A4650 002A1590  38 05 00 04 */	addi r0, r5, 4
/* 802A4654 002A1594  90 03 00 04 */	stw r0, 4(r3)
/* 802A4658 002A1598  80 C3 00 04 */	lwz r6, 4(r3)
/* 802A465C 002A159C  80 A6 00 00 */	lwz r5, 0(r6)
/* 802A4660 002A15A0  38 06 00 04 */	addi r0, r6, 4
/* 802A4664 002A15A4  90 03 00 04 */	stw r0, 4(r3)
/* 802A4668 002A15A8  81 83 00 00 */	lwz r12, 0(r3)
/* 802A466C 002A15AC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802A4670 002A15B0  7D 89 03 A6 */	mtctr r12
/* 802A4674 002A15B4  4E 80 04 21 */	bctrl 
/* 802A4678 002A15B8  48 00 00 B4 */	b lbl_802A472C
lbl_802A467C:
/* 802A467C 002A15BC  80 A3 00 04 */	lwz r5, 4(r3)
/* 802A4680 002A15C0  80 85 00 00 */	lwz r4, 0(r5)
/* 802A4684 002A15C4  38 05 00 04 */	addi r0, r5, 4
/* 802A4688 002A15C8  90 03 00 04 */	stw r0, 4(r3)
/* 802A468C 002A15CC  81 83 00 00 */	lwz r12, 0(r3)
/* 802A4690 002A15D0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802A4694 002A15D4  7D 89 03 A6 */	mtctr r12
/* 802A4698 002A15D8  4E 80 04 21 */	bctrl 
/* 802A469C 002A15DC  48 00 00 90 */	b lbl_802A472C
lbl_802A46A0:
/* 802A46A0 002A15E0  80 83 00 04 */	lwz r4, 4(r3)
/* 802A46A4 002A15E4  80 A4 00 00 */	lwz r5, 0(r4)
/* 802A46A8 002A15E8  38 04 00 04 */	addi r0, r4, 4
/* 802A46AC 002A15EC  90 03 00 04 */	stw r0, 4(r3)
/* 802A46B0 002A15F0  80 03 00 08 */	lwz r0, 8(r3)
/* 802A46B4 002A15F4  7C 80 2A 14 */	add r4, r0, r5
/* 802A46B8 002A15F8  81 83 00 00 */	lwz r12, 0(r3)
/* 802A46BC 002A15FC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802A46C0 002A1600  7D 89 03 A6 */	mtctr r12
/* 802A46C4 002A1604  4E 80 04 21 */	bctrl 
/* 802A46C8 002A1608  48 00 00 64 */	b lbl_802A472C
lbl_802A46CC:
/* 802A46CC 002A160C  80 83 00 04 */	lwz r4, 4(r3)
/* 802A46D0 002A1610  38 04 00 01 */	addi r0, r4, 1
/* 802A46D4 002A1614  90 03 00 04 */	stw r0, 4(r3)
/* 802A46D8 002A1618  80 83 00 04 */	lwz r4, 4(r3)
/* 802A46DC 002A161C  38 04 00 01 */	addi r0, r4, 1
/* 802A46E0 002A1620  90 03 00 04 */	stw r0, 4(r3)
/* 802A46E4 002A1624  88 84 00 00 */	lbz r4, 0(r4)
/* 802A46E8 002A1628  80 A3 00 04 */	lwz r5, 4(r3)
/* 802A46EC 002A162C  38 05 00 01 */	addi r0, r5, 1
/* 802A46F0 002A1630  90 03 00 04 */	stw r0, 4(r3)
/* 802A46F4 002A1634  88 A5 00 00 */	lbz r5, 0(r5)
/* 802A46F8 002A1638  80 C3 00 04 */	lwz r6, 4(r3)
/* 802A46FC 002A163C  38 06 00 01 */	addi r0, r6, 1
/* 802A4700 002A1640  90 03 00 04 */	stw r0, 4(r3)
/* 802A4704 002A1644  88 C6 00 00 */	lbz r6, 0(r6)
/* 802A4708 002A1648  81 83 00 00 */	lwz r12, 0(r3)
/* 802A470C 002A164C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802A4710 002A1650  7D 89 03 A6 */	mtctr r12
/* 802A4714 002A1654  4E 80 04 21 */	bctrl 
/* 802A4718 002A1658  48 00 00 14 */	b lbl_802A472C
lbl_802A471C:
/* 802A471C 002A165C  81 83 00 00 */	lwz r12, 0(r3)
/* 802A4720 002A1660  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 802A4724 002A1664  7D 89 03 A6 */	mtctr r12
/* 802A4728 002A1668  4E 80 04 21 */	bctrl 
lbl_802A472C:
/* 802A472C 002A166C  38 60 00 01 */	li r3, 1
lbl_802A4730:
/* 802A4730 002A1670  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A4734 002A1674  7C 08 03 A6 */	mtlr r0
/* 802A4738 002A1678  38 21 00 10 */	addi r1, r1, 0x10
/* 802A473C 002A167C  4E 80 00 20 */	blr 

