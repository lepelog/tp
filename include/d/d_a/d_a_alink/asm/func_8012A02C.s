/* 8012A02C 00126F6C  94 21 FF 90 */ stwu r1, -0x70(r1)
/* 8012A030 00126F70  7C 08 02 A6 */ mflr r0
/* 8012A034 00126F74  90 01 00 74 */ stw r0, 0x74(r1)
/* 8012A038 00126F78  DB E1 00 60 */ stfd f31, 0x60(r1)
/* 8012A03C 00126F7C  F3 E1 00 68 */ psq_st f31, 104(r1), 0, 0
/* 8012A040 00126F80  DB C1 00 50 */ stfd f30, 0x50(r1)
/* 8012A044 00126F84  F3 C1 00 58 */ psq_st f30, 88(r1), 0, 0
/* 8012A048 00126F88  DB A1 00 40 */ stfd f29, 0x40(r1)
/* 8012A04C 00126F8C  F3 A1 00 48 */ psq_st f29, 72(r1), 0, 0
/* 8012A050 00126F90  DB 81 00 30 */ stfd f28, 0x30(r1)
/* 8012A054 00126F94  F3 81 00 38 */ psq_st f28, 56(r1), 0, 0
/* 8012A058 00126F98  93 E1 00 2C */ stw r31, 0x2c(r1)
/* 8012A05C 00126F9C  93 C1 00 28 */ stw r30, 0x28(r1)
/* 8012A060 00126FA0  7C 7E 1B 78 */ mr r30, r3
/* 8012A064 00126FA4  A8 A3 04 DE */ lha r5, 0x4de(r3)
/* 8012A068 00126FA8  7C 04 28 50 */ subf r0, r4, r5
/* 8012A06C 00126FAC  7C 1F 07 35 */ extsh. r31, r0
/* 8012A070 00126FB0  40 82 00 0C */ bne lbl_8012A07C
/* 8012A074 00126FB4  38 60 00 00 */ li r3, 0
/* 8012A078 00126FB8  48 00 01 78 */ b lbl_8012A1F0
lbl_8012A07C:
/* 8012A07C 00126FBC  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 8012A080 00126FC0  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 8012A084 00126FC4  38 C3 00 04 */ addi r6, r3, 4
/* 8012A088 00126FC8  54 80 04 38 */ rlwinm r0, r4, 0, 0x10, 0x1c
/* 8012A08C 00126FCC  7F E6 04 2E */ lfsx f31, r6, r0
/* 8012A090 00126FD0  7F C3 04 2E */ lfsx f30, r3, r0
/* 8012A094 00126FD4  54 A0 04 38 */ rlwinm r0, r5, 0, 0x10, 0x1c
/* 8012A098 00126FD8  7F A6 04 2E */ lfsx f29, r6, r0
/* 8012A09C 00126FDC  7F 83 04 2E */ lfsx f28, r3, r0
/* 8012A0A0 00126FE0  C0 7E 04 D8 */ lfs f3, 0x4d8(r30)
/* 8012A0A4 00126FE4  C0 42 94 68 */ lfs f2, lbl_80452E68-_SDA2_BASE_(r2)
/* 8012A0A8 00126FE8  EC 02 07 F2 */ fmuls f0, f2, f31
/* 8012A0AC 00126FEC  EC A3 00 2A */ fadds f5, f3, f0
/* 8012A0B0 00126FF0  C0 3E 04 D4 */ lfs f1, 0x4d4(r30)
/* 8012A0B4 00126FF4  C0 1E 19 60 */ lfs f0, 0x1960(r30)
/* 8012A0B8 00126FF8  EC 81 00 2A */ fadds f4, f1, f0
/* 8012A0BC 00126FFC  C0 3E 04 D0 */ lfs f1, 0x4d0(r30)
/* 8012A0C0 00127000  EC 02 07 B2 */ fmuls f0, f2, f30
/* 8012A0C4 00127004  EC 01 00 2A */ fadds f0, f1, f0
/* 8012A0C8 00127008  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 8012A0CC 0012700C  D0 81 00 18 */ stfs f4, 0x18(r1)
/* 8012A0D0 00127010  D0 A1 00 1C */ stfs f5, 0x1c(r1)
/* 8012A0D4 00127014  EC 02 07 72 */ fmuls f0, f2, f29
/* 8012A0D8 00127018  EC 63 00 2A */ fadds f3, f3, f0
/* 8012A0DC 0012701C  EC 02 07 32 */ fmuls f0, f2, f28
/* 8012A0E0 00127020  EC 41 00 2A */ fadds f2, f1, f0
/* 8012A0E4 00127024  D0 41 00 08 */ stfs f2, 8(r1)
/* 8012A0E8 00127028  D0 81 00 0C */ stfs f4, 0xc(r1)
/* 8012A0EC 0012702C  D0 61 00 10 */ stfs f3, 0x10(r1)
/* 8012A0F0 00127030  7F E0 07 35 */ extsh. r0, r31
/* 8012A0F4 00127034  40 81 00 24 */ ble lbl_8012A118
/* 8012A0F8 00127038  C0 22 93 BC */ lfs f1, lbl_80452DBC-_SDA2_BASE_(r2)
/* 8012A0FC 0012703C  EC 01 07 72 */ fmuls f0, f1, f29
/* 8012A100 00127040  EC 02 00 2A */ fadds f0, f2, f0
/* 8012A104 00127044  D0 01 00 08 */ stfs f0, 8(r1)
/* 8012A108 00127048  EC 01 07 32 */ fmuls f0, f1, f28
/* 8012A10C 0012704C  EC 03 00 28 */ fsubs f0, f3, f0
/* 8012A110 00127050  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 8012A114 00127054  48 00 00 20 */ b lbl_8012A134
lbl_8012A118:
/* 8012A118 00127058  C0 22 93 BC */ lfs f1, lbl_80452DBC-_SDA2_BASE_(r2)
/* 8012A11C 0012705C  EC 01 07 72 */ fmuls f0, f1, f29
/* 8012A120 00127060  EC 02 00 28 */ fsubs f0, f2, f0
/* 8012A124 00127064  D0 01 00 08 */ stfs f0, 8(r1)
/* 8012A128 00127068  EC 01 07 32 */ fmuls f0, f1, f28
/* 8012A12C 0012706C  EC 03 00 2A */ fadds f0, f3, f0
/* 8012A130 00127070  D0 01 00 10 */ stfs f0, 0x10(r1)
lbl_8012A134:
/* 8012A134 00127074  7F C3 F3 78 */ mr r3, r30
/* 8012A138 00127078  38 81 00 14 */ addi r4, r1, 0x14
/* 8012A13C 0012707C  38 A1 00 08 */ addi r5, r1, 8
/* 8012A140 00127080  4B F7 80 59 */ bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 8012A144 00127084  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8012A148 00127088  41 82 00 A4 */ beq lbl_8012A1EC
/* 8012A14C 0012708C  C0 7E 04 D0 */ lfs f3, 0x4d0(r30)
/* 8012A150 00127090  C0 42 93 00 */ lfs f2, lbl_80452D00-_SDA2_BASE_(r2)
/* 8012A154 00127094  EC 02 07 B2 */ fmuls f0, f2, f30
/* 8012A158 00127098  EC 03 00 28 */ fsubs f0, f3, f0
/* 8012A15C 0012709C  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 8012A160 001270A0  C0 3E 04 D8 */ lfs f1, 0x4d8(r30)
/* 8012A164 001270A4  EC 02 07 F2 */ fmuls f0, f2, f31
/* 8012A168 001270A8  EC 01 00 28 */ fsubs f0, f1, f0
/* 8012A16C 001270AC  D0 01 00 1C */ stfs f0, 0x1c(r1)
/* 8012A170 001270B0  EC 02 07 32 */ fmuls f0, f2, f28
/* 8012A174 001270B4  EC 63 00 28 */ fsubs f3, f3, f0
/* 8012A178 001270B8  D0 61 00 08 */ stfs f3, 8(r1)
/* 8012A17C 001270BC  EC 02 07 72 */ fmuls f0, f2, f29
/* 8012A180 001270C0  EC 41 00 28 */ fsubs f2, f1, f0
/* 8012A184 001270C4  D0 41 00 10 */ stfs f2, 0x10(r1)
/* 8012A188 001270C8  7F E0 07 35 */ extsh. r0, r31
/* 8012A18C 001270CC  40 81 00 24 */ ble lbl_8012A1B0
/* 8012A190 001270D0  C0 22 93 BC */ lfs f1, lbl_80452DBC-_SDA2_BASE_(r2)
/* 8012A194 001270D4  EC 01 07 72 */ fmuls f0, f1, f29
/* 8012A198 001270D8  EC 03 00 28 */ fsubs f0, f3, f0
/* 8012A19C 001270DC  D0 01 00 08 */ stfs f0, 8(r1)
/* 8012A1A0 001270E0  EC 01 07 32 */ fmuls f0, f1, f28
/* 8012A1A4 001270E4  EC 02 00 2A */ fadds f0, f2, f0
/* 8012A1A8 001270E8  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 8012A1AC 001270EC  48 00 00 20 */ b lbl_8012A1CC
lbl_8012A1B0:
/* 8012A1B0 001270F0  C0 22 93 BC */ lfs f1, lbl_80452DBC-_SDA2_BASE_(r2)
/* 8012A1B4 001270F4  EC 01 07 72 */ fmuls f0, f1, f29
/* 8012A1B8 001270F8  EC 03 00 2A */ fadds f0, f3, f0
/* 8012A1BC 001270FC  D0 01 00 08 */ stfs f0, 8(r1)
/* 8012A1C0 00127100  EC 01 07 32 */ fmuls f0, f1, f28
/* 8012A1C4 00127104  EC 02 00 28 */ fsubs f0, f2, f0
/* 8012A1C8 00127108  D0 01 00 10 */ stfs f0, 0x10(r1)
lbl_8012A1CC:
/* 8012A1CC 0012710C  7F C3 F3 78 */ mr r3, r30
/* 8012A1D0 00127110  38 81 00 14 */ addi r4, r1, 0x14
/* 8012A1D4 00127114  38 A1 00 08 */ addi r5, r1, 8
/* 8012A1D8 00127118  4B F7 7F C1 */ bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 8012A1DC 0012711C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8012A1E0 00127120  41 82 00 0C */ beq lbl_8012A1EC
/* 8012A1E4 00127124  38 60 00 01 */ li r3, 1
/* 8012A1E8 00127128  48 00 00 08 */ b lbl_8012A1F0
lbl_8012A1EC:
/* 8012A1EC 0012712C  38 60 00 00 */ li r3, 0
lbl_8012A1F0:
/* 8012A1F0 00127130  E3 E1 00 68 */ psq_l f31, 104(r1), 0, 0
/* 8012A1F4 00127134  CB E1 00 60 */ lfd f31, 0x60(r1)
/* 8012A1F8 00127138  E3 C1 00 58 */ psq_l f30, 88(r1), 0, 0
/* 8012A1FC 0012713C  CB C1 00 50 */ lfd f30, 0x50(r1)
/* 8012A200 00127140  E3 A1 00 48 */ psq_l f29, 72(r1), 0, 0
/* 8012A204 00127144  CB A1 00 40 */ lfd f29, 0x40(r1)
/* 8012A208 00127148  E3 81 00 38 */ psq_l f28, 56(r1), 0, 0
/* 8012A20C 0012714C  CB 81 00 30 */ lfd f28, 0x30(r1)
/* 8012A210 00127150  83 E1 00 2C */ lwz r31, 0x2c(r1)
/* 8012A214 00127154  83 C1 00 28 */ lwz r30, 0x28(r1)
/* 8012A218 00127158  80 01 00 74 */ lwz r0, 0x74(r1)
/* 8012A21C 0012715C  7C 08 03 A6 */ mtlr r0
/* 8012A220 00127160  38 21 00 70 */ addi r1, r1, 0x70
/* 8012A224 00127164  4E 80 00 20 */ blr
