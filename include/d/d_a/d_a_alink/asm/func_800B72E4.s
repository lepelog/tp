/* 800B72E4 000B4224  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800B72E8 000B4228  7C 08 02 A6 */ mflr r0
/* 800B72EC 000B422C  90 01 00 14 */ stw r0, 0x14(r1)
/* 800B72F0 000B4230  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800B72F4 000B4234  7C 7F 1B 78 */ mr r31, r3
/* 800B72F8 000B4238  80 03 28 28 */ lwz r0, 0x2828(r3)
/* 800B72FC 000B423C  28 00 00 00 */ cmplwi r0, 0
/* 800B7300 000B4240  41 82 00 0C */ beq lbl_800B730C
/* 800B7304 000B4244  38 60 00 01 */ li r3, 1
/* 800B7308 000B4248  48 00 00 74 */ b lbl_800B737C
lbl_800B730C:
/* 800B730C 000B424C  38 7F 28 24 */ addi r3, r31, 0x2824
/* 800B7310 000B4250  48 0A 79 ED */ bl clearData__16daPy_actorKeep_cFv
/* 800B7314 000B4254  7F E3 FB 78 */ mr r3, r31
/* 800B7318 000B4258  38 80 00 02 */ li r4, 2
/* 800B731C 000B425C  C0 22 92 BC */ lfs f1, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800B7320 000B4260  4B FF 64 05 */ bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800B7324 000B4264  38 00 00 FF */ li r0, 0xff
/* 800B7328 000B4268  B0 1F 2F DC */ sth r0, 0x2fdc(r31)
/* 800B732C 000B426C  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 800B7330 000B4270  54 00 05 6B */ rlwinm. r0, r0, 0, 0x15, 0x15
/* 800B7334 000B4274  41 82 00 3C */ beq lbl_800B7370
/* 800B7338 000B4278  7F E3 FB 78 */ mr r3, r31
/* 800B733C 000B427C  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800B7340 000B4280  81 8C 01 90 */ lwz r12, 0x190(r12)
/* 800B7344 000B4284  7D 89 03 A6 */ mtctr r12
/* 800B7348 000B4288  4E 80 04 21 */ bctrl
/* 800B734C 000B428C  28 03 00 00 */ cmplwi r3, 0
/* 800B7350 000B4290  41 82 00 14 */ beq lbl_800B7364
/* 800B7354 000B4294  7F E3 FB 78 */ mr r3, r31
/* 800B7358 000B4298  38 80 00 00 */ li r4, 0
/* 800B735C 000B429C  48 03 DE 89 */ bl procCanoeWaitInit__9daAlink_cFi
/* 800B7360 000B42A0  48 00 00 18 */ b lbl_800B7378
lbl_800B7364:
/* 800B7364 000B42A4  7F E3 FB 78 */ mr r3, r31
/* 800B7368 000B42A8  48 03 96 19 */ bl procHorseWaitInit__9daAlink_cFv
/* 800B736C 000B42AC  48 00 00 0C */ b lbl_800B7378
lbl_800B7370:
/* 800B7370 000B42B0  7F E3 FB 78 */ mr r3, r31
/* 800B7374 000B42B4  48 00 C0 45 */ bl procWaitInit__9daAlink_cFv
lbl_800B7378:
/* 800B7378 000B42B8  38 60 00 00 */ li r3, 0
lbl_800B737C:
/* 800B737C 000B42BC  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800B7380 000B42C0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800B7384 000B42C4  7C 08 03 A6 */ mtlr r0
/* 800B7388 000B42C8  38 21 00 10 */ addi r1, r1, 0x10
/* 800B738C 000B42CC  4E 80 00 20 */ blr
