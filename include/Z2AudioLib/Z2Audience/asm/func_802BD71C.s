/* 802BD71C 002BA65C  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 802BD720 002BA660  7C 08 02 A6 */ mflr r0
/* 802BD724 002BA664  90 01 00 44 */ stw r0, 0x44(r1)
/* 802BD728 002BA668  39 61 00 40 */ addi r11, r1, 0x40
/* 802BD72C 002BA66C  48 0A 4A A5 */ bl _savegpr_26
/* 802BD730 002BA670  7C 7A 1B 78 */ mr r26, r3
/* 802BD734 002BA674  7C 9B 23 78 */ mr r27, r4
/* 802BD738 002BA678  7C DC 33 78 */ mr r28, r6
/* 802BD73C 002BA67C  7C BF 2B 78 */ mr r31, r5
/* 802BD740 002BA680  7F E3 FB 78 */ mr r3, r31
/* 802BD744 002BA684  7F 84 E3 78 */ mr r4, r28
/* 802BD748 002BA688  4B FF EA BD */ bl Z2Audible_NS_getChannel
/* 802BD74C 002BA68C  7C 7E 1B 79 */ or. r30, r3, r3
/* 802BD750 002BA690  41 82 01 A4 */ beq lbl_802BD8F4
/* 802BD754 002BA694  C0 02 C0 A4 */ lfs f0, lbl_80455AA4-_SDA2_BASE_(r2)
/* 802BD758 002BA698  D0 01 00 08 */ stfs f0, 8(r1)
/* 802BD75C 002BA69C  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 802BD760 002BA6A0  C0 22 C0 A0 */ lfs f1, lbl_80455AA0-_SDA2_BASE_(r2)
/* 802BD764 002BA6A4  D0 21 00 0C */ stfs f1, 0xc(r1)
/* 802BD768 002BA6A8  C0 02 C0 A8 */ lfs f0, lbl_80455AA8-_SDA2_BASE_(r2)
/* 802BD76C 002BA6AC  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 802BD770 002BA6B0  D0 21 00 18 */ stfs f1, 0x18(r1)
/* 802BD774 002BA6B4  7F E3 FB 78 */ mr r3, r31
/* 802BD778 002BA6B8  4B FF EA A1 */ bl Z2Audible_NS_getDistVolBit
/* 802BD77C 002BA6BC  7C 7D 1B 78 */ mr r29, r3
/* 802BD780 002BA6C0  88 1F 00 10 */ lbz r0, 0x10(r31)
/* 802BD784 002BA6C4  54 00 F7 FF */ rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 802BD788 002BA6C8  41 82 00 74 */ beq lbl_802BD7FC
/* 802BD78C 002BA6CC  7F 43 D3 78 */ mr r3, r26
/* 802BD790 002BA6D0  C0 3E 00 24 */ lfs f1, 0x24(r30)
/* 802BD794 002BA6D4  7F A4 EB 78 */ mr r4, r29
/* 802BD798 002BA6D8  48 00 04 45 */ bl Z2Audience_NS_calcVolume_
/* 802BD79C 002BA6DC  FC 00 08 90 */ fmr f0, f1
/* 802BD7A0 002BA6E0  D0 01 00 08 */ stfs f0, 8(r1)
/* 802BD7A4 002BA6E4  80 7A 01 D0 */ lwz r3, 0x1d0(r26)
/* 802BD7A8 002BA6E8  C0 3F 00 64 */ lfs f1, 0x64(r31)
/* 802BD7AC 002BA6EC  7F 84 E3 78 */ mr r4, r28
/* 802BD7B0 002BA6F0  FC 40 00 18 */ frsp f2, f0
/* 802BD7B4 002BA6F4  4B FF F8 89 */ bl Z2SpotMic_NS_calcMicVolume
/* 802BD7B8 002BA6F8  C0 02 C0 A0 */ lfs f0, lbl_80455AA0-_SDA2_BASE_(r2)
/* 802BD7BC 002BA6FC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 802BD7C0 002BA700  40 80 00 10 */ bge lbl_802BD7D0
/* 802BD7C4 002BA704  7F 43 D3 78 */ mr r3, r26
/* 802BD7C8 002BA708  C0 21 00 08 */ lfs f1, 8(r1)
/* 802BD7CC 002BA70C  4B FF FF 39 */ bl Z2Audience_NS_calcOffMicSound
lbl_802BD7D0:
/* 802BD7D0 002BA710  D0 21 00 08 */ stfs f1, 8(r1)
/* 802BD7D4 002BA714  88 1F 00 11 */ lbz r0, 0x11(r31)
/* 802BD7D8 002BA718  54 00 07 39 */ rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 802BD7DC 002BA71C  41 82 00 28 */ beq lbl_802BD804
/* 802BD7E0 002BA720  FC 20 08 18 */ frsp f1, f1
/* 802BD7E4 002BA724  C0 02 C1 2C */ lfs f0, lbl_80455B2C-_SDA2_BASE_(r2)
/* 802BD7E8 002BA728  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 802BD7EC 002BA72C  4C 40 13 82 */ cror 2, 0, 2
/* 802BD7F0 002BA730  40 82 00 14 */ bne lbl_802BD804
/* 802BD7F4 002BA734  D0 01 00 08 */ stfs f0, 8(r1)
/* 802BD7F8 002BA738  48 00 00 0C */ b lbl_802BD804
lbl_802BD7FC:
/* 802BD7FC 002BA73C  C0 02 C0 A4 */ lfs f0, lbl_80455AA4-_SDA2_BASE_(r2)
/* 802BD800 002BA740  D0 01 00 08 */ stfs f0, 8(r1)
lbl_802BD804:
/* 802BD804 002BA744  88 1F 00 11 */ lbz r0, 0x11(r31)
/* 802BD808 002BA748  54 00 D7 FF */ rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 802BD80C 002BA74C  41 82 00 28 */ beq lbl_802BD834
/* 802BD810 002BA750  80 1A 01 D4 */ lwz r0, 0x1d4(r26)
/* 802BD814 002BA754  2C 00 00 01 */ cmpwi r0, 1
/* 802BD818 002BA758  40 82 00 1C */ bne lbl_802BD834
/* 802BD81C 002BA75C  7F 43 D3 78 */ mr r3, r26
/* 802BD820 002BA760  38 9E 00 14 */ addi r4, r30, 0x14
/* 802BD824 002BA764  7F 85 E3 78 */ mr r5, r28
/* 802BD828 002BA768  48 00 03 1D */ bl Z2Audience_NS_calcRelPosDolby
/* 802BD82C 002BA76C  D0 21 00 18 */ stfs f1, 0x18(r1)
/* 802BD830 002BA770  48 00 00 0C */ b lbl_802BD83C
lbl_802BD834:
/* 802BD834 002BA774  C0 02 C0 A8 */ lfs f0, lbl_80455AA8-_SDA2_BASE_(r2)
/* 802BD838 002BA778  D0 01 00 18 */ stfs f0, 0x18(r1)
lbl_802BD83C:
/* 802BD83C 002BA77C  88 1F 00 11 */ lbz r0, 0x11(r31)
/* 802BD840 002BA780  54 00 CF FF */ rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802BD844 002BA784  41 82 00 44 */ beq lbl_802BD888
/* 802BD848 002BA788  80 1A 01 D4 */ lwz r0, 0x1d4(r26)
/* 802BD84C 002BA78C  2C 00 00 02 */ cmpwi r0, 2
/* 802BD850 002BA790  40 81 00 20 */ ble lbl_802BD870
/* 802BD854 002BA794  57 80 07 FF */ clrlwi. r0, r28, 0x1f
/* 802BD858 002BA798  41 82 00 0C */ beq lbl_802BD864
/* 802BD85C 002BA79C  C0 02 C0 A4 */ lfs f0, lbl_80455AA4-_SDA2_BASE_(r2)
/* 802BD860 002BA7A0  48 00 00 08 */ b lbl_802BD868
lbl_802BD864:
/* 802BD864 002BA7A4  C0 02 C0 A0 */ lfs f0, lbl_80455AA0-_SDA2_BASE_(r2)
lbl_802BD868:
/* 802BD868 002BA7A8  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 802BD86C 002BA7AC  48 00 00 24 */ b lbl_802BD890
lbl_802BD870:
/* 802BD870 002BA7B0  7F 43 D3 78 */ mr r3, r26
/* 802BD874 002BA7B4  38 9E 00 14 */ addi r4, r30, 0x14
/* 802BD878 002BA7B8  7F 85 E3 78 */ mr r5, r28
/* 802BD87C 002BA7BC  48 00 01 C9 */ bl Z2Audience_NS_calcRelPosPan
/* 802BD880 002BA7C0  D0 21 00 14 */ stfs f1, 0x14(r1)
/* 802BD884 002BA7C4  48 00 00 0C */ b lbl_802BD890
lbl_802BD888:
/* 802BD888 002BA7C8  C0 02 C0 A8 */ lfs f0, lbl_80455AA8-_SDA2_BASE_(r2)
/* 802BD88C 002BA7CC  D0 01 00 14 */ stfs f0, 0x14(r1)
lbl_802BD890:
/* 802BD890 002BA7D0  7F 43 D3 78 */ mr r3, r26
/* 802BD894 002BA7D4  7F C4 F3 78 */ mr r4, r30
/* 802BD898 002BA7D8  7F E5 FB 78 */ mr r5, r31
/* 802BD89C 002BA7DC  1C DC 00 74 */ mulli r6, r28, 0x74
/* 802BD8A0 002BA7E0  38 C6 01 34 */ addi r6, r6, 0x134
/* 802BD8A4 002BA7E4  7C DA 32 14 */ add r6, r26, r6
/* 802BD8A8 002BA7E8  48 00 04 A1 */ bl Z2Audience_NS_calcPitch_
/* 802BD8AC 002BA7EC  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 802BD8B0 002BA7F0  88 1F 00 10 */ lbz r0, 0x10(r31)
/* 802BD8B4 002BA7F4  54 00 FF FF */ rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 802BD8B8 002BA7F8  41 82 00 18 */ beq lbl_802BD8D0
/* 802BD8BC 002BA7FC  7F 43 D3 78 */ mr r3, r26
/* 802BD8C0 002BA800  C0 3E 00 20 */ lfs f1, 0x20(r30)
/* 802BD8C4 002BA804  7F A4 EB 78 */ mr r4, r29
/* 802BD8C8 002BA808  48 00 04 39 */ bl Z2Audience_NS_calcFxMix_
/* 802BD8CC 002BA80C  48 00 00 08 */ b lbl_802BD8D4
lbl_802BD8D0:
/* 802BD8D0 002BA810  C0 22 C0 A0 */ lfs f1, lbl_80455AA0-_SDA2_BASE_(r2)
lbl_802BD8D4:
/* 802BD8D4 002BA814  D0 21 00 0C */ stfs f1, 0xc(r1)
/* 802BD8D8 002BA818  38 61 00 08 */ addi r3, r1, 8
/* 802BD8DC 002BA81C  4B FE 0A D5 */ bl clamp__14JASSoundParamsFv
/* 802BD8E0 002BA820  7F E3 FB 78 */ mr r3, r31
/* 802BD8E4 002BA824  7F 64 DB 78 */ mr r4, r27
/* 802BD8E8 002BA828  38 A1 00 08 */ addi r5, r1, 8
/* 802BD8EC 002BA82C  7F 86 E3 78 */ mr r6, r28
/* 802BD8F0 002BA830  4B FF E5 F5 */ bl Z2Audible_NS_setOuterParams
lbl_802BD8F4:
/* 802BD8F4 002BA834  39 61 00 40 */ addi r11, r1, 0x40
/* 802BD8F8 002BA838  48 0A 49 25 */ bl _restgpr_26
/* 802BD8FC 002BA83C  80 01 00 44 */ lwz r0, 0x44(r1)
/* 802BD900 002BA840  7C 08 03 A6 */ mtlr r0
/* 802BD904 002BA844  38 21 00 40 */ addi r1, r1, 0x40
/* 802BD908 002BA848  4E 80 00 20 */ blr
