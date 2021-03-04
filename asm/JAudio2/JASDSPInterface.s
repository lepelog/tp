.include "macros.inc"

.section .text, "ax" # 8029d958


.global boot__6JASDspFPFPv_v
boot__6JASDspFPFPv_v:
/* 8029D958 0029A898  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029D95C 0029A89C  7C 08 02 A6 */	mflr r0
/* 8029D960 0029A8A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029D964 0029A8A4  88 0D 8D 75 */	lbz r0, lbl_804512F5-_SDA_BASE_(r13)
/* 8029D968 0029A8A8  7C 00 07 75 */	extsb. r0, r0
/* 8029D96C 0029A8AC  40 82 00 10 */	bne lbl_8029D97C
/* 8029D970 0029A8B0  38 00 00 01 */	li r0, 1
/* 8029D974 0029A8B4  98 0D 8D 74 */	stb r0, lbl_804512F4-_SDA_BASE_(r13)
/* 8029D978 0029A8B8  98 0D 8D 75 */	stb r0, lbl_804512F5-_SDA_BASE_(r13)
lbl_8029D97C:
/* 8029D97C 0029A8BC  88 0D 8D 74 */	lbz r0, lbl_804512F4-_SDA_BASE_(r13)
/* 8029D980 0029A8C0  28 00 00 00 */	cmplwi r0, 0
/* 8029D984 0029A8C4  41 82 00 10 */	beq lbl_8029D994
/* 8029D988 0029A8C8  48 00 0D 99 */	bl DspBoot
/* 8029D98C 0029A8CC  38 00 00 00 */	li r0, 0
/* 8029D990 0029A8D0  98 0D 8D 74 */	stb r0, lbl_804512F4-_SDA_BASE_(r13)
lbl_8029D994:
/* 8029D994 0029A8D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029D998 0029A8D8  7C 08 03 A6 */	mtlr r0
/* 8029D99C 0029A8DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8029D9A0 0029A8E0  4E 80 00 20 */	blr 

.global releaseHalt__6JASDspFUl
releaseHalt__6JASDspFUl:
/* 8029D9A4 0029A8E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029D9A8 0029A8E8  7C 08 02 A6 */	mflr r0
/* 8029D9AC 0029A8EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029D9B0 0029A8F0  48 00 0B 31 */	bl DSPReleaseHalt2
/* 8029D9B4 0029A8F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029D9B8 0029A8F8  7C 08 03 A6 */	mtlr r0
/* 8029D9BC 0029A8FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8029D9C0 0029A900  4E 80 00 20 */	blr 

.global finishWork__6JASDspFUs
finishWork__6JASDspFUs:
/* 8029D9C4 0029A904  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029D9C8 0029A908  7C 08 02 A6 */	mflr r0
/* 8029D9CC 0029A90C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029D9D0 0029A910  48 00 0F B1 */	bl DspFinishWork
/* 8029D9D4 0029A914  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029D9D8 0029A918  7C 08 03 A6 */	mtlr r0
/* 8029D9DC 0029A91C  38 21 00 10 */	addi r1, r1, 0x10
/* 8029D9E0 0029A920  4E 80 00 20 */	blr 

.global syncFrame__6JASDspFUlUlUl
syncFrame__6JASDspFUlUlUl:
/* 8029D9E4 0029A924  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029D9E8 0029A928  7C 08 02 A6 */	mflr r0
/* 8029D9EC 0029A92C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029D9F0 0029A930  48 00 14 51 */	bl DsyncFrame2
/* 8029D9F4 0029A934  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029D9F8 0029A938  7C 08 03 A6 */	mtlr r0
/* 8029D9FC 0029A93C  38 21 00 10 */	addi r1, r1, 0x10
/* 8029DA00 0029A940  4E 80 00 20 */	blr 

.global setDSPMixerLevel__6JASDspFf
setDSPMixerLevel__6JASDspFf:
/* 8029DA04 0029A944  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029DA08 0029A948  7C 08 02 A6 */	mflr r0
/* 8029DA0C 0029A94C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029DA10 0029A950  D0 2D 8D 70 */	stfs f1, lbl_804512F0-_SDA_BASE_(r13)
/* 8029DA14 0029A954  C0 02 BD 48 */	lfs f0, lbl_80455748-_SDA2_BASE_(r2)
/* 8029DA18 0029A958  EC 21 00 32 */	fmuls f1, f1, f0
/* 8029DA1C 0029A95C  48 00 0B C5 */	bl DsetMixerLevel
/* 8029DA20 0029A960  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029DA24 0029A964  7C 08 03 A6 */	mtlr r0
/* 8029DA28 0029A968  38 21 00 10 */	addi r1, r1, 0x10
/* 8029DA2C 0029A96C  4E 80 00 20 */	blr 

.global getDSPMixerLevel__6JASDspFv
getDSPMixerLevel__6JASDspFv:
/* 8029DA30 0029A970  C0 2D 8D 70 */	lfs f1, lbl_804512F0-_SDA_BASE_(r13)
/* 8029DA34 0029A974  4E 80 00 20 */	blr 

.global getDSPHandle__6JASDspFi
getDSPHandle__6JASDspFi:
/* 8029DA38 0029A978  80 8D 8D 68 */	lwz r4, lbl_804512E8-_SDA_BASE_(r13)
/* 8029DA3C 0029A97C  1C 03 01 80 */	mulli r0, r3, 0x180
/* 8029DA40 0029A980  7C 64 02 14 */	add r3, r4, r0
/* 8029DA44 0029A984  4E 80 00 20 */	blr 

.global setFilterTable__6JASDspFPsPsUl
setFilterTable__6JASDspFPsPsUl:
/* 8029DA48 0029A988  7C A9 03 A6 */	mtctr r5
/* 8029DA4C 0029A98C  28 05 00 00 */	cmplwi r5, 0
/* 8029DA50 0029A990  4C 81 00 20 */	blelr 
lbl_8029DA54:
/* 8029DA54 0029A994  A8 04 00 00 */	lha r0, 0(r4)
/* 8029DA58 0029A998  B0 03 00 00 */	sth r0, 0(r3)
/* 8029DA5C 0029A99C  38 63 00 02 */	addi r3, r3, 2
/* 8029DA60 0029A9A0  38 84 00 02 */	addi r4, r4, 2
/* 8029DA64 0029A9A4  42 00 FF F0 */	bdnz lbl_8029DA54
/* 8029DA68 0029A9A8  4E 80 00 20 */	blr 

