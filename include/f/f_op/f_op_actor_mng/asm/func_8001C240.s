/* 8001C240 00019180  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 8001C244 00019184  7C 08 02 A6 */ mflr r0
/* 8001C248 00019188  90 01 00 44 */ stw r0, 0x44(r1)
/* 8001C24C 0001918C  39 61 00 40 */ addi r11, r1, 0x40
/* 8001C250 00019190  48 34 5F 7D */ bl _savegpr_25
/* 8001C254 00019194  7C 7B 1B 78 */ mr r27, r3
/* 8001C258 00019198  7C 9C 23 78 */ mr r28, r4
/* 8001C25C 0001919C  7C B9 2B 78 */ mr r25, r5
/* 8001C260 000191A0  7C DD 33 78 */ mr r29, r6
/* 8001C264 000191A4  7C FE 3B 78 */ mr r30, r7
/* 8001C268 000191A8  7D 1F 43 78 */ mr r31, r8
/* 8001C26C 000191AC  7D 3A 4B 78 */ mr r26, r9
/* 8001C270 000191B0  2C 1C 00 FF */ cmpwi r28, 0xff
/* 8001C274 000191B4  40 82 00 0C */ bne lbl_8001C280
/* 8001C278 000191B8  38 60 FF FF */ li r3, -1
/* 8001C27C 000191BC  48 00 01 4C */ b lbl_8001C3C8
lbl_8001C280:
/* 8001C280 000191C0  80 0D 8B E0 */ lwz r0, lbl_80451160-_SDA_BASE_(r13)
/* 8001C284 000191C4  90 01 00 08 */ stw r0, 8(r1)
/* 8001C288 000191C8  A0 0D 8B E4 */ lhz r0, lbl_80451164-_SDA_BASE_(r13)
/* 8001C28C 000191CC  B0 01 00 0C */ sth r0, 0xc(r1)
/* 8001C290 000191D0  28 1E 00 00 */ cmplwi r30, 0
/* 8001C294 000191D4  41 82 00 20 */ beq lbl_8001C2B4
/* 8001C298 000191D8  A8 1E 00 00 */ lha r0, 0(r30)
/* 8001C29C 000191DC  B0 01 00 08 */ sth r0, 8(r1)
/* 8001C2A0 000191E0  A8 1E 00 02 */ lha r0, 2(r30)
/* 8001C2A4 000191E4  B0 01 00 0A */ sth r0, 0xa(r1)
/* 8001C2A8 000191E8  A8 1E 00 04 */ lha r0, 4(r30)
/* 8001C2AC 000191EC  B0 01 00 0C */ sth r0, 0xc(r1)
/* 8001C2B0 000191F0  48 00 00 1C */ b lbl_8001C2CC
lbl_8001C2B4:
/* 8001C2B4 000191F4  C0 22 82 2C */ lfs f1, lbl_80451C2C-_SDA2_BASE_(r2)
/* 8001C2B8 000191F8  48 24 B6 D5 */ bl cM_rndFX__Ff
/* 8001C2BC 000191FC  FC 00 08 1E */ fctiwz f0, f1
/* 8001C2C0 00019200  D8 01 00 10 */ stfd f0, 0x10(r1)
/* 8001C2C4 00019204  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8001C2C8 00019208  B0 01 00 0A */ sth r0, 0xa(r1)
lbl_8001C2CC:
/* 8001C2CC 0001920C  38 00 00 FF */ li r0, 0xff
/* 8001C2D0 00019210  B0 01 00 0C */ sth r0, 0xc(r1)
/* 8001C2D4 00019214  7F 83 E3 78 */ mr r3, r28
/* 8001C2D8 00019218  48 07 F4 ED */ bl check_itemno__Fi
/* 8001C2DC 0001921C  57 44 C1 0E */ rlwinm r4, r26, 0x18, 4, 7
/* 8001C2E0 00019220  54 60 06 3E */ clrlwi r0, r3, 0x18
/* 8001C2E4 00019224  53 20 44 2E */ rlwimi r0, r25, 8, 0x10, 0x17
/* 8001C2E8 00019228  64 00 00 FF */ oris r0, r0, 0xff
/* 8001C2EC 0001922C  7C 9A 03 78 */ or r26, r4, r0
/* 8001C2F0 00019230  2C 1C 00 20 */ cmpwi r28, 0x20
/* 8001C2F4 00019234  41 82 00 B4 */ beq lbl_8001C3A8
/* 8001C2F8 00019238  40 80 00 14 */ bge lbl_8001C30C
/* 8001C2FC 0001923C  2C 1C 00 1E */ cmpwi r28, 0x1e
/* 8001C300 00019240  41 82 00 18 */ beq lbl_8001C318
/* 8001C304 00019244  40 80 00 5C */ bge lbl_8001C360
/* 8001C308 00019248  48 00 00 A0 */ b lbl_8001C3A8
lbl_8001C30C:
/* 8001C30C 0001924C  2C 1C 00 23 */ cmpwi r28, 0x23
/* 8001C310 00019250  40 80 00 98 */ bge lbl_8001C3A8
/* 8001C314 00019254  48 00 00 28 */ b lbl_8001C33C
lbl_8001C318:
/* 8001C318 00019258  38 60 01 3F */ li r3, 0x13f
/* 8001C31C 0001925C  38 80 FF FF */ li r4, -1
/* 8001C320 00019260  7F 65 DB 78 */ mr r5, r27
/* 8001C324 00019264  7F A6 EB 78 */ mr r6, r29
/* 8001C328 00019268  7F C7 F3 78 */ mr r7, r30
/* 8001C32C 0001926C  7F E8 FB 78 */ mr r8, r31
/* 8001C330 00019270  39 20 FF FF */ li r9, -1
/* 8001C334 00019274  4B FF DA 65 */ bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 8001C338 00019278  48 00 00 90 */ b lbl_8001C3C8
lbl_8001C33C:
/* 8001C33C 0001927C  38 60 02 1B */ li r3, 0x21b
/* 8001C340 00019280  7F 44 D3 78 */ mr r4, r26
/* 8001C344 00019284  7F 65 DB 78 */ mr r5, r27
/* 8001C348 00019288  7F A6 EB 78 */ mr r6, r29
/* 8001C34C 0001928C  7F C7 F3 78 */ mr r7, r30
/* 8001C350 00019290  7F E8 FB 78 */ mr r8, r31
/* 8001C354 00019294  39 20 FF FF */ li r9, -1
/* 8001C358 00019298  4B FF DA 41 */ bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 8001C35C 0001929C  48 00 00 6C */ b lbl_8001C3C8
lbl_8001C360:
/* 8001C360 000192A0  3B 80 00 00 */ li r28, 0
lbl_8001C364:
/* 8001C364 000192A4  38 60 02 18 */ li r3, 0x218
/* 8001C368 000192A8  7F 44 D3 78 */ mr r4, r26
/* 8001C36C 000192AC  7F 65 DB 78 */ mr r5, r27
/* 8001C370 000192B0  7F A6 EB 78 */ mr r6, r29
/* 8001C374 000192B4  38 E1 00 08 */ addi r7, r1, 8
/* 8001C378 000192B8  7F E8 FB 78 */ mr r8, r31
/* 8001C37C 000192BC  39 20 FF FF */ li r9, -1
/* 8001C380 000192C0  4B FF DA 19 */ bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 8001C384 000192C4  C0 22 82 2C */ lfs f1, lbl_80451C2C-_SDA2_BASE_(r2)
/* 8001C388 000192C8  48 24 B6 05 */ bl cM_rndFX__Ff
/* 8001C38C 000192CC  FC 00 08 1E */ fctiwz f0, f1
/* 8001C390 000192D0  D8 01 00 10 */ stfd f0, 0x10(r1)
/* 8001C394 000192D4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8001C398 000192D8  B0 01 00 0A */ sth r0, 0xa(r1)
/* 8001C39C 000192DC  3B 9C 00 01 */ addi r28, r28, 1
/* 8001C3A0 000192E0  2C 1C 00 02 */ cmpwi r28, 2
/* 8001C3A4 000192E4  41 80 FF C0 */ blt lbl_8001C364
lbl_8001C3A8:
/* 8001C3A8 000192E8  38 60 02 18 */ li r3, 0x218
/* 8001C3AC 000192EC  7F 44 D3 78 */ mr r4, r26
/* 8001C3B0 000192F0  7F 65 DB 78 */ mr r5, r27
/* 8001C3B4 000192F4  7F A6 EB 78 */ mr r6, r29
/* 8001C3B8 000192F8  38 E1 00 08 */ addi r7, r1, 8
/* 8001C3BC 000192FC  7F E8 FB 78 */ mr r8, r31
/* 8001C3C0 00019300  39 20 FF FF */ li r9, -1
/* 8001C3C4 00019304  4B FF D9 D5 */ bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
lbl_8001C3C8:
/* 8001C3C8 00019308  39 61 00 40 */ addi r11, r1, 0x40
/* 8001C3CC 0001930C  48 34 5E 4D */ bl _restgpr_25
/* 8001C3D0 00019310  80 01 00 44 */ lwz r0, 0x44(r1)
/* 8001C3D4 00019314  7C 08 03 A6 */ mtlr r0
/* 8001C3D8 00019318  38 21 00 40 */ addi r1, r1, 0x40
/* 8001C3DC 0001931C  4E 80 00 20 */ blr
