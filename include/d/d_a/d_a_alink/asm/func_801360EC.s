/* 801360EC 0013302C  94 21 FF A0 */ stwu r1, -0x60(r1)
/* 801360F0 00133030  7C 08 02 A6 */ mflr r0
/* 801360F4 00133034  90 01 00 64 */ stw r0, 0x64(r1)
/* 801360F8 00133038  DB E1 00 50 */ stfd f31, 0x50(r1)
/* 801360FC 0013303C  F3 E1 00 58 */ psq_st f31, 88(r1), 0, 0
/* 80136100 00133040  DB C1 00 40 */ stfd f30, 0x40(r1)
/* 80136104 00133044  F3 C1 00 48 */ psq_st f30, 72(r1), 0, 0
/* 80136108 00133048  39 61 00 40 */ addi r11, r1, 0x40
/* 8013610C 0013304C  48 22 C0 D1 */ bl _savegpr_29
/* 80136110 00133050  7C 7D 1B 78 */ mr r29, r3
/* 80136114 00133054  7C 9E 23 78 */ mr r30, r4
/* 80136118 00133058  38 80 01 07 */ li r4, 0x107
/* 8013611C 0013305C  4B F8 BE 51 */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80136120 00133060  A8 1D 04 E6 */ lha r0, 0x4e6(r29)
/* 80136124 00133064  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 80136128 00133068  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 8013612C 0013306C  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 80136130 00133070  7F E3 04 2E */ lfsx f31, r3, r0
/* 80136134 00133074  38 83 00 04 */ addi r4, r3, 4
/* 80136138 00133078  7F C4 04 2E */ lfsx f30, r4, r0
/* 8013613C 0013307C  28 1E 00 00 */ cmplwi r30, 0
/* 80136140 00133080  41 82 00 18 */ beq lbl_80136158
/* 80136144 00133084  7F A3 EB 78 */ mr r3, r29
/* 80136148 00133088  7F C4 F3 78 */ mr r4, r30
/* 8013614C 0013308C  4B FA 13 A9 */ bl getDamageVec__9daAlink_cFP12dCcD_GObjInf
/* 80136150 00133090  7C 7F 1B 78 */ mr r31, r3
/* 80136154 00133094  48 00 00 28 */ b lbl_8013617C
lbl_80136158:
/* 80136158 00133098  A8 1D 31 1E */ lha r0, 0x311e(r29)
/* 8013615C 0013309C  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 80136160 001330A0  7C 24 04 2E */ lfsx f1, r4, r0
/* 80136164 001330A4  7C 03 04 2E */ lfsx f0, r3, r0
/* 80136168 001330A8  D0 01 00 24 */ stfs f0, 0x24(r1)
/* 8013616C 001330AC  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80136170 001330B0  D0 01 00 28 */ stfs f0, 0x28(r1)
/* 80136174 001330B4  D0 21 00 2C */ stfs f1, 0x2c(r1)
/* 80136178 001330B8  3B E1 00 24 */ addi r31, r1, 0x24
lbl_8013617C:
/* 8013617C 001330BC  C0 BF 00 08 */ lfs f5, 8(r31)
/* 80136180 001330C0  EC 25 07 B2 */ fmuls f1, f5, f30
/* 80136184 001330C4  C0 9F 00 00 */ lfs f4, 0(r31)
/* 80136188 001330C8  EC 04 07 F2 */ fmuls f0, f4, f31
/* 8013618C 001330CC  EC 61 00 2A */ fadds f3, f1, f0
/* 80136190 001330D0  C0 5F 00 04 */ lfs f2, 4(r31)
/* 80136194 001330D4  FC 00 F8 50 */ fneg f0, f31
/* 80136198 001330D8  EC 25 00 32 */ fmuls f1, f5, f0
/* 8013619C 001330DC  EC 04 07 B2 */ fmuls f0, f4, f30
/* 801361A0 001330E0  EC 01 00 2A */ fadds f0, f1, f0
/* 801361A4 001330E4  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 801361A8 001330E8  D0 41 00 1C */ stfs f2, 0x1c(r1)
/* 801361AC 001330EC  D0 61 00 20 */ stfs f3, 0x20(r1)
/* 801361B0 001330F0  FC 20 00 50 */ fneg f1, f0
/* 801361B4 001330F4  FC 40 18 50 */ fneg f2, f3
/* 801361B8 001330F8  48 13 14 BD */ bl cM_atan2s__Fff
/* 801361BC 001330FC  4B F7 D2 D9 */ bl getDirectionFromAngle__9daAlink_cFs
/* 801361C0 00133100  2C 03 00 00 */ cmpwi r3, 0
/* 801361C4 00133104  40 82 00 2C */ bne lbl_801361F0
/* 801361C8 00133108  7F A3 EB 78 */ mr r3, r29
/* 801361CC 0013310C  38 80 00 3C */ li r4, 0x3c
/* 801361D0 00133110  3C A0 80 39 */ lis r5, lbl_8038F23C@ha
/* 801361D4 00133114  38 A5 F2 3C */ addi r5, r5, lbl_8038F23C@l
/* 801361D8 00133118  4B FF 36 71 */ bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 801361DC 0013311C  3C 60 80 39 */ lis r3, lbl_8038F23C@ha
/* 801361E0 00133120  38 63 F2 3C */ addi r3, r3, lbl_8038F23C@l
/* 801361E4 00133124  C0 03 00 10 */ lfs f0, 0x10(r3)
/* 801361E8 00133128  D0 1D 34 78 */ stfs f0, 0x3478(r29)
/* 801361EC 0013312C  48 00 00 94 */ b lbl_80136280
lbl_801361F0:
/* 801361F0 00133130  2C 03 00 01 */ cmpwi r3, 1
/* 801361F4 00133134  40 82 00 30 */ bne lbl_80136224
/* 801361F8 00133138  7F A3 EB 78 */ mr r3, r29
/* 801361FC 0013313C  38 80 00 3D */ li r4, 0x3d
/* 80136200 00133140  3C A0 80 39 */ lis r5, lbl_8038F23C@ha
/* 80136204 00133144  38 A5 F2 3C */ addi r5, r5, lbl_8038F23C@l
/* 80136208 00133148  38 A5 00 14 */ addi r5, r5, 0x14
/* 8013620C 0013314C  4B FF 36 3D */ bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 80136210 00133150  3C 60 80 39 */ lis r3, lbl_8038F23C@ha
/* 80136214 00133154  38 63 F2 3C */ addi r3, r3, lbl_8038F23C@l
/* 80136218 00133158  C0 03 00 24 */ lfs f0, 0x24(r3)
/* 8013621C 0013315C  D0 1D 34 78 */ stfs f0, 0x3478(r29)
/* 80136220 00133160  48 00 00 60 */ b lbl_80136280
lbl_80136224:
/* 80136224 00133164  2C 03 00 02 */ cmpwi r3, 2
/* 80136228 00133168  40 82 00 30 */ bne lbl_80136258
/* 8013622C 0013316C  7F A3 EB 78 */ mr r3, r29
/* 80136230 00133170  38 80 00 3E */ li r4, 0x3e
/* 80136234 00133174  3C A0 80 39 */ lis r5, lbl_8038F23C@ha
/* 80136238 00133178  38 A5 F2 3C */ addi r5, r5, lbl_8038F23C@l
/* 8013623C 0013317C  38 A5 00 28 */ addi r5, r5, 0x28
/* 80136240 00133180  4B FF 36 09 */ bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 80136244 00133184  3C 60 80 39 */ lis r3, lbl_8038F23C@ha
/* 80136248 00133188  38 63 F2 3C */ addi r3, r3, lbl_8038F23C@l
/* 8013624C 0013318C  C0 03 00 38 */ lfs f0, 0x38(r3)
/* 80136250 00133190  D0 1D 34 78 */ stfs f0, 0x3478(r29)
/* 80136254 00133194  48 00 00 2C */ b lbl_80136280
lbl_80136258:
/* 80136258 00133198  7F A3 EB 78 */ mr r3, r29
/* 8013625C 0013319C  38 80 00 3F */ li r4, 0x3f
/* 80136260 001331A0  3C A0 80 39 */ lis r5, lbl_8038F23C@ha
/* 80136264 001331A4  38 A5 F2 3C */ addi r5, r5, lbl_8038F23C@l
/* 80136268 001331A8  38 A5 00 3C */ addi r5, r5, 0x3c
/* 8013626C 001331AC  4B FF 35 DD */ bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 80136270 001331B0  3C 60 80 39 */ lis r3, lbl_8038F23C@ha
/* 80136274 001331B4  38 63 F2 3C */ addi r3, r3, lbl_8038F23C@l
/* 80136278 001331B8  C0 03 00 4C */ lfs f0, 0x4c(r3)
/* 8013627C 001331BC  D0 1D 34 78 */ stfs f0, 0x3478(r29)
lbl_80136280:
/* 80136280 001331C0  7F A3 EB 78 */ mr r3, r29
/* 80136284 001331C4  38 80 00 90 */ li r4, 0x90
/* 80136288 001331C8  4B F7 96 19 */ bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 8013628C 001331CC  7F E3 FB 78 */ mr r3, r31
/* 80136290 001331D0  48 13 0E 99 */ bl atan2sX_Z__4cXyzCFv
/* 80136294 001331D4  B0 7D 04 DE */ sth r3, 0x4de(r29)
/* 80136298 001331D8  A8 1D 04 DE */ lha r0, 0x4de(r29)
/* 8013629C 001331DC  B0 1D 30 10 */ sth r0, 0x3010(r29)
/* 801362A0 001331E0  C0 3F 00 08 */ lfs f1, 8(r31)
/* 801362A4 001331E4  C0 1F 00 00 */ lfs f0, 0(r31)
/* 801362A8 001331E8  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 801362AC 001331EC  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 801362B0 001331F0  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 801362B4 001331F4  D0 21 00 14 */ stfs f1, 0x14(r1)
/* 801362B8 001331F8  38 61 00 0C */ addi r3, r1, 0xc
/* 801362BC 001331FC  48 21 0E 7D */ bl PSVECSquareMag
/* 801362C0 00133200  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 801362C4 00133204  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801362C8 00133208  40 81 00 58 */ ble lbl_80136320
/* 801362CC 0013320C  FC 00 08 34 */ frsqrte f0, f1
/* 801362D0 00133210  C8 82 92 E8 */ lfd f4, lbl_80452CE8-_SDA2_BASE_(r2)
/* 801362D4 00133214  FC 44 00 32 */ fmul f2, f4, f0
/* 801362D8 00133218  C8 62 92 F0 */ lfd f3, lbl_80452CF0-_SDA2_BASE_(r2)
/* 801362DC 0013321C  FC 00 00 32 */ fmul f0, f0, f0
/* 801362E0 00133220  FC 01 00 32 */ fmul f0, f1, f0
/* 801362E4 00133224  FC 03 00 28 */ fsub f0, f3, f0
/* 801362E8 00133228  FC 02 00 32 */ fmul f0, f2, f0
/* 801362EC 0013322C  FC 44 00 32 */ fmul f2, f4, f0
/* 801362F0 00133230  FC 00 00 32 */ fmul f0, f0, f0
/* 801362F4 00133234  FC 01 00 32 */ fmul f0, f1, f0
/* 801362F8 00133238  FC 03 00 28 */ fsub f0, f3, f0
/* 801362FC 0013323C  FC 02 00 32 */ fmul f0, f2, f0
/* 80136300 00133240  FC 44 00 32 */ fmul f2, f4, f0
/* 80136304 00133244  FC 00 00 32 */ fmul f0, f0, f0
/* 80136308 00133248  FC 01 00 32 */ fmul f0, f1, f0
/* 8013630C 0013324C  FC 03 00 28 */ fsub f0, f3, f0
/* 80136310 00133250  FC 02 00 32 */ fmul f0, f2, f0
/* 80136314 00133254  FC 21 00 32 */ fmul f1, f1, f0
/* 80136318 00133258  FC 20 08 18 */ frsp f1, f1
/* 8013631C 0013325C  48 00 00 88 */ b lbl_801363A4
lbl_80136320:
/* 80136320 00133260  C8 02 92 F8 */ lfd f0, lbl_80452CF8-_SDA2_BASE_(r2)
/* 80136324 00133264  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80136328 00133268  40 80 00 10 */ bge lbl_80136338
/* 8013632C 0013326C  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 80136330 00133270  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 80136334 00133274  48 00 00 70 */ b lbl_801363A4
lbl_80136338:
/* 80136338 00133278  D0 21 00 08 */ stfs f1, 8(r1)
/* 8013633C 0013327C  80 81 00 08 */ lwz r4, 8(r1)
/* 80136340 00133280  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 80136344 00133284  3C 00 7F 80 */ lis r0, 0x7f80
/* 80136348 00133288  7C 03 00 00 */ cmpw r3, r0
/* 8013634C 0013328C  41 82 00 14 */ beq lbl_80136360
/* 80136350 00133290  40 80 00 40 */ bge lbl_80136390
/* 80136354 00133294  2C 03 00 00 */ cmpwi r3, 0
/* 80136358 00133298  41 82 00 20 */ beq lbl_80136378
/* 8013635C 0013329C  48 00 00 34 */ b lbl_80136390
lbl_80136360:
/* 80136360 001332A0  54 80 02 7F */ clrlwi. r0, r4, 9
/* 80136364 001332A4  41 82 00 0C */ beq lbl_80136370
/* 80136368 001332A8  38 00 00 01 */ li r0, 1
/* 8013636C 001332AC  48 00 00 28 */ b lbl_80136394
lbl_80136370:
/* 80136370 001332B0  38 00 00 02 */ li r0, 2
/* 80136374 001332B4  48 00 00 20 */ b lbl_80136394
lbl_80136378:
/* 80136378 001332B8  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8013637C 001332BC  41 82 00 0C */ beq lbl_80136388
/* 80136380 001332C0  38 00 00 05 */ li r0, 5
/* 80136384 001332C4  48 00 00 10 */ b lbl_80136394
lbl_80136388:
/* 80136388 001332C8  38 00 00 03 */ li r0, 3
/* 8013638C 001332CC  48 00 00 08 */ b lbl_80136394
lbl_80136390:
/* 80136390 001332D0  38 00 00 04 */ li r0, 4
lbl_80136394:
/* 80136394 001332D4  2C 00 00 01 */ cmpwi r0, 1
/* 80136398 001332D8  40 82 00 0C */ bne lbl_801363A4
/* 8013639C 001332DC  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 801363A0 001332E0  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_801363A4:
/* 801363A4 001332E4  3C 60 80 39 */ lis r3, lbl_8038F23C@ha
/* 801363A8 001332E8  38 63 F2 3C */ addi r3, r3, lbl_8038F23C@l
/* 801363AC 001332EC  C0 43 00 50 */ lfs f2, 0x50(r3)
/* 801363B0 001332F0  C0 03 00 54 */ lfs f0, 0x54(r3)
/* 801363B4 001332F4  EC 00 00 72 */ fmuls f0, f0, f1
/* 801363B8 001332F8  EC 02 00 2A */ fadds f0, f2, f0
/* 801363BC 001332FC  D0 1D 33 98 */ stfs f0, 0x3398(r29)
/* 801363C0 00133300  C0 1D 33 98 */ lfs f0, 0x3398(r29)
/* 801363C4 00133304  3C 60 80 39 */ lis r3, lbl_8038EE28@ha
/* 801363C8 00133308  38 63 EE 28 */ addi r3, r3, lbl_8038EE28@l
/* 801363CC 0013330C  C0 23 00 64 */ lfs f1, 0x64(r3)
/* 801363D0 00133310  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 801363D4 00133314  40 81 00 08 */ ble lbl_801363DC
/* 801363D8 00133318  D0 3D 33 98 */ stfs f1, 0x3398(r29)
lbl_801363DC:
/* 801363DC 0013331C  3C 60 80 42 */ lis r3, lbl_8042561C@ha
/* 801363E0 00133320  C4 03 56 1C */ lfsu f0, lbl_8042561C@l(r3)
/* 801363E4 00133324  D0 1D 35 88 */ stfs f0, 0x3588(r29)
/* 801363E8 00133328  C0 03 00 04 */ lfs f0, 4(r3)
/* 801363EC 0013332C  D0 1D 35 8C */ stfs f0, 0x358c(r29)
/* 801363F0 00133330  C0 03 00 08 */ lfs f0, 8(r3)
/* 801363F4 00133334  D0 1D 35 90 */ stfs f0, 0x3590(r29)
/* 801363F8 00133338  28 1E 00 00 */ cmplwi r30, 0
/* 801363FC 0013333C  41 82 00 28 */ beq lbl_80136424
/* 80136400 00133340  7F C3 F3 78 */ mr r3, r30
/* 80136404 00133344  4B F4 E1 45 */ bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80136408 00133348  28 03 00 00 */ cmplwi r3, 0
/* 8013640C 0013334C  41 82 00 88 */ beq lbl_80136494
/* 80136410 00133350  7F C3 F3 78 */ mr r3, r30
/* 80136414 00133354  4B F4 E1 35 */ bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80136418 00133358  88 03 00 75 */ lbz r0, 0x75(r3)
/* 8013641C 0013335C  28 00 00 02 */ cmplwi r0, 2
/* 80136420 00133360  40 82 00 74 */ bne lbl_80136494
lbl_80136424:
/* 80136424 00133364  3C 60 80 39 */ lis r3, lbl_8038F23C@ha
/* 80136428 00133368  38 63 F2 3C */ addi r3, r3, lbl_8038F23C@l
/* 8013642C 0013336C  C0 03 00 5C */ lfs f0, 0x5c(r3)
/* 80136430 00133370  D0 1D 1F DC */ stfs f0, 0x1fdc(r29)
/* 80136434 00133374  38 00 00 03 */ li r0, 3
/* 80136438 00133378  B0 1D 1F D8 */ sth r0, 0x1fd8(r29)
/* 8013643C 0013337C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80136440 00133380  D0 1D 33 98 */ stfs f0, 0x3398(r29)
/* 80136444 00133384  38 00 00 5A */ li r0, 0x5a
/* 80136448 00133388  B0 1D 30 08 */ sth r0, 0x3008(r29)
/* 8013644C 0013338C  80 1D 05 74 */ lwz r0, 0x574(r29)
/* 80136450 00133390  64 00 40 00 */ oris r0, r0, 0x4000
/* 80136454 00133394  90 1D 05 74 */ stw r0, 0x574(r29)
/* 80136458 00133398  7F A3 EB 78 */ mr r3, r29
/* 8013645C 0013339C  3C 80 00 02 */ lis r4, 0x0002004C@ha
/* 80136460 001333A0  38 84 00 4C */ addi r4, r4, 0x0002004C@l
/* 80136464 001333A4  81 9D 06 28 */ lwz r12, 0x628(r29)
/* 80136468 001333A8  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 8013646C 001333AC  7D 89 03 A6 */ mtctr r12
/* 80136470 001333B0  4E 80 04 21 */ bctrl
/* 80136474 001333B4  7F A3 EB 78 */ mr r3, r29
/* 80136478 001333B8  3C 80 00 01 */ lis r4, 0x000100C1@ha
/* 8013647C 001333BC  38 84 00 C1 */ addi r4, r4, 0x000100C1@l
/* 80136480 001333C0  81 9D 06 28 */ lwz r12, 0x628(r29)
/* 80136484 001333C4  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 80136488 001333C8  7D 89 03 A6 */ mtctr r12
/* 8013648C 001333CC  4E 80 04 21 */ bctrl
/* 80136490 001333D0  48 00 00 44 */ b lbl_801364D4
lbl_80136494:
/* 80136494 001333D4  38 00 00 00 */ li r0, 0
/* 80136498 001333D8  B0 1D 30 08 */ sth r0, 0x3008(r29)
/* 8013649C 001333DC  7F A3 EB 78 */ mr r3, r29
/* 801364A0 001333E0  3C 80 00 02 */ lis r4, 0x00020014@ha
/* 801364A4 001333E4  38 84 00 14 */ addi r4, r4, 0x00020014@l
/* 801364A8 001333E8  81 9D 06 28 */ lwz r12, 0x628(r29)
/* 801364AC 001333EC  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 801364B0 001333F0  7D 89 03 A6 */ mtctr r12
/* 801364B4 001333F4  4E 80 04 21 */ bctrl
/* 801364B8 001333F8  7F A3 EB 78 */ mr r3, r29
/* 801364BC 001333FC  3C 80 00 01 */ lis r4, 0x00010034@ha
/* 801364C0 00133400  38 84 00 34 */ addi r4, r4, 0x00010034@l
/* 801364C4 00133404  81 9D 06 28 */ lwz r12, 0x628(r29)
/* 801364C8 00133408  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 801364CC 0013340C  7D 89 03 A6 */ mtctr r12
/* 801364D0 00133410  4E 80 04 21 */ bctrl
lbl_801364D4:
/* 801364D4 00133414  38 00 00 00 */ li r0, 0
/* 801364D8 00133418  B0 1D 30 0A */ sth r0, 0x300a(r29)
/* 801364DC 0013341C  38 60 00 01 */ li r3, 1
/* 801364E0 00133420  E3 E1 00 58 */ psq_l f31, 88(r1), 0, 0
/* 801364E4 00133424  CB E1 00 50 */ lfd f31, 0x50(r1)
/* 801364E8 00133428  E3 C1 00 48 */ psq_l f30, 72(r1), 0, 0
/* 801364EC 0013342C  CB C1 00 40 */ lfd f30, 0x40(r1)
/* 801364F0 00133430  39 61 00 40 */ addi r11, r1, 0x40
/* 801364F4 00133434  48 22 BD 35 */ bl _restgpr_29
/* 801364F8 00133438  80 01 00 64 */ lwz r0, 0x64(r1)
/* 801364FC 0013343C  7C 08 03 A6 */ mtlr r0
/* 80136500 00133440  38 21 00 60 */ addi r1, r1, 0x60
/* 80136504 00133444  4E 80 00 20 */ blr