.global flushBuffer__6JASDspFv
flushBuffer__6JASDspFv:
/* 8029DA6C 0029A9AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029DA70 0029A9B0  7C 08 02 A6 */	mflr r0
/* 8029DA74 0029A9B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029DA78 0029A9B8  80 6D 8D 68 */	lwz r3, lbl_804512E8-_SDA_BASE_(r13)
/* 8029DA7C 0029A9BC  38 80 60 00 */	li r4, 0x6000
/* 8029DA80 0029A9C0  48 09 DB 2D */	bl DCFlushRange
/* 8029DA84 0029A9C4  80 6D 8D 6C */	lwz r3, lbl_804512EC-_SDA_BASE_(r13)
/* 8029DA88 0029A9C8  38 80 00 80 */	li r4, 0x80
/* 8029DA8C 0029A9CC  48 09 DB 21 */	bl DCFlushRange
/* 8029DA90 0029A9D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029DA94 0029A9D4  7C 08 03 A6 */	mtlr r0
/* 8029DA98 0029A9D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8029DA9C 0029A9DC  4E 80 00 20 */	blr 

.global invalChannelAll__6JASDspFv
invalChannelAll__6JASDspFv:
/* 8029DAA0 0029A9E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029DAA4 0029A9E4  7C 08 02 A6 */	mflr r0
/* 8029DAA8 0029A9E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029DAAC 0029A9EC  80 6D 8D 68 */	lwz r3, lbl_804512E8-_SDA_BASE_(r13)
/* 8029DAB0 0029A9F0  38 80 60 00 */	li r4, 0x6000
/* 8029DAB4 0029A9F4  48 09 DA CD */	bl DCInvalidateRange
/* 8029DAB8 0029A9F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029DABC 0029A9FC  7C 08 03 A6 */	mtlr r0
/* 8029DAC0 0029AA00  38 21 00 10 */	addi r1, r1, 0x10
/* 8029DAC4 0029AA04  4E 80 00 20 */	blr 

.global initBuffer__6JASDspFv
initBuffer__6JASDspFv:
/* 8029DAC8 0029AA08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029DACC 0029AA0C  7C 08 02 A6 */	mflr r0
/* 8029DAD0 0029AA10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029DAD4 0029AA14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029DAD8 0029AA18  38 60 60 00 */	li r3, 0x6000
/* 8029DADC 0029AA1C  80 8D 8C 90 */	lwz r4, lbl_80451210-_SDA_BASE_(r13)
/* 8029DAE0 0029AA20  38 A0 00 20 */	li r5, 0x20
/* 8029DAE4 0029AA24  48 03 12 2D */	bl __nwa__FUlP7JKRHeapi
/* 8029DAE8 0029AA28  90 6D 8D 68 */	stw r3, lbl_804512E8-_SDA_BASE_(r13)
/* 8029DAEC 0029AA2C  38 60 00 80 */	li r3, 0x80
/* 8029DAF0 0029AA30  80 8D 8C 90 */	lwz r4, lbl_80451210-_SDA_BASE_(r13)
/* 8029DAF4 0029AA34  38 A0 00 20 */	li r5, 0x20
/* 8029DAF8 0029AA38  48 03 12 19 */	bl __nwa__FUlP7JKRHeapi
/* 8029DAFC 0029AA3C  90 6D 8D 6C */	stw r3, lbl_804512EC-_SDA_BASE_(r13)
/* 8029DB00 0029AA40  80 6D 8D 68 */	lwz r3, lbl_804512E8-_SDA_BASE_(r13)
/* 8029DB04 0029AA44  38 80 60 00 */	li r4, 0x6000
/* 8029DB08 0029AA48  4B FF 19 79 */	bl bzero__7JASCalcFPvUl
/* 8029DB0C 0029AA4C  80 6D 8D 6C */	lwz r3, lbl_804512EC-_SDA_BASE_(r13)
/* 8029DB10 0029AA50  38 80 00 80 */	li r4, 0x80
/* 8029DB14 0029AA54  4B FF 19 6D */	bl bzero__7JASCalcFPvUl
/* 8029DB18 0029AA58  3B E0 00 00 */	li r31, 0
/* 8029DB1C 0029AA5C  48 00 00 18 */	b lbl_8029DB34
lbl_8029DB20:
/* 8029DB20 0029AA60  7F E3 FB 78 */	mr r3, r31
/* 8029DB24 0029AA64  38 80 00 00 */	li r4, 0
/* 8029DB28 0029AA68  38 A0 00 00 */	li r5, 0
/* 8029DB2C 0029AA6C  48 00 00 4D */	bl setFXLine__6JASDspFUcPsPQ26JASDsp13FxlineConfig_
/* 8029DB30 0029AA70  3B FF 00 01 */	addi r31, r31, 1
lbl_8029DB34:
/* 8029DB34 0029AA74  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8029DB38 0029AA78  28 00 00 04 */	cmplwi r0, 4
/* 8029DB3C 0029AA7C  41 80 FF E4 */	blt lbl_8029DB20
/* 8029DB40 0029AA80  38 60 00 40 */	li r3, 0x40
/* 8029DB44 0029AA84  80 8D 8D 68 */	lwz r4, lbl_804512E8-_SDA_BASE_(r13)
/* 8029DB48 0029AA88  3C A0 80 3A */	lis r5, lbl_8039B3A0@ha
/* 8029DB4C 0029AA8C  38 A5 B3 A0 */	addi r5, r5, lbl_8039B3A0@l
/* 8029DB50 0029AA90  3C C0 80 3A */	lis r6, lbl_8039B360@ha
/* 8029DB54 0029AA94  38 C6 B3 60 */	addi r6, r6, lbl_8039B360@l
/* 8029DB58 0029AA98  80 ED 8D 6C */	lwz r7, lbl_804512EC-_SDA_BASE_(r13)
/* 8029DB5C 0029AA9C  48 00 0A 05 */	bl DsetupTable
/* 8029DB60 0029AAA0  4B FF FF 0D */	bl flushBuffer__6JASDspFv
/* 8029DB64 0029AAA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029DB68 0029AAA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029DB6C 0029AAAC  7C 08 03 A6 */	mtlr r0
/* 8029DB70 0029AAB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8029DB74 0029AAB4  4E 80 00 20 */	blr 

