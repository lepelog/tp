/* 800F7760 000F46A0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800F7764 000F46A4  7C 08 02 A6 */ mflr r0
/* 800F7768 000F46A8  90 01 00 14 */ stw r0, 0x14(r1)
/* 800F776C 000F46AC  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800F7770 000F46B0  7C 7F 1B 78 */ mr r31, r3
/* 800F7774 000F46B4  38 80 00 A2 */ li r4, 0xa2
/* 800F7778 000F46B8  4B FC B6 2D */ bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F777C 000F46BC  2C 03 00 00 */ cmpwi r3, 0
/* 800F7780 000F46C0  40 82 00 0C */ bne lbl_800F778C
/* 800F7784 000F46C4  38 60 00 01 */ li r3, 1
/* 800F7788 000F46C8  48 00 00 78 */ b lbl_800F7800
lbl_800F778C:
/* 800F778C 000F46CC  7F E3 FB 78 */ mr r3, r31
/* 800F7790 000F46D0  38 80 00 19 */ li r4, 0x19
/* 800F7794 000F46D4  3C A0 80 39 */ lis r5, lbl_8038D6BC@ha
/* 800F7798 000F46D8  38 A5 D6 BC */ addi r5, r5, lbl_8038D6BC@l
/* 800F779C 000F46DC  C0 25 00 1C */ lfs f1, 0x1c(r5)
/* 800F77A0 000F46E0  C0 42 92 C4 */ lfs f2, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800F77A4 000F46E4  4B FB 58 3D */ bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800F77A8 000F46E8  7F E3 FB 78 */ mr r3, r31
/* 800F77AC 000F46EC  38 80 02 60 */ li r4, 0x260
/* 800F77B0 000F46F0  4B FB 5B 91 */ bl setUpperAnimeBase__9daAlink_cFUs
/* 800F77B4 000F46F4  38 00 00 FE */ li r0, 0xfe
/* 800F77B8 000F46F8  98 1F 2F 96 */ stb r0, 0x2f96(r31)
/* 800F77BC 000F46FC  38 00 00 08 */ li r0, 8
/* 800F77C0 000F4700  98 1F 2F 97 */ stb r0, 0x2f97(r31)
/* 800F77C4 000F4704  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800F77C8 000F4708  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 800F77CC 000F470C  38 00 00 00 */ li r0, 0
/* 800F77D0 000F4710  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 800F77D4 000F4714  B0 1F 30 0E */ sth r0, 0x300e(r31)
/* 800F77D8 000F4718  38 00 00 01 */ li r0, 1
/* 800F77DC 000F471C  B0 1F 30 18 */ sth r0, 0x3018(r31)
/* 800F77E0 000F4720  A0 7F 2F DC */ lhz r3, 0x2fdc(r31)
/* 800F77E4 000F4724  48 06 72 3D */ bl checkFishingRodItem__9daPy_py_cFi
/* 800F77E8 000F4728  2C 03 00 00 */ cmpwi r3, 0
/* 800F77EC 000F472C  41 82 00 10 */ beq lbl_800F77FC
/* 800F77F0 000F4730  80 1F 05 78 */ lwz r0, 0x578(r31)
/* 800F77F4 000F4734  64 00 20 00 */ oris r0, r0, 0x2000
/* 800F77F8 000F4738  90 1F 05 78 */ stw r0, 0x578(r31)
lbl_800F77FC:
/* 800F77FC 000F473C  38 60 00 01 */ li r3, 1
lbl_800F7800:
/* 800F7800 000F4740  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800F7804 000F4744  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800F7808 000F4748  7C 08 03 A6 */ mtlr r0
/* 800F780C 000F474C  38 21 00 10 */ addi r1, r1, 0x10
/* 800F7810 000F4750  4E 80 00 20 */ blr