/* 800D9E88 000D6DC8  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 800D9E8C 000D6DCC  7C 08 02 A6 */ mflr r0
/* 800D9E90 000D6DD0  90 01 00 34 */ stw r0, 0x34(r1)
/* 800D9E94 000D6DD4  39 61 00 30 */ addi r11, r1, 0x30
/* 800D9E98 000D6DD8  48 28 83 45 */ bl _savegpr_29
/* 800D9E9C 000D6DDC  7C 7F 1B 78 */ mr r31, r3
/* 800D9EA0 000D6DE0  80 63 32 CC */ lwz r3, 0x32cc(r3)
/* 800D9EA4 000D6DE4  28 03 00 00 */ cmplwi r3, 0
/* 800D9EA8 000D6DE8  41 82 00 10 */ beq lbl_800D9EB8
/* 800D9EAC 000D6DEC  38 03 FF FF */ addi r0, r3, -1
/* 800D9EB0 000D6DF0  90 1F 32 CC */ stw r0, 0x32cc(r31)
/* 800D9EB4 000D6DF4  48 00 00 10 */ b lbl_800D9EC4
lbl_800D9EB8:
/* 800D9EB8 000D6DF8  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 800D9EBC 000D6DFC  54 00 04 E2 */ rlwinm r0, r0, 0, 0x13, 0x11
/* 800D9EC0 000D6E00  90 1F 31 A0 */ stw r0, 0x31a0(r31)
lbl_800D9EC4:
/* 800D9EC4 000D6E04  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 800D9EC8 000D6E08  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800D9ECC 000D6E0C  40 82 00 18 */ bne lbl_800D9EE4
/* 800D9ED0 000D6E10  7F E3 FB 78 */ mr r3, r31
/* 800D9ED4 000D6E14  38 80 01 25 */ li r4, 0x125
/* 800D9ED8 000D6E18  4B FD 26 81 */ bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800D9EDC 000D6E1C  2C 03 00 00 */ cmpwi r3, 0
/* 800D9EE0 000D6E20  40 82 00 28 */ bne lbl_800D9F08
lbl_800D9EE4:
/* 800D9EE4 000D6E24  A8 1F 30 0E */ lha r0, 0x300e(r31)
/* 800D9EE8 000D6E28  2C 00 00 00 */ cmpwi r0, 0
/* 800D9EEC 000D6E2C  41 82 00 0C */ beq lbl_800D9EF8
/* 800D9EF0 000D6E30  38 7F 30 80 */ addi r3, r31, 0x3080
/* 800D9EF4 000D6E34  48 00 00 08 */ b lbl_800D9EFC
lbl_800D9EF8:
/* 800D9EF8 000D6E38  38 7F 30 82 */ addi r3, r31, 0x3082
lbl_800D9EFC:
/* 800D9EFC 000D6E3C  A8 9F 30 0C */ lha r4, 0x300c(r31)
/* 800D9F00 000D6E40  A8 BF 30 10 */ lha r5, 0x3010(r31)
/* 800D9F04 000D6E44  48 19 6C 8D */ bl cLib_chaseAngleS__FPsss
lbl_800D9F08:
/* 800D9F08 000D6E48  38 7F 33 98 */ addi r3, r31, 0x3398
/* 800D9F0C 000D6E4C  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800D9F10 000D6E50  C0 5F 34 7C */ lfs f2, 0x347c(r31)
/* 800D9F14 000D6E54  48 19 68 2D */ bl cLib_chaseF__FPfff
/* 800D9F18 000D6E58  A8 1F 30 08 */ lha r0, 0x3008(r31)
/* 800D9F1C 000D6E5C  2C 00 00 00 */ cmpwi r0, 0
/* 800D9F20 000D6E60  40 82 00 14 */ bne lbl_800D9F34
/* 800D9F24 000D6E64  38 00 00 01 */ li r0, 1
/* 800D9F28 000D6E68  B0 1F 30 08 */ sth r0, 0x3008(r31)
/* 800D9F2C 000D6E6C  38 60 00 01 */ li r3, 1
/* 800D9F30 000D6E70  48 00 02 38 */ b lbl_800DA168
lbl_800D9F34:
/* 800D9F34 000D6E74  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 800D9F38 000D6E78  54 00 04 E2 */ rlwinm r0, r0, 0, 0x13, 0x11
/* 800D9F3C 000D6E7C  90 1F 31 A0 */ stw r0, 0x31a0(r31)
/* 800D9F40 000D6E80  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 800D9F44 000D6E84  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800D9F48 000D6E88  40 82 00 0C */ bne lbl_800D9F54
/* 800D9F4C 000D6E8C  7F E3 FB 78 */ mr r3, r31
/* 800D9F50 000D6E90  4B FD BC 71 */ bl setFallVoice__9daAlink_cFv
lbl_800D9F54:
/* 800D9F54 000D6E94  80 7F 19 9C */ lwz r3, 0x199c(r31)
/* 800D9F58 000D6E98  54 60 06 B5 */ rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 800D9F5C 000D6E9C  40 82 00 10 */ bne lbl_800D9F6C
/* 800D9F60 000D6EA0  80 1F 05 90 */ lwz r0, 0x590(r31)
/* 800D9F64 000D6EA4  54 00 05 EF */ rlwinm. r0, r0, 0, 0x17, 0x17
/* 800D9F68 000D6EA8  41 82 00 84 */ beq lbl_800D9FEC
lbl_800D9F6C:
/* 800D9F6C 000D6EAC  80 1F 05 78 */ lwz r0, 0x578(r31)
/* 800D9F70 000D6EB0  54 00 01 D1 */ rlwinm. r0, r0, 0, 7, 8
/* 800D9F74 000D6EB4  40 82 00 78 */ bne lbl_800D9FEC
/* 800D9F78 000D6EB8  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 800D9F7C 000D6EBC  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800D9F80 000D6EC0  41 82 00 20 */ beq lbl_800D9FA0
/* 800D9F84 000D6EC4  7F E3 FB 78 */ mr r3, r31
/* 800D9F88 000D6EC8  80 9F 31 98 */ lwz r4, 0x3198(r31)
/* 800D9F8C 000D6ECC  A8 BF 30 0A */ lha r5, 0x300a(r31)
/* 800D9F90 000D6ED0  A8 DF 30 80 */ lha r6, 0x3080(r31)
/* 800D9F94 000D6ED4  A8 FF 30 82 */ lha r7, 0x3082(r31)
/* 800D9F98 000D6ED8  48 05 C6 8D */ bl procWolfLargeDamageUpInit__9daAlink_cFiiss
/* 800D9F9C 000D6EDC  48 00 01 C8 */ b lbl_800DA164
lbl_800D9FA0:
/* 800D9FA0 000D6EE0  C0 3F 34 80 */ lfs f1, 0x3480(r31)
/* 800D9FA4 000D6EE4  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800D9FA8 000D6EE8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D9FAC 000D6EEC  7C 00 00 26 */ mfcr r0
/* 800D9FB0 000D6EF0  54 1E 17 FE */ rlwinm r30, r0, 2, 0x1f, 0x1f
/* 800D9FB4 000D6EF4  7F E3 FB 78 */ mr r3, r31
/* 800D9FB8 000D6EF8  80 9F 31 98 */ lwz r4, 0x3198(r31)
/* 800D9FBC 000D6EFC  A8 BF 30 0A */ lha r5, 0x300a(r31)
/* 800D9FC0 000D6F00  A8 DF 30 80 */ lha r6, 0x3080(r31)
/* 800D9FC4 000D6F04  A8 FF 30 82 */ lha r7, 0x3082(r31)
/* 800D9FC8 000D6F08  48 00 01 B9 */ bl procLargeDamageUpInit__9daAlink_cFiiss
/* 800D9FCC 000D6F0C  2C 1E 00 00 */ cmpwi r30, 0
/* 800D9FD0 000D6F10  41 82 01 94 */ beq lbl_800DA164
/* 800D9FD4 000D6F14  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 800D9FD8 000D6F18  54 00 07 76 */ rlwinm r0, r0, 0, 0x1d, 0x1b
/* 800D9FDC 000D6F1C  90 1F 31 A0 */ stw r0, 0x31a0(r31)
/* 800D9FE0 000D6F20  7F E3 FB 78 */ mr r3, r31
/* 800D9FE4 000D6F24  4B FF CF FD */ bl checkCutLandDamage__9daAlink_cFv
/* 800D9FE8 000D6F28  48 00 01 7C */ b lbl_800DA164
lbl_800D9FEC:
/* 800D9FEC 000D6F2C  80 1F 05 78 */ lwz r0, 0x578(r31)
/* 800D9FF0 000D6F30  54 00 01 D1 */ rlwinm. r0, r0, 0, 7, 8
/* 800D9FF4 000D6F34  41 82 00 9C */ beq lbl_800DA090
/* 800D9FF8 000D6F38  7F E3 FB 78 */ mr r3, r31
/* 800D9FFC 000D6F3C  38 80 01 25 */ li r4, 0x125
/* 800DA000 000D6F40  4B FD 25 59 */ bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800DA004 000D6F44  2C 03 00 00 */ cmpwi r3, 0
/* 800DA008 000D6F48  40 82 01 5C */ bne lbl_800DA164
/* 800DA00C 000D6F4C  80 7F 20 60 */ lwz r3, 0x2060(r31)
/* 800DA010 000D6F50  C0 23 00 0C */ lfs f1, 0xc(r3)
/* 800DA014 000D6F54  C0 02 93 A0 */ lfs f0, lbl_80452DA0-_SDA2_BASE_(r2)
/* 800DA018 000D6F58  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800DA01C 000D6F5C  40 80 01 48 */ bge lbl_800DA164
/* 800DA020 000D6F60  A8 7F 30 12 */ lha r3, 0x3012(r31)
/* 800DA024 000D6F64  2C 03 00 00 */ cmpwi r3, 0
/* 800DA028 000D6F68  41 82 00 10 */ beq lbl_800DA038
/* 800DA02C 000D6F6C  38 03 FF FF */ addi r0, r3, -1
/* 800DA030 000D6F70  B0 1F 30 12 */ sth r0, 0x3012(r31)
/* 800DA034 000D6F74  48 00 01 30 */ b lbl_800DA164
lbl_800DA038:
/* 800DA038 000D6F78  7F E3 FB 78 */ mr r3, r31
/* 800DA03C 000D6F7C  3C 80 00 01 */ lis r4, 0x0001000C@ha
/* 800DA040 000D6F80  38 84 00 0C */ addi r4, r4, 0x0001000C@l
/* 800DA044 000D6F84  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800DA048 000D6F88  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 800DA04C 000D6F8C  7D 89 03 A6 */ mtctr r12
/* 800DA050 000D6F90  4E 80 04 21 */ bctrl
/* 800DA054 000D6F94  7F E3 FB 78 */ mr r3, r31
/* 800DA058 000D6F98  38 80 01 25 */ li r4, 0x125
/* 800DA05C 000D6F9C  3C A0 80 39 */ lis r5, lbl_8038E54C@ha
/* 800DA060 000D6FA0  38 A5 E5 4C */ addi r5, r5, lbl_8038E54C@l
/* 800DA064 000D6FA4  C0 25 00 54 */ lfs f1, 0x54(r5)
/* 800DA068 000D6FA8  4B FD 2F 49 */ bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANMMorf
/* 800DA06C 000D6FAC  7F E3 FB 78 */ mr r3, r31
/* 800DA070 000D6FB0  A8 9F 30 80 */ lha r4, 0x3080(r31)
/* 800DA074 000D6FB4  38 A0 00 00 */ li r5, 0
/* 800DA078 000D6FB8  A8 DF 30 82 */ lha r6, 0x3082(r31)
/* 800DA07C 000D6FBC  4B FD 3A FD */ bl setOldRootQuaternion__9daAlink_cFsss
/* 800DA080 000D6FC0  38 00 00 00 */ li r0, 0
/* 800DA084 000D6FC4  B0 1F 30 80 */ sth r0, 0x3080(r31)
/* 800DA088 000D6FC8  B0 1F 30 82 */ sth r0, 0x3082(r31)
/* 800DA08C 000D6FCC  48 00 00 D8 */ b lbl_800DA164
lbl_800DA090:
/* 800DA090 000D6FD0  54 60 06 F7 */ rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 800DA094 000D6FD4  41 82 00 D0 */ beq lbl_800DA164
/* 800DA098 000D6FD8  C0 3F 33 98 */ lfs f1, 0x3398(r31)
/* 800DA09C 000D6FDC  C0 1F 34 78 */ lfs f0, 0x3478(r31)
/* 800DA0A0 000D6FE0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800DA0A4 000D6FE4  40 81 00 C0 */ ble lbl_800DA164
/* 800DA0A8 000D6FE8  3B DF 18 B0 */ addi r30, r31, 0x18b0
/* 800DA0AC 000D6FEC  3B A0 00 00 */ li r29, 0
lbl_800DA0B0:
/* 800DA0B0 000D6FF0  80 1E 00 10 */ lwz r0, 0x10(r30)
/* 800DA0B4 000D6FF4  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800DA0B8 000D6FF8  41 82 00 9C */ beq lbl_800DA154
/* 800DA0BC 000D6FFC  C0 9F 04 D8 */ lfs f4, 0x4d8(r31)
/* 800DA0C0 000D7000  C0 3F 04 D4 */ lfs f1, 0x4d4(r31)
/* 800DA0C4 000D7004  C0 1E 00 30 */ lfs f0, 0x30(r30)
/* 800DA0C8 000D7008  EC 61 00 2A */ fadds f3, f1, f0
/* 800DA0CC 000D700C  C0 5F 04 D0 */ lfs f2, 0x4d0(r31)
/* 800DA0D0 000D7010  D0 41 00 14 */ stfs f2, 0x14(r1)
/* 800DA0D4 000D7014  D0 61 00 18 */ stfs f3, 0x18(r1)
/* 800DA0D8 000D7018  D0 81 00 1C */ stfs f4, 0x1c(r1)
/* 800DA0DC 000D701C  A8 1F 04 DE */ lha r0, 0x4de(r31)
/* 800DA0E0 000D7020  54 04 04 38 */ rlwinm r4, r0, 0, 0x10, 0x1c
/* 800DA0E4 000D7024  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800DA0E8 000D7028  38 03 9A 20 */ addi r0, r3, lbl_80439A20@l
/* 800DA0EC 000D702C  7C 60 22 14 */ add r3, r0, r4
/* 800DA0F0 000D7030  C0 A3 00 04 */ lfs f5, 4(r3)
/* 800DA0F4 000D7034  C0 22 92 9C */ lfs f1, lbl_80452C9C-_SDA2_BASE_(r2)
/* 800DA0F8 000D7038  C0 1E 00 34 */ lfs f0, 0x34(r30)
/* 800DA0FC 000D703C  EC C1 00 2A */ fadds f6, f1, f0
/* 800DA100 000D7040  EC 05 01 B2 */ fmuls f0, f5, f6
/* 800DA104 000D7044  EC 24 00 2A */ fadds f1, f4, f0
/* 800DA108 000D7048  C0 03 00 00 */ lfs f0, 0(r3)
/* 800DA10C 000D704C  EC 00 01 B2 */ fmuls f0, f0, f6
/* 800DA110 000D7050  EC 02 00 2A */ fadds f0, f2, f0
/* 800DA114 000D7054  D0 01 00 08 */ stfs f0, 8(r1)
/* 800DA118 000D7058  D0 61 00 0C */ stfs f3, 0xc(r1)
/* 800DA11C 000D705C  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 800DA120 000D7060  7F E3 FB 78 */ mr r3, r31
/* 800DA124 000D7064  38 81 00 14 */ addi r4, r1, 0x14
/* 800DA128 000D7068  38 A1 00 08 */ addi r5, r1, 8
/* 800DA12C 000D706C  4B FC 80 6D */ bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800DA130 000D7070  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800DA134 000D7074  41 82 00 20 */ beq lbl_800DA154
/* 800DA138 000D7078  7F E3 FB 78 */ mr r3, r31
/* 800DA13C 000D707C  80 9F 31 98 */ lwz r4, 0x3198(r31)
/* 800DA140 000D7080  A8 BF 30 0A */ lha r5, 0x300a(r31)
/* 800DA144 000D7084  A8 DF 30 80 */ lha r6, 0x3080(r31)
/* 800DA148 000D7088  A8 FF 30 82 */ lha r7, 0x3082(r31)
/* 800DA14C 000D708C  48 00 06 E1 */ bl procCoLargeDamageWallInit__9daAlink_cFiiss
/* 800DA150 000D7090  48 00 00 18 */ b lbl_800DA168
lbl_800DA154:
/* 800DA154 000D7094  3B BD 00 01 */ addi r29, r29, 1
/* 800DA158 000D7098  2C 1D 00 03 */ cmpwi r29, 3
/* 800DA15C 000D709C  3B DE 00 40 */ addi r30, r30, 0x40
/* 800DA160 000D70A0  41 80 FF 50 */ blt lbl_800DA0B0
lbl_800DA164:
/* 800DA164 000D70A4  38 60 00 01 */ li r3, 1
lbl_800DA168:
/* 800DA168 000D70A8  39 61 00 30 */ addi r11, r1, 0x30
/* 800DA16C 000D70AC  48 28 80 BD */ bl _restgpr_29
/* 800DA170 000D70B0  80 01 00 34 */ lwz r0, 0x34(r1)
/* 800DA174 000D70B4  7C 08 03 A6 */ mtlr r0
/* 800DA178 000D70B8  38 21 00 30 */ addi r1, r1, 0x30
/* 800DA17C 000D70BC  4E 80 00 20 */ blr
