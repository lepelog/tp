/* 800F8F84 000F5EC4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800F8F88 000F5EC8  7C 08 02 A6 */ mflr r0
/* 800F8F8C 000F5ECC  90 01 00 14 */ stw r0, 0x14(r1)
/* 800F8F90 000F5ED0  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800F8F94 000F5ED4  7C 7F 1B 78 */ mr r31, r3
/* 800F8F98 000F5ED8  A8 63 04 E6 */ lha r3, 0x4e6(r3)
/* 800F8F9C 000F5EDC  A8 1F 2F E2 */ lha r0, 0x2fe2(r31)
/* 800F8FA0 000F5EE0  7C 03 00 50 */ subf r0, r3, r0
/* 800F8FA4 000F5EE4  7C 03 07 34 */ extsh r3, r0
/* 800F8FA8 000F5EE8  4B FB A4 ED */ bl getDirectionFromAngle__9daAlink_cFs
/* 800F8FAC 000F5EEC  A8 BF 04 E6 */ lha r5, 0x4e6(r31)
/* 800F8FB0 000F5EF0  54 A0 04 38 */ rlwinm r0, r5, 0, 0x10, 0x1c
/* 800F8FB4 000F5EF4  3C 80 80 44 */ lis r4, lbl_80439A20@ha
/* 800F8FB8 000F5EF8  38 84 9A 20 */ addi r4, r4, lbl_80439A20@l
/* 800F8FBC 000F5EFC  7C 84 04 2E */ lfsx f4, r4, r0
/* 800F8FC0 000F5F00  38 84 00 04 */ addi r4, r4, 4
/* 800F8FC4 000F5F04  7C 04 04 2E */ lfsx f0, r4, r0
/* 800F8FC8 000F5F08  2C 03 00 02 */ cmpwi r3, 2
/* 800F8FCC 000F5F0C  40 82 00 7C */ bne lbl_800F9048
/* 800F8FD0 000F5F10  80 1F 31 98 */ lwz r0, 0x3198(r31)
/* 800F8FD4 000F5F14  54 00 07 7B */ rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800F8FD8 000F5F18  41 82 00 70 */ beq lbl_800F9048
/* 800F8FDC 000F5F1C  C0 3F 37 C8 */ lfs f1, 0x37c8(r31)
/* 800F8FE0 000F5F20  C0 62 93 2C */ lfs f3, lbl_80452D2C-_SDA2_BASE_(r2)
/* 800F8FE4 000F5F24  C0 42 93 54 */ lfs f2, lbl_80452D54-_SDA2_BASE_(r2)
/* 800F8FE8 000F5F28  EC 02 00 32 */ fmuls f0, f2, f0
/* 800F8FEC 000F5F2C  EC 03 00 32 */ fmuls f0, f3, f0
/* 800F8FF0 000F5F30  EC 01 00 2A */ fadds f0, f1, f0
/* 800F8FF4 000F5F34  D0 1F 37 C8 */ stfs f0, 0x37c8(r31)
/* 800F8FF8 000F5F38  C0 3F 37 D0 */ lfs f1, 0x37d0(r31)
/* 800F8FFC 000F5F3C  EC 02 01 32 */ fmuls f0, f2, f4
/* 800F9000 000F5F40  EC 03 00 32 */ fmuls f0, f3, f0
/* 800F9004 000F5F44  EC 01 00 28 */ fsubs f0, f1, f0
/* 800F9008 000F5F48  D0 1F 37 D0 */ stfs f0, 0x37d0(r31)
/* 800F900C 000F5F4C  A8 7F 04 DE */ lha r3, 0x4de(r31)
/* 800F9010 000F5F50  38 03 40 00 */ addi r0, r3, 0x4000
/* 800F9014 000F5F54  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 800F9018 000F5F58  A8 7F 04 DE */ lha r3, 0x4de(r31)
/* 800F901C 000F5F5C  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 800F9020 000F5F60  7C 03 00 00 */ cmpw r3, r0
/* 800F9024 000F5F64  40 82 00 10 */ bne lbl_800F9034
/* 800F9028 000F5F68  38 00 00 01 */ li r0, 1
/* 800F902C 000F5F6C  B0 1F 30 0E */ sth r0, 0x300e(r31)
/* 800F9030 000F5F70  48 00 00 0C */ b lbl_800F903C
lbl_800F9034:
/* 800F9034 000F5F74  38 00 FF FF */ li r0, -1
/* 800F9038 000F5F78  B0 1F 30 0E */ sth r0, 0x300e(r31)
lbl_800F903C:
/* 800F903C 000F5F7C  38 00 FF FF */ li r0, -1
/* 800F9040 000F5F80  B0 1F 30 08 */ sth r0, 0x3008(r31)
/* 800F9044 000F5F84  48 00 01 B8 */ b lbl_800F91FC
lbl_800F9048:
/* 800F9048 000F5F88  2C 03 00 03 */ cmpwi r3, 3
/* 800F904C 000F5F8C  40 82 00 7C */ bne lbl_800F90C8
/* 800F9050 000F5F90  80 1F 31 98 */ lwz r0, 0x3198(r31)
/* 800F9054 000F5F94  54 00 07 39 */ rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800F9058 000F5F98  41 82 00 70 */ beq lbl_800F90C8
/* 800F905C 000F5F9C  C0 3F 37 C8 */ lfs f1, 0x37c8(r31)
/* 800F9060 000F5FA0  C0 62 93 2C */ lfs f3, lbl_80452D2C-_SDA2_BASE_(r2)
/* 800F9064 000F5FA4  C0 42 93 54 */ lfs f2, lbl_80452D54-_SDA2_BASE_(r2)
/* 800F9068 000F5FA8  EC 02 00 32 */ fmuls f0, f2, f0
/* 800F906C 000F5FAC  EC 03 00 32 */ fmuls f0, f3, f0
/* 800F9070 000F5FB0  EC 01 00 28 */ fsubs f0, f1, f0
/* 800F9074 000F5FB4  D0 1F 37 C8 */ stfs f0, 0x37c8(r31)
/* 800F9078 000F5FB8  C0 3F 37 D0 */ lfs f1, 0x37d0(r31)
/* 800F907C 000F5FBC  EC 02 01 32 */ fmuls f0, f2, f4
/* 800F9080 000F5FC0  EC 03 00 32 */ fmuls f0, f3, f0
/* 800F9084 000F5FC4  EC 01 00 2A */ fadds f0, f1, f0
/* 800F9088 000F5FC8  D0 1F 37 D0 */ stfs f0, 0x37d0(r31)
/* 800F908C 000F5FCC  A8 7F 04 DE */ lha r3, 0x4de(r31)
/* 800F9090 000F5FD0  38 03 C0 00 */ addi r0, r3, -16384
/* 800F9094 000F5FD4  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 800F9098 000F5FD8  A8 7F 04 DE */ lha r3, 0x4de(r31)
/* 800F909C 000F5FDC  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 800F90A0 000F5FE0  7C 03 00 00 */ cmpw r3, r0
/* 800F90A4 000F5FE4  40 82 00 10 */ bne lbl_800F90B4
/* 800F90A8 000F5FE8  38 00 00 01 */ li r0, 1
/* 800F90AC 000F5FEC  B0 1F 30 0E */ sth r0, 0x300e(r31)
/* 800F90B0 000F5FF0  48 00 00 0C */ b lbl_800F90BC
lbl_800F90B4:
/* 800F90B4 000F5FF4  38 00 FF FF */ li r0, -1
/* 800F90B8 000F5FF8  B0 1F 30 0E */ sth r0, 0x300e(r31)
lbl_800F90BC:
/* 800F90BC 000F5FFC  38 00 FF FF */ li r0, -1
/* 800F90C0 000F6000  B0 1F 30 08 */ sth r0, 0x3008(r31)
/* 800F90C4 000F6004  48 00 01 38 */ b lbl_800F91FC
lbl_800F90C8:
/* 800F90C8 000F6008  80 1F 31 98 */ lwz r0, 0x3198(r31)
/* 800F90CC 000F600C  54 00 07 FF */ clrlwi. r0, r0, 0x1f
/* 800F90D0 000F6010  41 82 00 90 */ beq lbl_800F9160
/* 800F90D4 000F6014  A8 1F 04 DE */ lha r0, 0x4de(r31)
/* 800F90D8 000F6018  7C 05 00 00 */ cmpw r5, r0
/* 800F90DC 000F601C  40 82 00 0C */ bne lbl_800F90E8
/* 800F90E0 000F6020  2C 03 00 00 */ cmpwi r3, 0
/* 800F90E4 000F6024  41 82 00 14 */ beq lbl_800F90F8
lbl_800F90E8:
/* 800F90E8 000F6028  7C 05 00 00 */ cmpw r5, r0
/* 800F90EC 000F602C  41 82 00 74 */ beq lbl_800F9160
/* 800F90F0 000F6030  2C 03 00 01 */ cmpwi r3, 1
/* 800F90F4 000F6034  40 82 00 6C */ bne lbl_800F9160
lbl_800F90F8:
/* 800F90F8 000F6038  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800F90FC 000F603C  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800F9100 000F6040  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 800F9104 000F6044  7C 03 04 2E */ lfsx f0, r3, r0
/* 800F9108 000F6048  C0 3F 37 C8 */ lfs f1, 0x37c8(r31)
/* 800F910C 000F604C  C0 62 93 2C */ lfs f3, lbl_80452D2C-_SDA2_BASE_(r2)
/* 800F9110 000F6050  C0 42 93 54 */ lfs f2, lbl_80452D54-_SDA2_BASE_(r2)
/* 800F9114 000F6054  EC 02 00 32 */ fmuls f0, f2, f0
/* 800F9118 000F6058  EC 03 00 32 */ fmuls f0, f3, f0
/* 800F911C 000F605C  EC 01 00 2A */ fadds f0, f1, f0
/* 800F9120 000F6060  D0 1F 37 C8 */ stfs f0, 0x37c8(r31)
/* 800F9124 000F6064  A8 1F 04 DE */ lha r0, 0x4de(r31)
/* 800F9128 000F6068  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800F912C 000F606C  7C 04 04 2E */ lfsx f0, r4, r0
/* 800F9130 000F6070  C0 3F 37 D0 */ lfs f1, 0x37d0(r31)
/* 800F9134 000F6074  EC 02 00 32 */ fmuls f0, f2, f0
/* 800F9138 000F6078  EC 03 00 32 */ fmuls f0, f3, f0
/* 800F913C 000F607C  EC 01 00 2A */ fadds f0, f1, f0
/* 800F9140 000F6080  D0 1F 37 D0 */ stfs f0, 0x37d0(r31)
/* 800F9144 000F6084  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 800F9148 000F6088  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 800F914C 000F608C  38 00 00 00 */ li r0, 0
/* 800F9150 000F6090  B0 1F 30 0E */ sth r0, 0x300e(r31)
/* 800F9154 000F6094  38 00 FF FF */ li r0, -1
/* 800F9158 000F6098  B0 1F 30 08 */ sth r0, 0x3008(r31)
/* 800F915C 000F609C  48 00 00 A0 */ b lbl_800F91FC
lbl_800F9160:
/* 800F9160 000F60A0  A8 1F 04 DE */ lha r0, 0x4de(r31)
/* 800F9164 000F60A4  7C 05 00 00 */ cmpw r5, r0
/* 800F9168 000F60A8  40 82 00 0C */ bne lbl_800F9174
/* 800F916C 000F60AC  2C 03 00 01 */ cmpwi r3, 1
/* 800F9170 000F60B0  41 82 00 14 */ beq lbl_800F9184
lbl_800F9174:
/* 800F9174 000F60B4  7C 05 00 00 */ cmpw r5, r0
/* 800F9178 000F60B8  41 82 00 84 */ beq lbl_800F91FC
/* 800F917C 000F60BC  2C 03 00 00 */ cmpwi r3, 0
/* 800F9180 000F60C0  40 82 00 7C */ bne lbl_800F91FC
lbl_800F9184:
/* 800F9184 000F60C4  A8 7F 04 DE */ lha r3, 0x4de(r31)
/* 800F9188 000F60C8  3C 63 00 01 */ addis r3, r3, 1
/* 800F918C 000F60CC  38 03 80 00 */ addi r0, r3, -32768
/* 800F9190 000F60D0  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 800F9194 000F60D4  A8 1F 04 DE */ lha r0, 0x4de(r31)
/* 800F9198 000F60D8  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800F919C 000F60DC  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800F91A0 000F60E0  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 800F91A4 000F60E4  7C 03 04 2E */ lfsx f0, r3, r0
/* 800F91A8 000F60E8  C0 3F 37 C8 */ lfs f1, 0x37c8(r31)
/* 800F91AC 000F60EC  C0 62 93 2C */ lfs f3, lbl_80452D2C-_SDA2_BASE_(r2)
/* 800F91B0 000F60F0  C0 42 93 54 */ lfs f2, lbl_80452D54-_SDA2_BASE_(r2)
/* 800F91B4 000F60F4  EC 02 00 32 */ fmuls f0, f2, f0
/* 800F91B8 000F60F8  EC 03 00 32 */ fmuls f0, f3, f0
/* 800F91BC 000F60FC  EC 01 00 28 */ fsubs f0, f1, f0
/* 800F91C0 000F6100  D0 1F 37 C8 */ stfs f0, 0x37c8(r31)
/* 800F91C4 000F6104  A8 1F 04 DE */ lha r0, 0x4de(r31)
/* 800F91C8 000F6108  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800F91CC 000F610C  7C 04 04 2E */ lfsx f0, r4, r0
/* 800F91D0 000F6110  C0 3F 37 D0 */ lfs f1, 0x37d0(r31)
/* 800F91D4 000F6114  EC 02 00 32 */ fmuls f0, f2, f0
/* 800F91D8 000F6118  EC 03 00 32 */ fmuls f0, f3, f0
/* 800F91DC 000F611C  EC 01 00 28 */ fsubs f0, f1, f0
/* 800F91E0 000F6120  D0 1F 37 D0 */ stfs f0, 0x37d0(r31)
/* 800F91E4 000F6124  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 800F91E8 000F6128  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 800F91EC 000F612C  38 00 00 00 */ li r0, 0
/* 800F91F0 000F6130  B0 1F 30 0E */ sth r0, 0x300e(r31)
/* 800F91F4 000F6134  38 00 FF FF */ li r0, -1
/* 800F91F8 000F6138  B0 1F 30 08 */ sth r0, 0x3008(r31)
lbl_800F91FC:
/* 800F91FC 000F613C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800F9200 000F6140  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800F9204 000F6144  7C 08 03 A6 */ mtlr r0
/* 800F9208 000F6148  38 21 00 10 */ addi r1, r1, 0x10
/* 800F920C 000F614C  4E 80 00 20 */ blr
