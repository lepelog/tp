/* 800C40F0 000C1030  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800C40F4 000C1034  7C 08 02 A6 */ mflr r0
/* 800C40F8 000C1038  90 01 00 14 */ stw r0, 0x14(r1)
/* 800C40FC 000C103C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800C4100 000C1040  93 C1 00 08 */ stw r30, 8(r1)
/* 800C4104 000C1044  7C 7F 1B 78 */ mr r31, r3
/* 800C4108 000C1048  38 80 00 0B */ li r4, 0xb
/* 800C410C 000C104C  4B FF DE 61 */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C4110 000C1050  88 1F 2F 98 */ lbz r0, 0x2f98(r31)
/* 800C4114 000C1054  28 00 00 01 */ cmplwi r0, 1
/* 800C4118 000C1058  40 82 00 54 */ bne lbl_800C416C
/* 800C411C 000C105C  38 00 00 04 */ li r0, 4
/* 800C4120 000C1060  98 1F 2F 9D */ stb r0, 0x2f9d(r31)
/* 800C4124 000C1064  7F E3 FB 78 */ mr r3, r31
/* 800C4128 000C1068  38 80 00 22 */ li r4, 0x22
/* 800C412C 000C106C  3C A0 80 39 */ lis r5, lbl_8038D864@ha
/* 800C4130 000C1070  38 A5 D8 64 */ addi r5, r5, lbl_8038D864@l
/* 800C4134 000C1074  38 A5 00 3C */ addi r5, r5, 0x3c
/* 800C4138 000C1078  4B FE 8F BD */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfParam
/* 800C413C 000C107C  3C 60 80 39 */ lis r3, lbl_8038D864@ha
/* 800C4140 000C1080  38 63 D8 64 */ addi r3, r3, lbl_8038D864@l
/* 800C4144 000C1084  C0 03 00 4C */ lfs f0, 0x4c(r3)
/* 800C4148 000C1088  D0 1F 34 78 */ stfs f0, 0x3478(r31)
/* 800C414C 000C108C  38 00 00 02 */ li r0, 2
/* 800C4150 000C1090  98 1F 2F 98 */ stb r0, 0x2f98(r31)
/* 800C4154 000C1094  38 00 00 00 */ li r0, 0
/* 800C4158 000C1098  B0 1F 30 0A */ sth r0, 0x300a(r31)
/* 800C415C 000C109C  98 1F 2F B0 */ stb r0, 0x2fb0(r31)
/* 800C4160 000C10A0  38 00 00 0A */ li r0, 0xa
/* 800C4164 000C10A4  98 1F 2F CC */ stb r0, 0x2fcc(r31)
/* 800C4168 000C10A8  48 00 00 B4 */ b lbl_800C421C
lbl_800C416C:
/* 800C416C 000C10AC  28 00 00 02 */ cmplwi r0, 2
/* 800C4170 000C10B0  40 82 00 10 */ bne lbl_800C4180
/* 800C4174 000C10B4  38 80 00 1F */ li r4, 0x1f
/* 800C4178 000C10B8  3B C0 00 3F */ li r30, 0x3f
/* 800C417C 000C10BC  48 00 00 0C */ b lbl_800C4188
lbl_800C4180:
/* 800C4180 000C10C0  38 80 00 20 */ li r4, 0x20
/* 800C4184 000C10C4  3B C0 00 40 */ li r30, 0x40
lbl_800C4188:
/* 800C4188 000C10C8  7F E3 FB 78 */ mr r3, r31
/* 800C418C 000C10CC  3C A0 80 39 */ lis r5, lbl_8038D864@ha
/* 800C4190 000C10D0  38 A5 D8 64 */ addi r5, r5, lbl_8038D864@l
/* 800C4194 000C10D4  38 A5 00 14 */ addi r5, r5, 0x14
/* 800C4198 000C10D8  4B FE 8F 5D */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfParam
/* 800C419C 000C10DC  3C 60 80 39 */ lis r3, lbl_8038D864@ha
/* 800C41A0 000C10E0  38 63 D8 64 */ addi r3, r3, lbl_8038D864@l
/* 800C41A4 000C10E4  C0 03 00 24 */ lfs f0, 0x24(r3)
/* 800C41A8 000C10E8  D0 1F 34 78 */ stfs f0, 0x3478(r31)
/* 800C41AC 000C10EC  38 00 00 01 */ li r0, 1
/* 800C41B0 000C10F0  B0 1F 30 0A */ sth r0, 0x300a(r31)
/* 800C41B4 000C10F4  38 00 00 08 */ li r0, 8
/* 800C41B8 000C10F8  98 1F 2F B0 */ stb r0, 0x2fb0(r31)
/* 800C41BC 000C10FC  38 00 00 00 */ li r0, 0
/* 800C41C0 000C1100  98 1F 2F CC */ stb r0, 0x2fcc(r31)
/* 800C41C4 000C1104  80 7F 27 EC */ lwz r3, 0x27ec(r31)
/* 800C41C8 000C1108  48 01 83 81 */ bl checkEnemyGroup__9daAlink_cFP10fopAc_ac_c
/* 800C41CC 000C110C  2C 03 00 00 */ cmpwi r3, 0
/* 800C41D0 000C1110  41 82 00 4C */ beq lbl_800C421C
/* 800C41D4 000C1114  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 800C41D8 000C1118  28 00 01 03 */ cmplwi r0, 0x103
/* 800C41DC 000C111C  40 82 00 40 */ bne lbl_800C421C
/* 800C41E0 000C1120  7F E3 FB 78 */ mr r3, r31
/* 800C41E4 000C1124  4B FF 50 71 */ bl checkNoUpperAnime__9daAlink_cCFv
/* 800C41E8 000C1128  2C 03 00 00 */ cmpwi r3, 0
/* 800C41EC 000C112C  41 82 00 30 */ beq lbl_800C421C
/* 800C41F0 000C1130  7F E3 FB 78 */ mr r3, r31
/* 800C41F4 000C1134  7F C4 F3 78 */ mr r4, r30
/* 800C41F8 000C1138  3C A0 80 39 */ lis r5, lbl_8038D714@ha
/* 800C41FC 000C113C  38 A5 D7 14 */ addi r5, r5, lbl_8038D714@l
/* 800C4200 000C1140  C0 25 00 08 */ lfs f1, 8(r5)
/* 800C4204 000C1144  C0 42 92 BC */ lfs f2, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800C4208 000C1148  4B FE 91 A1 */ bl setUpperAnimeBase__9daAlink_cFUsSpeed
/* 800C420C 000C114C  7F E3 FB 78 */ mr r3, r31
/* 800C4210 000C1150  3C 80 00 02 */ lis r4, 0x000200A5@ha
/* 800C4214 000C1154  38 84 00 A5 */ addi r4, r4, 0x000200A5@l
/* 800C4218 000C1158  4B FF AE D5 */ bl seStartSwordCut__9daAlink_cFUl
lbl_800C421C:
/* 800C421C 000C115C  38 00 00 04 */ li r0, 4
/* 800C4220 000C1160  98 1F 2F 9D */ stb r0, 0x2f9d(r31)
/* 800C4224 000C1164  7F E3 FB 78 */ mr r3, r31
/* 800C4228 000C1168  38 80 00 02 */ li r4, 2
/* 800C422C 000C116C  48 05 CF 95 */ bl setFootEffectProcType__9daAlink_cFi
/* 800C4230 000C1170  80 1F 05 84 */ lwz r0, 0x584(r31)
/* 800C4234 000C1174  60 00 00 30 */ ori r0, r0, 0x30
/* 800C4238 000C1178  90 1F 05 84 */ stw r0, 0x584(r31)
/* 800C423C 000C117C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800C4240 000C1180  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 800C4244 000C1184  38 00 00 00 */ li r0, 0
/* 800C4248 000C1188  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 800C424C 000C118C  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 800C4250 000C1190  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 800C4254 000C1194  7F E3 FB 78 */ mr r3, r31
/* 800C4258 000C1198  4B FF 1A 0D */ bl setStepLandVibration__9daAlink_cFv
/* 800C425C 000C119C  38 60 00 01 */ li r3, 1
/* 800C4260 000C11A0  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800C4264 000C11A4  83 C1 00 08 */ lwz r30, 8(r1)
/* 800C4268 000C11A8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800C426C 000C11AC  7C 08 03 A6 */ mtlr r0
/* 800C4270 000C11B0  38 21 00 10 */ addi r1, r1, 0x10
/* 800C4274 000C11B4  4E 80 00 20 */ blr