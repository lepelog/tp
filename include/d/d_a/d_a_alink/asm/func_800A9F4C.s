/* 800A9F4C 000A6E8C  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 800A9F50 000A6E90  7C 08 02 A6 */ mflr r0
/* 800A9F54 000A6E94  90 01 00 44 */ stw r0, 0x44(r1)
/* 800A9F58 000A6E98  93 E1 00 3C */ stw r31, 0x3c(r1)
/* 800A9F5C 000A6E9C  7C 7F 1B 78 */ mr r31, r3
/* 800A9F60 000A6EA0  80 63 06 50 */ lwz r3, 0x650(r3)
/* 800A9F64 000A6EA4  80 63 00 84 */ lwz r3, 0x84(r3)
/* 800A9F68 000A6EA8  80 63 00 0C */ lwz r3, 0xc(r3)
/* 800A9F6C 000A6EAC  38 63 00 60 */ addi r3, r3, 0x60
/* 800A9F70 000A6EB0  3C 80 80 3E */ lis r4, lbl_803DD470@ha
/* 800A9F74 000A6EB4  38 84 D4 70 */ addi r4, r4, lbl_803DD470@l
/* 800A9F78 000A6EB8  48 29 C5 39 */ bl PSMTXCopy
/* 800A9F7C 000A6EBC  C0 22 95 58 */ lfs f1, lbl_80452F58-_SDA2_BASE_(r2)
/* 800A9F80 000A6EC0  C0 42 97 1C */ lfs f2, lbl_8045311C-_SDA2_BASE_(r2)
/* 800A9F84 000A6EC4  C0 62 93 C8 */ lfs f3, lbl_80452DC8-_SDA2_BASE_(r2)
/* 800A9F88 000A6EC8  4B F6 2E 15 */ bl mDoMtx_stack_c_NS_transM
/* 800A9F8C 000A6ECC  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 800A9F90 000A6ED0  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 800A9F94 000A6ED4  38 80 00 00 */ li r4, 0
/* 800A9F98 000A6ED8  38 A0 16 C1 */ li r5, 0x16c1
/* 800A9F9C 000A6EDC  38 C0 6F A4 */ li r6, 0x6fa4
/* 800A9FA0 000A6EE0  4B F6 21 C5 */ bl mDoMtx_XYZrotM
/* 800A9FA4 000A6EE4  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 800A9FA8 000A6EE8  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 800A9FAC 000A6EEC  80 9F 06 B8 */ lwz r4, 0x6b8(r31)
/* 800A9FB0 000A6EF0  38 84 00 24 */ addi r4, r4, 0x24
/* 800A9FB4 000A6EF4  48 29 C4 FD */ bl PSMTXCopy
/* 800A9FB8 000A6EF8  7F E3 FB 78 */ mr r3, r31
/* 800A9FBC 000A6EFC  80 9F 06 B8 */ lwz r4, 0x6b8(r31)
/* 800A9FC0 000A6F00  48 02 22 9D */ bl daAlink_c_NS_modelCalc
/* 800A9FC4 000A6F04  80 7F 06 50 */ lwz r3, 0x650(r31)
/* 800A9FC8 000A6F08  80 63 00 84 */ lwz r3, 0x84(r3)
/* 800A9FCC 000A6F0C  80 63 00 0C */ lwz r3, 0xc(r3)
/* 800A9FD0 000A6F10  38 63 00 60 */ addi r3, r3, 0x60
/* 800A9FD4 000A6F14  3C 80 80 3E */ lis r4, lbl_803DD470@ha
/* 800A9FD8 000A6F18  38 84 D4 70 */ addi r4, r4, lbl_803DD470@l
/* 800A9FDC 000A6F1C  48 29 C4 D5 */ bl PSMTXCopy
/* 800A9FE0 000A6F20  C0 22 93 84 */ lfs f1, lbl_80452D84-_SDA2_BASE_(r2)
/* 800A9FE4 000A6F24  C0 42 98 70 */ lfs f2, lbl_80453270-_SDA2_BASE_(r2)
/* 800A9FE8 000A6F28  C0 62 93 74 */ lfs f3, lbl_80452D74-_SDA2_BASE_(r2)
/* 800A9FEC 000A6F2C  4B F6 2D B1 */ bl mDoMtx_stack_c_NS_transM
/* 800A9FF0 000A6F30  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 800A9FF4 000A6F34  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 800A9FF8 000A6F38  38 80 00 00 */ li r4, 0
/* 800A9FFC 000A6F3C  38 A0 FF 6F */ li r5, -145
/* 800AA000 000A6F40  38 C0 6F A4 */ li r6, 0x6fa4
/* 800AA004 000A6F44  4B F6 21 61 */ bl mDoMtx_XYZrotM
/* 800AA008 000A6F48  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 800AA00C 000A6F4C  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 800AA010 000A6F50  80 9F 06 BC */ lwz r4, 0x6bc(r31)
/* 800AA014 000A6F54  38 84 00 24 */ addi r4, r4, 0x24
/* 800AA018 000A6F58  48 29 C4 99 */ bl PSMTXCopy
/* 800AA01C 000A6F5C  7F E3 FB 78 */ mr r3, r31
/* 800AA020 000A6F60  80 9F 06 BC */ lwz r4, 0x6bc(r31)
/* 800AA024 000A6F64  48 02 22 39 */ bl daAlink_c_NS_modelCalc
/* 800AA028 000A6F68  80 7F 06 50 */ lwz r3, 0x650(r31)
/* 800AA02C 000A6F6C  80 63 00 84 */ lwz r3, 0x84(r3)
/* 800AA030 000A6F70  80 63 00 0C */ lwz r3, 0xc(r3)
/* 800AA034 000A6F74  38 63 00 60 */ addi r3, r3, 0x60
/* 800AA038 000A6F78  3C 80 80 3E */ lis r4, lbl_803DD470@ha
/* 800AA03C 000A6F7C  38 84 D4 70 */ addi r4, r4, lbl_803DD470@l
/* 800AA040 000A6F80  48 29 C4 71 */ bl PSMTXCopy
/* 800AA044 000A6F84  C0 22 94 B4 */ lfs f1, lbl_80452EB4-_SDA2_BASE_(r2)
/* 800AA048 000A6F88  C0 42 94 38 */ lfs f2, lbl_80452E38-_SDA2_BASE_(r2)
/* 800AA04C 000A6F8C  C0 62 98 74 */ lfs f3, lbl_80453274-_SDA2_BASE_(r2)
/* 800AA050 000A6F90  4B F6 2D 4D */ bl mDoMtx_stack_c_NS_transM
/* 800AA054 000A6F94  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 800AA058 000A6F98  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 800AA05C 000A6F9C  38 80 40 00 */ li r4, 0x4000
/* 800AA060 000A6FA0  38 A0 29 3E */ li r5, 0x293e
/* 800AA064 000A6FA4  38 C0 EE EF */ li r6, -4369
/* 800AA068 000A6FA8  4B F6 20 FD */ bl mDoMtx_XYZrotM
/* 800AA06C 000A6FAC  88 1F 2F D1 */ lbz r0, 0x2fd1(r31)
/* 800AA070 000A6FB0  28 00 00 00 */ cmplwi r0, 0
/* 800AA074 000A6FB4  40 82 00 24 */ bne lbl_800AA098
/* 800AA078 000A6FB8  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 800AA07C 000A6FBC  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 800AA080 000A6FC0  80 9F 06 78 */ lwz r4, 0x678(r31)
/* 800AA084 000A6FC4  38 84 00 24 */ addi r4, r4, 0x24
/* 800AA088 000A6FC8  48 29 C4 29 */ bl PSMTXCopy
/* 800AA08C 000A6FCC  7F E3 FB 78 */ mr r3, r31
/* 800AA090 000A6FD0  80 9F 06 78 */ lwz r4, 0x678(r31)
/* 800AA094 000A6FD4  48 02 21 C9 */ bl daAlink_c_NS_modelCalc
lbl_800AA098:
/* 800AA098 000A6FD8  80 1F 05 78 */ lwz r0, 0x578(r31)
/* 800AA09C 000A6FDC  54 00 02 53 */ rlwinm. r0, r0, 0, 9, 9
/* 800AA0A0 000A6FE0  40 82 02 08 */ bne lbl_800AA2A8
/* 800AA0A4 000A6FE4  7F E3 FB 78 */ mr r3, r31
/* 800AA0A8 000A6FE8  4B FF F2 49 */ bl daAlink_c_NS_setSwordPos
/* 800AA0AC 000A6FEC  80 BF 07 08 */ lwz r5, 0x708(r31)
/* 800AA0B0 000A6FF0  28 05 00 00 */ cmplwi r5, 0
/* 800AA0B4 000A6FF4  41 82 01 EC */ beq lbl_800AA2A0
/* 800AA0B8 000A6FF8  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 800AA0BC 000A6FFC  28 00 01 09 */ cmplwi r0, 0x109
/* 800AA0C0 000A7000  40 82 00 80 */ bne lbl_800AA140
/* 800AA0C4 000A7004  C0 22 93 88 */ lfs f1, lbl_80452D88-_SDA2_BASE_(r2)
/* 800AA0C8 000A7008  C0 1F 34 90 */ lfs f0, 0x3490(r31)
/* 800AA0CC 000A700C  EC 01 00 32 */ fmuls f0, f1, f0
/* 800AA0D0 000A7010  3C 60 80 39 */ lis r3, lbl_8039201C@ha
/* 800AA0D4 000A7014  38 83 20 1C */ addi r4, r3, lbl_8039201C@l
/* 800AA0D8 000A7018  80 64 00 00 */ lwz r3, 0(r4)
/* 800AA0DC 000A701C  80 04 00 04 */ lwz r0, 4(r4)
/* 800AA0E0 000A7020  90 61 00 24 */ stw r3, 0x24(r1)
/* 800AA0E4 000A7024  90 01 00 28 */ stw r0, 0x28(r1)
/* 800AA0E8 000A7028  80 04 00 08 */ lwz r0, 8(r4)
/* 800AA0EC 000A702C  90 01 00 2C */ stw r0, 0x2c(r1)
/* 800AA0F0 000A7030  D0 01 00 24 */ stfs f0, 0x24(r1)
/* 800AA0F4 000A7034  D0 01 00 28 */ stfs f0, 0x28(r1)
/* 800AA0F8 000A7038  D0 01 00 2C */ stfs f0, 0x2c(r1)
/* 800AA0FC 000A703C  38 65 00 24 */ addi r3, r5, 0x24
/* 800AA100 000A7040  C0 3F 04 D0 */ lfs f1, 0x4d0(r31)
/* 800AA104 000A7044  C0 5F 04 D4 */ lfs f2, 0x4d4(r31)
/* 800AA108 000A7048  C0 7F 04 D8 */ lfs f3, 0x4d8(r31)
/* 800AA10C 000A704C  48 29 C7 DD */ bl PSMTXTrans
/* 800AA110 000A7050  80 7F 07 08 */ lwz r3, 0x708(r31)
/* 800AA114 000A7054  C0 01 00 24 */ lfs f0, 0x24(r1)
/* 800AA118 000A7058  D0 03 00 18 */ stfs f0, 0x18(r3)
/* 800AA11C 000A705C  C0 01 00 28 */ lfs f0, 0x28(r1)
/* 800AA120 000A7060  D0 03 00 1C */ stfs f0, 0x1c(r3)
/* 800AA124 000A7064  C0 01 00 2C */ lfs f0, 0x2c(r1)
/* 800AA128 000A7068  D0 03 00 20 */ stfs f0, 0x20(r3)
/* 800AA12C 000A706C  80 7F 07 18 */ lwz r3, 0x718(r31)
/* 800AA130 000A7070  28 03 00 00 */ cmplwi r3, 0
/* 800AA134 000A7074  41 82 01 58 */ beq lbl_800AA28C
/* 800AA138 000A7078  4B FF F1 11 */ bl daAlink_c_NS_simpleAnmPlay
/* 800AA13C 000A707C  48 00 01 50 */ b lbl_800AA28C
lbl_800AA140:
/* 800AA140 000A7080  80 7F 06 50 */ lwz r3, 0x650(r31)
/* 800AA144 000A7084  80 63 00 84 */ lwz r3, 0x84(r3)
/* 800AA148 000A7088  80 63 00 0C */ lwz r3, 0xc(r3)
/* 800AA14C 000A708C  38 63 00 C0 */ addi r3, r3, 0xc0
/* 800AA150 000A7090  3C 80 80 3E */ lis r4, lbl_803DD470@ha
/* 800AA154 000A7094  38 84 D4 70 */ addi r4, r4, lbl_803DD470@l
/* 800AA158 000A7098  48 29 C3 59 */ bl PSMTXCopy
/* 800AA15C 000A709C  C0 22 93 90 */ lfs f1, lbl_80452D90-_SDA2_BASE_(r2)
/* 800AA160 000A70A0  C0 42 93 48 */ lfs f2, lbl_80452D48-_SDA2_BASE_(r2)
/* 800AA164 000A70A4  C0 62 92 C0 */ lfs f3, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800AA168 000A70A8  4B F6 2C 35 */ bl mDoMtx_stack_c_NS_transM
/* 800AA16C 000A70AC  80 7F 07 08 */ lwz r3, 0x708(r31)
/* 800AA170 000A70B0  38 83 00 24 */ addi r4, r3, 0x24
/* 800AA174 000A70B4  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 800AA178 000A70B8  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 800AA17C 000A70BC  48 29 C3 35 */ bl PSMTXCopy
/* 800AA180 000A70C0  C0 1F 37 EC */ lfs f0, 0x37ec(r31)
/* 800AA184 000A70C4  D0 1F 37 F8 */ stfs f0, 0x37f8(r31)
/* 800AA188 000A70C8  C0 1F 37 F0 */ lfs f0, 0x37f0(r31)
/* 800AA18C 000A70CC  D0 1F 37 FC */ stfs f0, 0x37fc(r31)
/* 800AA190 000A70D0  C0 1F 37 F4 */ lfs f0, 0x37f4(r31)
/* 800AA194 000A70D4  D0 1F 38 00 */ stfs f0, 0x3800(r31)
/* 800AA198 000A70D8  C0 1F 37 E0 */ lfs f0, 0x37e0(r31)
/* 800AA19C 000A70DC  D0 1F 37 EC */ stfs f0, 0x37ec(r31)
/* 800AA1A0 000A70E0  C0 1F 37 E4 */ lfs f0, 0x37e4(r31)
/* 800AA1A4 000A70E4  D0 1F 37 F0 */ stfs f0, 0x37f0(r31)
/* 800AA1A8 000A70E8  C0 1F 37 E8 */ lfs f0, 0x37e8(r31)
/* 800AA1AC 000A70EC  D0 1F 37 F4 */ stfs f0, 0x37f4(r31)
/* 800AA1B0 000A70F0  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 800AA1B4 000A70F4  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 800AA1B8 000A70F8  C0 03 00 0C */ lfs f0, 0xc(r3)
/* 800AA1BC 000A70FC  D0 1F 37 E0 */ stfs f0, 0x37e0(r31)
/* 800AA1C0 000A7100  C0 03 00 1C */ lfs f0, 0x1c(r3)
/* 800AA1C4 000A7104  D0 1F 37 E4 */ stfs f0, 0x37e4(r31)
/* 800AA1C8 000A7108  C0 03 00 2C */ lfs f0, 0x2c(r3)
/* 800AA1CC 000A710C  D0 1F 37 E8 */ stfs f0, 0x37e8(r31)
/* 800AA1D0 000A7110  80 7F 07 18 */ lwz r3, 0x718(r31)
/* 800AA1D4 000A7114  4B FF F0 75 */ bl daAlink_c_NS_simpleAnmPlay
/* 800AA1D8 000A7118  3C 60 00 07 */ lis r3, 0x00070524@ha
/* 800AA1DC 000A711C  38 03 05 24 */ addi r0, r3, 0x00070524@l
/* 800AA1E0 000A7120  90 01 00 20 */ stw r0, 0x20(r1)
/* 800AA1E4 000A7124  80 7F 07 6C */ lwz r3, 0x76c(r31)
/* 800AA1E8 000A7128  38 81 00 20 */ addi r4, r1, 0x20
/* 800AA1EC 000A712C  38 A0 00 00 */ li r5, 0
/* 800AA1F0 000A7130  38 C0 FF FF */ li r6, -1
/* 800AA1F4 000A7134  81 83 00 10 */ lwz r12, 0x10(r3)
/* 800AA1F8 000A7138  81 8C 00 1C */ lwz r12, 0x1c(r12)
/* 800AA1FC 000A713C  7D 89 03 A6 */ mtctr r12
/* 800AA200 000A7140  4E 80 04 21 */ bctrl
/* 800AA204 000A7144  80 7F 07 6C */ lwz r3, 0x76c(r31)
/* 800AA208 000A7148  38 80 00 00 */ li r4, 0
/* 800AA20C 000A714C  88 BF 2F 9A */ lbz r5, 0x2f9a(r31)
/* 800AA210 000A7150  81 83 00 10 */ lwz r12, 0x10(r3)
/* 800AA214 000A7154  81 8C 00 08 */ lwz r12, 8(r12)
/* 800AA218 000A7158  7D 89 03 A6 */ mtctr r12
/* 800AA21C 000A715C  4E 80 04 21 */ bctrl
/* 800AA220 000A7160  A0 1F 2F E8 */ lhz r0, 0x2fe8(r31)
/* 800AA224 000A7164  28 00 01 23 */ cmplwi r0, 0x123
/* 800AA228 000A7168  41 82 00 64 */ beq lbl_800AA28C
/* 800AA22C 000A716C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800AA230 000A7170  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800AA234 000A7174  80 63 5D 3C */ lwz r3, 0x5d3c(r3)
/* 800AA238 000A7178  38 00 00 FF */ li r0, 0xff
/* 800AA23C 000A717C  90 01 00 08 */ stw r0, 8(r1)
/* 800AA240 000A7180  38 1F 2F 38 */ addi r0, r31, 0x2f38
/* 800AA244 000A7184  90 01 00 0C */ stw r0, 0xc(r1)
/* 800AA248 000A7188  38 00 FF FF */ li r0, -1
/* 800AA24C 000A718C  90 01 00 10 */ stw r0, 0x10(r1)
/* 800AA250 000A7190  38 00 00 00 */ li r0, 0
/* 800AA254 000A7194  90 01 00 14 */ stw r0, 0x14(r1)
/* 800AA258 000A7198  90 01 00 18 */ stw r0, 0x18(r1)
/* 800AA25C 000A719C  90 01 00 1C */ stw r0, 0x1c(r1)
/* 800AA260 000A71A0  80 9F 32 D4 */ lwz r4, 0x32d4(r31)
/* 800AA264 000A71A4  38 A0 00 00 */ li r5, 0
/* 800AA268 000A71A8  3C C0 00 01 */ lis r6, 0x000086CD@ha
/* 800AA26C 000A71AC  38 C6 86 CD */ addi r6, r6, 0x000086CD@l
/* 800AA270 000A71B0  38 FF 37 E0 */ addi r7, r31, 0x37e0
/* 800AA274 000A71B4  39 1F 01 0C */ addi r8, r31, 0x10c
/* 800AA278 000A71B8  39 20 00 00 */ li r9, 0
/* 800AA27C 000A71BC  39 40 00 00 */ li r10, 0
/* 800AA280 000A71C0  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800AA284 000A71C4  4B FA 32 49 */ bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf_X1_
/* 800AA288 000A71C8  90 7F 32 D4 */ stw r3, 0x32d4(r31)
lbl_800AA28C:
/* 800AA28C 000A71CC  80 7F 07 08 */ lwz r3, 0x708(r31)
/* 800AA290 000A71D0  81 83 00 00 */ lwz r12, 0(r3)
/* 800AA294 000A71D4  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 800AA298 000A71D8  7D 89 03 A6 */ mtctr r12
/* 800AA29C 000A71DC  4E 80 04 21 */ bctrl
lbl_800AA2A0:
/* 800AA2A0 000A71E0  7F E3 FB 78 */ mr r3, r31
/* 800AA2A4 000A71E4  48 08 20 69 */ bl daAlink_c_NS_setWolfChainPos
lbl_800AA2A8:
/* 800AA2A8 000A71E8  83 E1 00 3C */ lwz r31, 0x3c(r1)
/* 800AA2AC 000A71EC  80 01 00 44 */ lwz r0, 0x44(r1)
/* 800AA2B0 000A71F0  7C 08 03 A6 */ mtlr r0
/* 800AA2B4 000A71F4  38 21 00 40 */ addi r1, r1, 0x40
/* 800AA2B8 000A71F8  4E 80 00 20 */ blr
