/* 800E6230 000E3170  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 800E6234 000E3174  7C 08 02 A6 */ mflr r0
/* 800E6238 000E3178  90 01 00 34 */ stw r0, 0x34(r1)
/* 800E623C 000E317C  39 61 00 30 */ addi r11, r1, 0x30
/* 800E6240 000E3180  48 27 BF 9D */ bl _savegpr_29
/* 800E6244 000E3184  7C 7D 1B 78 */ mr r29, r3
/* 800E6248 000E3188  3B DD 1F D0 */ addi r30, r29, 0x1fd0
/* 800E624C 000E318C  83 E3 28 30 */ lwz r31, 0x2830(r3)
/* 800E6250 000E3190  28 1F 00 00 */ cmplwi r31, 0
/* 800E6254 000E3194  40 82 00 10 */ bne lbl_800E6264
/* 800E6258 000E3198  38 80 00 00 */ li r4, 0
/* 800E625C 000E319C  4B FD 3E 75 */ bl daAlink_c_NS_checkNextAction
/* 800E6260 000E31A0  48 00 01 04 */ b lbl_800E6364
lbl_800E6264:
/* 800E6264 000E31A4  7F C3 F3 78 */ mr r3, r30
/* 800E6268 000E31A8  48 07 82 65 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800E626C 000E31AC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800E6270 000E31B0  40 82 00 2C */ bne lbl_800E629C
/* 800E6274 000E31B4  C0 3D 33 AC */ lfs f1, 0x33ac(r29)
/* 800E6278 000E31B8  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800E627C 000E31BC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800E6280 000E31C0  40 81 00 50 */ ble lbl_800E62D0
/* 800E6284 000E31C4  C0 3E 00 10 */ lfs f1, 0x10(r30)
/* 800E6288 000E31C8  3C 60 80 39 */ lis r3, lbl_8038EC48@ha
/* 800E628C 000E31CC  38 63 EC 48 */ addi r3, r3, lbl_8038EC48@l
/* 800E6290 000E31D0  C0 03 00 24 */ lfs f0, 0x24(r3)
/* 800E6294 000E31D4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800E6298 000E31D8  40 81 00 38 */ ble lbl_800E62D0
lbl_800E629C:
/* 800E629C 000E31DC  80 1D 05 80 */ lwz r0, 0x580(r29)
/* 800E62A0 000E31E0  60 00 00 20 */ ori r0, r0, 0x20
/* 800E62A4 000E31E4  90 1D 05 80 */ stw r0, 0x580(r29)
/* 800E62A8 000E31E8  88 1F 04 9A */ lbz r0, 0x49a(r31)
/* 800E62AC 000E31EC  70 00 00 43 */ andi. r0, r0, 0x43
/* 800E62B0 000E31F0  41 82 00 14 */ beq lbl_800E62C4
/* 800E62B4 000E31F4  7F A3 EB 78 */ mr r3, r29
/* 800E62B8 000E31F8  38 80 00 00 */ li r4, 0
/* 800E62BC 000E31FC  48 00 0A B1 */ bl daAlink_c_NS_procGrabReboundInit
/* 800E62C0 000E3200  48 00 00 A0 */ b lbl_800E6360
lbl_800E62C4:
/* 800E62C4 000E3204  7F A3 EB 78 */ mr r3, r29
/* 800E62C8 000E3208  4B FF F0 E5 */ bl daAlink_c_NS_initGrabNextMode
/* 800E62CC 000E320C  48 00 00 94 */ b lbl_800E6360
lbl_800E62D0:
/* 800E62D0 000E3210  A8 1D 30 0E */ lha r0, 0x300e(r29)
/* 800E62D4 000E3214  2C 00 00 00 */ cmpwi r0, 0
/* 800E62D8 000E3218  41 82 00 88 */ beq lbl_800E6360
/* 800E62DC 000E321C  C0 DE 00 10 */ lfs f6, 0x10(r30)
/* 800E62E0 000E3220  C0 7D 34 78 */ lfs f3, 0x3478(r29)
/* 800E62E4 000E3224  FC 06 18 40 */ fcmpo cr0, f6, f3
/* 800E62E8 000E3228  40 80 00 0C */ bge lbl_800E62F4
/* 800E62EC 000E322C  C0 42 92 C0 */ lfs f2, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800E62F0 000E3230  48 00 00 30 */ b lbl_800E6320
lbl_800E62F4:
/* 800E62F4 000E3234  EC 46 18 28 */ fsubs f2, f6, f3
/* 800E62F8 000E3238  A8 1E 00 08 */ lha r0, 8(r30)
/* 800E62FC 000E323C  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 800E6300 000E3240  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800E6304 000E3244  90 01 00 0C */ stw r0, 0xc(r1)
/* 800E6308 000E3248  3C 00 43 30 */ lis r0, 0x4330
/* 800E630C 000E324C  90 01 00 08 */ stw r0, 8(r1)
/* 800E6310 000E3250  C8 01 00 08 */ lfd f0, 8(r1)
/* 800E6314 000E3254  EC 00 08 28 */ fsubs f0, f0, f1
/* 800E6318 000E3258  EC 00 18 28 */ fsubs f0, f0, f3
/* 800E631C 000E325C  EC 42 00 24 */ fdivs f2, f2, f0
lbl_800E6320:
/* 800E6320 000E3260  7F A3 EB 78 */ mr r3, r29
/* 800E6324 000E3264  C0 A2 92 B8 */ lfs f5, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800E6328 000E3268  C0 82 93 34 */ lfs f4, lbl_80452D34-_SDA2_BASE_(r2)
/* 800E632C 000E326C  EC 66 20 28 */ fsubs f3, f6, f4
/* 800E6330 000E3270  A8 1E 00 08 */ lha r0, 8(r30)
/* 800E6334 000E3274  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 800E6338 000E3278  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800E633C 000E327C  90 01 00 14 */ stw r0, 0x14(r1)
/* 800E6340 000E3280  3C 00 43 30 */ lis r0, 0x4330
/* 800E6344 000E3284  90 01 00 10 */ stw r0, 0x10(r1)
/* 800E6348 000E3288  C8 01 00 10 */ lfd f0, 0x10(r1)
/* 800E634C 000E328C  EC 00 08 28 */ fsubs f0, f0, f1
/* 800E6350 000E3290  EC 00 20 28 */ fsubs f0, f0, f4
/* 800E6354 000E3294  EC 03 00 24 */ fdivs f0, f3, f0
/* 800E6358 000E3298  EC 25 00 28 */ fsubs f1, f5, f0
/* 800E635C 000E329C  4B FF EC 4D */ bl daAlink_c_NS_setCarryArmAngle
lbl_800E6360:
/* 800E6360 000E32A0  38 60 00 01 */ li r3, 1
lbl_800E6364:
/* 800E6364 000E32A4  39 61 00 30 */ addi r11, r1, 0x30
/* 800E6368 000E32A8  48 27 BE C1 */ bl _restgpr_29
/* 800E636C 000E32AC  80 01 00 34 */ lwz r0, 0x34(r1)
/* 800E6370 000E32B0  7C 08 03 A6 */ mtlr r0
/* 800E6374 000E32B4  38 21 00 30 */ addi r1, r1, 0x30
/* 800E6378 000E32B8  4E 80 00 20 */ blr