.global setFXLine__6JASDspFUcPsPQ26JASDsp13FxlineConfig_
setFXLine__6JASDspFUcPsPQ26JASDsp13FxlineConfig_:
/* 8029DB78 0029AAB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029DB7C 0029AABC  7C 08 02 A6 */	mflr r0
/* 8029DB80 0029AAC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029DB84 0029AAC4  39 61 00 20 */	addi r11, r1, 0x20
/* 8029DB88 0029AAC8  48 0C 46 51 */	bl _savegpr_28
/* 8029DB8C 0029AACC  7C 9D 23 78 */	mr r29, r4
/* 8029DB90 0029AAD0  7C BE 2B 78 */	mr r30, r5
/* 8029DB94 0029AAD4  80 8D 8D 6C */	lwz r4, lbl_804512EC-_SDA_BASE_(r13)
/* 8029DB98 0029AAD8  54 60 2C F4 */	rlwinm r0, r3, 5, 0x13, 0x1a
/* 8029DB9C 0029AADC  7F E4 02 14 */	add r31, r4, r0
/* 8029DBA0 0029AAE0  48 09 FB 55 */	bl __RAS_OSDisableInterrupts_begin 
/* 8029DBA4 0029AAE4  90 61 00 08 */	stw r3, 8(r1)
/* 8029DBA8 0029AAE8  38 00 00 00 */	li r0, 0
/* 8029DBAC 0029AAEC  B0 1F 00 00 */	sth r0, 0(r31)
/* 8029DBB0 0029AAF0  28 1E 00 00 */	cmplwi r30, 0
/* 8029DBB4 0029AAF4  41 82 00 54 */	beq lbl_8029DC08
/* 8029DBB8 0029AAF8  A8 1E 00 04 */	lha r0, 4(r30)
/* 8029DBBC 0029AAFC  B0 1F 00 0A */	sth r0, 0xa(r31)
/* 8029DBC0 0029AB00  A0 1E 00 02 */	lhz r0, 2(r30)
/* 8029DBC4 0029AB04  54 00 08 3C */	slwi r0, r0, 1
/* 8029DBC8 0029AB08  3C 60 80 3C */	lis r3, lbl_803C78F0@ha
/* 8029DBCC 0029AB0C  38 63 78 F0 */	addi r3, r3, lbl_803C78F0@l
/* 8029DBD0 0029AB10  7C 03 02 2E */	lhzx r0, r3, r0
/* 8029DBD4 0029AB14  B0 1F 00 08 */	sth r0, 8(r31)
/* 8029DBD8 0029AB18  A8 1E 00 08 */	lha r0, 8(r30)
/* 8029DBDC 0029AB1C  B0 1F 00 0E */	sth r0, 0xe(r31)
/* 8029DBE0 0029AB20  A0 1E 00 06 */	lhz r0, 6(r30)
/* 8029DBE4 0029AB24  54 00 08 3C */	slwi r0, r0, 1
/* 8029DBE8 0029AB28  7C 03 02 2E */	lhzx r0, r3, r0
/* 8029DBEC 0029AB2C  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 8029DBF0 0029AB30  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8029DBF4 0029AB34  B0 1F 00 02 */	sth r0, 2(r31)
/* 8029DBF8 0029AB38  38 7F 00 10 */	addi r3, r31, 0x10
/* 8029DBFC 0029AB3C  38 9E 00 10 */	addi r4, r30, 0x10
/* 8029DC00 0029AB40  38 A0 00 08 */	li r5, 8
/* 8029DC04 0029AB44  4B FF FE 45 */	bl setFilterTable__6JASDspFPsPsUl
lbl_8029DC08:
/* 8029DC08 0029AB48  28 1D 00 00 */	cmplwi r29, 0
/* 8029DC0C 0029AB4C  41 82 00 34 */	beq lbl_8029DC40
/* 8029DC10 0029AB50  28 1E 00 00 */	cmplwi r30, 0
/* 8029DC14 0029AB54  41 82 00 2C */	beq lbl_8029DC40
/* 8029DC18 0029AB58  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8029DC1C 0029AB5C  1F 80 00 A0 */	mulli r28, r0, 0xa0
/* 8029DC20 0029AB60  93 BF 00 04 */	stw r29, 4(r31)
/* 8029DC24 0029AB64  7F A3 EB 78 */	mr r3, r29
/* 8029DC28 0029AB68  7F 84 E3 78 */	mr r4, r28
/* 8029DC2C 0029AB6C  4B FF 18 55 */	bl bzero__7JASCalcFPvUl
/* 8029DC30 0029AB70  7F A3 EB 78 */	mr r3, r29
/* 8029DC34 0029AB74  7F 84 E3 78 */	mr r4, r28
/* 8029DC38 0029AB78  48 09 D9 75 */	bl DCFlushRange
/* 8029DC3C 0029AB7C  48 00 00 18 */	b lbl_8029DC54
lbl_8029DC40:
/* 8029DC40 0029AB80  28 1E 00 00 */	cmplwi r30, 0
/* 8029DC44 0029AB84  41 82 00 0C */	beq lbl_8029DC50
/* 8029DC48 0029AB88  28 1D 00 00 */	cmplwi r29, 0
/* 8029DC4C 0029AB8C  41 82 00 08 */	beq lbl_8029DC54
lbl_8029DC50:
/* 8029DC50 0029AB90  93 BF 00 04 */	stw r29, 4(r31)
lbl_8029DC54:
/* 8029DC54 0029AB94  80 1F 00 04 */	lwz r0, 4(r31)
/* 8029DC58 0029AB98  28 00 00 00 */	cmplwi r0, 0
/* 8029DC5C 0029AB9C  41 82 00 10 */	beq lbl_8029DC6C
/* 8029DC60 0029ABA0  88 1E 00 00 */	lbz r0, 0(r30)
/* 8029DC64 0029ABA4  B0 1F 00 00 */	sth r0, 0(r31)
/* 8029DC68 0029ABA8  48 00 00 0C */	b lbl_8029DC74
lbl_8029DC6C:
/* 8029DC6C 0029ABAC  38 00 00 00 */	li r0, 0
/* 8029DC70 0029ABB0  B0 1F 00 00 */	sth r0, 0(r31)
lbl_8029DC74:
/* 8029DC74 0029ABB4  7F E3 FB 78 */	mr r3, r31
/* 8029DC78 0029ABB8  38 80 00 20 */	li r4, 0x20
/* 8029DC7C 0029ABBC  48 09 D9 31 */	bl DCFlushRange
/* 8029DC80 0029ABC0  80 61 00 08 */	lwz r3, 8(r1)
/* 8029DC84 0029ABC4  48 09 FA 99 */	bl OSRestoreInterrupts
/* 8029DC88 0029ABC8  38 60 00 01 */	li r3, 1
/* 8029DC8C 0029ABCC  39 61 00 20 */	addi r11, r1, 0x20
/* 8029DC90 0029ABD0  48 0C 45 95 */	bl _restgpr_28
/* 8029DC94 0029ABD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029DC98 0029ABD8  7C 08 03 A6 */	mtlr r0
/* 8029DC9C 0029ABDC  38 21 00 20 */	addi r1, r1, 0x20
/* 8029DCA0 0029ABE0  4E 80 00 20 */	blr 

