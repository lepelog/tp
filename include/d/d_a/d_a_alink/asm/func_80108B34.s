/* 80108B34 00105A74  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80108B38 00105A78  7C 08 02 A6 */ mflr r0
/* 80108B3C 00105A7C  90 01 00 24 */ stw r0, 0x24(r1)
/* 80108B40 00105A80  39 61 00 20 */ addi r11, r1, 0x20
/* 80108B44 00105A84  48 25 96 99 */ bl _savegpr_29
/* 80108B48 00105A88  7C 7E 1B 78 */ mr r30, r3
/* 80108B4C 00105A8C  38 7E 21 D8 */ addi r3, r30, 0x21d8
/* 80108B50 00105A90  38 80 01 7E */ li r4, 0x17e
/* 80108B54 00105A94  48 05 65 15 */ bl loadData__14daPy_anmHeap_cFUsIdx
/* 80108B58 00105A98  7C 7D 1B 78 */ mr r29, r3
/* 80108B5C 00105A9C  7F C3 F3 78 */ mr r3, r30
/* 80108B60 00105AA0  4B F9 B1 2D */ bl daAlink_c_NS_setItemHeap
/* 80108B64 00105AA4  7C 7F 1B 78 */ mr r31, r3
/* 80108B68 00105AA8  38 7E 07 30 */ addi r3, r30, 0x730
/* 80108B6C 00105AAC  7F A4 EB 78 */ mr r4, r29
/* 80108B70 00105AB0  38 A0 00 00 */ li r5, 0
/* 80108B74 00105AB4  38 C0 00 02 */ li r6, 2
/* 80108B78 00105AB8  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 80108B7C 00105ABC  38 E0 00 00 */ li r7, 0
/* 80108B80 00105AC0  39 00 FF FF */ li r8, -1
/* 80108B84 00105AC4  39 20 00 00 */ li r9, 0
/* 80108B88 00105AC8  4B F0 4C 55 */ bl mDoExt_bckAnm_NS_init
/* 80108B8C 00105ACC  7F C3 F3 78 */ mr r3, r30
/* 80108B90 00105AD0  38 80 03 16 */ li r4, 0x316
/* 80108B94 00105AD4  38 A0 5C 00 */ li r5, 0x5c00
/* 80108B98 00105AD8  4B FB 72 B1 */ bl daAlink_c_NS_loadAramBmd
/* 80108B9C 00105ADC  7C 64 1B 78 */ mr r4, r3
/* 80108BA0 00105AE0  7F C3 F3 78 */ mr r3, r30
/* 80108BA4 00105AE4  3C A0 00 08 */ lis r5, 8
/* 80108BA8 00105AE8  38 C0 00 00 */ li r6, 0
/* 80108BAC 00105AEC  4B F9 B1 D1 */ bl daAlink_c_NS_initModel
/* 80108BB0 00105AF0  90 7E 07 08 */ stw r3, 0x708(r30)
/* 80108BB4 00105AF4  7F C3 F3 78 */ mr r3, r30
/* 80108BB8 00105AF8  38 80 03 18 */ li r4, 0x318
/* 80108BBC 00105AFC  38 A0 38 00 */ li r5, 0x3800
/* 80108BC0 00105B00  4B FB 72 89 */ bl daAlink_c_NS_loadAramBmd
/* 80108BC4 00105B04  7C 64 1B 78 */ mr r4, r3
/* 80108BC8 00105B08  7F C3 F3 78 */ mr r3, r30
/* 80108BCC 00105B0C  3C A0 00 08 */ lis r5, 8
/* 80108BD0 00105B10  38 C0 00 00 */ li r6, 0
/* 80108BD4 00105B14  4B F9 B1 A9 */ bl daAlink_c_NS_initModel
/* 80108BD8 00105B18  90 7E 07 0C */ stw r3, 0x70c(r30)
/* 80108BDC 00105B1C  80 7E 07 08 */ lwz r3, 0x708(r30)
/* 80108BE0 00105B20  80 83 00 04 */ lwz r4, 4(r3)
/* 80108BE4 00105B24  7F C3 F3 78 */ mr r3, r30
/* 80108BE8 00105B28  3C A0 00 08 */ lis r5, 8
/* 80108BEC 00105B2C  38 C0 00 00 */ li r6, 0
/* 80108BF0 00105B30  4B F9 B1 8D */ bl daAlink_c_NS_initModel
/* 80108BF4 00105B34  90 7E 07 10 */ stw r3, 0x710(r30)
/* 80108BF8 00105B38  80 7E 07 0C */ lwz r3, 0x70c(r30)
/* 80108BFC 00105B3C  80 83 00 04 */ lwz r4, 4(r3)
/* 80108C00 00105B40  7F C3 F3 78 */ mr r3, r30
/* 80108C04 00105B44  3C A0 00 08 */ lis r5, 8
/* 80108C08 00105B48  38 C0 00 00 */ li r6, 0
/* 80108C0C 00105B4C  4B F9 B1 71 */ bl daAlink_c_NS_initModel
/* 80108C10 00105B50  90 7E 07 14 */ stw r3, 0x714(r30)
/* 80108C14 00105B54  7F C3 F3 78 */ mr r3, r30
/* 80108C18 00105B58  38 80 03 17 */ li r4, 0x317
/* 80108C1C 00105B5C  38 A0 10 00 */ li r5, 0x1000
/* 80108C20 00105B60  4B FB 72 29 */ bl daAlink_c_NS_loadAramBmd
/* 80108C24 00105B64  90 7E 07 68 */ stw r3, 0x768(r30)
/* 80108C28 00105B68  38 60 00 10 */ li r3, 0x10
/* 80108C2C 00105B6C  48 1C 60 21 */ bl __nw__FUl
/* 80108C30 00105B70  28 03 00 00 */ cmplwi r3, 0
/* 80108C34 00105B74  41 82 00 2C */ beq lbl_80108C60
/* 80108C38 00105B78  3C 80 80 3D */ lis r4, lbl_803CD97C@ha
/* 80108C3C 00105B7C  38 04 D9 7C */ addi r0, r4, lbl_803CD97C@l
/* 80108C40 00105B80  90 03 00 00 */ stw r0, 0(r3)
/* 80108C44 00105B84  38 00 00 00 */ li r0, 0
/* 80108C48 00105B88  90 03 00 04 */ stw r0, 4(r3)
/* 80108C4C 00105B8C  90 03 00 08 */ stw r0, 8(r3)
/* 80108C50 00105B90  90 03 00 0C */ stw r0, 0xc(r3)
/* 80108C54 00105B94  3C 80 80 3B */ lis r4, lbl_803B35EC@ha
/* 80108C58 00105B98  38 04 35 EC */ addi r0, r4, lbl_803B35EC@l
/* 80108C5C 00105B9C  90 03 00 00 */ stw r0, 0(r3)
lbl_80108C60:
/* 80108C60 00105BA0  90 7E 07 70 */ stw r3, 0x770(r30)
/* 80108C64 00105BA4  38 60 00 20 */ li r3, 0x20
/* 80108C68 00105BA8  48 1C 5F E5 */ bl __nw__FUl
/* 80108C6C 00105BAC  7C 60 1B 79 */ or. r0, r3, r3
/* 80108C70 00105BB0  41 82 00 0C */ beq lbl_80108C7C
/* 80108C74 00105BB4  48 1B 5B D1 */ bl Z2SoundObjSimple
/* 80108C78 00105BB8  7C 60 1B 78 */ mr r0, r3
lbl_80108C7C:
/* 80108C7C 00105BBC  90 1E 07 6C */ stw r0, 0x76c(r30)
/* 80108C80 00105BC0  38 60 00 70 */ li r3, 0x70
/* 80108C84 00105BC4  48 1C 5F C9 */ bl __nw__FUl
/* 80108C88 00105BC8  7C 60 1B 79 */ or. r0, r3, r3
/* 80108C8C 00105BCC  41 82 00 0C */ beq lbl_80108C98
/* 80108C90 00105BD0  4B F6 F2 CD */ bl dBgS_ObjLinChk
/* 80108C94 00105BD4  7C 60 1B 78 */ mr r0, r3
lbl_80108C98:
/* 80108C98 00105BD8  90 1E 07 7C */ stw r0, 0x77c(r30)
/* 80108C9C 00105BDC  80 7E 07 7C */ lwz r3, 0x77c(r30)
/* 80108CA0 00105BE0  80 03 00 6C */ lwz r0, 0x6c(r3)
/* 80108CA4 00105BE4  54 00 00 3A */ rlwinm r0, r0, 0, 0, 0x1d
/* 80108CA8 00105BE8  90 03 00 6C */ stw r0, 0x6c(r3)
/* 80108CAC 00105BEC  80 7E 07 7C */ lwz r3, 0x77c(r30)
/* 80108CB0 00105BF0  80 03 00 6C */ lwz r0, 0x6c(r3)
/* 80108CB4 00105BF4  60 00 00 02 */ ori r0, r0, 2
/* 80108CB8 00105BF8  90 03 00 6C */ stw r0, 0x6c(r3)
/* 80108CBC 00105BFC  7F C3 F3 78 */ mr r3, r30
/* 80108CC0 00105C00  38 80 01 7F */ li r4, 0x17f
/* 80108CC4 00105C04  38 A0 08 00 */ li r5, 0x800
/* 80108CC8 00105C08  4B FB 72 3D */ bl daAlink_c_NS_loadAram
/* 80108CCC 00105C0C  7C 64 1B 78 */ mr r4, r3
/* 80108CD0 00105C10  38 7E 07 4C */ addi r3, r30, 0x74c
/* 80108CD4 00105C14  38 A0 00 00 */ li r5, 0
/* 80108CD8 00105C18  38 C0 00 02 */ li r6, 2
/* 80108CDC 00105C1C  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 80108CE0 00105C20  38 E0 00 00 */ li r7, 0
/* 80108CE4 00105C24  39 00 FF FF */ li r8, -1
/* 80108CE8 00105C28  39 20 00 00 */ li r9, 0
/* 80108CEC 00105C2C  4B F0 4A F1 */ bl mDoExt_bckAnm_NS_init
/* 80108CF0 00105C30  7F E3 FB 78 */ mr r3, r31
/* 80108CF4 00105C34  4B F0 64 D9 */ bl mDoExt_setCurrentHeap
/* 80108CF8 00105C38  7F C3 F3 78 */ mr r3, r30
/* 80108CFC 00105C3C  4B FF F9 E1 */ bl daAlink_c_NS_resetHookshotMode
/* 80108D00 00105C40  80 7E 07 70 */ lwz r3, 0x770(r30)
/* 80108D04 00105C44  93 C3 00 0C */ stw r30, 0xc(r3)
/* 80108D08 00105C48  38 00 00 01 */ li r0, 1
/* 80108D0C 00105C4C  98 1E 2F 94 */ stb r0, 0x2f94(r30)
/* 80108D10 00105C50  A0 1E 2F DC */ lhz r0, 0x2fdc(r30)
/* 80108D14 00105C54  28 00 00 47 */ cmplwi r0, 0x47
/* 80108D18 00105C58  40 82 00 0C */ bne lbl_80108D24
/* 80108D1C 00105C5C  38 00 00 06 */ li r0, 6
/* 80108D20 00105C60  98 1E 2F 95 */ stb r0, 0x2f95(r30)
lbl_80108D24:
/* 80108D24 00105C64  38 80 00 00 */ li r4, 0
/* 80108D28 00105C68  B0 9E 30 20 */ sth r4, 0x3020(r30)
/* 80108D2C 00105C6C  B0 9E 30 24 */ sth r4, 0x3024(r30)
/* 80108D30 00105C70  98 9E 12 A3 */ stb r4, 0x12a3(r30)
/* 80108D34 00105C74  80 1E 12 84 */ lwz r0, 0x1284(r30)
/* 80108D38 00105C78  54 00 07 FA */ rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80108D3C 00105C7C  90 1E 12 84 */ stw r0, 0x1284(r30)
/* 80108D40 00105C80  98 9E 12 40 */ stb r4, 0x1240(r30)
/* 80108D44 00105C84  C0 02 93 3C */ lfs f0, lbl_80452D3C-_SDA2_BASE_(r2)
/* 80108D48 00105C88  D0 1E 13 6C */ stfs f0, 0x136c(r30)
/* 80108D4C 00105C8C  38 00 00 08 */ li r0, 8
/* 80108D50 00105C90  98 1E 12 A0 */ stb r0, 0x12a0(r30)
/* 80108D54 00105C94  38 00 40 00 */ li r0, 0x4000
/* 80108D58 00105C98  90 1E 12 3C */ stw r0, 0x123c(r30)
/* 80108D5C 00105C9C  38 00 00 01 */ li r0, 1
/* 80108D60 00105CA0  98 1E 12 A2 */ stb r0, 0x12a2(r30)
/* 80108D64 00105CA4  80 1E 12 2C */ lwz r0, 0x122c(r30)
/* 80108D68 00105CA8  60 00 00 01 */ ori r0, r0, 1
/* 80108D6C 00105CAC  90 1E 12 2C */ stw r0, 0x122c(r30)
/*.global daAlink_hookshotAtHitCallBack*/
/* 80108D70 00105CB0  3C 60 80 11 */ lis r3, daAlink_hookshotAtHitCallBack@ha
/*.global daAlink_hookshotAtHitCallBack*/
/* 80108D74 00105CB4  38 03 85 9C */ addi r0, r3, daAlink_hookshotAtHitCallBack@l
/* 80108D78 00105CB8  90 1E 12 8C */ stw r0, 0x128c(r30)
/* 80108D7C 00105CBC  98 9E 12 A1 */ stb r4, 0x12a1(r30)
/* 80108D80 00105CC0  80 7E 07 6C */ lwz r3, 0x76c(r30)
/* 80108D84 00105CC4  38 9E 37 EC */ addi r4, r30, 0x37ec
/* 80108D88 00105CC8  38 A0 00 01 */ li r5, 1
/* 80108D8C 00105CCC  81 83 00 10 */ lwz r12, 0x10(r3)
/* 80108D90 00105CD0  81 8C 00 14 */ lwz r12, 0x14(r12)
/* 80108D94 00105CD4  7D 89 03 A6 */ mtctr r12
/* 80108D98 00105CD8  4E 80 04 21 */ bctrl
/* 80108D9C 00105CDC  39 61 00 20 */ addi r11, r1, 0x20
/* 80108DA0 00105CE0  48 25 94 89 */ bl _restgpr_29
/* 80108DA4 00105CE4  80 01 00 24 */ lwz r0, 0x24(r1)
/* 80108DA8 00105CE8  7C 08 03 A6 */ mtlr r0
/* 80108DAC 00105CEC  38 21 00 20 */ addi r1, r1, 0x20
/* 80108DB0 00105CF0  4E 80 00 20 */ blr
