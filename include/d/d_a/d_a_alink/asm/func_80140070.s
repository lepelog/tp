/* 80140070 0013CFB0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80140074 0013CFB4  7C 08 02 A6 */ mflr r0
/* 80140078 0013CFB8  90 01 00 14 */ stw r0, 0x14(r1)
/* 8014007C 0013CFBC  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80140080 0013CFC0  7C 7F 1B 78 */ mr r31, r3
/* 80140084 0013CFC4  88 83 2F BF */ lbz r4, 0x2fbf(r3)
/* 80140088 0013CFC8  28 04 00 00 */ cmplwi r4, 0
/* 8014008C 0013CFCC  41 82 01 4C */ beq lbl_801401D8
/* 80140090 0013CFD0  38 04 FF FF */ addi r0, r4, -1
/* 80140094 0013CFD4  98 1F 2F BF */ stb r0, 0x2fbf(r31)
/* 80140098 0013CFD8  88 1F 2F BF */ lbz r0, 0x2fbf(r31)
/* 8014009C 0013CFDC  28 00 00 02 */ cmplwi r0, 2
/* 801400A0 0013CFE0  40 82 00 94 */ bne lbl_80140134
/* 801400A4 0013CFE4  38 7F 21 88 */ addi r3, r31, 0x2188
/* 801400A8 0013CFE8  4B F5 C9 81 */ bl remove__8dEyeHL_cFv
/* 801400AC 0013CFEC  38 7F 21 9C */ addi r3, r31, 0x219c
/* 801400B0 0013CFF0  4B F5 C9 79 */ bl remove__8dEyeHL_cFv
/* 801400B4 0013CFF4  38 00 00 00 */ li r0, 0
/* 801400B8 0013CFF8  90 1F 07 9C */ stw r0, 0x79c(r31)
/* 801400BC 0013CFFC  90 1F 07 A0 */ stw r0, 0x7a0(r31)
/* 801400C0 0013D000  90 1F 07 A4 */ stw r0, 0x7a4(r31)
/* 801400C4 0013D004  90 1F 07 A8 */ stw r0, 0x7a8(r31)
/* 801400C8 0013D008  80 1F 05 78 */ lwz r0, 0x578(r31)
/* 801400CC 0013D00C  74 00 00 28 */ andis. r0, r0, 0x28
/* 801400D0 0013D010  40 82 01 10 */ bne lbl_801401E0
/* 801400D4 0013D014  38 7F 06 2C */ addi r3, r31, 0x62c
/* 801400D8 0013D018  80 9F 06 34 */ lwz r4, 0x634(r31)
/* 801400DC 0013D01C  4B EE CF 2D */ bl dComIfG_resDelete
/* 801400E0 0013D020  38 7F 06 2C */ addi r3, r31, 0x62c
/* 801400E4 0013D024  48 12 65 41 */ bl cPhs_Reset
/* 801400E8 0013D028  80 7F 06 38 */ lwz r3, 0x638(r31)
/* 801400EC 0013D02C  48 18 E4 E1 */ bl freeAll__7JKRHeapFv
/* 801400F0 0013D030  A0 1F 2F E8 */ lhz r0, 0x2fe8(r31)
/* 801400F4 0013D034  28 00 01 4D */ cmplwi r0, 0x14d
/* 801400F8 0013D038  41 82 00 0C */ beq lbl_80140104
/* 801400FC 0013D03C  28 00 01 4E */ cmplwi r0, 0x14e
/* 80140100 0013D040  40 82 00 20 */ bne lbl_80140120
lbl_80140104:
/* 80140104 0013D044  7F E3 FB 78 */ mr r3, r31
/* 80140108 0013D048  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 8014010C 0013D04C  54 00 01 8C */ rlwinm r0, r0, 0, 6, 6
/* 80140110 0013D050  7C 00 00 34 */ cntlzw r0, r0
/* 80140114 0013D054  54 04 DE 3E */ rlwinm r4, r0, 0x1b, 0x18, 0x1f
/* 80140118 0013D058  4B FF FE 11 */ bl daAlink_c_NS_setArcName
/* 8014011C 0013D05C  48 00 00 C4 */ b lbl_801401E0
lbl_80140120:
/* 80140120 0013D060  7F E3 FB 78 */ mr r3, r31
/* 80140124 0013D064  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 80140128 0013D068  54 04 01 8C */ rlwinm r4, r0, 0, 6, 6
/* 8014012C 0013D06C  4B FF FD FD */ bl daAlink_c_NS_setArcName
/* 80140130 0013D070  48 00 00 B0 */ b lbl_801401E0
lbl_80140134:
/* 80140134 0013D074  28 00 00 01 */ cmplwi r0, 1
/* 80140138 0013D078  40 82 00 A8 */ bne lbl_801401E0
/* 8014013C 0013D07C  80 1F 05 78 */ lwz r0, 0x578(r31)
/* 80140140 0013D080  74 00 00 28 */ andis. r0, r0, 0x28
/* 80140144 0013D084  41 82 00 18 */ beq lbl_8014015C
/* 80140148 0013D088  38 00 00 00 */ li r0, 0
/* 8014014C 0013D08C  98 1F 2F BF */ stb r0, 0x2fbf(r31)
/* 80140150 0013D090  38 80 00 01 */ li r4, 1
/* 80140154 0013D094  4B FE 6D E9 */ bl daAlink_c_NS_changeLink
/* 80140158 0013D098  48 00 00 88 */ b lbl_801401E0
lbl_8014015C:
/* 8014015C 0013D09C  38 7F 06 2C */ addi r3, r31, 0x62c
/* 80140160 0013D0A0  80 9F 06 34 */ lwz r4, 0x634(r31)
/* 80140164 0013D0A4  80 BF 06 38 */ lwz r5, 0x638(r31)
/* 80140168 0013D0A8  4B EE CE 59 */ bl dComIfG_resLoad_X1_
/* 8014016C 0013D0AC  2C 03 00 04 */ cmpwi r3, 4
/* 80140170 0013D0B0  40 82 00 5C */ bne lbl_801401CC
/* 80140174 0013D0B4  38 00 00 00 */ li r0, 0
/* 80140178 0013D0B8  98 1F 2F BF */ stb r0, 0x2fbf(r31)
/* 8014017C 0013D0BC  A0 1F 2F E8 */ lhz r0, 0x2fe8(r31)
/* 80140180 0013D0C0  28 00 01 4D */ cmplwi r0, 0x14d
/* 80140184 0013D0C4  41 82 00 0C */ beq lbl_80140190
/* 80140188 0013D0C8  28 00 01 4E */ cmplwi r0, 0x14e
/* 8014018C 0013D0CC  40 82 00 2C */ bne lbl_801401B8
lbl_80140190:
/* 80140190 0013D0D0  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 80140194 0013D0D4  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 80140198 0013D0D8  41 82 00 14 */ beq lbl_801401AC
/* 8014019C 0013D0DC  7F E3 FB 78 */ mr r3, r31
/* 801401A0 0013D0E0  38 80 00 00 */ li r4, 0
/* 801401A4 0013D0E4  4B FE 6D 99 */ bl daAlink_c_NS_changeLink
/* 801401A8 0013D0E8  48 00 00 1C */ b lbl_801401C4
lbl_801401AC:
/* 801401AC 0013D0EC  7F E3 FB 78 */ mr r3, r31
/* 801401B0 0013D0F0  4B FE 67 79 */ bl daAlink_c_NS_changeWolf
/* 801401B4 0013D0F4  48 00 00 10 */ b lbl_801401C4
lbl_801401B8:
/* 801401B8 0013D0F8  7F E3 FB 78 */ mr r3, r31
/* 801401BC 0013D0FC  38 80 00 01 */ li r4, 1
/* 801401C0 0013D100  4B FE 6D 7D */ bl daAlink_c_NS_changeLink
lbl_801401C4:
/* 801401C4 0013D104  38 60 00 01 */ li r3, 1
/* 801401C8 0013D108  48 00 00 1C */ b lbl_801401E4
lbl_801401CC:
/* 801401CC 0013D10C  38 00 00 02 */ li r0, 2
/* 801401D0 0013D110  98 1F 2F BF */ stb r0, 0x2fbf(r31)
/* 801401D4 0013D114  48 00 00 0C */ b lbl_801401E0
lbl_801401D8:
/* 801401D8 0013D118  38 60 00 01 */ li r3, 1
/* 801401DC 0013D11C  48 00 00 08 */ b lbl_801401E4
lbl_801401E0:
/* 801401E0 0013D120  38 60 00 00 */ li r3, 0
lbl_801401E4:
/* 801401E4 0013D124  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 801401E8 0013D128  80 01 00 14 */ lwz r0, 0x14(r1)
/* 801401EC 0013D12C  7C 08 03 A6 */ mtlr r0
/* 801401F0 0013D130  38 21 00 10 */ addi r1, r1, 0x10
/* 801401F4 0013D134  4E 80 00 20 */ blr
