//
// Generated By: dol2asm
// Translation Unit: d/bg/d_bg_s_grp_pass_chk
//

#include "d/bg/d_bg_s_grp_pass_chk.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Forward References:
//

extern "C" void __ct__15dBgS_GrpPassChkFv();
extern "C" void __dt__15dBgS_GrpPassChkFv();
extern "C" void __dt__15cBgS_GrpPassChkFv();

//
// External References:
//

extern "C" void __dl__FPv();

//
// Declarations:
//

/* ############################################################################################## */
/* 803AB7A8-803AB7B4 0088C8 000C+00 2/2 0/0 0/0 .data            __vt__15dBgS_GrpPassChk */
SECTION_DATA extern void* __vt__15dBgS_GrpPassChk[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15dBgS_GrpPassChkFv,
};

/* 803AB7B4-803AB7C0 0088D4 000C+00 3/3 0/0 0/0 .data            __vt__15cBgS_GrpPassChk */
SECTION_DATA extern void* __vt__15cBgS_GrpPassChk[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15cBgS_GrpPassChkFv,
};

/* 80077BA0-80077BC4 0724E0 0024+00 0/0 1/1 0/0 .text            __ct__15dBgS_GrpPassChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dBgS_GrpPassChk::dBgS_GrpPassChk() {
    nofralloc
#include "asm/d/bg/d_bg_s_grp_pass_chk/__ct__15dBgS_GrpPassChkFv.s"
}
#pragma pop

/* 80077BC4-80077C20 072504 005C+00 1/0 1/1 0/0 .text            __dt__15dBgS_GrpPassChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dBgS_GrpPassChk::~dBgS_GrpPassChk() {
    nofralloc
#include "asm/d/bg/d_bg_s_grp_pass_chk/__dt__15dBgS_GrpPassChkFv.s"
}
#pragma pop

/* 80077C20-80077C68 072560 0048+00 1/0 0/0 0/0 .text            __dt__15cBgS_GrpPassChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm cBgS_GrpPassChk::~cBgS_GrpPassChk() {
    nofralloc
#include "asm/d/bg/d_bg_s_grp_pass_chk/__dt__15cBgS_GrpPassChkFv.s"
}
#pragma pop
