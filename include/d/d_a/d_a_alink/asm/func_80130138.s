/* 80130138 0012D078  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8013013C 0012D07C  7C 08 02 A6 */ mflr r0
/* 80130140 0012D080  90 01 00 14 */ stw r0, 0x14(r1)
/* 80130144 0012D084  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80130148 0012D088  93 C1 00 08 */ stw r30, 8(r1)
/* 8013014C 0012D08C  7C 7E 1B 78 */ mr r30, r3
/* 80130150 0012D090  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 80130154 0012D094  38 7E 33 98 */ addi r3, r30, 0x3398
/* 80130158 0012D098  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8013015C 0012D09C  C0 42 93 24 */ lfs f2, lbl_80452D24-_SDA2_BASE_(r2)
/* 80130160 0012D0A0  48 14 05 E1 */ bl cLib_chaseF__FPfff
/* 80130164 0012D0A4  7F E3 FB 78 */ mr r3, r31
/* 80130168 0012D0A8  48 02 E3 65 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013016C 0012D0AC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80130170 0012D0B0  41 82 00 1C */ beq lbl_8013018C
/* 80130174 0012D0B4  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 80130178 0012D0B8  B0 1E 04 DE */ sth r0, 0x4de(r30)
/* 8013017C 0012D0BC  7F C3 F3 78 */ mr r3, r30
/* 80130180 0012D0C0  38 80 00 00 */ li r4, 0
/* 80130184 0012D0C4  4B FF 99 C1 */ bl daAlink_c_NS_checkNextActionWolf
/* 80130188 0012D0C8  48 00 00 40 */ b lbl_801301C8
lbl_8013018C:
/* 8013018C 0012D0CC  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 80130190 0012D0D0  3C 60 80 39 */ lis r3, lbl_8038F3F0@ha
/* 80130194 0012D0D4  38 63 F3 F0 */ addi r3, r3, lbl_8038F3F0@l
/* 80130198 0012D0D8  C0 03 00 38 */ lfs f0, 0x38(r3)
/* 8013019C 0012D0DC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801301A0 0012D0E0  40 81 00 28 */ ble lbl_801301C8
/* 801301A4 0012D0E4  AB FE 04 DE */ lha r31, 0x4de(r30)
/* 801301A8 0012D0E8  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 801301AC 0012D0EC  B0 1E 04 DE */ sth r0, 0x4de(r30)
/* 801301B0 0012D0F0  7F C3 F3 78 */ mr r3, r30
/* 801301B4 0012D0F4  38 80 00 01 */ li r4, 1
/* 801301B8 0012D0F8  4B FF 99 8D */ bl daAlink_c_NS_checkNextActionWolf
/* 801301BC 0012D0FC  2C 03 00 00 */ cmpwi r3, 0
/* 801301C0 0012D100  40 82 00 08 */ bne lbl_801301C8
/* 801301C4 0012D104  B3 FE 04 DE */ sth r31, 0x4de(r30)
lbl_801301C8:
/* 801301C8 0012D108  38 60 00 01 */ li r3, 1
/* 801301CC 0012D10C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 801301D0 0012D110  83 C1 00 08 */ lwz r30, 8(r1)
/* 801301D4 0012D114  80 01 00 14 */ lwz r0, 0x14(r1)
/* 801301D8 0012D118  7C 08 03 A6 */ mtlr r0
/* 801301DC 0012D11C  38 21 00 10 */ addi r1, r1, 0x10
/* 801301E0 0012D120  4E 80 00 20 */ blr
