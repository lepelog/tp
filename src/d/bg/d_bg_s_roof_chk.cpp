//
// Generated By: dol2asm
// Translation Unit: d/bg/d_bg_s_roof_chk
//

#include "d/bg/d_bg_s_roof_chk.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Forward References:
//

extern "C" void __ct__12dBgS_RoofChkFv();
extern "C" void __dt__12dBgS_RoofChkFv();
extern "C" void Init__12dBgS_RoofChkFv();
extern "C" static void func_8007914C();
extern "C" static void func_80079154();
extern "C" static void func_8007915C();

//
// External References:
//

extern "C" void __ct__8dBgS_ChkFv();
extern "C" void __dt__8dBgS_ChkFv();
extern "C" void GetPolyPassChkInfo__8dBgS_ChkFv();
extern "C" void GetGrpPassChkInfo__8dBgS_ChkFv();
extern "C" void __ct__8cBgS_ChkFv();
extern "C" void __dt__8cBgS_ChkFv();
extern "C" void __ct__13cBgS_PolyInfoFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void ClearPi__13cBgS_PolyInfoFv();
extern "C" void __dl__FPv();

//
// Declarations:
//

/* ############################################################################################## */
/* 803ABA50-803ABA80 008B70 0030+00 2/2 0/0 0/0 .data            __vt__12dBgS_RoofChk */
SECTION_DATA extern void* __vt__12dBgS_RoofChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_RoofChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8007914C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8007915C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80079154,
};

/* 804526F0-804526F4 000CF0 0004+00 1/1 0/0 0/0 .sdata2          @316 */
SECTION_SDATA2 static u8 lit_316[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 80078FF4-80079090 073934 009C+00 0/0 10/10 1/1 .text            __ct__12dBgS_RoofChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dBgS_RoofChk::dBgS_RoofChk() {
    nofralloc
#include "asm/d/bg/d_bg_s_roof_chk/__ct__12dBgS_RoofChkFv.s"
}
#pragma pop

/* 80079090-80079124 0739D0 0094+00 4/3 11/11 1/1 .text            __dt__12dBgS_RoofChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dBgS_RoofChk::~dBgS_RoofChk() {
    nofralloc
#include "asm/d/bg/d_bg_s_roof_chk/__dt__12dBgS_RoofChkFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 804526F4-804526F8 000CF4 0004+00 1/1 0/0 0/0 .sdata2          @333 */
SECTION_SDATA2 static f32 lit_333 = 1000000000.0f;

/* 80079124-8007914C 073A64 0028+00 0/0 1/1 0/0 .text            Init__12dBgS_RoofChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dBgS_RoofChk::Init() {
    nofralloc
#include "asm/d/bg/d_bg_s_roof_chk/Init__12dBgS_RoofChkFv.s"
}
#pragma pop

/* 8007914C-80079154 073A8C 0008+00 1/0 0/0 0/0 .text            @16@__dt__12dBgS_RoofChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_8007914C() {
    nofralloc
#include "asm/d/bg/d_bg_s_roof_chk/func_8007914C.s"
}
#pragma pop

/* 80079154-8007915C 073A94 0008+00 1/0 0/0 0/0 .text            @52@__dt__12dBgS_RoofChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80079154() {
    nofralloc
#include "asm/d/bg/d_bg_s_roof_chk/func_80079154.s"
}
#pragma pop

/* 8007915C-80079164 073A9C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_RoofChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_8007915C() {
    nofralloc
#include "asm/d/bg/d_bg_s_roof_chk/func_8007915C.s"
}
#pragma pop
