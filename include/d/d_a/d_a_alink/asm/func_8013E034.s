/* 8013E034 0013AF74  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8013E038 0013AF78  7C 08 02 A6 */ mflr r0
/* 8013E03C 0013AF7C  90 01 00 14 */ stw r0, 0x14(r1)
/* 8013E040 0013AF80  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8013E044 0013AF84  93 C1 00 08 */ stw r30, 8(r1)
/* 8013E048 0013AF88  7C 7F 1B 78 */ mr r31, r3
/* 8013E04C 0013AF8C  38 9F 1F D0 */ addi r4, r31, 0x1fd0
/* 8013E050 0013AF90  A8 03 30 0C */ lha r0, 0x300c(r3)
/* 8013E054 0013AF94  2C 00 00 00 */ cmpwi r0, 0
/* 8013E058 0013AF98  40 82 01 78 */ bne lbl_8013E1D0
/* 8013E05C 0013AF9C  83 DF 28 10 */ lwz r30, 0x2810(r31)
/* 8013E060 0013AFA0  28 1E 00 00 */ cmplwi r30, 0
/* 8013E064 0013AFA4  40 82 00 18 */ bne lbl_8013E07C
/* 8013E068 0013AFA8  4B FD 9C 29 */ bl resetSpecialEvent__9daAlink_cFv
/* 8013E06C 0013AFAC  7F E3 FB 78 */ mr r3, r31
/* 8013E070 0013AFB0  4B FE F1 39 */ bl procWolfWaitInit__9daAlink_cFv
/* 8013E074 0013AFB4  38 60 00 01 */ li r3, 1
/* 8013E078 0013AFB8  48 00 01 B0 */ b lbl_8013E228
lbl_8013E07C:
/* 8013E07C 0013AFBC  88 1F 2F 8E */ lbz r0, 0x2f8e(r31)
/* 8013E080 0013AFC0  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8013E084 0013AFC4  41 82 00 10 */ beq lbl_8013E094
/* 8013E088 0013AFC8  80 1F 19 9C */ lwz r0, 0x199c(r31)
/* 8013E08C 0013AFCC  54 00 06 B5 */ rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8013E090 0013AFD0  40 82 00 28 */ bne lbl_8013E0B8
lbl_8013E094:
/* 8013E094 0013AFD4  7F E3 FB 78 */ mr r3, r31
/* 8013E098 0013AFD8  4B FD 9B F9 */ bl resetSpecialEvent__9daAlink_cFv
/* 8013E09C 0013AFDC  88 1E 05 8D */ lbz r0, 0x58d(r30)
/* 8013E0A0 0013AFE0  60 00 00 04 */ ori r0, r0, 4
/* 8013E0A4 0013AFE4  98 1E 05 8D */ stb r0, 0x58d(r30)
/* 8013E0A8 0013AFE8  7F E3 FB 78 */ mr r3, r31
/* 8013E0AC 0013AFEC  4B FE F0 FD */ bl procWolfWaitInit__9daAlink_cFv
/* 8013E0B0 0013AFF0  38 60 00 01 */ li r3, 1
/* 8013E0B4 0013AFF4  48 00 01 74 */ b lbl_8013E228
lbl_8013E0B8:
/* 8013E0B8 0013AFF8  7C 83 23 78 */ mr r3, r4
/* 8013E0BC 0013AFFC  48 02 04 11 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013E0C0 0013B000  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8013E0C4 0013B004  41 82 00 10 */ beq lbl_8013E0D4
/* 8013E0C8 0013B008  7F E3 FB 78 */ mr r3, r31
/* 8013E0CC 0013B00C  38 80 00 8E */ li r4, 0x8e
/* 8013E0D0 0013B010  4B FE B5 A9 */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfWolfBase
lbl_8013E0D4:
/* 8013E0D4 0013B014  C0 3F 33 AC */ lfs f1, 0x33ac(r31)
/* 8013E0D8 0013B018  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 8013E0DC 0013B01C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8013E0E0 0013B020  40 81 00 20 */ ble lbl_8013E100
/* 8013E0E4 0013B024  A8 7F 2F E0 */ lha r3, 0x2fe0(r31)
/* 8013E0E8 0013B028  4B F7 53 AD */ bl getDirectionFromAngle__9daAlink_cFs
/* 8013E0EC 0013B02C  2C 03 00 02 */ cmpwi r3, 2
/* 8013E0F0 0013B030  41 82 00 0C */ beq lbl_8013E0FC
/* 8013E0F4 0013B034  2C 03 00 03 */ cmpwi r3, 3
/* 8013E0F8 0013B038  40 82 00 08 */ bne lbl_8013E100
lbl_8013E0FC:
/* 8013E0FC 0013B03C  B0 7F 30 10 */ sth r3, 0x3010(r31)
lbl_8013E100:
/* 8013E100 0013B040  38 7F 33 98 */ addi r3, r31, 0x3398
/* 8013E104 0013B044  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8013E108 0013B048  C0 42 92 B8 */ lfs f2, lbl_80452CB8-_SDA2_BASE_(r2)
/* 8013E10C 0013B04C  48 13 26 35 */ bl cLib_chaseF__FPfff
/* 8013E110 0013B050  2C 03 00 00 */ cmpwi r3, 0
/* 8013E114 0013B054  41 82 00 A0 */ beq lbl_8013E1B4
/* 8013E118 0013B058  A8 7F 30 12 */ lha r3, 0x3012(r31)
/* 8013E11C 0013B05C  2C 03 00 00 */ cmpwi r3, 0
/* 8013E120 0013B060  41 82 00 10 */ beq lbl_8013E130
/* 8013E124 0013B064  38 03 FF FF */ addi r0, r3, -1
/* 8013E128 0013B068  B0 1F 30 12 */ sth r0, 0x3012(r31)
/* 8013E12C 0013B06C  48 00 00 F8 */ b lbl_8013E224
lbl_8013E130:
/* 8013E130 0013B070  A8 1F 30 10 */ lha r0, 0x3010(r31)
/* 8013E134 0013B074  2C 00 00 02 */ cmpwi r0, 2
/* 8013E138 0013B078  40 82 00 20 */ bne lbl_8013E158
/* 8013E13C 0013B07C  7F E3 FB 78 */ mr r3, r31
/* 8013E140 0013B080  38 80 00 8F */ li r4, 0x8f
/* 8013E144 0013B084  4B FE B5 35 */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfWolfBase
/* 8013E148 0013B088  88 1E 05 8D */ lbz r0, 0x58d(r30)
/* 8013E14C 0013B08C  60 00 00 08 */ ori r0, r0, 8
/* 8013E150 0013B090  98 1E 05 8D */ stb r0, 0x58d(r30)
/* 8013E154 0013B094  48 00 00 4C */ b lbl_8013E1A0
lbl_8013E158:
/* 8013E158 0013B098  2C 00 00 03 */ cmpwi r0, 3
/* 8013E15C 0013B09C  40 82 00 20 */ bne lbl_8013E17C
/* 8013E160 0013B0A0  7F E3 FB 78 */ mr r3, r31
/* 8013E164 0013B0A4  38 80 00 91 */ li r4, 0x91
/* 8013E168 0013B0A8  4B FE B5 11 */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfWolfBase
/* 8013E16C 0013B0AC  88 1E 05 8D */ lbz r0, 0x58d(r30)
/* 8013E170 0013B0B0  60 00 00 10 */ ori r0, r0, 0x10
/* 8013E174 0013B0B4  98 1E 05 8D */ stb r0, 0x58d(r30)
/* 8013E178 0013B0B8  48 00 00 28 */ b lbl_8013E1A0
lbl_8013E17C:
/* 8013E17C 0013B0BC  7F E3 FB 78 */ mr r3, r31
/* 8013E180 0013B0C0  4B FD 9B 11 */ bl resetSpecialEvent__9daAlink_cFv
/* 8013E184 0013B0C4  88 1E 05 8D */ lbz r0, 0x58d(r30)
/* 8013E188 0013B0C8  60 00 00 04 */ ori r0, r0, 4
/* 8013E18C 0013B0CC  98 1E 05 8D */ stb r0, 0x58d(r30)
/* 8013E190 0013B0D0  7F E3 FB 78 */ mr r3, r31
/* 8013E194 0013B0D4  4B FE F0 15 */ bl procWolfWaitInit__9daAlink_cFv
/* 8013E198 0013B0D8  38 60 00 01 */ li r3, 1
/* 8013E19C 0013B0DC  48 00 00 8C */ b lbl_8013E228
lbl_8013E1A0:
/* 8013E1A0 0013B0E0  38 00 00 01 */ li r0, 1
/* 8013E1A4 0013B0E4  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 8013E1A8 0013B0E8  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 8013E1AC 0013B0EC  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 8013E1B0 0013B0F0  48 00 00 74 */ b lbl_8013E224
lbl_8013E1B4:
/* 8013E1B4 0013B0F4  C0 3F 33 98 */ lfs f1, 0x3398(r31)
/* 8013E1B8 0013B0F8  C0 02 93 3C */ lfs f0, lbl_80452D3C-_SDA2_BASE_(r2)
/* 8013E1BC 0013B0FC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8013E1C0 0013B100  40 81 00 64 */ ble lbl_8013E224
/* 8013E1C4 0013B104  38 00 00 60 */ li r0, 0x60
/* 8013E1C8 0013B108  98 1F 2F 9D */ stb r0, 0x2f9d(r31)
/* 8013E1CC 0013B10C  48 00 00 58 */ b lbl_8013E224
lbl_8013E1D0:
/* 8013E1D0 0013B110  7C 83 23 78 */ mr r3, r4
/* 8013E1D4 0013B114  48 02 02 F9 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013E1D8 0013B118  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8013E1DC 0013B11C  41 82 00 2C */ beq lbl_8013E208
/* 8013E1E0 0013B120  A8 1F 30 10 */ lha r0, 0x3010(r31)
/* 8013E1E4 0013B124  2C 00 00 02 */ cmpwi r0, 2
/* 8013E1E8 0013B128  40 82 00 14 */ bne lbl_8013E1FC
/* 8013E1EC 0013B12C  7F E3 FB 78 */ mr r3, r31
/* 8013E1F0 0013B130  38 80 00 90 */ li r4, 0x90
/* 8013E1F4 0013B134  4B FE B4 85 */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfWolfBase
/* 8013E1F8 0013B138  48 00 00 10 */ b lbl_8013E208
lbl_8013E1FC:
/* 8013E1FC 0013B13C  7F E3 FB 78 */ mr r3, r31
/* 8013E200 0013B140  38 80 00 92 */ li r4, 0x92
/* 8013E204 0013B144  4B FE B4 75 */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsfWolfBase
lbl_8013E208:
/* 8013E208 0013B148  A8 1F 30 0E */ lha r0, 0x300e(r31)
/* 8013E20C 0013B14C  2C 00 00 00 */ cmpwi r0, 0
/* 8013E210 0013B150  41 82 00 14 */ beq lbl_8013E224
/* 8013E214 0013B154  7F E3 FB 78 */ mr r3, r31
/* 8013E218 0013B158  4B FD 9A 79 */ bl resetSpecialEvent__9daAlink_cFv
/* 8013E21C 0013B15C  7F E3 FB 78 */ mr r3, r31
/* 8013E220 0013B160  4B FE EF 89 */ bl procWolfWaitInit__9daAlink_cFv
lbl_8013E224:
/* 8013E224 0013B164  38 60 00 01 */ li r3, 1
lbl_8013E228:
/* 8013E228 0013B168  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8013E22C 0013B16C  83 C1 00 08 */ lwz r30, 8(r1)
/* 8013E230 0013B170  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8013E234 0013B174  7C 08 03 A6 */ mtlr r0
/* 8013E238 0013B178  38 21 00 10 */ addi r1, r1, 0x10
/* 8013E23C 0013B17C  4E 80 00 20 */ blr
