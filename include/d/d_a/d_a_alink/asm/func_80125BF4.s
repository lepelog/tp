/* 80125BF4 00122B34  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80125BF8 00122B38  7C 08 02 A6 */ mflr r0
/* 80125BFC 00122B3C  90 01 00 24 */ stw r0, 0x24(r1)
/* 80125C00 00122B40  39 61 00 20 */ addi r11, r1, 0x20
/* 80125C04 00122B44  48 23 C5 D5 */ bl _savegpr_28
/* 80125C08 00122B48  7C 7F 1B 78 */ mr r31, r3
/* 80125C0C 00122B4C  3C 60 80 43 */ lis r3, lbl_80434AC8@ha
/* 80125C10 00122B50  38 63 4A C8 */ addi r3, r3, lbl_80434AC8@l
/* 80125C14 00122B54  48 1E AB 29 */ bl reinitGX__6J3DSysFv
/* 80125C18 00122B58  38 60 00 00 */ li r3, 0
/* 80125C1C 00122B5C  48 23 94 B9 */ bl GXSetNumIndStages
/* 80125C20 00122B60  80 1F 00 20 */ lwz r0, 0x20(r31)
/* 80125C24 00122B64  38 6D 81 24 */ addi r3, r13, 0x804506A4 - 0x80458580 /*SDA HACK; original: lbl_804506A4-_SDA_BASE_*/
/* 80125C28 00122B68  98 03 00 03 */ stb r0, 3(r3)
/* 80125C2C 00122B6C  3C 60 80 42 */ lis r3, lbl_804256CC@ha
/* 80125C30 00122B70  38 63 56 CC */ addi r3, r3, lbl_804256CC@l
/* 80125C34 00122B74  80 9F 00 10 */ lwz r4, 0x10(r31)
/* 80125C38 00122B78  80 04 00 1C */ lwz r0, 0x1c(r4)
/* 80125C3C 00122B7C  7C 84 02 14 */ add r4, r4, r0
/* 80125C40 00122B80  38 A0 00 10 */ li r5, 0x10
/* 80125C44 00122B84  38 C0 00 04 */ li r6, 4
/* 80125C48 00122B88  38 E0 00 00 */ li r7, 0
/* 80125C4C 00122B8C  39 00 00 00 */ li r8, 0
/* 80125C50 00122B90  39 20 00 00 */ li r9, 0
/* 80125C54 00122B94  39 40 00 00 */ li r10, 0
/* 80125C58 00122B98  48 23 81 E9 */ bl GXInitTexObj
/* 80125C5C 00122B9C  3C 60 80 42 */ lis r3, lbl_804256CC@ha
/* 80125C60 00122BA0  38 63 56 CC */ addi r3, r3, lbl_804256CC@l
/* 80125C64 00122BA4  38 80 00 01 */ li r4, 1
/* 80125C68 00122BA8  38 A0 00 01 */ li r5, 1
/* 80125C6C 00122BAC  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80125C70 00122BB0  FC 40 08 90 */ fmr f2, f1
/* 80125C74 00122BB4  FC 60 08 90 */ fmr f3, f1
/* 80125C78 00122BB8  38 C0 00 00 */ li r6, 0
/* 80125C7C 00122BBC  38 E0 00 00 */ li r7, 0
/* 80125C80 00122BC0  39 00 00 00 */ li r8, 0
/* 80125C84 00122BC4  48 23 84 51 */ bl GXInitTexObjLOD
/* 80125C88 00122BC8  3C 60 80 42 */ lis r3, lbl_804256CC@ha
/* 80125C8C 00122BCC  38 63 56 CC */ addi r3, r3, lbl_804256CC@l
/* 80125C90 00122BD0  38 80 00 00 */ li r4, 0
/* 80125C94 00122BD4  48 23 87 81 */ bl GXLoadTexObj
/* 80125C98 00122BD8  38 60 00 00 */ li r3, 0
/* 80125C9C 00122BDC  38 80 00 09 */ li r4, 9
/* 80125CA0 00122BE0  38 A0 00 01 */ li r5, 1
/* 80125CA4 00122BE4  38 C0 00 04 */ li r6, 4
/* 80125CA8 00122BE8  38 E0 00 00 */ li r7, 0
/* 80125CAC 00122BEC  48 23 59 19 */ bl GXSetVtxAttrFmt
/* 80125CB0 00122BF0  38 60 00 00 */ li r3, 0
/* 80125CB4 00122BF4  38 80 00 0D */ li r4, 0xd
/* 80125CB8 00122BF8  38 A0 00 01 */ li r5, 1
/* 80125CBC 00122BFC  38 C0 00 03 */ li r6, 3
/* 80125CC0 00122C00  38 E0 00 08 */ li r7, 8
/* 80125CC4 00122C04  48 23 59 01 */ bl GXSetVtxAttrFmt
/* 80125CC8 00122C08  48 23 58 C5 */ bl GXClearVtxDesc
/* 80125CCC 00122C0C  38 60 00 09 */ li r3, 9
/* 80125CD0 00122C10  38 80 00 01 */ li r4, 1
/* 80125CD4 00122C14  48 23 51 E5 */ bl GXSetVtxDesc
/* 80125CD8 00122C18  38 60 00 0D */ li r3, 0xd
/* 80125CDC 00122C1C  38 80 00 01 */ li r4, 1
/* 80125CE0 00122C20  48 23 51 D9 */ bl GXSetVtxDesc
/* 80125CE4 00122C24  38 60 00 00 */ li r3, 0
/* 80125CE8 00122C28  48 23 7E 49 */ bl GXSetNumChans
/* 80125CEC 00122C2C  80 0D 81 24 */ lwz r0, lbl_804506A4-_SDA_BASE_(r13)
/* 80125CF0 00122C30  90 01 00 08 */ stw r0, 8(r1)
/* 80125CF4 00122C34  38 60 00 01 */ li r3, 1
/* 80125CF8 00122C38  38 81 00 08 */ addi r4, r1, 8
/* 80125CFC 00122C3C  48 23 96 81 */ bl GXSetTevColor
/* 80125D00 00122C40  38 60 00 01 */ li r3, 1
/* 80125D04 00122C44  48 23 60 F9 */ bl GXSetNumTexGens
/* 80125D08 00122C48  38 60 00 00 */ li r3, 0
/* 80125D0C 00122C4C  38 80 00 01 */ li r4, 1
/* 80125D10 00122C50  38 A0 00 04 */ li r5, 4
/* 80125D14 00122C54  38 C0 00 3C */ li r6, 0x3c
/* 80125D18 00122C58  38 E0 00 00 */ li r7, 0
/* 80125D1C 00122C5C  39 00 00 7D */ li r8, 0x7d
/* 80125D20 00122C60  48 23 5E 5D */ bl GXSetTexCoordGen2
/* 80125D24 00122C64  38 60 00 01 */ li r3, 1
/* 80125D28 00122C68  48 23 9B 69 */ bl GXSetNumTevStages
/* 80125D2C 00122C6C  38 60 00 00 */ li r3, 0
/* 80125D30 00122C70  38 80 00 00 */ li r4, 0
/* 80125D34 00122C74  38 A0 00 00 */ li r5, 0
/* 80125D38 00122C78  38 C0 00 FF */ li r6, 0xff
/* 80125D3C 00122C7C  48 23 99 B9 */ bl GXSetTevOrder
/* 80125D40 00122C80  38 60 00 00 */ li r3, 0
/* 80125D44 00122C84  38 80 00 0F */ li r4, 0xf
/* 80125D48 00122C88  38 A0 00 0F */ li r5, 0xf
/* 80125D4C 00122C8C  38 C0 00 0F */ li r6, 0xf
/* 80125D50 00122C90  38 E0 00 02 */ li r7, 2
/* 80125D54 00122C94  48 23 94 D1 */ bl GXSetTevColorIn
/* 80125D58 00122C98  38 60 00 00 */ li r3, 0
/* 80125D5C 00122C9C  38 80 00 00 */ li r4, 0
/* 80125D60 00122CA0  38 A0 00 00 */ li r5, 0
/* 80125D64 00122CA4  38 C0 00 00 */ li r6, 0
/* 80125D68 00122CA8  38 E0 00 01 */ li r7, 1
/* 80125D6C 00122CAC  39 00 00 00 */ li r8, 0
/* 80125D70 00122CB0  48 23 95 3D */ bl GXSetTevColorOp
/* 80125D74 00122CB4  38 60 00 00 */ li r3, 0
/* 80125D78 00122CB8  38 80 00 07 */ li r4, 7
/* 80125D7C 00122CBC  38 A0 00 01 */ li r5, 1
/* 80125D80 00122CC0  38 C0 00 04 */ li r6, 4
/* 80125D84 00122CC4  38 E0 00 07 */ li r7, 7
/* 80125D88 00122CC8  48 23 94 E1 */ bl GXSetTevAlphaIn
/* 80125D8C 00122CCC  38 60 00 00 */ li r3, 0
/* 80125D90 00122CD0  38 80 00 00 */ li r4, 0
/* 80125D94 00122CD4  38 A0 00 00 */ li r5, 0
/* 80125D98 00122CD8  38 C0 00 00 */ li r6, 0
/* 80125D9C 00122CDC  38 E0 00 01 */ li r7, 1
/* 80125DA0 00122CE0  39 00 00 00 */ li r8, 0
/* 80125DA4 00122CE4  48 23 95 71 */ bl GXSetTevAlphaOp
/* 80125DA8 00122CE8  3C 60 80 43 */ lis r3, lbl_80434AC8@ha
/* 80125DAC 00122CEC  38 63 4A C8 */ addi r3, r3, lbl_80434AC8@l
/* 80125DB0 00122CF0  38 80 00 00 */ li r4, 0
/* 80125DB4 00122CF4  48 23 A4 99 */ bl GXLoadPosMtxImm
/* 80125DB8 00122CF8  38 60 00 00 */ li r3, 0
/* 80125DBC 00122CFC  48 23 A5 31 */ bl GXSetCurrentMtx
/* 80125DC0 00122D00  38 60 00 01 */ li r3, 1
/* 80125DC4 00122D04  38 80 00 04 */ li r4, 4
/* 80125DC8 00122D08  38 A0 00 05 */ li r5, 5
/* 80125DCC 00122D0C  38 C0 00 0F */ li r6, 0xf
/* 80125DD0 00122D10  48 23 9E 21 */ bl GXSetBlendMode
/* 80125DD4 00122D14  38 60 00 00 */ li r3, 0
/* 80125DD8 00122D18  48 23 6B AD */ bl GXSetCullMode
/* 80125DDC 00122D1C  38 60 00 01 */ li r3, 1
/* 80125DE0 00122D20  38 80 00 03 */ li r4, 3
/* 80125DE4 00122D24  38 A0 00 00 */ li r5, 0
/* 80125DE8 00122D28  48 23 9E B5 */ bl GXSetZMode
/* 80125DEC 00122D2C  38 60 00 04 */ li r3, 4
/* 80125DF0 00122D30  38 80 00 00 */ li r4, 0
/* 80125DF4 00122D34  38 A0 00 01 */ li r5, 1
/* 80125DF8 00122D38  38 C0 00 04 */ li r6, 4
/* 80125DFC 00122D3C  38 E0 00 00 */ li r7, 0
/* 80125E00 00122D40  48 23 98 25 */ bl GXSetAlphaCompare
/* 80125E04 00122D44  38 80 00 FF */ li r4, 0xff
/* 80125E08 00122D48  80 BF 00 14 */ lwz r5, 0x14(r31)
/* 80125E0C 00122D4C  7C A3 0E 70 */ srawi r3, r5, 1
/* 80125E10 00122D50  38 03 00 01 */ addi r0, r3, 1
/* 80125E14 00122D54  7F C4 03 D6 */ divw r30, r4, r0
/* 80125E18 00122D58  7F DD 07 34 */ extsh r29, r30
/* 80125E1C 00122D5C  3B 80 00 00 */ li r28, 0
/* 80125E20 00122D60  38 60 00 80 */ li r3, 0x80
/* 80125E24 00122D64  38 80 00 00 */ li r4, 0
/* 80125E28 00122D68  54 A5 10 3A */ slwi r5, r5, 2
/* 80125E2C 00122D6C  38 05 00 04 */ addi r0, r5, 4
/* 80125E30 00122D70  54 05 04 3E */ clrlwi r5, r0, 0x10
/* 80125E34 00122D74  48 23 69 31 */ bl GXBegin
/* 80125E38 00122D78  80 9F 00 14 */ lwz r4, 0x14(r31)
/* 80125E3C 00122D7C  3C A0 CC 01 */ lis r5, 0xcc01
/* 80125E40 00122D80  1C 64 00 0C */ mulli r3, r4, 0xc
/* 80125E44 00122D84  38 04 00 01 */ addi r0, r4, 1
/* 80125E48 00122D88  7C 09 03 A6 */ mtctr r0
/* 80125E4C 00122D8C  2C 04 00 00 */ cmpwi r4, 0
/* 80125E50 00122D90  41 80 00 A4 */ blt lbl_80125EF4
lbl_80125E54:
/* 80125E54 00122D94  7C DF 1A 14 */ add r6, r31, r3
/* 80125E58 00122D98  C0 46 00 40 */ lfs f2, 0x40(r6)
/* 80125E5C 00122D9C  C0 26 00 3C */ lfs f1, 0x3c(r6)
/* 80125E60 00122DA0  C0 06 00 38 */ lfs f0, 0x38(r6)
/* 80125E64 00122DA4  D0 05 80 00 */ stfs f0, -0x8000(r5)
/* 80125E68 00122DA8  D0 25 80 00 */ stfs f1, -0x8000(r5)
/* 80125E6C 00122DAC  D0 45 80 00 */ stfs f2, -0x8000(r5)
/* 80125E70 00122DB0  B3 A5 80 00 */ sth r29, -0x8000(r5)
/* 80125E74 00122DB4  38 80 00 00 */ li r4, 0
/* 80125E78 00122DB8  B0 85 80 00 */ sth r4, -0x8000(r5)
/* 80125E7C 00122DBC  C0 46 03 10 */ lfs f2, 0x310(r6)
/* 80125E80 00122DC0  C0 26 03 0C */ lfs f1, 0x30c(r6)
/* 80125E84 00122DC4  C0 06 03 08 */ lfs f0, 0x308(r6)
/* 80125E88 00122DC8  D0 05 80 00 */ stfs f0, -0x8000(r5)
/* 80125E8C 00122DCC  D0 25 80 00 */ stfs f1, -0x8000(r5)
/* 80125E90 00122DD0  D0 45 80 00 */ stfs f2, -0x8000(r5)
/* 80125E94 00122DD4  B3 A5 80 00 */ sth r29, -0x8000(r5)
/* 80125E98 00122DD8  38 00 00 FF */ li r0, 0xff
/* 80125E9C 00122DDC  B0 05 80 00 */ sth r0, -0x8000(r5)
/* 80125EA0 00122DE0  C0 46 03 1C */ lfs f2, 0x31c(r6)
/* 80125EA4 00122DE4  C0 26 03 18 */ lfs f1, 0x318(r6)
/* 80125EA8 00122DE8  C0 06 03 14 */ lfs f0, 0x314(r6)
/* 80125EAC 00122DEC  D0 05 80 00 */ stfs f0, -0x8000(r5)
/* 80125EB0 00122DF0  D0 25 80 00 */ stfs f1, -0x8000(r5)
/* 80125EB4 00122DF4  D0 45 80 00 */ stfs f2, -0x8000(r5)
/* 80125EB8 00122DF8  B3 85 80 00 */ sth r28, -0x8000(r5)
/* 80125EBC 00122DFC  B0 05 80 00 */ sth r0, -0x8000(r5)
/* 80125EC0 00122E00  C0 46 00 4C */ lfs f2, 0x4c(r6)
/* 80125EC4 00122E04  C0 26 00 48 */ lfs f1, 0x48(r6)
/* 80125EC8 00122E08  C0 06 00 44 */ lfs f0, 0x44(r6)
/* 80125ECC 00122E0C  D0 05 80 00 */ stfs f0, -0x8000(r5)
/* 80125ED0 00122E10  D0 25 80 00 */ stfs f1, -0x8000(r5)
/* 80125ED4 00122E14  D0 45 80 00 */ stfs f2, -0x8000(r5)
/* 80125ED8 00122E18  B3 85 80 00 */ sth r28, -0x8000(r5)
/* 80125EDC 00122E1C  B0 85 80 00 */ sth r4, -0x8000(r5)
/* 80125EE0 00122E20  7F BC EB 78 */ mr r28, r29
/* 80125EE4 00122E24  7C 1D F2 14 */ add r0, r29, r30
/* 80125EE8 00122E28  7C 1D 07 34 */ extsh r29, r0
/* 80125EEC 00122E2C  38 63 FF F4 */ addi r3, r3, -12
/* 80125EF0 00122E30  42 00 FF 64 */ bdnz lbl_80125E54
lbl_80125EF4:
/* 80125EF4 00122E34  38 00 00 00 */ li r0, 0
/* 80125EF8 00122E38  90 0D 90 50 */ stw r0, lbl_804515D0-_SDA_BASE_(r13)
/* 80125EFC 00122E3C  39 61 00 20 */ addi r11, r1, 0x20
/* 80125F00 00122E40  48 23 C3 25 */ bl _restgpr_28
/* 80125F04 00122E44  80 01 00 24 */ lwz r0, 0x24(r1)
/* 80125F08 00122E48  7C 08 03 A6 */ mtlr r0
/* 80125F0C 00122E4C  38 21 00 20 */ addi r1, r1, 0x20
/* 80125F10 00122E50  4E 80 00 20 */ blr
