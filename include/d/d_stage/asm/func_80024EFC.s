/* 80024EFC 00021E3C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80024F00 00021E40  7C 08 02 A6 */ mflr r0
/* 80024F04 00021E44  90 01 00 14 */ stw r0, 0x14(r1)
/* 80024F08 00021E48  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80024F0C 00021E4C  93 C1 00 08 */ stw r30, 8(r1)
/* 80024F10 00021E50  7C 9E 23 78 */ mr r30, r4
/* 80024F14 00021E54  4B FF FE AD */ bl dStage_searchName__FPCc
/* 80024F18 00021E58  28 03 00 00 */ cmplwi r3, 0
/* 80024F1C 00021E5C  40 82 00 14 */ bne lbl_80024F30
/* 80024F20 00021E60  7F C3 F3 78 */ mr r3, r30
/* 80024F24 00021E64  38 80 00 00 */ li r4, 0
/* 80024F28 00021E68  48 2A 95 D9 */ bl free__7JKRHeapFPvP7JKRHeap
/* 80024F2C 00021E6C  48 00 00 54 */ b lbl_80024F80
lbl_80024F30:
/* 80024F30 00021E70  88 03 00 0A */ lbz r0, 0xa(r3)
/* 80024F34 00021E74  98 1E 00 20 */ stb r0, 0x20(r30)
/* 80024F38 00021E78  AB E3 00 08 */ lha r31, 8(r3)
/* 80024F3C 00021E7C  2C 1F 03 0F */ cmpwi r31, 0x30f
/* 80024F40 00021E80  40 82 00 28 */ bne lbl_80024F68
/* 80024F44 00021E84  7F E3 FB 78 */ mr r3, r31
/* 80024F48 00021E88  38 80 00 00 */ li r4, 0
/* 80024F4C 00021E8C  38 A0 00 00 */ li r5, 0
/* 80024F50 00021E90  7F C6 F3 78 */ mr r6, r30
/* 80024F54 00021E94  4B FF 49 51 */ bl fopAcM_FastCreate__FsPFPv_iPvPv
/* 80024F58 00021E98  28 03 00 00 */ cmplwi r3, 0
/* 80024F5C 00021E9C  41 82 00 24 */ beq lbl_80024F80
/* 80024F60 00021EA0  4B FF 4D 1D */ bl fopAcM_delete__FP10fopAc_ac_c
/* 80024F64 00021EA4  48 00 00 1C */ b lbl_80024F80
lbl_80024F68:
/* 80024F68 00021EA8  4B FF C7 8D */ bl fpcLy_CurrentLayer
/* 80024F6C 00021EAC  7F E4 FB 78 */ mr r4, r31
/* 80024F70 00021EB0  38 A0 00 00 */ li r5, 0
/* 80024F74 00021EB4  38 C0 00 00 */ li r6, 0
/* 80024F78 00021EB8  7F C7 F3 78 */ mr r7, r30
/* 80024F7C 00021EBC  4B FF EE 19 */ bl fpcSCtRq_Request__FP11layer_classsPFPvPv_iPvPv
lbl_80024F80:
/* 80024F80 00021EC0  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80024F84 00021EC4  83 C1 00 08 */ lwz r30, 8(r1)
/* 80024F88 00021EC8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80024F8C 00021ECC  7C 08 03 A6 */ mtlr r0
/* 80024F90 00021ED0  38 21 00 10 */ addi r1, r1, 0x10
/* 80024F94 00021ED4  4E 80 00 20 */ blr