.global init__Q26JASDsp8TChannelFv
init__Q26JASDsp8TChannelFv:
/* 8029DCA4 0029ABE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029DCA8 0029ABE8  7C 08 02 A6 */	mflr r0
/* 8029DCAC 0029ABEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029DCB0 0029ABF0  38 00 00 00 */	li r0, 0
/* 8029DCB4 0029ABF4  B0 03 00 0C */	sth r0, 0xc(r3)
/* 8029DCB8 0029ABF8  B0 03 00 02 */	sth r0, 2(r3)
/* 8029DCBC 0029ABFC  B0 03 01 0A */	sth r0, 0x10a(r3)
/* 8029DCC0 0029AC00  B0 03 00 00 */	sth r0, 0(r3)
/* 8029DCC4 0029AC04  B0 03 00 58 */	sth r0, 0x58(r3)
/* 8029DCC8 0029AC08  90 03 00 68 */	stw r0, 0x68(r3)
/* 8029DCCC 0029AC0C  48 00 02 E5 */	bl init__Q26JASDsp8TChannelFvFilter
/* 8029DCD0 0029AC10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029DCD4 0029AC14  7C 08 03 A6 */	mtlr r0
/* 8029DCD8 0029AC18  38 21 00 10 */	addi r1, r1, 0x10
/* 8029DCDC 0029AC1C  4E 80 00 20 */	blr 

.global playStart__Q26JASDsp8TChannelFv
playStart__Q26JASDsp8TChannelFv:
/* 8029DCE0 0029AC20  38 A0 00 00 */	li r5, 0
/* 8029DCE4 0029AC24  90 A3 01 0C */	stw r5, 0x10c(r3)
/* 8029DCE8 0029AC28  B0 A3 00 60 */	sth r5, 0x60(r3)
/* 8029DCEC 0029AC2C  38 00 00 01 */	li r0, 1
/* 8029DCF0 0029AC30  B0 03 00 08 */	sth r0, 8(r3)
/* 8029DCF4 0029AC34  B0 A3 00 66 */	sth r5, 0x66(r3)
/* 8029DCF8 0029AC38  7C A4 2B 78 */	mr r4, r5
/* 8029DCFC 0029AC3C  38 00 00 04 */	li r0, 4
/* 8029DD00 0029AC40  7C 09 03 A6 */	mtctr r0
lbl_8029DD04:
/* 8029DD04 0029AC44  7C C3 22 14 */	add r6, r3, r4
/* 8029DD08 0029AC48  B0 A6 00 78 */	sth r5, 0x78(r6)
/* 8029DD0C 0029AC4C  B0 A6 00 A8 */	sth r5, 0xa8(r6)
/* 8029DD10 0029AC50  38 84 00 02 */	addi r4, r4, 2
/* 8029DD14 0029AC54  42 00 FF F0 */	bdnz lbl_8029DD04
/* 8029DD18 0029AC58  38 A0 00 00 */	li r5, 0
/* 8029DD1C 0029AC5C  38 80 00 00 */	li r4, 0
/* 8029DD20 0029AC60  38 00 00 14 */	li r0, 0x14
/* 8029DD24 0029AC64  7C 09 03 A6 */	mtctr r0
lbl_8029DD28:
/* 8029DD28 0029AC68  38 04 00 80 */	addi r0, r4, 0x80
/* 8029DD2C 0029AC6C  7C A3 03 2E */	sthx r5, r3, r0
/* 8029DD30 0029AC70  38 84 00 02 */	addi r4, r4, 2
/* 8029DD34 0029AC74  42 00 FF F4 */	bdnz lbl_8029DD28
/* 8029DD38 0029AC78  38 00 00 01 */	li r0, 1
/* 8029DD3C 0029AC7C  B0 03 00 00 */	sth r0, 0(r3)
/* 8029DD40 0029AC80  4E 80 00 20 */	blr 

.global playStop__Q26JASDsp8TChannelFv
playStop__Q26JASDsp8TChannelFv:
/* 8029DD44 0029AC84  38 00 00 00 */	li r0, 0
/* 8029DD48 0029AC88  B0 03 00 00 */	sth r0, 0(r3)
/* 8029DD4C 0029AC8C  4E 80 00 20 */	blr 

.global replyFinishRequest__Q26JASDsp8TChannelFv
replyFinishRequest__Q26JASDsp8TChannelFv:
/* 8029DD50 0029AC90  38 00 00 00 */	li r0, 0
/* 8029DD54 0029AC94  B0 03 00 02 */	sth r0, 2(r3)
/* 8029DD58 0029AC98  B0 03 00 00 */	sth r0, 0(r3)
/* 8029DD5C 0029AC9C  4E 80 00 20 */	blr 

