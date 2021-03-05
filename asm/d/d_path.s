.include "macros.inc"

.section .text, "ax" # 800517b0


.global dPath_GetPnt__FPC5dPathi
dPath_GetPnt__FPC5dPathi:
/* 800517B0 0004E6F0  28 03 00 00 */	cmplwi r3, 0
/* 800517B4 0004E6F4  41 82 00 24 */	beq lbl_800517D8
/* 800517B8 0004E6F8  80 A3 00 08 */	lwz r5, 8(r3)
/* 800517BC 0004E6FC  28 05 00 00 */	cmplwi r5, 0
/* 800517C0 0004E700  41 82 00 18 */	beq lbl_800517D8
/* 800517C4 0004E704  2C 04 00 00 */	cmpwi r4, 0
/* 800517C8 0004E708  41 80 00 10 */	blt lbl_800517D8
/* 800517CC 0004E70C  A0 03 00 00 */	lhz r0, 0(r3)
/* 800517D0 0004E710  7C 04 00 00 */	cmpw r4, r0
/* 800517D4 0004E714  41 80 00 0C */	blt lbl_800517E0
lbl_800517D8:
/* 800517D8 0004E718  38 60 00 00 */	li r3, 0
/* 800517DC 0004E71C  4E 80 00 20 */	blr 
lbl_800517E0:
/* 800517E0 0004E720  54 80 20 36 */	slwi r0, r4, 4
/* 800517E4 0004E724  7C 65 02 14 */	add r3, r5, r0
/* 800517E8 0004E728  4E 80 00 20 */	blr 

.global dPath_GetRoomPath__Fii
dPath_GetRoomPath__Fii:
/* 800517EC 0004E72C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800517F0 0004E730  7C 08 02 A6 */	mflr r0
/* 800517F4 0004E734  90 01 00 14 */	stw r0, 0x14(r1)
/* 800517F8 0004E738  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800517FC 0004E73C  7C 7F 1B 78 */	mr r31, r3
/* 80051800 0004E740  2C 04 FF FF */	cmpwi r4, -1
/* 80051804 0004E744  40 82 00 20 */	bne lbl_80051824
/* 80051808 0004E748  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8005180C 0004E74C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80051810 0004E750  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 80051814 0004E754  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80051818 0004E758  7D 89 03 A6 */	mtctr r12
/* 8005181C 0004E75C  4E 80 04 21 */	bctrl 
/* 80051820 0004E760  48 00 00 34 */	b lbl_80051854
lbl_80051824:
/* 80051824 0004E764  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80051828 0004E768  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8005182C 0004E76C  38 63 4E C4 */	addi r3, r3, 0x4ec4
/* 80051830 0004E770  4B FD 2B 55 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 80051834 0004E774  28 03 00 00 */	cmplwi r3, 0
/* 80051838 0004E778  40 82 00 0C */	bne lbl_80051844
/* 8005183C 0004E77C  38 60 00 00 */	li r3, 0
/* 80051840 0004E780  48 00 00 44 */	b lbl_80051884
lbl_80051844:
/* 80051844 0004E784  81 83 00 00 */	lwz r12, 0(r3)
/* 80051848 0004E788  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 8005184C 0004E78C  7D 89 03 A6 */	mtctr r12
/* 80051850 0004E790  4E 80 04 21 */	bctrl 
lbl_80051854:
/* 80051854 0004E794  28 03 00 00 */	cmplwi r3, 0
/* 80051858 0004E798  41 82 00 18 */	beq lbl_80051870
/* 8005185C 0004E79C  2C 1F 00 00 */	cmpwi r31, 0
/* 80051860 0004E7A0  41 80 00 10 */	blt lbl_80051870
/* 80051864 0004E7A4  80 03 00 00 */	lwz r0, 0(r3)
/* 80051868 0004E7A8  7C 1F 00 00 */	cmpw r31, r0
/* 8005186C 0004E7AC  41 80 00 0C */	blt lbl_80051878
lbl_80051870:
/* 80051870 0004E7B0  38 60 00 00 */	li r3, 0
/* 80051874 0004E7B4  48 00 00 10 */	b lbl_80051884
lbl_80051878:
/* 80051878 0004E7B8  80 63 00 04 */	lwz r3, 4(r3)
/* 8005187C 0004E7BC  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 80051880 0004E7C0  7C 63 02 14 */	add r3, r3, r0
lbl_80051884:
/* 80051884 0004E7C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80051888 0004E7C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005188C 0004E7CC  7C 08 03 A6 */	mtlr r0
/* 80051890 0004E7D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80051894 0004E7D4  4E 80 00 20 */	blr 

