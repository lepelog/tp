/* 8012F500 0012C440  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8012F504 0012C444  7C 08 02 A6 */ mflr r0
/* 8012F508 0012C448  90 01 00 14 */ stw r0, 0x14(r1)
/* 8012F50C 0012C44C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8012F510 0012C450  93 C1 00 08 */ stw r30, 8(r1)
/* 8012F514 0012C454  7C 7E 1B 78 */ mr r30, r3
/* 8012F518 0012C458  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 8012F51C 0012C45C  A8 03 30 0C */ lha r0, 0x300c(r3)
/* 8012F520 0012C460  2C 00 00 00 */ cmpwi r0, 0
/* 8012F524 0012C464  41 82 00 74 */ beq lbl_8012F598
/* 8012F528 0012C468  38 00 00 04 */ li r0, 4
/* 8012F52C 0012C46C  98 1E 2F 99 */ stb r0, 0x2f99(r30)
/* 8012F530 0012C470  7F E3 FB 78 */ mr r3, r31
/* 8012F534 0012C474  48 02 EF 99 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8012F538 0012C478  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8012F53C 0012C47C  41 82 00 14 */ beq lbl_8012F550
/* 8012F540 0012C480  7F C3 F3 78 */ mr r3, r30
/* 8012F544 0012C484  38 80 00 00 */ li r4, 0
/* 8012F548 0012C488  4B FF A5 FD */ bl daAlink_c_NS_checkNextActionWolf
/* 8012F54C 0012C48C  48 00 00 D0 */ b lbl_8012F61C
lbl_8012F550:
/* 8012F550 0012C490  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 8012F554 0012C494  3C 60 80 39 */ lis r3, lbl_8038F1A0@ha
/* 8012F558 0012C498  38 63 F1 A0 */ addi r3, r3, lbl_8038F1A0@l
/* 8012F55C 0012C49C  C0 03 00 74 */ lfs f0, 0x74(r3)
/* 8012F560 0012C4A0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8012F564 0012C4A4  40 81 00 B4 */ ble lbl_8012F618
/* 8012F568 0012C4A8  C0 1E 34 78 */ lfs f0, 0x3478(r30)
/* 8012F56C 0012C4AC  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 8012F570 0012C4B0  7F C3 F3 78 */ mr r3, r30
/* 8012F574 0012C4B4  38 80 00 01 */ li r4, 1
/* 8012F578 0012C4B8  4B FF A5 CD */ bl daAlink_c_NS_checkNextActionWolf
/* 8012F57C 0012C4BC  2C 03 00 00 */ cmpwi r3, 0
/* 8012F580 0012C4C0  41 82 00 0C */ beq lbl_8012F58C
/* 8012F584 0012C4C4  38 60 00 01 */ li r3, 1
/* 8012F588 0012C4C8  48 00 00 94 */ b lbl_8012F61C
lbl_8012F58C:
/* 8012F58C 0012C4CC  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8012F590 0012C4D0  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 8012F594 0012C4D4  48 00 00 84 */ b lbl_8012F618
lbl_8012F598:
/* 8012F598 0012C4D8  7F E3 FB 78 */ mr r3, r31
/* 8012F59C 0012C4DC  48 02 EF 31 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8012F5A0 0012C4E0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8012F5A4 0012C4E4  41 82 00 74 */ beq lbl_8012F618
/* 8012F5A8 0012C4E8  7F C3 F3 78 */ mr r3, r30
/* 8012F5AC 0012C4EC  38 80 00 12 */ li r4, 0x12
/* 8012F5B0 0012C4F0  3C A0 80 39 */ lis r5, lbl_8038F1A0@ha
/* 8012F5B4 0012C4F4  38 A5 F1 A0 */ addi r5, r5, lbl_8038F1A0@l
/* 8012F5B8 0012C4F8  38 A5 00 64 */ addi r5, r5, 0x64
/* 8012F5BC 0012C4FC  4B FF A2 8D */ bl daAlink_c_NS_setSingleAnimeWolfParam
/* 8012F5C0 0012C500  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 8012F5C4 0012C504  38 83 9A 20 */ addi r4, r3, lbl_80439A20@l
/* 8012F5C8 0012C508  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 8012F5CC 0012C50C  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 8012F5D0 0012C510  7C 64 02 14 */ add r3, r4, r0
/* 8012F5D4 0012C514  C0 03 00 04 */ lfs f0, 4(r3)
/* 8012F5D8 0012C518  C0 3E 34 F4 */ lfs f1, 0x34f4(r30)
/* 8012F5DC 0012C51C  C0 42 93 14 */ lfs f2, lbl_80452D14-_SDA2_BASE_(r2)
/* 8012F5E0 0012C520  EC 02 00 32 */ fmuls f0, f2, f0
/* 8012F5E4 0012C524  EC 81 00 2A */ fadds f4, f1, f0
/* 8012F5E8 0012C528  C0 7E 34 F0 */ lfs f3, 0x34f0(r30)
/* 8012F5EC 0012C52C  7C 04 04 2E */ lfsx f0, r4, r0
/* 8012F5F0 0012C530  C0 3E 34 EC */ lfs f1, 0x34ec(r30)
/* 8012F5F4 0012C534  EC 02 00 32 */ fmuls f0, f2, f0
/* 8012F5F8 0012C538  EC 01 00 2A */ fadds f0, f1, f0
/* 8012F5FC 0012C53C  D0 1E 04 D0 */ stfs f0, 0x4d0(r30)
/* 8012F600 0012C540  D0 7E 04 D4 */ stfs f3, 0x4d4(r30)
/* 8012F604 0012C544  D0 9E 04 D8 */ stfs f4, 0x4d8(r30)
/* 8012F608 0012C548  38 00 00 50 */ li r0, 0x50
/* 8012F60C 0012C54C  98 1E 2F 99 */ stb r0, 0x2f99(r30)
/* 8012F610 0012C550  38 00 00 01 */ li r0, 1
/* 8012F614 0012C554  B0 1E 30 0C */ sth r0, 0x300c(r30)
lbl_8012F618:
/* 8012F618 0012C558  38 60 00 01 */ li r3, 1
lbl_8012F61C:
/* 8012F61C 0012C55C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8012F620 0012C560  83 C1 00 08 */ lwz r30, 8(r1)
/* 8012F624 0012C564  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8012F628 0012C568  7C 08 03 A6 */ mtlr r0
/* 8012F62C 0012C56C  38 21 00 10 */ addi r1, r1, 0x10
/* 8012F630 0012C570  4E 80 00 20 */ blr