.global forceStop__Q26JASDsp8TChannelFv
forceStop__Q26JASDsp8TChannelFv:
/* 8029DD60 0029ACA0  38 00 00 01 */	li r0, 1
/* 8029DD64 0029ACA4  B0 03 01 0A */	sth r0, 0x10a(r3)
/* 8029DD68 0029ACA8  4E 80 00 20 */	blr 

.global isActive__Q26JASDsp8TChannelCFv
isActive__Q26JASDsp8TChannelCFv:
/* 8029DD6C 0029ACAC  A0 63 00 00 */	lhz r3, 0(r3)
/* 8029DD70 0029ACB0  30 03 FF FF */	addic r0, r3, -1
/* 8029DD74 0029ACB4  7C 60 19 10 */	subfe r3, r0, r3
/* 8029DD78 0029ACB8  4E 80 00 20 */	blr 

.global isFinish__Q26JASDsp8TChannelCFv
isFinish__Q26JASDsp8TChannelCFv:
/* 8029DD7C 0029ACBC  A0 63 00 02 */	lhz r3, 2(r3)
/* 8029DD80 0029ACC0  30 03 FF FF */	addic r0, r3, -1
/* 8029DD84 0029ACC4  7C 60 19 10 */	subfe r3, r0, r3
/* 8029DD88 0029ACC8  4E 80 00 20 */	blr 

.global setWaveInfo__Q26JASDsp8TChannelFRC11JASWaveInfoUlUl
setWaveInfo__Q26JASDsp8TChannelFRC11JASWaveInfoUlUl:
/* 8029DD8C 0029ACCC  90 A3 01 18 */	stw r5, 0x118(r3)
/* 8029DD90 0029ACD0  88 E4 00 00 */	lbz r7, 0(r4)
/* 8029DD94 0029ACD4  38 A2 BD 4C */	addi r5, r2, lbl_8045574C-_SDA2_BASE_
/* 8029DD98 0029ACD8  7C 05 38 AE */	lbzx r0, r5, r7
/* 8029DD9C 0029ACDC  B0 03 00 64 */	sth r0, 0x64(r3)
/* 8029DDA0 0029ACE0  38 A2 BD 54 */	addi r5, r2, lbl_80455754-_SDA2_BASE_
/* 8029DDA4 0029ACE4  7C 05 38 AE */	lbzx r0, r5, r7
/* 8029DDA8 0029ACE8  B0 03 01 00 */	sth r0, 0x100(r3)
/* 8029DDAC 0029ACEC  38 00 00 00 */	li r0, 0
/* 8029DDB0 0029ACF0  90 03 00 68 */	stw r0, 0x68(r3)
/* 8029DDB4 0029ACF4  A0 03 01 00 */	lhz r0, 0x100(r3)
/* 8029DDB8 0029ACF8  28 00 00 04 */	cmplwi r0, 4
/* 8029DDBC 0029ACFC  4D 80 00 20 */	bltlr 
/* 8029DDC0 0029AD00  80 04 00 18 */	lwz r0, 0x18(r4)
/* 8029DDC4 0029AD04  90 03 01 1C */	stw r0, 0x11c(r3)
/* 8029DDC8 0029AD08  88 04 00 02 */	lbz r0, 2(r4)
/* 8029DDCC 0029AD0C  B0 03 01 02 */	sth r0, 0x102(r3)
/* 8029DDD0 0029AD10  A0 03 01 02 */	lhz r0, 0x102(r3)
/* 8029DDD4 0029AD14  28 00 00 00 */	cmplwi r0, 0
/* 8029DDD8 0029AD18  41 82 00 34 */	beq lbl_8029DE0C
/* 8029DDDC 0029AD1C  28 06 00 01 */	cmplwi r6, 1
/* 8029DDE0 0029AD20  40 82 00 08 */	bne lbl_8029DDE8
/* 8029DDE4 0029AD24  80 C4 00 10 */	lwz r6, 0x10(r4)
lbl_8029DDE8:
/* 8029DDE8 0029AD28  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8029DDEC 0029AD2C  90 03 01 10 */	stw r0, 0x110(r3)
/* 8029DDF0 0029AD30  80 04 00 14 */	lwz r0, 0x14(r4)
/* 8029DDF4 0029AD34  90 03 01 14 */	stw r0, 0x114(r3)
/* 8029DDF8 0029AD38  A8 04 00 1C */	lha r0, 0x1c(r4)
/* 8029DDFC 0029AD3C  B0 03 01 04 */	sth r0, 0x104(r3)
/* 8029DE00 0029AD40  A8 04 00 1E */	lha r0, 0x1e(r4)
/* 8029DE04 0029AD44  B0 03 01 06 */	sth r0, 0x106(r3)
/* 8029DE08 0029AD48  48 00 00 0C */	b lbl_8029DE14
lbl_8029DE0C:
/* 8029DE0C 0029AD4C  80 03 01 1C */	lwz r0, 0x11c(r3)
/* 8029DE10 0029AD50  90 03 01 14 */	stw r0, 0x114(r3)
lbl_8029DE14:
/* 8029DE14 0029AD54  28 06 00 00 */	cmplwi r6, 0
/* 8029DE18 0029AD58  41 82 00 70 */	beq lbl_8029DE88
/* 8029DE1C 0029AD5C  80 03 01 14 */	lwz r0, 0x114(r3)
/* 8029DE20 0029AD60  7C 00 30 40 */	cmplw r0, r6
/* 8029DE24 0029AD64  40 81 00 64 */	ble lbl_8029DE88
/* 8029DE28 0029AD68  88 04 00 00 */	lbz r0, 0(r4)
/* 8029DE2C 0029AD6C  2C 00 00 02 */	cmpwi r0, 2
/* 8029DE30 0029AD70  40 80 00 10 */	bge lbl_8029DE40
/* 8029DE34 0029AD74  2C 00 00 00 */	cmpwi r0, 0
/* 8029DE38 0029AD78  40 80 00 14 */	bge lbl_8029DE4C
/* 8029DE3C 0029AD7C  48 00 00 4C */	b lbl_8029DE88
lbl_8029DE40:
/* 8029DE40 0029AD80  2C 00 00 04 */	cmpwi r0, 4
/* 8029DE44 0029AD84  40 80 00 44 */	bge lbl_8029DE88
/* 8029DE48 0029AD88  48 00 00 3C */	b lbl_8029DE84
lbl_8029DE4C:
/* 8029DE4C 0029AD8C  90 C3 00 68 */	stw r6, 0x68(r3)
/* 8029DE50 0029AD90  80 83 01 18 */	lwz r4, 0x118(r3)
/* 8029DE54 0029AD94  A0 03 01 00 */	lhz r0, 0x100(r3)
/* 8029DE58 0029AD98  7C 06 01 D6 */	mullw r0, r6, r0
/* 8029DE5C 0029AD9C  54 00 E1 3E */	srwi r0, r0, 4
/* 8029DE60 0029ADA0  7C 04 02 14 */	add r0, r4, r0
/* 8029DE64 0029ADA4  90 03 01 18 */	stw r0, 0x118(r3)
/* 8029DE68 0029ADA8  80 03 01 10 */	lwz r0, 0x110(r3)
/* 8029DE6C 0029ADAC  7C 06 00 50 */	subf r0, r6, r0
/* 8029DE70 0029ADB0  90 03 01 10 */	stw r0, 0x110(r3)
/* 8029DE74 0029ADB4  80 03 01 14 */	lwz r0, 0x114(r3)
/* 8029DE78 0029ADB8  7C 06 00 50 */	subf r0, r6, r0
/* 8029DE7C 0029ADBC  90 03 01 14 */	stw r0, 0x114(r3)
/* 8029DE80 0029ADC0  48 00 00 08 */	b lbl_8029DE88
lbl_8029DE84:
/* 8029DE84 0029ADC4  90 C3 00 68 */	stw r6, 0x68(r3)
lbl_8029DE88:
/* 8029DE88 0029ADC8  38 80 00 00 */	li r4, 0
/* 8029DE8C 0029ADCC  7C 85 23 78 */	mr r5, r4
/* 8029DE90 0029ADD0  38 00 00 10 */	li r0, 0x10
/* 8029DE94 0029ADD4  7C 09 03 A6 */	mtctr r0
lbl_8029DE98:
/* 8029DE98 0029ADD8  38 04 00 B0 */	addi r0, r4, 0xb0
/* 8029DE9C 0029ADDC  7C A3 03 2E */	sthx r5, r3, r0
/* 8029DEA0 0029ADE0  38 84 00 02 */	addi r4, r4, 2
/* 8029DEA4 0029ADE4  42 00 FF F4 */	bdnz lbl_8029DE98
/* 8029DEA8 0029ADE8  4E 80 00 20 */	blr 

