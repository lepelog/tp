/* 8013B528 00138468  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 8013B52C 0013846C  7C 08 02 A6 */ mflr r0
/* 8013B530 00138470  90 01 00 44 */ stw r0, 0x44(r1)
/* 8013B534 00138474  93 E1 00 3C */ stw r31, 0x3c(r1)
/* 8013B538 00138478  7C 7F 1B 78 */ mr r31, r3
/* 8013B53C 0013847C  38 80 01 22 */ li r4, 0x122
/* 8013B540 00138480  4B F8 6A 2D */ bl daAlink_c_NS_commonProcInit
/* 8013B544 00138484  7F E3 FB 78 */ mr r3, r31
/* 8013B548 00138488  38 80 00 62 */ li r4, 0x62
/* 8013B54C 0013848C  3C A0 80 39 */ lis r5, lbl_8038F658@ha
/* 8013B550 00138490  38 A5 F6 58 */ addi r5, r5, lbl_8038F658@l
/* 8013B554 00138494  4B FE E2 F5 */ bl daAlink_c_NS_setSingleAnimeWolfParam
/* 8013B558 00138498  80 7F 27 EC */ lwz r3, 0x27ec(r31)
/* 8013B55C 0013849C  C0 03 05 68 */ lfs f0, 0x568(r3)
/* 8013B560 001384A0  D0 01 00 24 */ stfs f0, 0x24(r1)
/* 8013B564 001384A4  C0 23 05 6C */ lfs f1, 0x56c(r3)
/* 8013B568 001384A8  D0 21 00 28 */ stfs f1, 0x28(r1)
/* 8013B56C 001384AC  C0 03 05 70 */ lfs f0, 0x570(r3)
/* 8013B570 001384B0  D0 01 00 2C */ stfs f0, 0x2c(r1)
/* 8013B574 001384B4  C0 02 93 00 */ lfs f0, lbl_80452D00-_SDA2_BASE_(r2)
/* 8013B578 001384B8  EC 01 00 2A */ fadds f0, f1, f0
/* 8013B57C 001384BC  D0 01 00 28 */ stfs f0, 0x28(r1)
/* 8013B580 001384C0  38 61 00 24 */ addi r3, r1, 0x24
/* 8013B584 001384C4  4B EE 27 39 */ bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 8013B588 001384C8  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8013B58C 001384CC  41 82 00 10 */ beq lbl_8013B59C
/* 8013B590 001384D0  C0 0D 87 50 */ lfs f0, lbl_80450CD0-_SDA_BASE_(r13)
/* 8013B594 001384D4  D0 01 00 28 */ stfs f0, 0x28(r1)
/* 8013B598 001384D8  48 00 00 14 */ b lbl_8013B5AC
lbl_8013B59C:
/* 8013B59C 001384DC  C0 21 00 28 */ lfs f1, 0x28(r1)
/* 8013B5A0 001384E0  C0 02 93 00 */ lfs f0, lbl_80452D00-_SDA2_BASE_(r2)
/* 8013B5A4 001384E4  EC 01 00 28 */ fsubs f0, f1, f0
/* 8013B5A8 001384E8  D0 01 00 28 */ stfs f0, 0x28(r1)
lbl_8013B5AC:
/* 8013B5AC 001384EC  38 7F 04 D0 */ addi r3, r31, 0x4d0
/* 8013B5B0 001384F0  38 81 00 24 */ addi r4, r1, 0x24
/* 8013B5B4 001384F4  48 13 56 51 */ bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8013B5B8 001384F8  B0 7F 04 DE */ sth r3, 0x4de(r31)
/* 8013B5BC 001384FC  A8 1F 04 DE */ lha r0, 0x4de(r31)
/* 8013B5C0 00138500  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 8013B5C4 00138504  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 8013B5C8 00138508  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 8013B5CC 0013850C  7C 03 04 2E */ lfsx f0, r3, r0
/* 8013B5D0 00138510  C0 21 00 24 */ lfs f1, 0x24(r1)
/* 8013B5D4 00138514  C0 62 93 B0 */ lfs f3, lbl_80452DB0-_SDA2_BASE_(r2)
/* 8013B5D8 00138518  EC 03 00 32 */ fmuls f0, f3, f0
/* 8013B5DC 0013851C  EC 41 00 28 */ fsubs f2, f1, f0
/* 8013B5E0 00138520  D0 41 00 24 */ stfs f2, 0x24(r1)
/* 8013B5E4 00138524  7C 63 02 14 */ add r3, r3, r0
/* 8013B5E8 00138528  C0 03 00 04 */ lfs f0, 4(r3)
/* 8013B5EC 0013852C  C0 21 00 2C */ lfs f1, 0x2c(r1)
/* 8013B5F0 00138530  EC 03 00 32 */ fmuls f0, f3, f0
/* 8013B5F4 00138534  EC 21 00 28 */ fsubs f1, f1, f0
/* 8013B5F8 00138538  D0 21 00 2C */ stfs f1, 0x2c(r1)
/* 8013B5FC 0013853C  C0 7F 04 D8 */ lfs f3, 0x4d8(r31)
/* 8013B600 00138540  C0 1F 04 D0 */ lfs f0, 0x4d0(r31)
/* 8013B604 00138544  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 8013B608 00138548  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8013B60C 0013854C  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 8013B610 00138550  D0 61 00 14 */ stfs f3, 0x14(r1)
/* 8013B614 00138554  D0 41 00 18 */ stfs f2, 0x18(r1)
/* 8013B618 00138558  D0 01 00 1C */ stfs f0, 0x1c(r1)
/* 8013B61C 0013855C  D0 21 00 20 */ stfs f1, 0x20(r1)
/* 8013B620 00138560  38 61 00 0C */ addi r3, r1, 0xc
/* 8013B624 00138564  38 81 00 18 */ addi r4, r1, 0x18
/* 8013B628 00138568  48 20 BD 75 */ bl PSVECSquareDistance
/* 8013B62C 0013856C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8013B630 00138570  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8013B634 00138574  40 81 00 58 */ ble lbl_8013B68C
/* 8013B638 00138578  FC 00 08 34 */ frsqrte f0, f1
/* 8013B63C 0013857C  C8 82 92 E8 */ lfd f4, lbl_80452CE8-_SDA2_BASE_(r2)
/* 8013B640 00138580  FC 44 00 32 */ fmul f2, f4, f0
/* 8013B644 00138584  C8 62 92 F0 */ lfd f3, lbl_80452CF0-_SDA2_BASE_(r2)
/* 8013B648 00138588  FC 00 00 32 */ fmul f0, f0, f0
/* 8013B64C 0013858C  FC 01 00 32 */ fmul f0, f1, f0
/* 8013B650 00138590  FC 03 00 28 */ fsub f0, f3, f0
/* 8013B654 00138594  FC 02 00 32 */ fmul f0, f2, f0
/* 8013B658 00138598  FC 44 00 32 */ fmul f2, f4, f0
/* 8013B65C 0013859C  FC 00 00 32 */ fmul f0, f0, f0
/* 8013B660 001385A0  FC 01 00 32 */ fmul f0, f1, f0
/* 8013B664 001385A4  FC 03 00 28 */ fsub f0, f3, f0
/* 8013B668 001385A8  FC 02 00 32 */ fmul f0, f2, f0
/* 8013B66C 001385AC  FC 44 00 32 */ fmul f2, f4, f0
/* 8013B670 001385B0  FC 00 00 32 */ fmul f0, f0, f0
/* 8013B674 001385B4  FC 01 00 32 */ fmul f0, f1, f0
/* 8013B678 001385B8  FC 03 00 28 */ fsub f0, f3, f0
/* 8013B67C 001385BC  FC 02 00 32 */ fmul f0, f2, f0
/* 8013B680 001385C0  FC 21 00 32 */ fmul f1, f1, f0
/* 8013B684 001385C4  FC 20 08 18 */ frsp f1, f1
/* 8013B688 001385C8  48 00 00 88 */ b lbl_8013B710
lbl_8013B68C:
/* 8013B68C 001385CC  C8 02 92 F8 */ lfd f0, lbl_80452CF8-_SDA2_BASE_(r2)
/* 8013B690 001385D0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8013B694 001385D4  40 80 00 10 */ bge lbl_8013B6A4
/* 8013B698 001385D8  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8013B69C 001385DC  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 8013B6A0 001385E0  48 00 00 70 */ b lbl_8013B710
lbl_8013B6A4:
/* 8013B6A4 001385E4  D0 21 00 08 */ stfs f1, 8(r1)
/* 8013B6A8 001385E8  80 81 00 08 */ lwz r4, 8(r1)
/* 8013B6AC 001385EC  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 8013B6B0 001385F0  3C 00 7F 80 */ lis r0, 0x7f80
/* 8013B6B4 001385F4  7C 03 00 00 */ cmpw r3, r0
/* 8013B6B8 001385F8  41 82 00 14 */ beq lbl_8013B6CC
/* 8013B6BC 001385FC  40 80 00 40 */ bge lbl_8013B6FC
/* 8013B6C0 00138600  2C 03 00 00 */ cmpwi r3, 0
/* 8013B6C4 00138604  41 82 00 20 */ beq lbl_8013B6E4
/* 8013B6C8 00138608  48 00 00 34 */ b lbl_8013B6FC
lbl_8013B6CC:
/* 8013B6CC 0013860C  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8013B6D0 00138610  41 82 00 0C */ beq lbl_8013B6DC
/* 8013B6D4 00138614  38 00 00 01 */ li r0, 1
/* 8013B6D8 00138618  48 00 00 28 */ b lbl_8013B700
lbl_8013B6DC:
/* 8013B6DC 0013861C  38 00 00 02 */ li r0, 2
/* 8013B6E0 00138620  48 00 00 20 */ b lbl_8013B700
lbl_8013B6E4:
/* 8013B6E4 00138624  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8013B6E8 00138628  41 82 00 0C */ beq lbl_8013B6F4
/* 8013B6EC 0013862C  38 00 00 05 */ li r0, 5
/* 8013B6F0 00138630  48 00 00 10 */ b lbl_8013B700
lbl_8013B6F4:
/* 8013B6F4 00138634  38 00 00 03 */ li r0, 3
/* 8013B6F8 00138638  48 00 00 08 */ b lbl_8013B700
lbl_8013B6FC:
/* 8013B6FC 0013863C  38 00 00 04 */ li r0, 4
lbl_8013B700:
/* 8013B700 00138640  2C 00 00 01 */ cmpwi r0, 1
/* 8013B704 00138644  40 82 00 0C */ bne lbl_8013B710
/* 8013B708 00138648  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8013B70C 0013864C  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_8013B710:
/* 8013B710 00138650  C0 02 93 58 */ lfs f0, lbl_80452D58-_SDA2_BASE_(r2)
/* 8013B714 00138654  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8013B718 00138658  40 81 00 08 */ ble lbl_8013B720
/* 8013B71C 0013865C  FC 20 00 90 */ fmr f1, f0
lbl_8013B720:
/* 8013B720 00138660  3C 60 80 39 */ lis r3, lbl_8038F658@ha
/* 8013B724 00138664  38 63 F6 58 */ addi r3, r3, lbl_8038F658@l
/* 8013B728 00138668  C0 03 00 90 */ lfs f0, 0x90(r3)
/* 8013B72C 0013866C  D0 1F 04 FC */ stfs f0, 0x4fc(r31)
/* 8013B730 00138670  C0 1F 04 FC */ lfs f0, 0x4fc(r31)
/* 8013B734 00138674  C0 BF 05 30 */ lfs f5, 0x530(r31)
/* 8013B738 00138678  EC C0 28 2A */ fadds f6, f0, f5
/* 8013B73C 0013867C  EC 86 01 B2 */ fmuls f4, f6, f6
/* 8013B740 00138680  C0 02 93 14 */ lfs f0, lbl_80452D14-_SDA2_BASE_(r2)
/* 8013B744 00138684  EC 60 01 72 */ fmuls f3, f0, f5
/* 8013B748 00138688  C0 41 00 28 */ lfs f2, 0x28(r1)
/* 8013B74C 0013868C  C0 1F 04 D4 */ lfs f0, 0x4d4(r31)
/* 8013B750 00138690  EC 02 00 28 */ fsubs f0, f2, f0
/* 8013B754 00138694  EC 03 00 32 */ fmuls f0, f3, f0
/* 8013B758 00138698  EC 44 00 2A */ fadds f2, f4, f0
/* 8013B75C 0013869C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8013B760 001386A0  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 8013B764 001386A4  40 80 00 18 */ bge lbl_8013B77C
/* 8013B768 001386A8  EC 21 01 72 */ fmuls f1, f1, f5
/* 8013B76C 001386AC  FC 00 30 50 */ fneg f0, f6
/* 8013B770 001386B0  EC 01 00 24 */ fdivs f0, f1, f0
/* 8013B774 001386B4  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 8013B778 001386B8  48 00 00 2C */ b lbl_8013B7A4
lbl_8013B77C:
/* 8013B77C 001386BC  40 81 00 10 */ ble lbl_8013B78C
/* 8013B780 001386C0  FC 00 10 34 */ frsqrte f0, f2
/* 8013B784 001386C4  EC 00 00 B2 */ fmuls f0, f0, f2
/* 8013B788 001386C8  48 00 00 08 */ b lbl_8013B790
lbl_8013B78C:
/* 8013B78C 001386CC  FC 00 10 90 */ fmr f0, f2
lbl_8013B790:
/* 8013B790 001386D0  EC 21 01 72 */ fmuls f1, f1, f5
/* 8013B794 001386D4  FC 00 00 50 */ fneg f0, f0
/* 8013B798 001386D8  EC 00 30 28 */ fsubs f0, f0, f6
/* 8013B79C 001386DC  EC 01 00 24 */ fdivs f0, f1, f0
/* 8013B7A0 001386E0  D0 1F 33 98 */ stfs f0, 0x3398(r31)
lbl_8013B7A4:
/* 8013B7A4 001386E4  38 00 00 00 */ li r0, 0
/* 8013B7A8 001386E8  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 8013B7AC 001386EC  38 7F 28 0C */ addi r3, r31, 0x280c
/* 8013B7B0 001386F0  80 9F 27 EC */ lwz r4, 0x27ec(r31)
/* 8013B7B4 001386F4  48 02 35 05 */ bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 8013B7B8 001386F8  7F E3 FB 78 */ mr r3, r31
/* 8013B7BC 001386FC  3C 80 00 01 */ lis r4, 0x000100BE@ha
/* 8013B7C0 00138700  38 84 00 BE */ addi r4, r4, 0x000100BE@l
/* 8013B7C4 00138704  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 8013B7C8 00138708  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 8013B7CC 0013870C  7D 89 03 A6 */ mtctr r12
/* 8013B7D0 00138710  4E 80 04 21 */ bctrl
/* 8013B7D4 00138714  7F E3 FB 78 */ mr r3, r31
/* 8013B7D8 00138718  3C 80 00 02 */ lis r4, 0x00020009@ha
/* 8013B7DC 0013871C  38 84 00 09 */ addi r4, r4, 0x00020009@l
/* 8013B7E0 00138720  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 8013B7E4 00138724  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 8013B7E8 00138728  7D 89 03 A6 */ mtctr r12
/* 8013B7EC 0013872C  4E 80 04 21 */ bctrl
/* 8013B7F0 00138730  38 60 00 01 */ li r3, 1
/* 8013B7F4 00138734  83 E1 00 3C */ lwz r31, 0x3c(r1)
/* 8013B7F8 00138738  80 01 00 44 */ lwz r0, 0x44(r1)
/* 8013B7FC 0013873C  7C 08 03 A6 */ mtlr r0
/* 8013B800 00138740  38 21 00 40 */ addi r1, r1, 0x40
/* 8013B804 00138744  4E 80 00 20 */ blr