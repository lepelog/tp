/* 800C5328 000C2268  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800C532C 000C226C  7C 08 02 A6 */ mflr r0
/* 800C5330 000C2270  90 01 00 24 */ stw r0, 0x24(r1)
/* 800C5334 000C2274  39 61 00 20 */ addi r11, r1, 0x20
/* 800C5338 000C2278  48 29 CE A5 */ bl _savegpr_29
/* 800C533C 000C227C  7C 7E 1B 78 */ mr r30, r3
/* 800C5340 000C2280  7C 9D 23 78 */ mr r29, r4
/* 800C5344 000C2284  48 01 7A AD */ bl checkUpperGuardAnime__9daAlink_cCFv
/* 800C5348 000C2288  7C 7F 1B 78 */ mr r31, r3
/* 800C534C 000C228C  7F C3 F3 78 */ mr r3, r30
/* 800C5350 000C2290  38 80 00 11 */ li r4, 0x11
/* 800C5354 000C2294  4B FF DA 51 */ bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C5358 000C2298  2C 03 00 00 */ cmpwi r3, 0
/* 800C535C 000C229C  40 82 00 0C */ bne lbl_800C5368
/* 800C5360 000C22A0  38 60 00 00 */ li r3, 0
/* 800C5364 000C22A4  48 00 01 08 */ b lbl_800C546C
lbl_800C5368:
/* 800C5368 000C22A8  9B BE 2F 98 */ stb r29, 0x2f98(r30)
/* 800C536C 000C22AC  88 1E 2F 98 */ lbz r0, 0x2f98(r30)
/* 800C5370 000C22B0  28 00 00 02 */ cmplwi r0, 2
/* 800C5374 000C22B4  40 82 00 18 */ bne lbl_800C538C
/* 800C5378 000C22B8  38 80 00 F0 */ li r4, 0xf0
/* 800C537C 000C22BC  A8 7E 04 E6 */ lha r3, 0x4e6(r30)
/* 800C5380 000C22C0  38 03 40 00 */ addi r0, r3, 0x4000
/* 800C5384 000C22C4  B0 1E 04 DE */ sth r0, 0x4de(r30)
/* 800C5388 000C22C8  48 00 00 14 */ b lbl_800C539C
lbl_800C538C:
/* 800C538C 000C22CC  38 80 00 F1 */ li r4, 0xf1
/* 800C5390 000C22D0  A8 7E 04 E6 */ lha r3, 0x4e6(r30)
/* 800C5394 000C22D4  38 03 C0 00 */ addi r0, r3, -16384
/* 800C5398 000C22D8  B0 1E 04 DE */ sth r0, 0x4de(r30)
lbl_800C539C:
/* 800C539C 000C22DC  7F C3 F3 78 */ mr r3, r30
/* 800C53A0 000C22E0  3C A0 80 39 */ lis r5, lbl_8038DF70@ha
/* 800C53A4 000C22E4  38 C5 DF 70 */ addi r6, r5, lbl_8038DF70@l
/* 800C53A8 000C22E8  C0 26 00 24 */ lfs f1, 0x24(r6)
/* 800C53AC 000C22EC  C0 46 00 08 */ lfs f2, 8(r6)
/* 800C53B0 000C22F0  A8 A6 00 00 */ lha r5, 0(r6)
/* 800C53B4 000C22F4  C0 66 00 0C */ lfs f3, 0xc(r6)
/* 800C53B8 000C22F8  4B FE 7C 55 */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800C53BC 000C22FC  3C 60 80 39 */ lis r3, lbl_8038DF70@ha
/* 800C53C0 000C2300  38 63 DF 70 */ addi r3, r3, lbl_8038DF70@l
/* 800C53C4 000C2304  C0 03 00 28 */ lfs f0, 0x28(r3)
/* 800C53C8 000C2308  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 800C53CC 000C230C  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800C53D0 000C2310  54 00 02 11 */ rlwinm. r0, r0, 0, 8, 8
/* 800C53D4 000C2314  41 82 00 20 */ beq lbl_800C53F4
/* 800C53D8 000C2318  C0 3E 33 98 */ lfs f1, 0x3398(r30)
/* 800C53DC 000C231C  3C 60 80 39 */ lis r3, lbl_8038E7F4@ha
/* 800C53E0 000C2320  38 63 E7 F4 */ addi r3, r3, lbl_8038E7F4@l
/* 800C53E4 000C2324  C0 03 00 3C */ lfs f0, 0x3c(r3)
/* 800C53E8 000C2328  EC 01 00 32 */ fmuls f0, f1, f0
/* 800C53EC 000C232C  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 800C53F0 000C2330  48 00 00 2C */ b lbl_800C541C
lbl_800C53F4:
/* 800C53F4 000C2334  7F C3 F3 78 */ mr r3, r30
/* 800C53F8 000C2338  38 80 00 01 */ li r4, 1
/* 800C53FC 000C233C  38 A0 00 01 */ li r5, 1
/* 800C5400 000C2340  4B FF 60 B9 */ bl checkHeavyStateOn__9daAlink_cFii
/* 800C5404 000C2344  2C 03 00 00 */ cmpwi r3, 0
/* 800C5408 000C2348  41 82 00 14 */ beq lbl_800C541C
/* 800C540C 000C234C  C0 3E 33 98 */ lfs f1, 0x3398(r30)
/* 800C5410 000C2350  C0 1E 34 34 */ lfs f0, 0x3434(r30)
/* 800C5414 000C2354  EC 01 00 32 */ fmuls f0, f1, f0
/* 800C5418 000C2358  D0 1E 33 98 */ stfs f0, 0x3398(r30)
lbl_800C541C:
/* 800C541C 000C235C  7F C3 F3 78 */ mr r3, r30
/* 800C5420 000C2360  38 80 00 00 */ li r4, 0
/* 800C5424 000C2364  48 05 BD 9D */ bl setFootEffectProcType__9daAlink_cFi
/* 800C5428 000C2368  38 00 00 04 */ li r0, 4
/* 800C542C 000C236C  98 1E 2F 9D */ stb r0, 0x2f9d(r30)
/* 800C5430 000C2370  7F C3 F3 78 */ mr r3, r30
/* 800C5434 000C2374  3C 80 00 01 */ lis r4, 0x00010096@ha
/* 800C5438 000C2378  38 84 00 96 */ addi r4, r4, 0x00010096@l
/* 800C543C 000C237C  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 800C5440 000C2380  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 800C5444 000C2384  7D 89 03 A6 */ mtctr r12
/* 800C5448 000C2388  4E 80 04 21 */ bctrl
/* 800C544C 000C238C  2C 1F 00 00 */ cmpwi r31, 0
/* 800C5450 000C2390  41 82 00 10 */ beq lbl_800C5460
/* 800C5454 000C2394  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800C5458 000C2398  60 00 00 02 */ ori r0, r0, 2
/* 800C545C 000C239C  90 1E 05 70 */ stw r0, 0x570(r30)
lbl_800C5460:
/* 800C5460 000C23A0  38 00 00 00 */ li r0, 0
/* 800C5464 000C23A4  B0 1E 30 0C */ sth r0, 0x300c(r30)
/* 800C5468 000C23A8  38 60 00 01 */ li r3, 1
lbl_800C546C:
/* 800C546C 000C23AC  39 61 00 20 */ addi r11, r1, 0x20
/* 800C5470 000C23B0  48 29 CD B9 */ bl _restgpr_29
/* 800C5474 000C23B4  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800C5478 000C23B8  7C 08 03 A6 */ mtlr r0
/* 800C547C 000C23BC  38 21 00 20 */ addi r1, r1, 0x20
/* 800C5480 000C23C0  4E 80 00 20 */ blr