.global dPath_GetNextRoomPath__FPC5dPathi
dPath_GetNextRoomPath__FPC5dPathi:
/* 80051898 0004E7D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005189C 0004E7DC  7C 08 02 A6 */	mflr r0
/* 800518A0 0004E7E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800518A4 0004E7E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800518A8 0004E7E8  7C 7F 1B 78 */	mr r31, r3
/* 800518AC 0004E7EC  2C 04 FF FF */	cmpwi r4, -1
/* 800518B0 0004E7F0  40 82 00 20 */	bne lbl_800518D0
/* 800518B4 0004E7F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800518B8 0004E7F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800518BC 0004E7FC  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 800518C0 0004E800  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 800518C4 0004E804  7D 89 03 A6 */	mtctr r12
/* 800518C8 0004E808  4E 80 04 21 */	bctrl 
/* 800518CC 0004E80C  48 00 00 34 */	b lbl_80051900
lbl_800518D0:
/* 800518D0 0004E810  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800518D4 0004E814  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800518D8 0004E818  38 63 4E C4 */	addi r3, r3, 0x4ec4
/* 800518DC 0004E81C  4B FD 2A A9 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 800518E0 0004E820  28 03 00 00 */	cmplwi r3, 0
/* 800518E4 0004E824  40 82 00 0C */	bne lbl_800518F0
/* 800518E8 0004E828  38 60 00 00 */	li r3, 0
/* 800518EC 0004E82C  48 00 00 5C */	b lbl_80051948
lbl_800518F0:
/* 800518F0 0004E830  81 83 00 00 */	lwz r12, 0(r3)
/* 800518F4 0004E834  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 800518F8 0004E838  7D 89 03 A6 */	mtctr r12
/* 800518FC 0004E83C  4E 80 04 21 */	bctrl 
lbl_80051900:
/* 80051900 0004E840  A0 9F 00 02 */	lhz r4, 2(r31)
/* 80051904 0004E844  28 03 00 00 */	cmplwi r3, 0
/* 80051908 0004E848  41 82 00 10 */	beq lbl_80051918
/* 8005190C 0004E84C  3C 04 00 00 */	addis r0, r4, 0
/* 80051910 0004E850  28 00 FF FF */	cmplwi r0, 0xffff
/* 80051914 0004E854  40 82 00 0C */	bne lbl_80051920
lbl_80051918:
/* 80051918 0004E858  38 60 00 00 */	li r3, 0
/* 8005191C 0004E85C  48 00 00 2C */	b lbl_80051948
lbl_80051920:
/* 80051920 0004E860  2C 04 00 00 */	cmpwi r4, 0
/* 80051924 0004E864  41 80 00 10 */	blt lbl_80051934
/* 80051928 0004E868  80 03 00 00 */	lwz r0, 0(r3)
/* 8005192C 0004E86C  7C 04 00 00 */	cmpw r4, r0
/* 80051930 0004E870  41 80 00 0C */	blt lbl_8005193C
lbl_80051934:
/* 80051934 0004E874  38 60 00 00 */	li r3, 0
/* 80051938 0004E878  48 00 00 10 */	b lbl_80051948
lbl_8005193C:
/* 8005193C 0004E87C  80 63 00 04 */	lwz r3, 4(r3)
/* 80051940 0004E880  1C 04 00 0C */	mulli r0, r4, 0xc
/* 80051944 0004E884  7C 63 02 14 */	add r3, r3, r0
lbl_80051948:
/* 80051948 0004E888  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8005194C 0004E88C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80051950 0004E890  7C 08 03 A6 */	mtlr r0
/* 80051954 0004E894  38 21 00 10 */	addi r1, r1, 0x10
/* 80051958 0004E898  4E 80 00 20 */	blr 

