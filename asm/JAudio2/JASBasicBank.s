.include "macros.inc"

.section .text, "ax" # 80297d78


.global __ct__12JASBasicBankFv
__ct__12JASBasicBankFv:
/* 80297D78 00294CB8  3C 80 80 3C */	lis r4, lbl_803C76BC@ha
/* 80297D7C 00294CBC  38 04 76 BC */	addi r0, r4, lbl_803C76BC@l
/* 80297D80 00294CC0  90 03 00 00 */	stw r0, 0(r3)
/* 80297D84 00294CC4  38 A0 00 00 */	li r5, 0
/* 80297D88 00294CC8  90 A3 00 04 */	stw r5, 4(r3)
/* 80297D8C 00294CCC  3C 80 80 3C */	lis r4, lbl_803C76A8@ha
/* 80297D90 00294CD0  38 04 76 A8 */	addi r0, r4, lbl_803C76A8@l
/* 80297D94 00294CD4  90 03 00 00 */	stw r0, 0(r3)
/* 80297D98 00294CD8  90 A3 00 08 */	stw r5, 8(r3)
/* 80297D9C 00294CDC  98 A3 00 0C */	stb r5, 0xc(r3)
/* 80297DA0 00294CE0  4E 80 00 20 */	blr 

.global newInstTable__12JASBasicBankFUcP7JKRHeap
newInstTable__12JASBasicBankFUcP7JKRHeap:
/* 80297DA4 00294CE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80297DA8 00294CE8  7C 08 02 A6 */	mflr r0
/* 80297DAC 00294CEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80297DB0 00294CF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80297DB4 00294CF4  7C 7F 1B 78 */	mr r31, r3
/* 80297DB8 00294CF8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80297DBC 00294CFC  41 82 00 30 */	beq lbl_80297DEC
/* 80297DC0 00294D00  98 9F 00 0C */	stb r4, 0xc(r31)
/* 80297DC4 00294D04  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 80297DC8 00294D08  54 03 10 3A */	slwi r3, r0, 2
/* 80297DCC 00294D0C  7C A4 2B 78 */	mr r4, r5
/* 80297DD0 00294D10  38 A0 00 00 */	li r5, 0
/* 80297DD4 00294D14  48 03 6F 3D */	bl __nwa__FUlP7JKRHeapi
/* 80297DD8 00294D18  90 7F 00 08 */	stw r3, 8(r31)
/* 80297DDC 00294D1C  80 7F 00 08 */	lwz r3, 8(r31)
/* 80297DE0 00294D20  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 80297DE4 00294D24  54 04 10 3A */	slwi r4, r0, 2
/* 80297DE8 00294D28  4B FF 76 99 */	bl bzero__7JASCalcFPvUl
lbl_80297DEC:
/* 80297DEC 00294D2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80297DF0 00294D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80297DF4 00294D34  7C 08 03 A6 */	mtlr r0
/* 80297DF8 00294D38  38 21 00 10 */	addi r1, r1, 0x10
/* 80297DFC 00294D3C  4E 80 00 20 */	blr 
/* 80297E00 00294D40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80297E04 00294D44  7C 08 02 A6 */	mflr r0
/* 80297E08 00294D48  90 01 00 24 */	stw r0, 0x24(r1)
/* 80297E0C 00294D4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80297E10 00294D50  48 0C A3 CD */	bl _savegpr_29
/* 80297E14 00294D54  7C BD 2B 78 */	mr r29, r5
/* 80297E18 00294D58  7C DE 33 78 */	mr r30, r6
/* 80297E1C 00294D5C  7C FF 3B 78 */	mr r31, r7
/* 80297E20 00294D60  48 00 00 61 */	bl getInst__12JASBasicBankCFi
/* 80297E24 00294D64  28 03 00 00 */	cmplwi r3, 0
/* 80297E28 00294D68  40 82 00 0C */	bne lbl_80297E34
/* 80297E2C 00294D6C  38 60 00 00 */	li r3, 0
/* 80297E30 00294D70  48 00 00 20 */	b lbl_80297E50
lbl_80297E34:
/* 80297E34 00294D74  7F A4 EB 78 */	mr r4, r29
/* 80297E38 00294D78  7F C5 F3 78 */	mr r5, r30
/* 80297E3C 00294D7C  7F E6 FB 78 */	mr r6, r31
/* 80297E40 00294D80  81 83 00 00 */	lwz r12, 0(r3)
/* 80297E44 00294D84  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80297E48 00294D88  7D 89 03 A6 */	mtctr r12
/* 80297E4C 00294D8C  4E 80 04 21 */	bctrl 
lbl_80297E50:
/* 80297E50 00294D90  39 61 00 20 */	addi r11, r1, 0x20
/* 80297E54 00294D94  48 0C A3 D5 */	bl _restgpr_29
/* 80297E58 00294D98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80297E5C 00294D9C  7C 08 03 A6 */	mtlr r0
/* 80297E60 00294DA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80297E64 00294DA4  4E 80 00 20 */	blr 