.global setOscInfo__Q26JASDsp8TChannelFUl
setOscInfo__Q26JASDsp8TChannelFUl:
/* 8029DEAC 0029ADEC  38 00 00 00 */	li r0, 0
/* 8029DEB0 0029ADF0  90 03 01 18 */	stw r0, 0x118(r3)
/* 8029DEB4 0029ADF4  38 00 00 10 */	li r0, 0x10
/* 8029DEB8 0029ADF8  B0 03 00 64 */	sth r0, 0x64(r3)
/* 8029DEBC 0029ADFC  B0 83 01 00 */	sth r4, 0x100(r3)
/* 8029DEC0 0029AE00  4E 80 00 20 */	blr 

.global init__Q26JASDsp8TChannelFvAutoMixer
init__Q26JASDsp8TChannelFvAutoMixer:
/* 8029DEC4 0029AE04  A0 03 00 58 */	lhz r0, 0x58(r3)
/* 8029DEC8 0029AE08  28 00 00 00 */	cmplwi r0, 0
/* 8029DECC 0029AE0C  41 82 00 10 */	beq lbl_8029DEDC
/* 8029DED0 0029AE10  A0 03 00 56 */	lhz r0, 0x56(r3)
/* 8029DED4 0029AE14  B0 03 00 54 */	sth r0, 0x54(r3)
/* 8029DED8 0029AE18  4E 80 00 20 */	blr 
lbl_8029DEDC:
/* 8029DEDC 0029AE1C  38 00 00 00 */	li r0, 0
/* 8029DEE0 0029AE20  B0 03 00 54 */	sth r0, 0x54(r3)
/* 8029DEE4 0029AE24  38 00 00 01 */	li r0, 1
/* 8029DEE8 0029AE28  B0 03 00 58 */	sth r0, 0x58(r3)
/* 8029DEEC 0029AE2C  4E 80 00 20 */	blr 

.global setAutoMixer__Q26JASDsp8TChannelFUsUcUcUcUc
setAutoMixer__Q26JASDsp8TChannelFUsUcUcUcUc:
/* 8029DEF0 0029AE30  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 8029DEF4 0029AE34  50 A0 44 2E */	rlwimi r0, r5, 8, 0x10, 0x17
/* 8029DEF8 0029AE38  B0 03 00 50 */	sth r0, 0x50(r3)
/* 8029DEFC 0029AE3C  54 E5 44 2E */	rlwinm r5, r7, 8, 0x10, 0x17
/* 8029DF00 0029AE40  54 E0 0D FC */	rlwinm r0, r7, 1, 0x17, 0x1e
/* 8029DF04 0029AE44  7C A0 03 78 */	or r0, r5, r0
/* 8029DF08 0029AE48  B0 03 00 52 */	sth r0, 0x52(r3)
/* 8029DF0C 0029AE4C  B0 83 00 56 */	sth r4, 0x56(r3)
/* 8029DF10 0029AE50  38 00 00 01 */	li r0, 1
/* 8029DF14 0029AE54  B0 03 00 58 */	sth r0, 0x58(r3)
/* 8029DF18 0029AE58  4E 80 00 20 */	blr 

.global setPitch__Q26JASDsp8TChannelFUs
setPitch__Q26JASDsp8TChannelFUs:
/* 8029DF1C 0029AE5C  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 8029DF20 0029AE60  28 00 7F FF */	cmplwi r0, 0x7fff
/* 8029DF24 0029AE64  41 80 00 08 */	blt lbl_8029DF2C
/* 8029DF28 0029AE68  38 80 7F FF */	li r4, 0x7fff
lbl_8029DF2C:
/* 8029DF2C 0029AE6C  B0 83 00 04 */	sth r4, 4(r3)
/* 8029DF30 0029AE70  4E 80 00 20 */	blr 

