/* 802BC788 002B96C8  94 21 FF B0 */ stwu r1, -0x50(r1)
/* 802BC78C 002B96CC  7C 08 02 A6 */ mflr r0
/* 802BC790 002B96D0  90 01 00 54 */ stw r0, 0x54(r1)
/* 802BC794 002B96D4  93 E1 00 4C */ stw r31, 0x4c(r1)
/* 802BC798 002B96D8  7C 7F 1B 78 */ mr r31, r3
/* 802BC79C 002B96DC  38 61 00 14 */ addi r3, r1, 0x14
/* 802BC7A0 002B96E0  48 08 9C E5 */ bl PSMTXIdentity
/* 802BC7A4 002B96E4  C0 02 C1 04 */ lfs f0, lbl_80455B04-_SDA2_BASE_(r2)
/* 802BC7A8 002B96E8  D0 01 00 08 */ stfs f0, 8(r1)
/* 802BC7AC 002B96EC  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 802BC7B0 002B96F0  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 802BC7B4 002B96F4  7F E3 FB 78 */ mr r3, r31
/* 802BC7B8 002B96F8  38 81 00 14 */ addi r4, r1, 0x14
/* 802BC7BC 002B96FC  38 A1 00 08 */ addi r5, r1, 8
/* 802BC7C0 002B9700  38 C0 00 01 */ li r6, 1
/* 802BC7C4 002B9704  48 00 00 19 */ bl setCameraState__13Z2AudioCameraFPA4_CfR3Vecb
/* 802BC7C8 002B9708  83 E1 00 4C */ lwz r31, 0x4c(r1)
/* 802BC7CC 002B970C  80 01 00 54 */ lwz r0, 0x54(r1)
/* 802BC7D0 002B9710  7C 08 03 A6 */ mtlr r0
/* 802BC7D4 002B9714  38 21 00 50 */ addi r1, r1, 0x50
/* 802BC7D8 002B9718  4E 80 00 20 */ blr
