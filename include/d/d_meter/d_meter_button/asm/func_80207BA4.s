/* 80207BA4 00204AE4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80207BA8 00204AE8  7C 08 02 A6 */ mflr r0
/* 80207BAC 00204AEC  90 01 00 14 */ stw r0, 0x14(r1)
/* 80207BB0 00204AF0  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80207BB4 00204AF4  7C 7F 1B 78 */ mr r31, r3
/* 80207BB8 00204AF8  80 63 00 38 */ lwz r3, 0x38(r3)
/* 80207BBC 00204AFC  48 04 DC 6D */ bl getAlphaRate__13CPaneMgrAlphaFv
/* 80207BC0 00204B00  C0 02 AD 48 */ lfs f0, lbl_80454748-_SDA2_BASE_(r2)
/* 80207BC4 00204B04  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80207BC8 00204B08  41 82 00 58 */ beq lbl_80207C20
/* 80207BCC 00204B0C  A8 1F 04 92 */ lha r0, 0x492(r31)
/* 80207BD0 00204B10  2C 00 00 00 */ cmpwi r0, 0
/* 80207BD4 00204B14  40 82 00 0C */ bne lbl_80207BE0
/* 80207BD8 00204B18  38 00 00 1E */ li r0, 0x1e
/* 80207BDC 00204B1C  B0 1F 04 92 */ sth r0, 0x492(r31)
lbl_80207BE0:
/* 80207BE0 00204B20  80 7F 00 38 */ lwz r3, 0x38(r31)
/* 80207BE4 00204B24  C0 22 AD 48 */ lfs f1, lbl_80454748-_SDA2_BASE_(r2)
/* 80207BE8 00204B28  48 04 DB E9 */ bl setAlphaRate__13CPaneMgrAlphaFf
/* 80207BEC 00204B2C  38 00 00 00 */ li r0, 0
/* 80207BF0 00204B30  80 7F 00 38 */ lwz r3, 0x38(r31)
/* 80207BF4 00204B34  B0 03 00 16 */ sth r0, 0x16(r3)
/* 80207BF8 00204B38  80 7F 00 38 */ lwz r3, 0x38(r31)
/* 80207BFC 00204B3C  48 04 DC 2D */ bl getAlphaRate__13CPaneMgrAlphaFv
/* 80207C00 00204B40  C0 02 AD 48 */ lfs f0, lbl_80454748-_SDA2_BASE_(r2)
/* 80207C04 00204B44  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80207C08 00204B48  40 82 00 18 */ bne lbl_80207C20
/* 80207C0C 00204B4C  7F E3 FB 78 */ mr r3, r31
/* 80207C10 00204B50  38 80 00 07 */ li r4, 7
/* 80207C14 00204B54  48 00 2D 39 */ bl dMeterButton_c_NS_hide_button
/* 80207C18 00204B58  38 00 00 00 */ li r0, 0
/* 80207C1C 00204B5C  98 1F 04 C7 */ stb r0, 0x4c7(r31)
lbl_80207C20:
/* 80207C20 00204B60  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80207C24 00204B64  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80207C28 00204B68  7C 08 03 A6 */ mtlr r0
/* 80207C2C 00204B6C  38 21 00 10 */ addi r1, r1, 0x10
/* 80207C30 00204B70  4E 80 00 20 */ blr