.global setMixerInitVolume__Q26JASDsp8TChannelFUcs
setMixerInitVolume__Q26JASDsp8TChannelFUcs:
/* 8029DF34 0029AE74  54 84 1D 78 */	rlwinm r4, r4, 3, 0x15, 0x1c
/* 8029DF38 0029AE78  38 84 00 10 */	addi r4, r4, 0x10
/* 8029DF3C 0029AE7C  7C 83 22 14 */	add r4, r3, r4
/* 8029DF40 0029AE80  B0 A4 00 04 */	sth r5, 4(r4)
/* 8029DF44 0029AE84  B0 A4 00 02 */	sth r5, 2(r4)
/* 8029DF48 0029AE88  38 00 00 00 */	li r0, 0
/* 8029DF4C 0029AE8C  B0 04 00 06 */	sth r0, 6(r4)
/* 8029DF50 0029AE90  4E 80 00 20 */	blr 

.global setMixerVolume__Q26JASDsp8TChannelFUcs
setMixerVolume__Q26JASDsp8TChannelFUcs:
/* 8029DF54 0029AE94  A0 03 01 0A */	lhz r0, 0x10a(r3)
/* 8029DF58 0029AE98  28 00 00 00 */	cmplwi r0, 0
/* 8029DF5C 0029AE9C  4C 82 00 20 */	bnelr 
/* 8029DF60 0029AEA0  54 84 1D 78 */	rlwinm r4, r4, 3, 0x15, 0x1c
/* 8029DF64 0029AEA4  38 84 00 10 */	addi r4, r4, 0x10
/* 8029DF68 0029AEA8  7C 83 22 14 */	add r4, r3, r4
/* 8029DF6C 0029AEAC  B0 A4 00 02 */	sth r5, 2(r4)
/* 8029DF70 0029AEB0  A0 04 00 06 */	lhz r0, 6(r4)
/* 8029DF74 0029AEB4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8029DF78 0029AEB8  B0 04 00 06 */	sth r0, 6(r4)
/* 8029DF7C 0029AEBC  4E 80 00 20 */	blr 

.global setPauseFlag__Q26JASDsp8TChannelFUc
setPauseFlag__Q26JASDsp8TChannelFUc:
/* 8029DF80 0029AEC0  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8029DF84 0029AEC4  B0 03 00 0C */	sth r0, 0xc(r3)
/* 8029DF88 0029AEC8  4E 80 00 20 */	blr 

.global flush__Q26JASDsp8TChannelFv
flush__Q26JASDsp8TChannelFv:
/* 8029DF8C 0029AECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029DF90 0029AED0  7C 08 02 A6 */	mflr r0
/* 8029DF94 0029AED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029DF98 0029AED8  38 80 01 80 */	li r4, 0x180
/* 8029DF9C 0029AEDC  48 09 D6 11 */	bl DCFlushRange
/* 8029DFA0 0029AEE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029DFA4 0029AEE4  7C 08 03 A6 */	mtlr r0
/* 8029DFA8 0029AEE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8029DFAC 0029AEEC  4E 80 00 20 */	blr 

.global init__Q26JASDsp8TChannelFvFilter
init__Q26JASDsp8TChannelFvFilter:
/* 8029DFB0 0029AEF0  38 80 00 00 */	li r4, 0
/* 8029DFB4 0029AEF4  7C 85 23 78 */	mr r5, r4
/* 8029DFB8 0029AEF8  38 00 00 08 */	li r0, 8
/* 8029DFBC 0029AEFC  7C 09 03 A6 */	mtctr r0
lbl_8029DFC0:
/* 8029DFC0 0029AF00  38 04 01 20 */	addi r0, r4, 0x120
/* 8029DFC4 0029AF04  7C A3 03 2E */	sthx r5, r3, r0
/* 8029DFC8 0029AF08  38 84 00 02 */	addi r4, r4, 2
/* 8029DFCC 0029AF0C  42 00 FF F4 */	bdnz lbl_8029DFC0
/* 8029DFD0 0029AF10  38 00 7F FF */	li r0, 0x7fff
/* 8029DFD4 0029AF14  B0 03 01 20 */	sth r0, 0x120(r3)
/* 8029DFD8 0029AF18  38 A0 00 00 */	li r5, 0
/* 8029DFDC 0029AF1C  38 80 00 00 */	li r4, 0
/* 8029DFE0 0029AF20  38 00 00 08 */	li r0, 8
/* 8029DFE4 0029AF24  7C 09 03 A6 */	mtctr r0
lbl_8029DFE8:
/* 8029DFE8 0029AF28  38 04 01 48 */	addi r0, r4, 0x148
/* 8029DFEC 0029AF2C  7C A3 03 2E */	sthx r5, r3, r0
/* 8029DFF0 0029AF30  38 84 00 02 */	addi r4, r4, 2
/* 8029DFF4 0029AF34  42 00 FF F4 */	bdnz lbl_8029DFE8
/* 8029DFF8 0029AF38  38 00 7F FF */	li r0, 0x7fff
/* 8029DFFC 0029AF3C  B0 03 01 48 */	sth r0, 0x148(r3)
/* 8029E000 0029AF40  38 00 00 00 */	li r0, 0
/* 8029E004 0029AF44  B0 03 01 50 */	sth r0, 0x150(r3)
/* 8029E008 0029AF48  4E 80 00 20 */	blr 

