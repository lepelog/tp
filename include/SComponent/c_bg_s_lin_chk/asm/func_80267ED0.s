/* 80267ED0 00264E10  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80267ED4 00264E14  7C 08 02 A6 */ mflr r0
/* 80267ED8 00264E18  90 01 00 24 */ stw r0, 0x24(r1)
/* 80267EDC 00264E1C  39 61 00 20 */ addi r11, r1, 0x20
/* 80267EE0 00264E20  48 0F A2 FD */ bl _savegpr_29
/* 80267EE4 00264E24  7C 7D 1B 78 */ mr r29, r3
/* 80267EE8 00264E28  7C BE 2B 78 */ mr r30, r5
/* 80267EEC 00264E2C  7C DF 33 78 */ mr r31, r6
/* 80267EF0 00264E30  38 7D 00 24 */ addi r3, r29, 0x24
/* 80267EF4 00264E34  48 00 73 F5 */ bl cM3dGLin_NS_SetStartEnd
/* 80267EF8 00264E38  C0 1E 00 00 */ lfs f0, 0(r30)
/* 80267EFC 00264E3C  D0 1D 00 40 */ stfs f0, 0x40(r29)
/* 80267F00 00264E40  C0 1E 00 04 */ lfs f0, 4(r30)
/* 80267F04 00264E44  D0 1D 00 44 */ stfs f0, 0x44(r29)
/* 80267F08 00264E48  C0 1E 00 08 */ lfs f0, 8(r30)
/* 80267F0C 00264E4C  D0 1D 00 48 */ stfs f0, 0x48(r29)
/* 80267F10 00264E50  93 FD 00 08 */ stw r31, 8(r29)
/* 80267F14 00264E54  80 1D 00 4C */ lwz r0, 0x4c(r29)
/* 80267F18 00264E58  54 00 07 34 */ rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80267F1C 00264E5C  90 1D 00 4C */ stw r0, 0x4c(r29)
/* 80267F20 00264E60  38 7D 00 14 */ addi r3, r29, 0x14
/* 80267F24 00264E64  48 00 01 FD */ bl ClearPi__13cBgS_PolyInfoFv
/* 80267F28 00264E68  39 61 00 20 */ addi r11, r1, 0x20
/* 80267F2C 00264E6C  48 0F A2 FD */ bl _restgpr_29
/* 80267F30 00264E70  80 01 00 24 */ lwz r0, 0x24(r1)
/* 80267F34 00264E74  7C 08 03 A6 */ mtlr r0
/* 80267F38 00264E78  38 21 00 20 */ addi r1, r1, 0x20
/* 80267F3C 00264E7C  4E 80 00 20 */ blr
