.include "macros.inc"

.section .text, "ax" # 80280ba0


.global JStage_NS_TCamera_NS_dtor
JStage_NS_TCamera_NS_dtor:
/* 80280BA0 0027DAE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80280BA4 0027DAE4  7C 08 02 A6 */	mflr r0
/* 80280BA8 0027DAE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80280BAC 0027DAEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80280BB0 0027DAF0  93 C1 00 08 */	stw r30, 8(r1)
/* 80280BB4 0027DAF4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80280BB8 0027DAF8  7C 9F 23 78 */	mr r31, r4
/* 80280BBC 0027DAFC  41 82 00 28 */	beq lbl_80280BE4
/* 80280BC0 0027DB00  3C 80 80 3C */	lis r4, lbl_803C4680@ha
/* 80280BC4 0027DB04  38 04 46 80 */	addi r0, r4, lbl_803C4680@l
/* 80280BC8 0027DB08  90 1E 00 00 */	stw r0, 0(r30)
/* 80280BCC 0027DB0C  38 80 00 00 */	li r4, 0
/* 80280BD0 0027DB10  48 00 02 05 */	bl JStage_NS_TObject_NS_dtor
/* 80280BD4 0027DB14  7F E0 07 35 */	extsh. r0, r31
/* 80280BD8 0027DB18  40 81 00 0C */	ble lbl_80280BE4
/* 80280BDC 0027DB1C  7F C3 F3 78 */	mr r3, r30
/* 80280BE0 0027DB20  48 04 E1 5D */	bl __dl
lbl_80280BE4:
/* 80280BE4 0027DB24  7F C3 F3 78 */	mr r3, r30
/* 80280BE8 0027DB28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80280BEC 0027DB2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80280BF0 0027DB30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80280BF4 0027DB34  7C 08 03 A6 */	mtlr r0
/* 80280BF8 0027DB38  38 21 00 10 */	addi r1, r1, 0x10
/* 80280BFC 0027DB3C  4E 80 00 20 */	blr 
/* 80280C00 0027DB40  38 60 00 03 */	li r3, 3
/* 80280C04 0027DB44  4E 80 00 20 */	blr 
/* 80280C08 0027DB48  38 60 00 01 */	li r3, 1
/* 80280C0C 0027DB4C  4E 80 00 20 */	blr 
/* 80280C10 0027DB50  4E 80 00 20 */	blr 
/* 80280C14 0027DB54  C0 22 B9 D8 */	lfs f1, lbl_804553D8-_SDA2_BASE_(r2)
/* 80280C18 0027DB58  4E 80 00 20 */	blr 
/* 80280C1C 0027DB5C  4E 80 00 20 */	blr 
/* 80280C20 0027DB60  3C 60 80 45 */	lis r3, lbl_80450AE8@ha
/* 80280C24 0027DB64  C0 23 0A E8 */	lfs f1, lbl_80450AE8@l(r3)
/* 80280C28 0027DB68  4E 80 00 20 */	blr 
/* 80280C2C 0027DB6C  4E 80 00 20 */	blr 
/* 80280C30 0027DB70  C0 22 B9 D8 */	lfs f1, lbl_804553D8-_SDA2_BASE_(r2)
/* 80280C34 0027DB74  4E 80 00 20 */	blr 
/* 80280C38 0027DB78  4E 80 00 20 */	blr 
/* 80280C3C 0027DB7C  C0 22 B9 D8 */	lfs f1, lbl_804553D8-_SDA2_BASE_(r2)
/* 80280C40 0027DB80  4E 80 00 20 */	blr 
/* 80280C44 0027DB84  4E 80 00 20 */	blr 
/* 80280C48 0027DB88  4E 80 00 20 */	blr 
/* 80280C4C 0027DB8C  4E 80 00 20 */	blr 
/* 80280C50 0027DB90  38 60 00 01 */	li r3, 1
/* 80280C54 0027DB94  4E 80 00 20 */	blr 
/* 80280C58 0027DB98  4E 80 00 20 */	blr 
/* 80280C5C 0027DB9C  4E 80 00 20 */	blr 
/* 80280C60 0027DBA0  4E 80 00 20 */	blr 
/* 80280C64 0027DBA4  4E 80 00 20 */	blr 
/* 80280C68 0027DBA8  4E 80 00 20 */	blr 
/* 80280C6C 0027DBAC  4E 80 00 20 */	blr 
/* 80280C70 0027DBB0  4E 80 00 20 */	blr 
/* 80280C74 0027DBB4  C0 22 B9 D8 */	lfs f1, lbl_804553D8-_SDA2_BASE_(r2)
/* 80280C78 0027DBB8  4E 80 00 20 */	blr 
/* 80280C7C 0027DBBC  4E 80 00 20 */	blr 