.global setFilterMode__Q26JASDsp8TChannelFUs
setFilterMode__Q26JASDsp8TChannelFUs:
/* 8029E00C 0029AF4C  54 85 06 B5 */	rlwinm. r5, r4, 0, 0x1a, 0x1a
/* 8029E010 0029AF50  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 8029E014 0029AF54  41 82 00 14 */	beq lbl_8029E028
/* 8029E018 0029AF58  28 00 00 14 */	cmplwi r0, 0x14
/* 8029E01C 0029AF5C  40 81 00 18 */	ble lbl_8029E034
/* 8029E020 0029AF60  38 00 00 14 */	li r0, 0x14
/* 8029E024 0029AF64  48 00 00 10 */	b lbl_8029E034
lbl_8029E028:
/* 8029E028 0029AF68  28 00 00 18 */	cmplwi r0, 0x18
/* 8029E02C 0029AF6C  40 81 00 08 */	ble lbl_8029E034
/* 8029E030 0029AF70  38 00 00 18 */	li r0, 0x18
lbl_8029E034:
/* 8029E034 0029AF74  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8029E038 0029AF78  7C 05 02 14 */	add r0, r5, r0
/* 8029E03C 0029AF7C  B0 03 01 08 */	sth r0, 0x108(r3)
/* 8029E040 0029AF80  4E 80 00 20 */	blr 

.global setIIRFilterParam__Q26JASDsp8TChannelFPs
setIIRFilterParam__Q26JASDsp8TChannelFPs:
/* 8029E044 0029AF84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E048 0029AF88  7C 08 02 A6 */	mflr r0
/* 8029E04C 0029AF8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E050 0029AF90  38 A0 00 08 */	li r5, 8
/* 8029E054 0029AF94  38 63 01 48 */	addi r3, r3, 0x148
/* 8029E058 0029AF98  4B FF F9 F1 */	bl setFilterTable__6JASDspFPsPsUl
/* 8029E05C 0029AF9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029E060 0029AFA0  7C 08 03 A6 */	mtlr r0
/* 8029E064 0029AFA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E068 0029AFA8  4E 80 00 20 */	blr 

.global setFIR8FilterParam__Q26JASDsp8TChannelFPs
setFIR8FilterParam__Q26JASDsp8TChannelFPs:
/* 8029E06C 0029AFAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E070 0029AFB0  7C 08 02 A6 */	mflr r0
/* 8029E074 0029AFB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E078 0029AFB8  38 A0 00 08 */	li r5, 8
/* 8029E07C 0029AFBC  38 63 01 20 */	addi r3, r3, 0x120
/* 8029E080 0029AFC0  4B FF F9 C9 */	bl setFilterTable__6JASDspFPsPsUl
/* 8029E084 0029AFC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029E088 0029AFC8  7C 08 03 A6 */	mtlr r0
/* 8029E08C 0029AFCC  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E090 0029AFD0  4E 80 00 20 */	blr 

.global setDistFilter__Q26JASDsp8TChannelFs
setDistFilter__Q26JASDsp8TChannelFs:
/* 8029E094 0029AFD4  B0 83 01 50 */	sth r4, 0x150(r3)
/* 8029E098 0029AFD8  4E 80 00 20 */	blr 

.global setBusConnect__Q26JASDsp8TChannelFUcUc
setBusConnect__Q26JASDsp8TChannelFUcUc:
/* 8029E09C 0029AFDC  54 A0 0D FC */	rlwinm r0, r5, 1, 0x17, 0x1e
/* 8029E0A0 0029AFE0  3C A0 80 3A */	lis r5, lbl_8039B8A0@ha
/* 8029E0A4 0029AFE4  38 A5 B8 A0 */	addi r5, r5, lbl_8039B8A0@l
/* 8029E0A8 0029AFE8  7C A5 02 2E */	lhzx r5, r5, r0
/* 8029E0AC 0029AFEC  54 84 1D 78 */	rlwinm r4, r4, 3, 0x15, 0x1c
/* 8029E0B0 0029AFF0  38 04 00 10 */	addi r0, r4, 0x10
/* 8029E0B4 0029AFF4  7C A3 03 2E */	sthx r5, r3, r0
/* 8029E0B8 0029AFF8  4E 80 00 20 */	blr 

.global DSP_CreateMap2
DSP_CreateMap2:
/* 8029E0BC 0029AFFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029E0C0 0029B000  7C 08 02 A6 */	mflr r0
/* 8029E0C4 0029B004  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029E0C8 0029B008  39 61 00 20 */	addi r11, r1, 0x20
/* 8029E0CC 0029B00C  48 0C 41 11 */	bl _savegpr_29
/* 8029E0D0 0029B010  3B E0 00 00 */	li r31, 0
/* 8029E0D4 0029B014  80 8D 8D 68 */	lwz r4, lbl_804512E8-_SDA_BASE_(r13)
/* 8029E0D8 0029B018  54 60 20 36 */	slwi r0, r3, 4
/* 8029E0DC 0029B01C  1C 00 01 80 */	mulli r0, r0, 0x180
/* 8029E0E0 0029B020  7F C4 02 14 */	add r30, r4, r0
/* 8029E0E4 0029B024  3B A0 00 00 */	li r29, 0
lbl_8029E0E8:
/* 8029E0E8 0029B028  57 FF 0C 3C */	rlwinm r31, r31, 1, 0x10, 0x1e
/* 8029E0EC 0029B02C  7F C3 F3 78 */	mr r3, r30
/* 8029E0F0 0029B030  4B FF FC 7D */	bl isActive__Q26JASDsp8TChannelCFv
/* 8029E0F4 0029B034  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8029E0F8 0029B038  41 82 00 0C */	beq lbl_8029E104
/* 8029E0FC 0029B03C  63 E0 00 01 */	ori r0, r31, 1
/* 8029E100 0029B040  54 1F 04 3E */	clrlwi r31, r0, 0x10
lbl_8029E104:
/* 8029E104 0029B044  3B BD 00 01 */	addi r29, r29, 1
/* 8029E108 0029B048  2C 1D 00 10 */	cmpwi r29, 0x10
/* 8029E10C 0029B04C  3B DE 01 80 */	addi r30, r30, 0x180
/* 8029E110 0029B050  41 80 FF D8 */	blt lbl_8029E0E8
/* 8029E114 0029B054  7F E3 FB 78 */	mr r3, r31
/* 8029E118 0029B058  39 61 00 20 */	addi r11, r1, 0x20
/* 8029E11C 0029B05C  48 0C 41 0D */	bl _restgpr_29
/* 8029E120 0029B060  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029E124 0029B064  7C 08 03 A6 */	mtlr r0
/* 8029E128 0029B068  38 21 00 20 */	addi r1, r1, 0x20
/* 8029E12C 0029B06C  4E 80 00 20 */	blr 

