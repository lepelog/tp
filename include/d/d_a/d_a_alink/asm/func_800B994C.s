/* 800B994C 000B688C  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800B9950 000B6890  7C 08 02 A6 */ mflr r0
/* 800B9954 000B6894  90 01 00 24 */ stw r0, 0x24(r1)
/* 800B9958 000B6898  39 61 00 20 */ addi r11, r1, 0x20
/* 800B995C 000B689C  48 2A 88 79 */ bl _savegpr_27
/* 800B9960 000B68A0  7C 7E 1B 78 */ mr r30, r3
/* 800B9964 000B68A4  80 03 31 A0 */ lwz r0, 0x31a0(r3)
/* 800B9968 000B68A8  54 00 07 7B */ rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800B996C 000B68AC  41 82 03 A4 */ beq lbl_800B9D10
/* 800B9970 000B68B0  4B FF F9 D1 */ bl daAlink_c_NS_checkEquipAnime
/* 800B9974 000B68B4  2C 03 00 00 */ cmpwi r3, 0
/* 800B9978 000B68B8  40 82 03 98 */ bne lbl_800B9D10
/* 800B997C 000B68BC  7F C3 F3 78 */ mr r3, r30
/* 800B9980 000B68C0  48 02 6B 2D */ bl daAlink_c_NS_checkBoomerangThrowAnime
/* 800B9984 000B68C4  2C 03 00 00 */ cmpwi r3, 0
/* 800B9988 000B68C8  40 82 03 88 */ bne lbl_800B9D10
/* 800B998C 000B68CC  38 60 00 00 */ li r3, 0
/* 800B9990 000B68D0  A0 1E 2F DC */ lhz r0, 0x2fdc(r30)
/* 800B9994 000B68D4  28 00 00 46 */ cmplwi r0, 0x46
/* 800B9998 000B68D8  40 82 00 14 */ bne lbl_800B99AC
/* 800B999C 000B68DC  A0 1E 1F BC */ lhz r0, 0x1fbc(r30)
/* 800B99A0 000B68E0  28 00 00 53 */ cmplwi r0, 0x53
/* 800B99A4 000B68E4  40 82 00 08 */ bne lbl_800B99AC
/* 800B99A8 000B68E8  38 60 00 01 */ li r3, 1
lbl_800B99AC:
/* 800B99AC 000B68EC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B99B0 000B68F0  40 82 03 60 */ bne lbl_800B9D10
/* 800B99B4 000B68F4  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800B99B8 000B68F8  3B E3 61 C0 */ addi r31, r3, g_dComIfG_gameInfo@l
/* 800B99BC 000B68FC  88 1F 00 14 */ lbz r0, 0x14(r31)
/* 800B99C0 000B6900  28 00 00 FF */ cmplwi r0, 0xff
/* 800B99C4 000B6904  41 82 00 88 */ beq lbl_800B9A4C
/* 800B99C8 000B6908  48 00 6B CD */ bl daAlink_c_NS_checkNotBattleStage
/* 800B99CC 000B690C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B99D0 000B6910  40 82 00 7C */ bne lbl_800B9A4C
/* 800B99D4 000B6914  7F C3 F3 78 */ mr r3, r30
/* 800B99D8 000B6918  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 800B99DC 000B691C  81 8C 01 90 */ lwz r12, 0x190(r12)
/* 800B99E0 000B6920  7D 89 03 A6 */ mtctr r12
/* 800B99E4 000B6924  4E 80 04 21 */ bctrl
/* 800B99E8 000B6928  28 03 00 00 */ cmplwi r3, 0
/* 800B99EC 000B692C  40 82 00 60 */ bne lbl_800B9A4C
/* 800B99F0 000B6930  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800B99F4 000B6934  54 00 03 5B */ rlwinm. r0, r0, 0, 0xd, 0xd
/* 800B99F8 000B6938  41 82 00 10 */ beq lbl_800B9A08
/* 800B99FC 000B693C  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800B9A00 000B6940  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800B9A04 000B6944  41 82 00 48 */ beq lbl_800B9A4C
lbl_800B9A08:
/* 800B9A08 000B6948  A0 1E 2F DC */ lhz r0, 0x2fdc(r30)
/* 800B9A0C 000B694C  28 00 01 03 */ cmplwi r0, 0x103
/* 800B9A10 000B6950  41 82 00 3C */ beq lbl_800B9A4C
/* 800B9A14 000B6954  7F C3 F3 78 */ mr r3, r30
/* 800B9A18 000B6958  38 80 00 08 */ li r4, 8
/* 800B9A1C 000B695C  4B FF 8B B1 */ bl itemTriggerCheck__9daAlink_cFUc
/* 800B9A20 000B6960  2C 03 00 00 */ cmpwi r3, 0
/* 800B9A24 000B6964  41 82 00 28 */ beq lbl_800B9A4C
/* 800B9A28 000B6968  80 1E 05 8C */ lwz r0, 0x58c(r30)
/* 800B9A2C 000B696C  54 00 00 43 */ rlwinm. r0, r0, 0, 1, 1
/* 800B9A30 000B6970  41 82 00 0C */ beq lbl_800B9A3C
/* 800B9A34 000B6974  38 60 00 00 */ li r3, 0
/* 800B9A38 000B6978  48 00 02 DC */ b lbl_800B9D14
lbl_800B9A3C:
/* 800B9A3C 000B697C  7F C3 F3 78 */ mr r3, r30
/* 800B9A40 000B6980  38 80 00 01 */ li r4, 1
/* 800B9A44 000B6984  4B FF F9 B1 */ bl daAlink_c_NS_swordEquip
/* 800B9A48 000B6988  48 00 02 C8 */ b lbl_800B9D10
lbl_800B9A4C:
/* 800B9A4C 000B698C  7F C3 F3 78 */ mr r3, r30
/* 800B9A50 000B6990  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 800B9A54 000B6994  81 8C 01 90 */ lwz r12, 0x190(r12)
/* 800B9A58 000B6998  7D 89 03 A6 */ mtctr r12
/* 800B9A5C 000B699C  4E 80 04 21 */ bctrl
/* 800B9A60 000B69A0  28 03 00 00 */ cmplwi r3, 0
/* 800B9A64 000B69A4  41 82 00 58 */ beq lbl_800B9ABC
/* 800B9A68 000B69A8  3C 60 80 39 */ lis r3, lbl_80392094@ha
/* 800B9A6C 000B69AC  38 63 20 94 */ addi r3, r3, lbl_80392094@l
/* 800B9A70 000B69B0  38 63 00 6F */ addi r3, r3, 0x6f
/* 800B9A74 000B69B4  4B FE 3F ED */ bl checkStageName__9daAlink_cFPCc
/* 800B9A78 000B69B8  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B9A7C 000B69BC  40 82 00 40 */ bne lbl_800B9ABC
/* 800B9A80 000B69C0  88 1E 05 6A */ lbz r0, 0x56a(r30)
/* 800B9A84 000B69C4  28 00 00 2D */ cmplwi r0, 0x2d
/* 800B9A88 000B69C8  41 82 00 34 */ beq lbl_800B9ABC
/* 800B9A8C 000B69CC  A0 1E 2F DC */ lhz r0, 0x2fdc(r30)
/* 800B9A90 000B69D0  28 00 01 05 */ cmplwi r0, 0x105
/* 800B9A94 000B69D4  41 82 00 28 */ beq lbl_800B9ABC
/* 800B9A98 000B69D8  7F C3 F3 78 */ mr r3, r30
/* 800B9A9C 000B69DC  38 80 00 08 */ li r4, 8
/* 800B9AA0 000B69E0  4B FF 8B 2D */ bl itemTriggerCheck__9daAlink_cFUc
/* 800B9AA4 000B69E4  2C 03 00 00 */ cmpwi r3, 0
/* 800B9AA8 000B69E8  41 82 00 14 */ beq lbl_800B9ABC
/* 800B9AAC 000B69EC  7F C3 F3 78 */ mr r3, r30
/* 800B9AB0 000B69F0  38 80 01 05 */ li r4, 0x105
/* 800B9AB4 000B69F4  4B FF FB 8D */ bl daAlink_c_NS_itemEquip
/* 800B9AB8 000B69F8  48 00 02 58 */ b lbl_800B9D10
lbl_800B9ABC:
/* 800B9ABC 000B69FC  3B 80 00 00 */ li r28, 0
/* 800B9AC0 000B6A00  3B A0 00 01 */ li r29, 1
/* 800B9AC4 000B6A04  48 00 00 4C */ b lbl_800B9B10
lbl_800B9AC8:
/* 800B9AC8 000B6A08  7F C3 F3 78 */ mr r3, r30
/* 800B9ACC 000B6A0C  7F 84 E3 78 */ mr r4, r28
/* 800B9AD0 000B6A10  48 00 6F CD */ bl daAlink_c_NS_checkNewItemChange
/* 800B9AD4 000B6A14  7C 7B 1B 79 */ or. r27, r3, r3
/* 800B9AD8 000B6A18  41 82 00 34 */ beq lbl_800B9B0C
/* 800B9ADC 000B6A1C  7F C3 F3 78 */ mr r3, r30
/* 800B9AE0 000B6A20  57 80 06 3E */ clrlwi r0, r28, 0x18
/* 800B9AE4 000B6A24  7F A0 00 30 */ slw r0, r29, r0
/* 800B9AE8 000B6A28  54 04 06 3E */ clrlwi r4, r0, 0x18
/* 800B9AEC 000B6A2C  4B FF 8A E1 */ bl itemTriggerCheck__9daAlink_cFUc
/* 800B9AF0 000B6A30  2C 03 00 00 */ cmpwi r3, 0
/* 800B9AF4 000B6A34  41 82 00 18 */ beq lbl_800B9B0C
/* 800B9AF8 000B6A38  7F C3 F3 78 */ mr r3, r30
/* 800B9AFC 000B6A3C  7F 84 E3 78 */ mr r4, r28
/* 800B9B00 000B6A40  7F 65 DB 78 */ mr r5, r27
/* 800B9B04 000B6A44  48 00 6C 79 */ bl daAlink_c_NS_changeItemTriggerKeepProc
/* 800B9B08 000B6A48  48 00 02 0C */ b lbl_800B9D14
lbl_800B9B0C:
/* 800B9B0C 000B6A4C  3B 9C 00 01 */ addi r28, r28, 1
lbl_800B9B10:
/* 800B9B10 000B6A50  57 80 06 3E */ clrlwi r0, r28, 0x18
/* 800B9B14 000B6A54  28 00 00 02 */ cmplwi r0, 2
/* 800B9B18 000B6A58  41 80 FF B0 */ blt lbl_800B9AC8
/* 800B9B1C 000B6A5C  88 1E 2F 8D */ lbz r0, 0x2f8d(r30)
/* 800B9B20 000B6A60  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B9B24 000B6A64  41 82 00 84 */ beq lbl_800B9BA8
/* 800B9B28 000B6A68  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800B9B2C 000B6A6C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800B9B30 000B6A70  88 03 5E 24 */ lbz r0, 0x5e24(r3)
/* 800B9B34 000B6A74  28 00 00 04 */ cmplwi r0, 4
/* 800B9B38 000B6A78  40 82 00 70 */ bne lbl_800B9BA8
/* 800B9B3C 000B6A7C  A0 7E 2F DC */ lhz r3, 0x2fdc(r30)
/* 800B9B40 000B6A80  28 03 00 48 */ cmplwi r3, 0x48
/* 800B9B44 000B6A84  41 82 00 1C */ beq lbl_800B9B60
/* 800B9B48 000B6A88  80 1E 05 78 */ lwz r0, 0x578(r30)
/* 800B9B4C 000B6A8C  54 00 07 FF */ clrlwi. r0, r0, 0x1f
/* 800B9B50 000B6A90  41 82 00 10 */ beq lbl_800B9B60
/* 800B9B54 000B6A94  7F C3 F3 78 */ mr r3, r30
/* 800B9B58 000B6A98  48 05 6C E9 */ bl daAlink_c_NS_offKandelaarModel
/* 800B9B5C 000B6A9C  48 00 01 B4 */ b lbl_800B9D10
lbl_800B9B60:
/* 800B9B60 000B6AA0  A8 1E 30 F4 */ lha r0, 0x30f4(r30)
/* 800B9B64 000B6AA4  2C 00 00 00 */ cmpwi r0, 0
/* 800B9B68 000B6AA8  41 82 00 30 */ beq lbl_800B9B98
/* 800B9B6C 000B6AAC  28 03 01 03 */ cmplwi r3, 0x103
/* 800B9B70 000B6AB0  40 82 00 28 */ bne lbl_800B9B98
/* 800B9B74 000B6AB4  88 1F 00 14 */ lbz r0, 0x14(r31)
/* 800B9B78 000B6AB8  28 00 00 3F */ cmplwi r0, 0x3f
/* 800B9B7C 000B6ABC  41 82 00 1C */ beq lbl_800B9B98
/* 800B9B80 000B6AC0  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800B9B84 000B6AC4  70 00 04 02 */ andi. r0, r0, 0x402
/* 800B9B88 000B6AC8  40 82 00 10 */ bne lbl_800B9B98
/* 800B9B8C 000B6ACC  7F C3 F3 78 */ mr r3, r30
/* 800B9B90 000B6AD0  48 01 CD FD */ bl daAlink_c_NS_procSwordUnequipSpInit
/* 800B9B94 000B6AD4  48 00 01 80 */ b lbl_800B9D14
lbl_800B9B98:
/* 800B9B98 000B6AD8  7F C3 F3 78 */ mr r3, r30
/* 800B9B9C 000B6ADC  38 80 00 01 */ li r4, 1
/* 800B9BA0 000B6AE0  4B FF FC 9D */ bl daAlink_c_NS_allUnequip
/* 800B9BA4 000B6AE4  48 00 01 6C */ b lbl_800B9D10
lbl_800B9BA8:
/* 800B9BA8 000B6AE8  A0 1E 2F DC */ lhz r0, 0x2fdc(r30)
/* 800B9BAC 000B6AEC  28 00 00 FF */ cmplwi r0, 0xff
/* 800B9BB0 000B6AF0  40 82 00 94 */ bne lbl_800B9C44
/* 800B9BB4 000B6AF4  80 1E 28 38 */ lwz r0, 0x2838(r30)
/* 800B9BB8 000B6AF8  28 00 00 00 */ cmplwi r0, 0
/* 800B9BBC 000B6AFC  40 82 00 88 */ bne lbl_800B9C44
/* 800B9BC0 000B6B00  7F C3 F3 78 */ mr r3, r30
/* 800B9BC4 000B6B04  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 800B9BC8 000B6B08  81 8C 01 90 */ lwz r12, 0x190(r12)
/* 800B9BCC 000B6B0C  7D 89 03 A6 */ mtctr r12
/* 800B9BD0 000B6B10  4E 80 04 21 */ bctrl
/* 800B9BD4 000B6B14  28 03 00 00 */ cmplwi r3, 0
/* 800B9BD8 000B6B18  40 82 00 6C */ bne lbl_800B9C44
/* 800B9BDC 000B6B1C  7F C3 F3 78 */ mr r3, r30
/* 800B9BE0 000B6B20  4B FF F6 75 */ bl daAlink_c_NS_checkNoUpperAnime
/* 800B9BE4 000B6B24  2C 03 00 00 */ cmpwi r3, 0
/* 800B9BE8 000B6B28  41 82 00 5C */ beq lbl_800B9C44
/* 800B9BEC 000B6B2C  80 1E 05 78 */ lwz r0, 0x578(r30)
/* 800B9BF0 000B6B30  54 00 07 FF */ clrlwi. r0, r0, 0x1f
/* 800B9BF4 000B6B34  41 82 00 50 */ beq lbl_800B9C44
/* 800B9BF8 000B6B38  3B A0 00 00 */ li r29, 0
/* 800B9BFC 000B6B3C  48 00 00 20 */ b lbl_800B9C1C
lbl_800B9C00:
/* 800B9C00 000B6B40  57 A3 06 3E */ clrlwi r3, r29, 0x18
/* 800B9C04 000B6B44  4B F7 43 19 */ bl dComIfGp_getSelectItem
/* 800B9C08 000B6B48  54 60 06 3E */ clrlwi r0, r3, 0x18
/* 800B9C0C 000B6B4C  28 00 00 48 */ cmplwi r0, 0x48
/* 800B9C10 000B6B50  40 82 00 08 */ bne lbl_800B9C18
/* 800B9C14 000B6B54  9B BE 2F 9C */ stb r29, 0x2f9c(r30)
lbl_800B9C18:
/* 800B9C18 000B6B58  3B BD 00 01 */ addi r29, r29, 1
lbl_800B9C1C:
/* 800B9C1C 000B6B5C  57 A0 06 3E */ clrlwi r0, r29, 0x18
/* 800B9C20 000B6B60  28 00 00 02 */ cmplwi r0, 2
/* 800B9C24 000B6B64  41 80 FF DC */ blt lbl_800B9C00
/* 800B9C28 000B6B68  7F C3 F3 78 */ mr r3, r30
/* 800B9C2C 000B6B6C  38 80 00 48 */ li r4, 0x48
/* 800B9C30 000B6B70  4B FF FA 11 */ bl daAlink_c_NS_itemEquip
/* 800B9C34 000B6B74  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 800B9C38 000B6B78  60 00 00 40 */ ori r0, r0, 0x40
/* 800B9C3C 000B6B7C  90 1E 05 74 */ stw r0, 0x574(r30)
/* 800B9C40 000B6B80  48 00 00 D0 */ b lbl_800B9D10
lbl_800B9C44:
/* 800B9C44 000B6B84  A0 1E 2F DC */ lhz r0, 0x2fdc(r30)
/* 800B9C48 000B6B88  28 00 01 03 */ cmplwi r0, 0x103
/* 800B9C4C 000B6B8C  41 82 00 C4 */ beq lbl_800B9D10
/* 800B9C50 000B6B90  28 00 00 FF */ cmplwi r0, 0xff
/* 800B9C54 000B6B94  41 82 00 BC */ beq lbl_800B9D10
/* 800B9C58 000B6B98  28 00 01 0B */ cmplwi r0, 0x10b
/* 800B9C5C 000B6B9C  41 82 00 B4 */ beq lbl_800B9D10
/* 800B9C60 000B6BA0  28 00 01 02 */ cmplwi r0, 0x102
/* 800B9C64 000B6BA4  41 82 00 AC */ beq lbl_800B9D10
/* 800B9C68 000B6BA8  7F C3 F3 78 */ mr r3, r30
/* 800B9C6C 000B6BAC  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 800B9C70 000B6BB0  81 8C 01 90 */ lwz r12, 0x190(r12)
/* 800B9C74 000B6BB4  7D 89 03 A6 */ mtctr r12
/* 800B9C78 000B6BB8  4E 80 04 21 */ bctrl
/* 800B9C7C 000B6BBC  28 03 00 00 */ cmplwi r3, 0
/* 800B9C80 000B6BC0  41 82 00 10 */ beq lbl_800B9C90
/* 800B9C84 000B6BC4  A0 1E 2F DC */ lhz r0, 0x2fdc(r30)
/* 800B9C88 000B6BC8  28 00 01 05 */ cmplwi r0, 0x105
/* 800B9C8C 000B6BCC  41 82 00 84 */ beq lbl_800B9D10
lbl_800B9C90:
/* 800B9C90 000B6BD0  7F C3 F3 78 */ mr r3, r30
/* 800B9C94 000B6BD4  48 05 BF 8D */ bl daAlink_c_NS_checkEventRun
/* 800B9C98 000B6BD8  2C 03 00 00 */ cmpwi r3, 0
/* 800B9C9C 000B6BDC  41 82 00 2C */ beq lbl_800B9CC8
/* 800B9CA0 000B6BE0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800B9CA4 000B6BE4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800B9CA8 000B6BE8  38 63 4F F8 */ addi r3, r3, 0x4ff8
/* 800B9CAC 000B6BEC  4B F8 E7 3D */ bl getRunEventName__16dEvent_manager_cFv
/* 800B9CB0 000B6BF0  3C 80 80 39 */ lis r4, lbl_80392094@ha
/* 800B9CB4 000B6BF4  38 84 20 94 */ addi r4, r4, lbl_80392094@l
/* 800B9CB8 000B6BF8  38 84 04 87 */ addi r4, r4, 0x487
/* 800B9CBC 000B6BFC  48 2A EC D9 */ bl strcmp
/* 800B9CC0 000B6C00  2C 03 00 00 */ cmpwi r3, 0
/* 800B9CC4 000B6C04  41 82 00 4C */ beq lbl_800B9D10
lbl_800B9CC8:
/* 800B9CC8 000B6C08  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800B9CCC 000B6C0C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800B9CD0 000B6C10  38 63 4F F8 */ addi r3, r3, 0x4ff8
/* 800B9CD4 000B6C14  4B F8 E7 15 */ bl getRunEventName__16dEvent_manager_cFv
/* 800B9CD8 000B6C18  3C 80 80 39 */ lis r4, lbl_80392094@ha
/* 800B9CDC 000B6C1C  38 84 20 94 */ addi r4, r4, lbl_80392094@l
/* 800B9CE0 000B6C20  38 84 04 8D */ addi r4, r4, 0x48d
/* 800B9CE4 000B6C24  48 2A EC B1 */ bl strcmp
/* 800B9CE8 000B6C28  2C 03 00 00 */ cmpwi r3, 0
/* 800B9CEC 000B6C2C  41 82 00 24 */ beq lbl_800B9D10
/* 800B9CF0 000B6C30  7F C3 F3 78 */ mr r3, r30
/* 800B9CF4 000B6C34  A0 9E 2F DC */ lhz r4, 0x2fdc(r30)
/* 800B9CF8 000B6C38  48 00 65 11 */ bl daAlink_c_NS_checkItemSetButton
/* 800B9CFC 000B6C3C  2C 03 00 02 */ cmpwi r3, 2
/* 800B9D00 000B6C40  40 82 00 10 */ bne lbl_800B9D10
/* 800B9D04 000B6C44  7F C3 F3 78 */ mr r3, r30
/* 800B9D08 000B6C48  38 80 00 01 */ li r4, 1
/* 800B9D0C 000B6C4C  4B FF FB 31 */ bl daAlink_c_NS_allUnequip
lbl_800B9D10:
/* 800B9D10 000B6C50  38 60 00 00 */ li r3, 0
lbl_800B9D14:
/* 800B9D14 000B6C54  39 61 00 20 */ addi r11, r1, 0x20
/* 800B9D18 000B6C58  48 2A 85 09 */ bl _restgpr_27
/* 800B9D1C 000B6C5C  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800B9D20 000B6C60  7C 08 03 A6 */ mtlr r0
/* 800B9D24 000B6C64  38 21 00 20 */ addi r1, r1, 0x20
/* 800B9D28 000B6C68  4E 80 00 20 */ blr
