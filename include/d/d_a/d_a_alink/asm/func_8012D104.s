/* 8012D104 0012A044  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8012D108 0012A048  7C 08 02 A6 */ mflr r0
/* 8012D10C 0012A04C  90 01 00 14 */ stw r0, 0x14(r1)
/* 8012D110 0012A050  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8012D114 0012A054  93 C1 00 08 */ stw r30, 8(r1)
/* 8012D118 0012A058  7C 7E 1B 78 */ mr r30, r3
/* 8012D11C 0012A05C  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 8012D120 0012A060  7F E3 FB 78 */ mr r3, r31
/* 8012D124 0012A064  48 03 13 A9 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8012D128 0012A068  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8012D12C 0012A06C  41 82 00 38 */ beq lbl_8012D164
/* 8012D130 0012A070  80 1E 06 14 */ lwz r0, 0x614(r30)
/* 8012D134 0012A074  28 00 00 32 */ cmplwi r0, 0x32
/* 8012D138 0012A078  40 82 00 1C */ bne lbl_8012D154
/* 8012D13C 0012A07C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8012D140 0012A080  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8012D144 0012A084  38 63 4F F8 */ addi r3, r3, 0x4ff8
/* 8012D148 0012A088  80 9E 31 84 */ lwz r4, 0x3184(r30)
/* 8012D14C 0012A08C  4B F1 B0 31 */ bl cutEnd__16dEvent_manager_cFi
/* 8012D150 0012A090  48 00 00 3C */ b lbl_8012D18C
lbl_8012D154:
/* 8012D154 0012A094  7F C3 F3 78 */ mr r3, r30
/* 8012D158 0012A098  38 80 00 00 */ li r4, 0
/* 8012D15C 0012A09C  4B FF C9 E9 */ bl checkNextActionWolf__9daAlink_cFi
/* 8012D160 0012A0A0  48 00 00 2C */ b lbl_8012D18C
lbl_8012D164:
/* 8012D164 0012A0A4  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 8012D168 0012A0A8  C0 02 94 B4 */ lfs f0, lbl_80452EB4-_SDA2_BASE_(r2)
/* 8012D16C 0012A0AC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8012D170 0012A0B0  40 81 00 1C */ ble lbl_8012D18C
/* 8012D174 0012A0B4  80 1E 06 14 */ lwz r0, 0x614(r30)
/* 8012D178 0012A0B8  28 00 00 32 */ cmplwi r0, 0x32
/* 8012D17C 0012A0BC  41 82 00 10 */ beq lbl_8012D18C
/* 8012D180 0012A0C0  7F C3 F3 78 */ mr r3, r30
/* 8012D184 0012A0C4  38 80 00 01 */ li r4, 1
/* 8012D188 0012A0C8  4B FF C9 BD */ bl checkNextActionWolf__9daAlink_cFi
lbl_8012D18C:
/* 8012D18C 0012A0CC  38 60 00 01 */ li r3, 1
/* 8012D190 0012A0D0  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8012D194 0012A0D4  83 C1 00 08 */ lwz r30, 8(r1)
/* 8012D198 0012A0D8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8012D19C 0012A0DC  7C 08 03 A6 */ mtlr r0
/* 8012D1A0 0012A0E0  38 21 00 10 */ addi r1, r1, 0x10
/* 8012D1A4 0012A0E4  4E 80 00 20 */ blr