.global dPath_GetPolyRoomPathVec__FRC13cBgS_PolyInfoP4cXyzPi
dPath_GetPolyRoomPathVec__FRC13cBgS_PolyInfoP4cXyzPi:
/* 8005195C 0004E89C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80051960 0004E8A0  7C 08 02 A6 */	mflr r0
/* 80051964 0004E8A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80051968 0004E8A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8005196C 0004E8AC  48 31 08 65 */	bl _savegpr_26
/* 80051970 0004E8B0  7C 7A 1B 78 */	mr r26, r3
/* 80051974 0004E8B4  7C 9E 23 78 */	mr r30, r4
/* 80051978 0004E8B8  7C BF 2B 78 */	mr r31, r5
/* 8005197C 0004E8BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80051980 0004E8C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80051984 0004E8C4  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80051988 0004E8C8  7F 83 E3 78 */	mr r3, r28
/* 8005198C 0004E8CC  7F 44 D3 78 */	mr r4, r26
/* 80051990 0004E8D0  48 02 37 71 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80051994 0004E8D4  7C 7B 1B 78 */	mr r27, r3
/* 80051998 0004E8D8  7F 83 E3 78 */	mr r3, r28
/* 8005199C 0004E8DC  7F 44 D3 78 */	mr r4, r26
/* 800519A0 0004E8E0  48 02 36 41 */	bl GetRoomPathId__4dBgSFRC13cBgS_PolyInfo
/* 800519A4 0004E8E4  C0 02 86 00 */	lfs f0, lbl_80452000-_SDA2_BASE_(r2)
/* 800519A8 0004E8E8  D0 1E 00 00 */	stfs f0, 0(r30)
/* 800519AC 0004E8EC  D0 1E 00 04 */	stfs f0, 4(r30)
/* 800519B0 0004E8F0  D0 1E 00 08 */	stfs f0, 8(r30)
/* 800519B4 0004E8F4  38 00 00 00 */	li r0, 0
/* 800519B8 0004E8F8  90 1F 00 00 */	stw r0, 0(r31)
/* 800519BC 0004E8FC  2C 1B FF FF */	cmpwi r27, -1
/* 800519C0 0004E900  40 82 00 0C */	bne lbl_800519CC
/* 800519C4 0004E904  38 60 00 00 */	li r3, 0
/* 800519C8 0004E908  48 00 00 E0 */	b lbl_80051AA8
lbl_800519CC:
/* 800519CC 0004E90C  7F 64 DB 78 */	mr r4, r27
/* 800519D0 0004E910  4B FF FE 1D */	bl dPath_GetRoomPath__Fii
/* 800519D4 0004E914  7C 7D 1B 79 */	or. r29, r3, r3
/* 800519D8 0004E918  40 82 00 0C */	bne lbl_800519E4
/* 800519DC 0004E91C  38 60 00 00 */	li r3, 0
/* 800519E0 0004E920  48 00 00 C8 */	b lbl_80051AA8
lbl_800519E4:
/* 800519E4 0004E924  88 9D 00 06 */	lbz r4, 6(r29)
/* 800519E8 0004E928  28 04 00 FF */	cmplwi r4, 0xff
/* 800519EC 0004E92C  41 82 00 24 */	beq lbl_80051A10
/* 800519F0 0004E930  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800519F4 0004E934  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800519F8 0004E938  7F 65 DB 78 */	mr r5, r27
/* 800519FC 0004E93C  4B FE 39 65 */	bl isSwitch__10dSv_info_cCFii
/* 80051A00 0004E940  2C 03 00 00 */	cmpwi r3, 0
/* 80051A04 0004E944  41 82 00 0C */	beq lbl_80051A10
/* 80051A08 0004E948  38 60 00 00 */	li r3, 0
/* 80051A0C 0004E94C  48 00 00 9C */	b lbl_80051AA8
lbl_80051A10:
/* 80051A10 0004E950  7F 83 E3 78 */	mr r3, r28
/* 80051A14 0004E954  7F 44 D3 78 */	mr r4, r26
/* 80051A18 0004E958  48 02 36 19 */	bl GetRoomPathPntNo__4dBgSFRC13cBgS_PolyInfo
/* 80051A1C 0004E95C  2C 03 00 FF */	cmpwi r3, 0xff
/* 80051A20 0004E960  41 82 00 18 */	beq lbl_80051A38
/* 80051A24 0004E964  2C 03 00 00 */	cmpwi r3, 0
/* 80051A28 0004E968  41 80 00 10 */	blt lbl_80051A38
/* 80051A2C 0004E96C  A0 9D 00 00 */	lhz r4, 0(r29)
/* 80051A30 0004E970  7C 03 20 00 */	cmpw r3, r4
/* 80051A34 0004E974  41 80 00 0C */	blt lbl_80051A40
lbl_80051A38:
/* 80051A38 0004E978  38 60 00 00 */	li r3, 0
/* 80051A3C 0004E97C  48 00 00 6C */	b lbl_80051AA8
lbl_80051A40:
/* 80051A40 0004E980  80 BD 00 08 */	lwz r5, 8(r29)
/* 80051A44 0004E984  54 60 20 36 */	slwi r0, r3, 4
/* 80051A48 0004E988  7C C5 02 14 */	add r6, r5, r0
/* 80051A4C 0004E98C  38 04 FF FF */	addi r0, r4, -1
/* 80051A50 0004E990  7C 03 00 00 */	cmpw r3, r0
/* 80051A54 0004E994  40 82 00 0C */	bne lbl_80051A60
/* 80051A58 0004E998  7C A3 2B 78 */	mr r3, r5
/* 80051A5C 0004E99C  48 00 00 10 */	b lbl_80051A6C
lbl_80051A60:
/* 80051A60 0004E9A0  38 03 00 01 */	addi r0, r3, 1
/* 80051A64 0004E9A4  54 00 20 36 */	slwi r0, r0, 4
/* 80051A68 0004E9A8  7C 65 02 14 */	add r3, r5, r0
lbl_80051A6C:
/* 80051A6C 0004E9AC  C0 23 00 04 */	lfs f1, 4(r3)
/* 80051A70 0004E9B0  C0 06 00 04 */	lfs f0, 4(r6)
/* 80051A74 0004E9B4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80051A78 0004E9B8  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80051A7C 0004E9BC  C0 23 00 08 */	lfs f1, 8(r3)
/* 80051A80 0004E9C0  C0 06 00 08 */	lfs f0, 8(r6)
/* 80051A84 0004E9C4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80051A88 0004E9C8  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80051A8C 0004E9CC  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80051A90 0004E9D0  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 80051A94 0004E9D4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80051A98 0004E9D8  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80051A9C 0004E9DC  88 1D 00 04 */	lbz r0, 4(r29)
/* 80051AA0 0004E9E0  90 1F 00 00 */	stw r0, 0(r31)
/* 80051AA4 0004E9E4  38 60 00 01 */	li r3, 1
lbl_80051AA8:
/* 80051AA8 0004E9E8  39 61 00 20 */	addi r11, r1, 0x20
/* 80051AAC 0004E9EC  48 31 07 71 */	bl _restgpr_26
/* 80051AB0 0004E9F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80051AB4 0004E9F4  7C 08 03 A6 */	mtlr r0
/* 80051AB8 0004E9F8  38 21 00 20 */	addi r1, r1, 0x20
/* 80051ABC 0004E9FC  4E 80 00 20 */	blr 

