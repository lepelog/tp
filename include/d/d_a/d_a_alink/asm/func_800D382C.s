/* 800D382C 000D076C  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800D3830 000D0770  7C 08 02 A6 */ mflr r0
/* 800D3834 000D0774  90 01 00 24 */ stw r0, 0x24(r1)
/* 800D3838 000D0778  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 800D383C 000D077C  93 C1 00 18 */ stw r30, 0x18(r1)
/* 800D3840 000D0780  7C 7E 1B 78 */ mr r30, r3
/* 800D3844 000D0784  4B FE 67 0D */ bl daAlink_c_NS_checkGroundSpecialMode
/* 800D3848 000D0788  2C 03 00 00 */ cmpwi r3, 0
/* 800D384C 000D078C  41 82 00 0C */ beq lbl_800D3858
/* 800D3850 000D0790  38 60 00 01 */ li r3, 1
/* 800D3854 000D0794  48 00 02 70 */ b lbl_800D3AC4
lbl_800D3858:
/* 800D3858 000D0798  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 800D385C 000D079C  7F C3 F3 78 */ mr r3, r30
/* 800D3860 000D07A0  38 80 00 01 */ li r4, 1
/* 800D3864 000D07A4  4B FE 7A 4D */ bl daAlink_c_NS_setBodyAngleXReadyAnime
/* 800D3868 000D07A8  38 7E 33 98 */ addi r3, r30, 0x3398
/* 800D386C 000D07AC  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800D3870 000D07B0  3C 80 80 39 */ lis r4, lbl_8038D6BC@ha
/* 800D3874 000D07B4  38 84 D6 BC */ addi r4, r4, lbl_8038D6BC@l
/* 800D3878 000D07B8  C0 44 00 38 */ lfs f2, 0x38(r4)
/* 800D387C 000D07BC  48 19 CE C5 */ bl cLib_chaseF__FPfff
/* 800D3880 000D07C0  80 1E 05 88 */ lwz r0, 0x588(r30)
/* 800D3884 000D07C4  64 00 08 00 */ oris r0, r0, 0x800
/* 800D3888 000D07C8  90 1E 05 88 */ stw r0, 0x588(r30)
/* 800D388C 000D07CC  7F C3 F3 78 */ mr r3, r30
/* 800D3890 000D07D0  4B FF E8 6D */ bl daAlink_c_NS_setComboReserb
/* 800D3894 000D07D4  7F C3 F3 78 */ mr r3, r30
/* 800D3898 000D07D8  4B FF ED ED */ bl daAlink_c_NS_checkCutTurnCharge_X1_
/* 800D389C 000D07DC  7F C3 F3 78 */ mr r3, r30
/* 800D38A0 000D07E0  4B FF F3 B5 */ bl daAlink_c_NS_checkCutAtnActorChange
/* 800D38A4 000D07E4  88 1E 05 68 */ lbz r0, 0x568(r30)
/* 800D38A8 000D07E8  28 00 00 1A */ cmplwi r0, 0x1a
/* 800D38AC 000D07EC  41 82 00 0C */ beq lbl_800D38B8
/* 800D38B0 000D07F0  28 00 00 20 */ cmplwi r0, 0x20
/* 800D38B4 000D07F4  40 82 00 10 */ bne lbl_800D38C4
lbl_800D38B8:
/* 800D38B8 000D07F8  38 00 00 05 */ li r0, 5
/* 800D38BC 000D07FC  98 1E 2F 99 */ stb r0, 0x2f99(r30)
/* 800D38C0 000D0800  48 00 00 0C */ b lbl_800D38CC
lbl_800D38C4:
/* 800D38C4 000D0804  38 00 00 04 */ li r0, 4
/* 800D38C8 000D0808  98 1E 2F 99 */ stb r0, 0x2f99(r30)
lbl_800D38CC:
/* 800D38CC 000D080C  C0 5F 00 10 */ lfs f2, 0x10(r31)
/* 800D38D0 000D0810  A8 1E 30 0E */ lha r0, 0x300e(r30)
/* 800D38D4 000D0814  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 800D38D8 000D0818  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800D38DC 000D081C  90 01 00 0C */ stw r0, 0xc(r1)
/* 800D38E0 000D0820  3C 60 43 30 */ lis r3, 0x4330
/* 800D38E4 000D0824  90 61 00 08 */ stw r3, 8(r1)
/* 800D38E8 000D0828  C8 01 00 08 */ lfd f0, 8(r1)
/* 800D38EC 000D082C  EC 00 08 28 */ fsubs f0, f0, f1
/* 800D38F0 000D0830  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 800D38F4 000D0834  4C 41 13 82 */ cror 2, 1, 2
/* 800D38F8 000D0838  40 82 00 14 */ bne lbl_800D390C
/* 800D38FC 000D083C  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800D3900 000D0840  60 00 01 00 */ ori r0, r0, 0x100
/* 800D3904 000D0844  90 1E 31 A0 */ stw r0, 0x31a0(r30)
/* 800D3908 000D0848  48 00 00 34 */ b lbl_800D393C
lbl_800D390C:
/* 800D390C 000D084C  A8 1E 30 0C */ lha r0, 0x300c(r30)
/* 800D3910 000D0850  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800D3914 000D0854  90 01 00 0C */ stw r0, 0xc(r1)
/* 800D3918 000D0858  90 61 00 08 */ stw r3, 8(r1)
/* 800D391C 000D085C  C8 01 00 08 */ lfd f0, 8(r1)
/* 800D3920 000D0860  EC 00 08 28 */ fsubs f0, f0, f1
/* 800D3924 000D0864  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 800D3928 000D0868  4C 41 13 82 */ cror 2, 1, 2
/* 800D392C 000D086C  40 82 00 10 */ bne lbl_800D393C
/* 800D3930 000D0870  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800D3934 000D0874  54 00 06 2C */ rlwinm r0, r0, 0, 0x18, 0x16
/* 800D3938 000D0878  90 1E 31 A0 */ stw r0, 0x31a0(r30)
lbl_800D393C:
/* 800D393C 000D087C  7F E3 FB 78 */ mr r3, r31
/* 800D3940 000D0880  48 08 AB 8D */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800D3944 000D0884  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800D3948 000D0888  41 82 00 9C */ beq lbl_800D39E4
/* 800D394C 000D088C  7F C3 F3 78 */ mr r3, r30
/* 800D3950 000D0890  38 80 00 01 */ li r4, 1
/* 800D3954 000D0894  4B FF DA DD */ bl daAlink_c_NS_resetCombo
/* 800D3958 000D0898  A8 1E 30 08 */ lha r0, 0x3008(r30)
/* 800D395C 000D089C  2C 00 00 00 */ cmpwi r0, 0
/* 800D3960 000D08A0  40 81 00 38 */ ble lbl_800D3998
/* 800D3964 000D08A4  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800D3968 000D08A8  C0 1E 34 84 */ lfs f0, 0x3484(r30)
/* 800D396C 000D08AC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D3970 000D08B0  40 81 00 18 */ ble lbl_800D3988
/* 800D3974 000D08B4  7F C3 F3 78 */ mr r3, r30
/* 800D3978 000D08B8  38 80 00 03 */ li r4, 3
/* 800D397C 000D08BC  4B FF ED E5 */ bl daAlink_c_NS_checkCutCancelNextMode
/* 800D3980 000D08C0  2C 03 00 00 */ cmpwi r3, 0
/* 800D3984 000D08C4  40 82 01 3C */ bne lbl_800D3AC0
lbl_800D3988:
/* 800D3988 000D08C8  A8 7E 30 08 */ lha r3, 0x3008(r30)
/* 800D398C 000D08CC  38 03 FF FF */ addi r0, r3, -1
/* 800D3990 000D08D0  B0 1E 30 08 */ sth r0, 0x3008(r30)
/* 800D3994 000D08D4  48 00 01 2C */ b lbl_800D3AC0
lbl_800D3998:
/* 800D3998 000D08D8  80 1E 06 14 */ lwz r0, 0x614(r30)
/* 800D399C 000D08DC  28 00 00 24 */ cmplwi r0, 0x24
/* 800D39A0 000D08E0  41 82 00 0C */ beq lbl_800D39AC
/* 800D39A4 000D08E4  28 00 00 54 */ cmplwi r0, 0x54
/* 800D39A8 000D08E8  40 82 00 1C */ bne lbl_800D39C4
lbl_800D39AC:
/* 800D39AC 000D08EC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800D39B0 000D08F0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800D39B4 000D08F4  38 63 4F F8 */ addi r3, r3, 0x4ff8
/* 800D39B8 000D08F8  80 9E 31 84 */ lwz r4, 0x3184(r30)
/* 800D39BC 000D08FC  4B F7 47 C1 */ bl cutEnd__16dEvent_manager_cFi
/* 800D39C0 000D0900  48 00 01 00 */ b lbl_800D3AC0
lbl_800D39C4:
/* 800D39C4 000D0904  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800D39C8 000D0908  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 800D39CC 000D090C  38 00 00 02 */ li r0, 2
/* 800D39D0 000D0910  98 1E 2F 98 */ stb r0, 0x2f98(r30)
/* 800D39D4 000D0914  7F C3 F3 78 */ mr r3, r30
/* 800D39D8 000D0918  38 80 00 00 */ li r4, 0
/* 800D39DC 000D091C  4B FE 66 F5 */ bl daAlink_c_NS_checkNextAction
/* 800D39E0 000D0920  48 00 00 E0 */ b lbl_800D3AC0
lbl_800D39E4:
/* 800D39E4 000D0924  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800D39E8 000D0928  C0 1E 34 84 */ lfs f0, 0x3484(r30)
/* 800D39EC 000D092C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D39F0 000D0930  40 81 00 18 */ ble lbl_800D3A08
/* 800D39F4 000D0934  7F C3 F3 78 */ mr r3, r30
/* 800D39F8 000D0938  38 80 00 03 */ li r4, 3
/* 800D39FC 000D093C  4B FF ED 65 */ bl daAlink_c_NS_checkCutCancelNextMode
/* 800D3A00 000D0940  2C 03 00 00 */ cmpwi r3, 0
/* 800D3A04 000D0944  40 82 00 BC */ bne lbl_800D3AC0
lbl_800D3A08:
/* 800D3A08 000D0948  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800D3A0C 000D094C  C0 1E 34 84 */ lfs f0, 0x3484(r30)
/* 800D3A10 000D0950  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D3A14 000D0954  40 81 00 10 */ ble lbl_800D3A24
/* 800D3A18 000D0958  7F C3 F3 78 */ mr r3, r30
/* 800D3A1C 000D095C  38 80 00 01 */ li r4, 1
/* 800D3A20 000D0960  4B FF DA 11 */ bl daAlink_c_NS_resetCombo
lbl_800D3A24:
/* 800D3A24 000D0964  7F C3 F3 78 */ mr r3, r30
/* 800D3A28 000D0968  80 9E 31 98 */ lwz r4, 0x3198(r30)
/* 800D3A2C 000D096C  4B FF DF 9D */ bl daAlink_c_NS_changeCutReverseProc
/* 800D3A30 000D0970  2C 03 00 00 */ cmpwi r3, 0
/* 800D3A34 000D0974  41 82 00 0C */ beq lbl_800D3A40
/* 800D3A38 000D0978  38 60 00 01 */ li r3, 1
/* 800D3A3C 000D097C  48 00 00 88 */ b lbl_800D3AC4
lbl_800D3A40:
/* 800D3A40 000D0980  7F C3 F3 78 */ mr r3, r30
/* 800D3A44 000D0984  A8 9E 30 10 */ lha r4, 0x3010(r30)
/* 800D3A48 000D0988  4B FD FC ED */ bl daAlink_c_NS_setShapeAngleToAtnActor
/* 800D3A4C 000D098C  7F C3 F3 78 */ mr r3, r30
/* 800D3A50 000D0990  4B FD FB E1 */ bl daAlink_c_NS_getShapeAngleYAtnActor
/* 800D3A54 000D0994  A8 9E 04 E6 */ lha r4, 0x4e6(r30)
/* 800D3A58 000D0998  48 19 D3 CD */ bl cLib_distanceAngleS__Fss
/* 800D3A5C 000D099C  2C 03 08 00 */ cmpwi r3, 0x800
/* 800D3A60 000D09A0  40 80 00 0C */ bge lbl_800D3A6C
/* 800D3A64 000D09A4  38 00 00 01 */ li r0, 1
/* 800D3A68 000D09A8  B0 1E 30 10 */ sth r0, 0x3010(r30)
lbl_800D3A6C:
/* 800D3A6C 000D09AC  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 800D3A70 000D09B0  B0 1E 04 DE */ sth r0, 0x4de(r30)
/* 800D3A74 000D09B4  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800D3A78 000D09B8  C0 1E 34 78 */ lfs f0, 0x3478(r30)
/* 800D3A7C 000D09BC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D3A80 000D09C0  4C 41 13 82 */ cror 2, 1, 2
/* 800D3A84 000D09C4  40 82 00 3C */ bne lbl_800D3AC0
/* 800D3A88 000D09C8  C0 1E 34 7C */ lfs f0, 0x347c(r30)
/* 800D3A8C 000D09CC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D3A90 000D09D0  40 80 00 30 */ bge lbl_800D3AC0
/* 800D3A94 000D09D4  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800D3A98 000D09D8  54 00 06 73 */ rlwinm. r0, r0, 0, 0x19, 0x19
/* 800D3A9C 000D09DC  40 82 00 18 */ bne lbl_800D3AB4
/* 800D3AA0 000D09E0  7F C3 F3 78 */ mr r3, r30
/* 800D3AA4 000D09E4  80 9E 32 D0 */ lwz r4, 0x32d0(r30)
/* 800D3AA8 000D09E8  4B FE B6 45 */ bl daAlink_c_NS_seStartSwordCut
/* 800D3AAC 000D09EC  C0 1E 34 80 */ lfs f0, 0x3480(r30)
/* 800D3AB0 000D09F0  D0 1E 33 98 */ stfs f0, 0x3398(r30)
lbl_800D3AB4:
/* 800D3AB4 000D09F4  80 1E 05 80 */ lwz r0, 0x580(r30)
/* 800D3AB8 000D09F8  60 00 00 02 */ ori r0, r0, 2
/* 800D3ABC 000D09FC  90 1E 05 80 */ stw r0, 0x580(r30)
lbl_800D3AC0:
/* 800D3AC0 000D0A00  38 60 00 01 */ li r3, 1
lbl_800D3AC4:
/* 800D3AC4 000D0A04  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 800D3AC8 000D0A08  83 C1 00 18 */ lwz r30, 0x18(r1)
/* 800D3ACC 000D0A0C  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800D3AD0 000D0A10  7C 08 03 A6 */ mtlr r0
/* 800D3AD4 000D0A14  38 21 00 20 */ addi r1, r1, 0x20
/* 800D3AD8 000D0A18  4E 80 00 20 */ blr