.global setInst__12JASBasicBankFiP7JASInst
setInst__12JASBasicBankFiP7JASInst:
/* 80297E68 00294DA8  80 63 00 08 */	lwz r3, 8(r3)
/* 80297E6C 00294DAC  28 03 00 00 */	cmplwi r3, 0
/* 80297E70 00294DB0  4D 82 00 20 */	beqlr 
/* 80297E74 00294DB4  54 80 10 3A */	slwi r0, r4, 2
/* 80297E78 00294DB8  7C A3 01 2E */	stwx r5, r3, r0
/* 80297E7C 00294DBC  4E 80 00 20 */	blr 

.global getInst__12JASBasicBankCFi
getInst__12JASBasicBankCFi:
/* 80297E80 00294DC0  2C 04 00 00 */	cmpwi r4, 0
/* 80297E84 00294DC4  40 80 00 0C */	bge lbl_80297E90
/* 80297E88 00294DC8  38 60 00 00 */	li r3, 0
/* 80297E8C 00294DCC  4E 80 00 20 */	blr 
lbl_80297E90:
/* 80297E90 00294DD0  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80297E94 00294DD4  7C 04 00 00 */	cmpw r4, r0
/* 80297E98 00294DD8  41 80 00 0C */	blt lbl_80297EA4
/* 80297E9C 00294DDC  38 60 00 00 */	li r3, 0
/* 80297EA0 00294DE0  4E 80 00 20 */	blr 
lbl_80297EA4:
/* 80297EA4 00294DE4  80 63 00 08 */	lwz r3, 8(r3)
/* 80297EA8 00294DE8  28 03 00 00 */	cmplwi r3, 0
/* 80297EAC 00294DEC  40 82 00 0C */	bne lbl_80297EB8
/* 80297EB0 00294DF0  38 60 00 00 */	li r3, 0
/* 80297EB4 00294DF4  4E 80 00 20 */	blr 
lbl_80297EB8:
/* 80297EB8 00294DF8  54 80 10 3A */	slwi r0, r4, 2
/* 80297EBC 00294DFC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80297EC0 00294E00  4E 80 00 20 */	blr 
/* 80297EC4 00294E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80297EC8 00294E08  7C 08 02 A6 */	mflr r0
/* 80297ECC 00294E0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80297ED0 00294E10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80297ED4 00294E14  7C 7F 1B 79 */	or. r31, r3, r3
/* 80297ED8 00294E18  41 82 00 1C */	beq lbl_80297EF4
/* 80297EDC 00294E1C  3C A0 80 3C */	lis r5, lbl_803C76BC@ha
/* 80297EE0 00294E20  38 05 76 BC */	addi r0, r5, lbl_803C76BC@l
/* 80297EE4 00294E24  90 1F 00 00 */	stw r0, 0(r31)
/* 80297EE8 00294E28  7C 80 07 35 */	extsh. r0, r4
/* 80297EEC 00294E2C  40 81 00 08 */	ble lbl_80297EF4
/* 80297EF0 00294E30  48 03 6E 4D */	bl __dl__FPv
lbl_80297EF4:
/* 80297EF4 00294E34  7F E3 FB 78 */	mr r3, r31
/* 80297EF8 00294E38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80297EFC 00294E3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80297F00 00294E40  7C 08 03 A6 */	mtlr r0
/* 80297F04 00294E44  38 21 00 10 */	addi r1, r1, 0x10
/* 80297F08 00294E48  4E 80 00 20 */	blr 
/* 80297F0C 00294E4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80297F10 00294E50  7C 08 02 A6 */	mflr r0
/* 80297F14 00294E54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80297F18 00294E58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80297F1C 00294E5C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80297F20 00294E60  41 82 00 30 */	beq lbl_80297F50
/* 80297F24 00294E64  3C 60 80 3C */	lis r3, lbl_803C76A8@ha
/* 80297F28 00294E68  38 03 76 A8 */	addi r0, r3, lbl_803C76A8@l
/* 80297F2C 00294E6C  90 1F 00 00 */	stw r0, 0(r31)
/* 80297F30 00294E70  41 82 00 10 */	beq lbl_80297F40
/* 80297F34 00294E74  3C 60 80 3C */	lis r3, lbl_803C76BC@ha
/* 80297F38 00294E78  38 03 76 BC */	addi r0, r3, lbl_803C76BC@l
/* 80297F3C 00294E7C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80297F40:
/* 80297F40 00294E80  7C 80 07 35 */	extsh. r0, r4
/* 80297F44 00294E84  40 81 00 0C */	ble lbl_80297F50
/* 80297F48 00294E88  7F E3 FB 78 */	mr r3, r31
/* 80297F4C 00294E8C  48 03 6D F1 */	bl __dl__FPv
lbl_80297F50:
/* 80297F50 00294E90  7F E3 FB 78 */	mr r3, r31
/* 80297F54 00294E94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80297F58 00294E98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80297F5C 00294E9C  7C 08 03 A6 */	mtlr r0
/* 80297F60 00294EA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80297F64 00294EA4  4E 80 00 20 */	blr 
/* 80297F68 00294EA8  3C 60 42 53 */	lis r3, 0x42534943@ha
/* 80297F6C 00294EAC  38 63 49 43 */	addi r3, r3, 0x42534943@l
/* 80297F70 00294EB0  4E 80 00 20 */	blr 
