/* 8001DE14 0001AD54  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8001DE18 0001AD58  7C 08 02 A6 */ mflr r0
/* 8001DE1C 0001AD5C  90 01 00 14 */ stw r0, 0x14(r1)
/* 8001DE20 0001AD60  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8001DE24 0001AD64  93 C1 00 08 */ stw r30, 8(r1)
/* 8001DE28 0001AD68  3C 60 80 3F */ lis r3, lbl_803F1C00@ha
/* 8001DE2C 0001AD6C  3B E3 1C 00 */ addi r31, r3, lbl_803F1C00@l
/* 8001DE30 0001AD70  38 6D 87 4C */ addi r3, r13, 0x80450CCC - 0x80458580 /*SDA HACK; original: lbl_80450CCC-_SDA_BASE_*/
/*.global __dt__5l_HIOFv*/
/* 8001DE34 0001AD74  3C 80 80 02 */ lis r4, __dt__5l_HIOFv@ha
/*.global __dt__5l_HIOFv*/
/* 8001DE38 0001AD78  38 84 E0 98 */ addi r4, r4, __dt__5l_HIOFv@l
/* 8001DE3C 0001AD7C  38 BF 00 00 */ addi r5, r31, 0
/* 8001DE40 0001AD80  48 34 3D E5 */ bl func_80361C24
/* 8001DE44 0001AD84  38 7F 00 48 */ addi r3, r31, 0x48
/* 8001DE48 0001AD88  80 03 00 4C */ lwz r0, 0x4c(r3)
/* 8001DE4C 0001AD8C  54 00 00 C2 */ rlwinm r0, r0, 0, 3, 1
/* 8001DE50 0001AD90  90 03 00 4C */ stw r0, 0x4c(r3)
/* 8001DE54 0001AD94  48 05 A1 09 */ bl dBgS_ObjLinChk
/* 8001DE58 0001AD98  3C 80 80 07 */ lis r4, __dt__14dBgS_ObjLinChkFv@ha
/* 8001DE5C 0001AD9C  38 84 7F B8 */ addi r4, r4, __dt__14dBgS_ObjLinChkFv@l
/* 8001DE60 0001ADA0  38 BF 00 3C */ addi r5, r31, 0x3c
/* 8001DE64 0001ADA4  48 34 3D C1 */ bl func_80361C24
/* 8001DE68 0001ADA8  3B DF 00 C4 */ addi r30, r31, 0xc4
/* 8001DE6C 0001ADAC  7F C3 F3 78 */ mr r3, r30
/* 8001DE70 0001ADB0  48 05 97 0D */ bl dBgS_GndChk
/* 8001DE74 0001ADB4  3C 60 80 3A */ lis r3, lbl_803A382C@ha
/* 8001DE78 0001ADB8  38 63 38 2C */ addi r3, r3, lbl_803A382C@l
/* 8001DE7C 0001ADBC  90 7E 00 10 */ stw r3, 0x10(r30)
/* 8001DE80 0001ADC0  38 03 00 0C */ addi r0, r3, 0xc
/* 8001DE84 0001ADC4  90 1E 00 20 */ stw r0, 0x20(r30)
/* 8001DE88 0001ADC8  38 03 00 18 */ addi r0, r3, 0x18
/* 8001DE8C 0001ADCC  90 1E 00 3C */ stw r0, 0x3c(r30)
/* 8001DE90 0001ADD0  38 03 00 24 */ addi r0, r3, 0x24
/* 8001DE94 0001ADD4  90 1E 00 4C */ stw r0, 0x4c(r30)
/* 8001DE98 0001ADD8  38 7E 00 3C */ addi r3, r30, 0x3c
/* 8001DE9C 0001ADDC  48 05 AF CD */ bl SetObj__16dBgS_PolyPassChkFv
/* 8001DEA0 0001ADE0  7F C3 F3 78 */ mr r3, r30
/*.global __dt__14dBgS_ObjGndChkFv*/
/* 8001DEA4 0001ADE4  3C 80 80 02 */ lis r4, __dt__14dBgS_ObjGndChkFv@ha
/*.global __dt__14dBgS_ObjGndChkFv*/
/* 8001DEA8 0001ADE8  38 84 E0 20 */ addi r4, r4, __dt__14dBgS_ObjGndChkFv@l
/* 8001DEAC 0001ADEC  38 BF 00 B8 */ addi r5, r31, 0xb8
/* 8001DEB0 0001ADF0  48 34 3D 75 */ bl func_80361C24
/* 8001DEB4 0001ADF4  3B DF 01 24 */ addi r30, r31, 0x124
/* 8001DEB8 0001ADF8  7F C3 F3 78 */ mr r3, r30
/* 8001DEBC 0001ADFC  48 05 B1 39 */ bl dBgS_RoofChk
/* 8001DEC0 0001AE00  3C 60 80 3A */ lis r3, lbl_803A37CC@ha
/* 8001DEC4 0001AE04  38 63 37 CC */ addi r3, r3, lbl_803A37CC@l
/* 8001DEC8 0001AE08  90 7E 00 0C */ stw r3, 0xc(r30)
/* 8001DECC 0001AE0C  38 03 00 0C */ addi r0, r3, 0xc
/* 8001DED0 0001AE10  90 1E 00 20 */ stw r0, 0x20(r30)
/* 8001DED4 0001AE14  38 03 00 18 */ addi r0, r3, 0x18
/* 8001DED8 0001AE18  90 1E 00 24 */ stw r0, 0x24(r30)
/* 8001DEDC 0001AE1C  38 03 00 24 */ addi r0, r3, 0x24
/* 8001DEE0 0001AE20  90 1E 00 34 */ stw r0, 0x34(r30)
/* 8001DEE4 0001AE24  38 7E 00 24 */ addi r3, r30, 0x24
/* 8001DEE8 0001AE28  48 05 AF 81 */ bl SetObj__16dBgS_PolyPassChkFv
/* 8001DEEC 0001AE2C  7F C3 F3 78 */ mr r3, r30
/*.global __dt__15dBgS_ObjRoofChkFv*/
/* 8001DEF0 0001AE30  3C 80 80 02 */ lis r4, __dt__15dBgS_ObjRoofChkFv@ha
/*.global __dt__15dBgS_ObjRoofChkFv*/
/* 8001DEF4 0001AE34  38 84 DF A8 */ addi r4, r4, __dt__15dBgS_ObjRoofChkFv@l
/* 8001DEF8 0001AE38  38 BF 01 18 */ addi r5, r31, 0x118
/* 8001DEFC 0001AE3C  48 34 3D 29 */ bl func_80361C24
/* 8001DF00 0001AE40  38 7F 01 80 */ addi r3, r31, 0x180
/* 8001DF04 0001AE44  48 05 B2 61 */ bl dBgS_WtrChk
/*.global __dt__11dBgS_WtrChkFv*/
/* 8001DF08 0001AE48  3C 80 80 02 */ lis r4, __dt__11dBgS_WtrChkFv@ha
/*.global __dt__11dBgS_WtrChkFv*/
/* 8001DF0C 0001AE4C  38 84 DF 30 */ addi r4, r4, __dt__11dBgS_WtrChkFv@l
/* 8001DF10 0001AE50  38 BF 01 74 */ addi r5, r31, 0x174
/* 8001DF14 0001AE54  48 34 3D 11 */ bl func_80361C24
/* 8001DF18 0001AE58  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8001DF1C 0001AE5C  83 C1 00 08 */ lwz r30, 8(r1)
/* 8001DF20 0001AE60  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8001DF24 0001AE64  7C 08 03 A6 */ mtlr r0
/* 8001DF28 0001AE68  38 21 00 10 */ addi r1, r1, 0x10
/* 8001DF2C 0001AE6C  4E 80 00 20 */ blr