lbl_800873D4:
/* 800873D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800873D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800873DC  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 800873E0  38 60 00 00 */	li r3, 0
/* 800873E4  88 04 05 68 */	lbz r0, 0x568(r4)
/* 800873E8  28 00 00 01 */	cmplwi r0, 1
/* 800873EC  40 82 00 0C */	bne lbl_800873F8
/* 800873F0  38 60 00 01 */	li r3, 1
/* 800873F4  4E 80 00 20 */	blr 
lbl_800873F8:
/* 800873F8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 800873FC  28 00 00 02 */	cmplwi r0, 2
/* 80087400  40 82 00 0C */	bne lbl_8008740C
/* 80087404  38 60 00 02 */	li r3, 2
/* 80087408  4E 80 00 20 */	blr 
lbl_8008740C:
/* 8008740C  28 00 00 21 */	cmplwi r0, 0x21
/* 80087410  40 82 00 0C */	bne lbl_8008741C
/* 80087414  38 60 02 00 */	li r3, 0x200
/* 80087418  4E 80 00 20 */	blr 
lbl_8008741C:
/* 8008741C  28 00 00 03 */	cmplwi r0, 3
/* 80087420  40 82 00 0C */	bne lbl_8008742C
/* 80087424  38 60 00 04 */	li r3, 4
/* 80087428  4E 80 00 20 */	blr 
lbl_8008742C:
/* 8008742C  28 00 00 04 */	cmplwi r0, 4
/* 80087430  40 82 00 0C */	bne lbl_8008743C
/* 80087434  38 60 00 08 */	li r3, 8
/* 80087438  4E 80 00 20 */	blr 
lbl_8008743C:
/* 8008743C  28 00 00 06 */	cmplwi r0, 6
/* 80087440  40 82 00 0C */	bne lbl_8008744C
/* 80087444  38 60 00 20 */	li r3, 0x20
/* 80087448  4E 80 00 20 */	blr 
lbl_8008744C:
/* 8008744C  28 00 00 07 */	cmplwi r0, 7
/* 80087450  40 82 00 0C */	bne lbl_8008745C
/* 80087454  38 60 00 40 */	li r3, 0x40
/* 80087458  4E 80 00 20 */	blr 
lbl_8008745C:
/* 8008745C  28 00 00 08 */	cmplwi r0, 8
/* 80087460  41 82 00 1C */	beq lbl_8008747C
/* 80087464  28 00 00 09 */	cmplwi r0, 9
/* 80087468  41 82 00 14 */	beq lbl_8008747C
/* 8008746C  28 00 00 2B */	cmplwi r0, 0x2b
/* 80087470  41 82 00 0C */	beq lbl_8008747C
/* 80087474  28 00 00 18 */	cmplwi r0, 0x18
/* 80087478  40 82 00 0C */	bne lbl_80087484
lbl_8008747C:
/* 8008747C  38 60 00 80 */	li r3, 0x80
/* 80087480  4E 80 00 20 */	blr 
lbl_80087484:
/* 80087484  28 00 00 16 */	cmplwi r0, 0x16
/* 80087488  41 82 00 0C */	beq lbl_80087494
/* 8008748C  28 00 00 17 */	cmplwi r0, 0x17
/* 80087490  40 82 00 0C */	bne lbl_8008749C
lbl_80087494:
/* 80087494  38 60 08 00 */	li r3, 0x800
/* 80087498  4E 80 00 20 */	blr 
lbl_8008749C:
/* 8008749C  28 00 00 0A */	cmplwi r0, 0xa
/* 800874A0  40 82 00 0C */	bne lbl_800874AC
/* 800874A4  38 60 01 00 */	li r3, 0x100
/* 800874A8  4E 80 00 20 */	blr 
lbl_800874AC:
/* 800874AC  28 00 00 28 */	cmplwi r0, 0x28
/* 800874B0  41 82 00 0C */	beq lbl_800874BC
/* 800874B4  28 00 00 29 */	cmplwi r0, 0x29
/* 800874B8  4C 82 00 20 */	bnelr 
lbl_800874BC:
/* 800874BC  38 60 04 00 */	li r3, 0x400
/* 800874C0  4E 80 00 20 */	blr 