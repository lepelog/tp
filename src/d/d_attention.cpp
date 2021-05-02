//
// Generated By: dol2asm
// Translation Unit: d/d_attention
//

#include "d/d_attention.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

struct mDoCPd_c {
    static u8 m_cpadInfo[256];
};

struct dRes_info_c {};

struct dRes_control_c {
    /* 8003C2EC */ void getRes(char const*, s32, dRes_info_c*, int);
};

struct dAttDrawParam_c {
    /* 80070158 */ dAttDrawParam_c();
    /* 80073FC4 */ ~dAttDrawParam_c();
};

struct Z2SeqMgr {
    /* 802B5E88 */ void bgmNowBattle(f32);
};

struct JAISoundID {};

struct Z2SeMgr {
    /* 802AB984 */ void seStart(JAISoundID, Vec const*, u32, s8, f32, f32, f32, f32, u8);
};

struct Z2AudioMgr {
    static u8 mAudioMgrPtr[4 + 4 /* padding */];
};

struct JKRSolidHeap {};

struct J3DGXColor {};

struct J3DTevBlock {
    /* 800732AC */ void setTevKColor(u32, J3DGXColor const*);
};

//
// Forward References:
//

extern "C" static void func_80070018();
extern "C" void __ct__11dAttParam_cFl();
extern "C" void __dt__11dAttParam_cFv();
extern "C" void __ct__15dAttDrawParam_cFv();
extern "C" void execute__19dAttDraw_CallBack_cFUsP16J3DTransformInfo();
extern "C" void __ct__12dAttention_cFP10fopAc_ac_cUl();
extern "C" void __dt__12dAttention_cFv();
extern "C" void GetLockonList__12dAttention_cFl();
extern "C" void getActionBtnB__12dAttention_cFv();
extern "C" void getActionBtnXY__12dAttention_cFv();
extern "C" void chkAttMask__12dAttention_cFUlUl();
extern "C" static void check_event_condition__FUlUs();
extern "C" static void check_flontofplayer__FUlss();
extern "C" static void distace_weight__Ffsf();
extern "C" static void distace_angle_adjust__Ffsf();
extern "C" static void check_distace__FP4cXyzsP4cXyzffff();
extern "C" void calcWeight__12dAttention_cFiP10fopAc_ac_cfssPUl();
extern "C" void setList__12dAttention_cFiP10fopAc_ac_cff7cSAngleUl();
extern "C" void initList__12dAttention_cFUl();
extern "C" static void select_attention__FP10fopAc_ac_cPv();
extern "C" void makeList__12dAttention_cFv();
extern "C" void setOwnerAttentionPos__12dAttention_cFv();
extern "C" void SelectAttention__12dAttention_cFP10fopAc_ac_c();
extern "C" void __dt__7cSGlobeFv();
extern "C" void sortList__12dAttention_cFv();
extern "C" void stockAttention__12dAttention_cFv();
extern "C" void nextAttention__12dAttention_cFv();
extern "C" void freeAttention__12dAttention_cFv();
extern "C" void chaseAttention__12dAttention_cFv();
extern "C" void EnemyDistance__12dAttention_cFP10fopAc_ac_c();
extern "C" static void sound_attention__FP10fopAc_ac_cPv();
extern "C" void runSoundProc__12dAttention_cFv();
extern "C" void runDrawProc__12dAttention_cFv();
extern "C" void runDebugDisp__12dAttention_cFv();
extern "C" void checkButton__12dAttention_cFv();
extern "C" void triggerProc__12dAttention_cFv();
extern "C" void lostCheck__12dAttention_cFv();
extern "C" void judgementStatus4Hold__12dAttention_cFv();
extern "C" void judgementStatus4Switch__12dAttention_cFv();
extern "C" void Run__12dAttention_cFv();
extern "C" void Draw__12dAttention_cFv();
extern "C" void lockSoundStart__12dAttention_cFUl();
extern "C" void setAnm__10dAttDraw_cFUcf();
extern "C" void setAlphaAnm__10dAttDraw_cFUcUc();
extern "C" void alphaAnm__10dAttDraw_cFv();
extern "C" void setTevKColor__11J3DTevBlockFUlPC10J3DGXColor();
extern "C" void draw__10dAttDraw_cFR4cXyzPA4_f();
extern "C" void LockonTarget__12dAttention_cFl();
extern "C" void LockonReleaseDistanse__12dAttention_cFv();
extern "C" void LockonTargetPId__12dAttention_cFl();
extern "C" void ActionTarget__12dAttention_cFl();
extern "C" void CheckObjectTarget__12dAttention_cFl();
extern "C" void LockonTruth__12dAttention_cFv();
extern "C" void checkDistance__12dAttention_cFP4cXyzsP4cXyzffff();
extern "C" void getActor__10dAttList_cFv();
extern "C" void setActor__10dAttList_cFP10fopAc_ac_c();
extern "C" void getPId__10dAttHint_cFPv();
extern "C" void convPId__10dAttHint_cFUi();
extern "C" void request__10dAttHint_cFP10fopAc_ac_ci();
extern "C" void init__10dAttHint_cFv();
extern "C" void proc__10dAttHint_cFv();
extern "C" void convPId__11dAttCatch_cFUi();
extern "C" void init__11dAttCatch_cFv();
extern "C" void proc__11dAttCatch_cFv();
extern "C" void request__11dAttCatch_cFP10fopAc_ac_cUcfffsi();
extern "C" void convPId__10dAttLook_cFUi();
extern "C" void init__10dAttLook_cFv();
extern "C" void proc__10dAttLook_cFv();
extern "C" void request__10dAttLook_cFP10fopAc_ac_cfffsi();
extern "C" void __dt__15dAttDrawParam_cFv();
extern "C" void __sinit_d_attention_cpp();
extern "C" extern char const* const d_d_attention__stringBase0;
extern "C" u8 loc_type_tbl__12dAttention_c[12];
extern "C" u8 act_type_tbl__12dAttention_c[20];
extern "C" u32 loc_type_num__12dAttention_c;
extern "C" u32 act_type_num__12dAttention_c;
extern "C" u32 chk_type_tbl__12dAttention_c;
extern "C" u32 chk_type_num__12dAttention_c;
extern "C" extern u8 data_80450680[8];
extern "C" extern u8 data_80450688[8];

//
// External References:
//

SECTION_INIT void memcpy();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_bpkAnmFP16J3DMaterialTableP11J3DAnmColoriifss();
extern "C" void entry__13mDoExt_bpkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_createSolidHeapFromGameToCurrent__FUlUl();
extern "C" void mDoExt_adjustSolidHeap__FP12JKRSolidHeap();
extern "C" void mDoExt_destroySolidHeap__FP12JKRSolidHeap();
extern "C" void mDoExt_restoreCurrentHeap__Fv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcIt_Executor__FPFPvPv_iPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void __dt__10dAttList_cFv();
extern "C" void __ct__10dAttList_cFv();
extern "C" void __dt__10dAttDraw_cFv();
extern "C" void __ct__10dAttDraw_cFv();
extern "C" void isSwitch__12dSv_danBit_cCFi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getAttentionOffsetY__9daPy_py_cFv();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ct__7cSAngleFRC7cSAngle();
extern "C" void __ct__7cSAngleFs();
extern "C" void Inv__7cSAngleCFv();
extern "C" void __mi__7cSAngleCFs();
extern "C" void __ct__7cSGlobeFRC4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void bgmNowBattle__8Z2SeqMgrFf();
extern "C" void __dl__FPv();
extern "C" void DCStoreRangeNoSync();
extern "C" void __register_global_object();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_21();
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_21();
extern "C" void _restgpr_22();
extern "C" void _restgpr_24();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" void strcmp();
extern "C" void tan();
extern "C" extern void* __vt__25mDoExt_McaMorfCallBack1_c[3];
extern "C" u8 dist_table__12dAttention_c[6552];
extern "C" u8 m_cpadInfo__8mDoCPd_c[256];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern u8 j3dSys[284];
extern "C" extern u32 __float_nan;
extern "C" extern u32 __float_max;
extern "C" extern u8 struct_80450D64[4];
extern "C" extern u8 data_80450F58[8];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 80070018-80070038 06A958 0020+00 2/2 0/0 0/0 .text padLockButton__25@unnamed@d_attention_cpp@Fl
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80070018() {
    nofralloc
#include "asm/d/d_attention/func_80070018.s"
}
#pragma pop

/* ############################################################################################## */
/* 8037A770-8037A770 006DD0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8037A770 = "D_MN09B";
#pragma pop

/* 803A9BF8-803A9C04 006D18 000C+00 2/2 0/0 0/0 .data            loc_type_tbl__12dAttention_c */
SECTION_DATA u8 dAttention_c::loc_type_tbl[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x02, 0x00, 0x02, 0x00, 0x04,
};

/* 803A9C04-803A9C18 006D24 0014+00 1/1 0/0 0/0 .data            act_type_tbl__12dAttention_c */
SECTION_DATA u8 dAttention_c::act_type_tbl[20] = {
    0x00, 0x03, 0x00, 0x08, 0x00, 0x04, 0x00, 0x10, 0x00, 0x05,
    0x00, 0x20, 0x00, 0x06, 0x00, 0x40, 0x00, 0x07, 0x00, 0x80,
};

/* 803A9C18-803A9C3C 006D38 0024+00 1/1 0/0 0/0 .data            ftp_table$4417 */
SECTION_DATA static u8 ftp_table[36] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x20,
    0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x01, 0x00,
};

/* 803A9C3C-803A9C48 006D5C 000C+00 1/1 0/0 0/0 .data            ang_table2$4419 */
SECTION_DATA static u8 ang_table2[12] = {
    0x0A, 0xAA, 0x20, 0x00, 0x2A, 0xAA, 0x40, 0x00, 0x4E, 0x38, 0x60, 0x00,
};

/* 803A9C48-803A9C54 006D68 000C+00 1/1 1/1 0/0 .data            __vt__19dAttDraw_CallBack_c */
SECTION_DATA extern void* __vt__19dAttDraw_CallBack_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)execute__19dAttDraw_CallBack_cFUsP16J3DTransformInfo,
};

/* 803A9C54-803A9C60 006D74 000C+00 2/2 0/0 0/0 .data            __vt__15dAttDrawParam_c */
SECTION_DATA extern void* __vt__15dAttDrawParam_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15dAttDrawParam_cFv,
};

/* 803A9C60-803A9C70 006D80 000C+04 3/3 1/1 0/0 .data            __vt__11dAttParam_c */
SECTION_DATA extern void* __vt__11dAttParam_c[3 + 1 /* padding */] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11dAttParam_cFv,
    /* padding */
    NULL,
};

/* 80452628-8045262C 000C28 0004+00 1/1 0/0 0/0 .sdata2          @4061 */
SECTION_SDATA2 static f32 lit_4061 = 45.0f;

/* 8045262C-80452630 000C2C 0004+00 1/1 0/0 0/0 .sdata2          @4062 */
SECTION_SDATA2 static f32 lit_4062 = 30.0f;

/* 80452630-80452634 000C30 0004+00 1/1 0/0 0/0 .sdata2          @4063 */
SECTION_SDATA2 static f32 lit_4063 = 90.0f;

/* 80452634-80452638 000C34 0004+00 2/2 0/0 0/0 .sdata2          @4064 */
SECTION_SDATA2 static f32 lit_4064 = -9.0f / 10.0f;

/* 80452638-8045263C 000C38 0004+00 1/1 0/0 0/0 .sdata2          @4065 */
SECTION_SDATA2 static f32 lit_4065 = 3000.0f;

/* 8045263C-80452640 000C3C 0004+00 1/1 0/0 0/0 .sdata2          @4066 */
SECTION_SDATA2 static f32 lit_4066 = 1000.0f;

/* 80452640-80452644 000C40 0004+00 1/1 0/0 0/0 .sdata2          @4067 */
SECTION_SDATA2 static f32 lit_4067 = 6.0f;

/* 80452644-80452648 000C44 0004+00 1/1 0/0 0/0 .sdata2          @4068 */
SECTION_SDATA2 static f32 lit_4068 = 4.5f;

/* 80452648-8045264C 000C48 0004+00 1/1 0/0 0/0 .sdata2          @4069 */
SECTION_SDATA2 static f32 lit_4069 = 14.0f;

/* 8045264C-80452650 000C4C 0004+00 1/1 0/0 0/0 .sdata2          @4070 */
SECTION_SDATA2 static f32 lit_4070 = 10.0f;

/* 80452650-80452654 000C50 0004+00 12/12 0/0 0/0 .sdata2          @4071 */
SECTION_SDATA2 static u8 lit_4071[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 80452654-80452658 000C54 0004+00 1/1 0/0 0/0 .sdata2          @4072 */
SECTION_SDATA2 static f32 lit_4072 = 17.0f / 10.0f;

/* 80452658-8045265C 000C58 0004+00 10/10 0/0 0/0 .sdata2          @4073 */
SECTION_SDATA2 static f32 lit_4073 = 1.0f;

/* 80070038-80070110 06A978 00D8+00 1/1 0/0 0/0 .text            __ct__11dAttParam_cFl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dAttParam_c::dAttParam_c(s32 param_0) {
    nofralloc
#include "asm/d/d_attention/__ct__11dAttParam_cFl.s"
}
#pragma pop

/* 80070110-80070158 06AA50 0048+00 2/1 0/0 0/0 .text            __dt__11dAttParam_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dAttParam_c::~dAttParam_c() {
    nofralloc
#include "asm/d/d_attention/__dt__11dAttParam_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8045265C-80452660 000C5C 0004+00 1/1 0/0 0/0 .sdata2          @4084 */
SECTION_SDATA2 static f32 lit_4084 = 250.0f;

/* 80452660-80452664 000C60 0004+00 1/1 0/0 0/0 .sdata2          @4085 */
SECTION_SDATA2 static f32 lit_4085 = 2.0f;

/* 80070158-80070178 06AA98 0020+00 1/1 0/0 0/0 .text            __ct__15dAttDrawParam_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dAttDrawParam_c::dAttDrawParam_c() {
    nofralloc
#include "asm/d/d_attention/__ct__15dAttDrawParam_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80452664-80452668 000C64 0004+00 1/1 0/0 0/0 .sdata2          @4092 */
SECTION_SDATA2 static f32 lit_4092 = 3.0f / 5.0f;

/* 80070178-80070198 06AAB8 0020+00 1/0 0/0 0/0 .text
 * execute__19dAttDraw_CallBack_cFUsP16J3DTransformInfo         */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttDraw_CallBack_c::execute(u16 param_0, J3DTransformInfo* param_1) {
    nofralloc
#include "asm/d/d_attention/execute__19dAttDraw_CallBack_cFUsP16J3DTransformInfo.s"
}
#pragma pop

/* ############################################################################################## */
/* 8037A770-8037A770 006DD0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8037A778 = "Always";
/* @stringBase0 padding */
SECTION_DEAD static char const* const pad_8037A77F = "";
#pragma pop

/* 80424B00-80424B0C 051820 000C+00 1/1 0/0 0/0 .bss             @4093 */
static u8 lit_4093[12];

/* 80424B0C-80424B20 05182C 0010+04 3/3 0/0 0/0 .bss             g_AttDwHIO */
static u8 g_AttDwHIO[16 + 4 /* padding */];

/* 80070198-80070774 06AAD8 05DC+00 0/0 1/1 0/0 .text __ct__12dAttention_cFP10fopAc_ac_cUl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dAttention_c::dAttention_c(fopAc_ac_c* param_0, u32 param_1) {
    nofralloc
#include "asm/d/d_attention/__ct__12dAttention_cFP10fopAc_ac_cUl.s"
}
#pragma pop

/* 80070774-80070844 06B0B4 00D0+00 0/0 2/2 0/0 .text            __dt__12dAttention_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dAttention_c::~dAttention_c() {
    nofralloc
#include "asm/d/d_attention/__dt__12dAttention_cFv.s"
}
#pragma pop

/* 80070844-80070880 06B184 003C+00 2/2 2/2 8/8 .text            GetLockonList__12dAttention_cFl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::GetLockonList(s32 param_0) {
    nofralloc
#include "asm/d/d_attention/GetLockonList__12dAttention_cFl.s"
}
#pragma pop

/* 80070880-80070974 06B1C0 00F4+00 0/0 5/5 2/2 .text            getActionBtnB__12dAttention_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::getActionBtnB() {
    nofralloc
#include "asm/d/d_attention/getActionBtnB__12dAttention_cFv.s"
}
#pragma pop

/* 80070974-80070A70 06B2B4 00FC+00 0/0 1/1 0/0 .text            getActionBtnXY__12dAttention_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::getActionBtnXY() {
    nofralloc
#include "asm/d/d_attention/getActionBtnXY__12dAttention_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80450660-80450664 0000E0 0004+00 2/2 0/0 0/0 .sdata           loc_type_num__12dAttention_c */
SECTION_SDATA u32 dAttention_c::loc_type_num = 0x00000003;

/* 80070A70-80070AC0 06B3B0 0050+00 1/1 0/0 0/0 .text            chkAttMask__12dAttention_cFUlUl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::chkAttMask(u32 param_0, u32 param_1) {
    nofralloc
#include "asm/d/d_attention/chkAttMask__12dAttention_cFUlUl.s"
}
#pragma pop

/* 80070AC0-80070B2C 06B400 006C+00 2/2 0/0 0/0 .text            check_event_condition__FUlUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void check_event_condition(u32 param_0, u16 param_1) {
    nofralloc
#include "asm/d/d_attention/check_event_condition__FUlUs.s"
}
#pragma pop

/* ############################################################################################## */
/* 80450664-80450668 0000E4 0004+00 1/1 0/0 0/0 .sdata           act_type_num__12dAttention_c */
SECTION_SDATA u32 dAttention_c::act_type_num = 0x00000005;

/* 80450668-8045066C 0000E8 0004+00 1/1 0/0 0/0 .sdata           chk_type_tbl__12dAttention_c */
SECTION_SDATA u32 dAttention_c::chk_type_tbl = 0x00080100;

/* 8045066C-80450670 0000EC 0004+00 1/1 0/0 0/0 .sdata           chk_type_num__12dAttention_c */
SECTION_SDATA u32 dAttention_c::chk_type_num = 0x00000001;

/* 80450670-80450674 0000F0 0004+00 2/2 0/0 0/0 .sdata           None */
SECTION_SDATA static u32 data_80450670 = 0x01000000;

/* 80450674-8045067C 0000F4 0006+02 1/1 0/0 0/0 .sdata           ang_table$4418 */
SECTION_SDATA static u8 ang_table[6 + 2 /* padding */] = {
    0x40,
    0x00,
    0x20,
    0x00,
    0x0A,
    0xAA,
    /* padding */
    0x00,
    0x00,
};

/* 80070B2C-80070BF4 06B46C 00C8+00 2/2 0/0 0/0 .text            check_flontofplayer__FUlss */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void check_flontofplayer(u32 param_0, s16 param_1, s16 param_2) {
    nofralloc
#include "asm/d/d_attention/check_flontofplayer__FUlss.s"
}
#pragma pop

/* ############################################################################################## */
/* 80452668-80452670 000C68 0004+04 2/2 0/0 0/0 .sdata2          @4448 */
SECTION_SDATA2 static f32 lit_4448[1 + 1 /* padding */] = {
    32768.0f,
    /* padding */
    0.0f,
};

/* 80452670-80452678 000C70 0008+00 3/3 0/0 0/0 .sdata2          @4450 */
SECTION_SDATA2 static f64 lit_4450 = 4503601774854144.0 /* cast s32 to float */;

/* 80070BF4-80070C40 06B534 004C+00 2/2 0/0 0/0 .text            distace_weight__Ffsf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void distace_weight(f32 param_0, s16 param_1, f32 param_2) {
    nofralloc
#include "asm/d/d_attention/distace_weight__Ffsf.s"
}
#pragma pop

/* 80070C40-80070CA0 06B580 0060+00 2/2 0/0 0/0 .text            distace_angle_adjust__Ffsf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void distace_angle_adjust(f32 param_0, s16 param_1, f32 param_2) {
    nofralloc
#include "asm/d/d_attention/distace_angle_adjust__Ffsf.s"
}
#pragma pop

/* ############################################################################################## */
/* 80452678-80452680 000C78 0008+00 3/3 0/0 0/0 .sdata2          @4514 */
SECTION_SDATA2 static f64 lit_4514 = 0.5;

/* 80452680-80452688 000C80 0008+00 3/3 0/0 0/0 .sdata2          @4515 */
SECTION_SDATA2 static f64 lit_4515 = 3.0;

/* 80452688-80452690 000C88 0008+00 3/3 0/0 0/0 .sdata2          @4516 */
SECTION_SDATA2 static u8 lit_4516[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80070CA0-80070E90 06B5E0 01F0+00 3/3 0/0 0/0 .text            check_distace__FP4cXyzsP4cXyzffff
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void check_distace(cXyz* param_0, s16 param_1, cXyz* param_2, f32 param_3, f32 param_4,
                              f32 param_5, f32 param_6) {
    nofralloc
#include "asm/d/d_attention/check_distace__FP4cXyzsP4cXyzffff.s"
}
#pragma pop

/* ############################################################################################## */
/* 80452690-80452694 000C90 0004+00 3/3 0/0 0/0 .sdata2          @4562 */
SECTION_SDATA2 static f32 lit_4562 = -1.0f;

/* 80452694-80452698 000C94 0004+00 3/3 0/0 0/0 .sdata2          @4563 */
SECTION_SDATA2 static f32 lit_4563 = 0.5f;

/* 80070E90-800710C0 06B7D0 0230+00 2/2 0/0 0/0 .text
 * calcWeight__12dAttention_cFiP10fopAc_ac_cfssPUl              */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::calcWeight(int param_0, fopAc_ac_c* param_1, f32 param_2, s16 param_3,
                                  s16 param_4, u32* param_5) {
    nofralloc
#include "asm/d/d_attention/calcWeight__12dAttention_cFiP10fopAc_ac_cfssPUl.s"
}
#pragma pop

/* 800710C0-80071240 06BA00 0180+00 1/1 0/0 0/0 .text
 * setList__12dAttention_cFiP10fopAc_ac_cff7cSAngleUl           */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::setList(int param_0, fopAc_ac_c* param_1, f32 param_2, f32 param_3,
                               cSAngle param_4, u32 param_5) {
    nofralloc
#include "asm/d/d_attention/setList__12dAttention_cFiP10fopAc_ac_cff7cSAngleUl.s"
}
#pragma pop

/* 80071240-8007138C 06BB80 014C+00 6/6 0/0 0/0 .text            initList__12dAttention_cFUl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::initList(u32 param_0) {
    nofralloc
#include "asm/d/d_attention/initList__12dAttention_cFUl.s"
}
#pragma pop

/* 8007138C-800713CC 06BCCC 0040+00 1/1 0/0 0/0 .text            select_attention__FP10fopAc_ac_cPv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void select_attention(fopAc_ac_c* param_0, void* param_1) {
    nofralloc
#include "asm/d/d_attention/select_attention__FP10fopAc_ac_cPv.s"
}
#pragma pop

/* 800713CC-80071424 06BD0C 0058+00 4/4 0/0 0/0 .text            makeList__12dAttention_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::makeList() {
    nofralloc
#include "asm/d/d_attention/makeList__12dAttention_cFv.s"
}
#pragma pop

/* 80071424-80071488 06BD64 0064+00 1/1 0/0 0/0 .text setOwnerAttentionPos__12dAttention_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::setOwnerAttentionPos() {
    nofralloc
#include "asm/d/d_attention/setOwnerAttentionPos__12dAttention_cFv.s"
}
#pragma pop

/* 80071488-8007167C 06BDC8 01F4+00 1/1 0/0 0/0 .text
 * SelectAttention__12dAttention_cFP10fopAc_ac_c                */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::SelectAttention(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/d/d_attention/SelectAttention__12dAttention_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 8007167C-800716B8 06BFBC 003C+00 0/0 9/9 0/0 .text            __dt__7cSGlobeFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm cSGlobe::~cSGlobe() {
    nofralloc
#include "asm/d/d_attention/__dt__7cSGlobeFv.s"
}
#pragma pop

/* 800716B8-800718A4 06BFF8 01EC+00 4/4 0/0 0/0 .text            sortList__12dAttention_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::sortList() {
    nofralloc
#include "asm/d/d_attention/sortList__12dAttention_cFv.s"
}
#pragma pop

/* 800718A4-80071960 06C1E4 00BC+00 2/2 0/0 0/0 .text            stockAttention__12dAttention_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::stockAttention() {
    nofralloc
#include "asm/d/d_attention/stockAttention__12dAttention_cFv.s"
}
#pragma pop

/* 80071960-80071A68 06C2A0 0108+00 2/2 0/0 0/0 .text            nextAttention__12dAttention_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::nextAttention() {
    nofralloc
#include "asm/d/d_attention/nextAttention__12dAttention_cFv.s"
}
#pragma pop

/* 80071A68-80071A98 06C3A8 0030+00 3/3 0/0 0/0 .text            freeAttention__12dAttention_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::freeAttention() {
    nofralloc
#include "asm/d/d_attention/freeAttention__12dAttention_cFv.s"
}
#pragma pop

/* 80071A98-80071CC0 06C3D8 0228+00 2/2 0/0 0/0 .text            chaseAttention__12dAttention_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::chaseAttention() {
    nofralloc
#include "asm/d/d_attention/chaseAttention__12dAttention_cFv.s"
}
#pragma pop

/* 80071CC0-80071D6C 06C600 00AC+00 1/1 0/0 0/0 .text EnemyDistance__12dAttention_cFP10fopAc_ac_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::EnemyDistance(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/d/d_attention/EnemyDistance__12dAttention_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 80071D6C-80071DEC 06C6AC 0080+00 1/1 0/0 0/0 .text            sound_attention__FP10fopAc_ac_cPv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void sound_attention(fopAc_ac_c* param_0, void* param_1) {
    nofralloc
#include "asm/d/d_attention/sound_attention__FP10fopAc_ac_cPv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80452698-8045269C 000C98 0004+00 1/1 0/0 0/0 .sdata2          @5137 */
SECTION_SDATA2 static f32 lit_5137 = 10000.0f;

/* 8045269C-804526A0 000C9C 0004+00 1/1 0/0 0/0 .sdata2          @5138 */
SECTION_SDATA2 static f32 lit_5138 = 1.0f / 10.0f;

/* 80071DEC-80071E84 06C72C 0098+00 1/1 0/0 0/0 .text            runSoundProc__12dAttention_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::runSoundProc() {
    nofralloc
#include "asm/d/d_attention/runSoundProc__12dAttention_cFv.s"
}
#pragma pop

/* 80071E84-800720F4 06C7C4 0270+00 1/1 0/0 0/0 .text            runDrawProc__12dAttention_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::runDrawProc() {
    nofralloc
#include "asm/d/d_attention/runDrawProc__12dAttention_cFv.s"
}
#pragma pop

/* 800720F4-800720F8 06CA34 0004+00 1/1 0/0 0/0 .text            runDebugDisp__12dAttention_cFv */
void dAttention_c::runDebugDisp() {
    /* empty function */
}

/* 800720F8-800722A0 06CA38 01A8+00 1/1 0/0 0/0 .text            checkButton__12dAttention_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::checkButton() {
    nofralloc
#include "asm/d/d_attention/checkButton__12dAttention_cFv.s"
}
#pragma pop

/* 800722A0-800722EC 06CBE0 004C+00 2/2 0/0 0/0 .text            triggerProc__12dAttention_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::triggerProc() {
    nofralloc
#include "asm/d/d_attention/triggerProc__12dAttention_cFv.s"
}
#pragma pop

/* 800722EC-80072344 06CC2C 0058+00 2/2 0/0 0/0 .text            lostCheck__12dAttention_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::lostCheck() {
    nofralloc
#include "asm/d/d_attention/lostCheck__12dAttention_cFv.s"
}
#pragma pop

/* 80072344-800725F0 06CC84 02AC+00 1/1 0/0 0/0 .text judgementStatus4Hold__12dAttention_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::judgementStatus4Hold() {
    nofralloc
#include "asm/d/d_attention/judgementStatus4Hold__12dAttention_cFv.s"
}
#pragma pop

/* 800725F0-80072924 06CF30 0334+00 1/1 0/0 0/0 .text judgementStatus4Switch__12dAttention_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::judgementStatus4Switch() {
    nofralloc
#include "asm/d/d_attention/judgementStatus4Switch__12dAttention_cFv.s"
}
#pragma pop

/* 80072924-80072BD4 06D264 02B0+00 0/0 1/1 0/0 .text            Run__12dAttention_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::Run() {
    nofralloc
#include "asm/d/d_attention/Run__12dAttention_cFv.s"
}
#pragma pop

/* 80072BD4-80072D80 06D514 01AC+00 0/0 1/1 0/0 .text            Draw__12dAttention_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::Draw() {
    nofralloc
#include "asm/d/d_attention/Draw__12dAttention_cFv.s"
}
#pragma pop

/* 80072D80-80072DD8 06D6C0 0058+00 2/2 0/0 0/0 .text            lockSoundStart__12dAttention_cFUl
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::lockSoundStart(u32 param_0) {
    nofralloc
#include "asm/d/d_attention/lockSoundStart__12dAttention_cFUl.s"
}
#pragma pop

/* 80072DD8-80072FE8 06D718 0210+00 1/1 0/0 0/0 .text            setAnm__10dAttDraw_cFUcf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttDraw_c::setAnm(u8 param_0, f32 param_1) {
    nofralloc
#include "asm/d/d_attention/setAnm__10dAttDraw_cFUcf.s"
}
#pragma pop

/* 80072FE8-80073004 06D928 001C+00 1/1 0/0 0/0 .text            setAlphaAnm__10dAttDraw_cFUcUc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttDraw_c::setAlphaAnm(u8 param_0, u8 param_1) {
    nofralloc
#include "asm/d/d_attention/setAlphaAnm__10dAttDraw_cFUcUc.s"
}
#pragma pop

/* ############################################################################################## */
/* 804526A0-804526A8 000CA0 0004+04 1/1 0/0 0/0 .sdata2          @5668 */
SECTION_SDATA2 static f32 lit_5668[1 + 1 /* padding */] = {
    255.0f,
    /* padding */
    0.0f,
};

/* 804526A8-804526B0 000CA8 0008+00 1/1 0/0 0/0 .sdata2          @5670 */
SECTION_SDATA2 static f64 lit_5670 = 4503599627370496.0 /* cast u32 to float */;

/* 80073004-800732AC 06D944 02A8+00 1/1 0/0 0/0 .text            alphaAnm__10dAttDraw_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttDraw_c::alphaAnm() {
    nofralloc
#include "asm/d/d_attention/alphaAnm__10dAttDraw_cFv.s"
}
#pragma pop

/* 800732AC-800732B0 06DBEC 0004+00 0/0 3/0 0/0 .text setTevKColor__11J3DTevBlockFUlPC10J3DGXColor
 */
void J3DTevBlock::setTevKColor(u32 param_0, J3DGXColor const* param_1) {
    /* empty function */
}

/* ############################################################################################## */
/* 804526B0-804526B4 000CB0 0004+00 1/1 0/0 0/0 .sdata2          @5784 */
SECTION_SDATA2 static f32 lit_5784 = 0.01745329238474369f;

/* 804526B4-804526B8 000CB4 0004+00 1/1 0/0 0/0 .sdata2          @5785 */
SECTION_SDATA2 static f32 lit_5785 = -100.0f;

/* 800732B0-8007353C 06DBF0 028C+00 1/1 0/0 0/0 .text            draw__10dAttDraw_cFR4cXyzPA4_f */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttDraw_c::draw(cXyz& param_0, f32 (*param_1)[4]) {
    nofralloc
#include "asm/d/d_attention/draw__10dAttDraw_cFR4cXyzPA4_f.s"
}
#pragma pop

/* 8007353C-800735DC 06DE7C 00A0+00 8/8 13/13 21/21 .text            LockonTarget__12dAttention_cFl
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::LockonTarget(s32 param_0) {
    nofralloc
#include "asm/d/d_attention/LockonTarget__12dAttention_cFl.s"
}
#pragma pop

/* 800735DC-800736CC 06DF1C 00F0+00 0/0 1/1 0/0 .text LockonReleaseDistanse__12dAttention_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::LockonReleaseDistanse() {
    nofralloc
#include "asm/d/d_attention/LockonReleaseDistanse__12dAttention_cFv.s"
}
#pragma pop

/* 800736CC-80073734 06E00C 0068+00 2/2 0/0 0/0 .text            LockonTargetPId__12dAttention_cFl
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::LockonTargetPId(s32 param_0) {
    nofralloc
#include "asm/d/d_attention/LockonTargetPId__12dAttention_cFl.s"
}
#pragma pop

/* 80073734-8007378C 06E074 0058+00 0/0 3/3 2/2 .text            ActionTarget__12dAttention_cFl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::ActionTarget(s32 param_0) {
    nofralloc
#include "asm/d/d_attention/ActionTarget__12dAttention_cFl.s"
}
#pragma pop

/* 8007378C-800737E4 06E0CC 0058+00 0/0 3/3 0/0 .text            CheckObjectTarget__12dAttention_cFl
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::CheckObjectTarget(s32 param_0) {
    nofralloc
#include "asm/d/d_attention/CheckObjectTarget__12dAttention_cFl.s"
}
#pragma pop

/* 800737E4-80073838 06E124 0054+00 3/3 53/53 37/37 .text            LockonTruth__12dAttention_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::LockonTruth() {
    nofralloc
#include "asm/d/d_attention/LockonTruth__12dAttention_cFv.s"
}
#pragma pop

/* 80073838-80073864 06E178 002C+00 0/0 1/1 0/0 .text
 * checkDistance__12dAttention_cFP4cXyzsP4cXyzffff              */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttention_c::checkDistance(cXyz* param_0, s16 param_1, cXyz* param_2, f32 param_3,
                                     f32 param_4, f32 param_5, f32 param_6) {
    nofralloc
#include "asm/d/d_attention/checkDistance__12dAttention_cFP4cXyzsP4cXyzffff.s"
}
#pragma pop

/* 80073864-80073898 06E1A4 0034+00 11/11 3/3 8/8 .text            getActor__10dAttList_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttList_c::getActor() {
    nofralloc
#include "asm/d/d_attention/getActor__10dAttList_cFv.s"
}
#pragma pop

/* 80073898-800738B4 06E1D8 001C+00 3/3 0/0 0/0 .text setActor__10dAttList_cFP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttList_c::setActor(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/d/d_attention/setActor__10dAttList_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 800738B4-800738CC 06E1F4 0018+00 1/1 0/0 0/0 .text            getPId__10dAttHint_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttHint_c::getPId(void* param_0) {
    nofralloc
#include "asm/d/d_attention/getPId__10dAttHint_cFPv.s"
}
#pragma pop

/* 800738CC-800738FC 06E20C 0030+00 0/0 1/1 0/0 .text            convPId__10dAttHint_cFUi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttHint_c::convPId(unsigned int param_0) {
    nofralloc
#include "asm/d/d_attention/convPId__10dAttHint_cFUi.s"
}
#pragma pop

/* 800738FC-80073958 06E23C 005C+00 0/0 0/0 6/6 .text request__10dAttHint_cFP10fopAc_ac_ci */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttHint_c::request(fopAc_ac_c* param_0, int param_1) {
    nofralloc
#include "asm/d/d_attention/request__10dAttHint_cFP10fopAc_ac_ci.s"
}
#pragma pop

/* 80073958-80073970 06E298 0018+00 1/1 0/0 0/0 .text            init__10dAttHint_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttHint_c::init() {
    nofralloc
#include "asm/d/d_attention/init__10dAttHint_cFv.s"
}
#pragma pop

/* 80073970-8007398C 06E2B0 001C+00 1/1 0/0 0/0 .text            proc__10dAttHint_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttHint_c::proc() {
    nofralloc
#include "asm/d/d_attention/proc__10dAttHint_cFv.s"
}
#pragma pop

/* 8007398C-800739BC 06E2CC 0030+00 0/0 4/4 0/0 .text            convPId__11dAttCatch_cFUi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttCatch_c::convPId(unsigned int param_0) {
    nofralloc
#include "asm/d/d_attention/convPId__11dAttCatch_cFUi.s"
}
#pragma pop

/* 800739BC-800739DC 06E2FC 0020+00 1/1 0/0 0/0 .text            init__11dAttCatch_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttCatch_c::init() {
    nofralloc
#include "asm/d/d_attention/init__11dAttCatch_cFv.s"
}
#pragma pop

/* 800739DC-80073A08 06E31C 002C+00 1/1 0/0 0/0 .text            proc__11dAttCatch_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttCatch_c::proc() {
    nofralloc
#include "asm/d/d_attention/proc__11dAttCatch_cFv.s"
}
#pragma pop

/* 80073A08-80073CA4 06E348 029C+00 0/0 0/0 10/10 .text
 * request__11dAttCatch_cFP10fopAc_ac_cUcfffsi                  */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttCatch_c::request(fopAc_ac_c* param_0, u8 param_1, f32 param_2, f32 param_3,
                              f32 param_4, s16 param_5, int param_6) {
    nofralloc
#include "asm/d/d_attention/request__11dAttCatch_cFP10fopAc_ac_cUcfffsi.s"
}
#pragma pop

/* 80073CA4-80073CD4 06E5E4 0030+00 0/0 1/1 0/0 .text            convPId__10dAttLook_cFUi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttLook_c::convPId(unsigned int param_0) {
    nofralloc
#include "asm/d/d_attention/convPId__10dAttLook_cFUi.s"
}
#pragma pop

/* 80073CD4-80073CEC 06E614 0018+00 1/1 0/0 0/0 .text            init__10dAttLook_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttLook_c::init() {
    nofralloc
#include "asm/d/d_attention/init__10dAttLook_cFv.s"
}
#pragma pop

/* 80073CEC-80073D08 06E62C 001C+00 1/1 0/0 0/0 .text            proc__10dAttLook_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttLook_c::proc() {
    nofralloc
#include "asm/d/d_attention/proc__10dAttLook_cFv.s"
}
#pragma pop

/* 80073D08-80073FC4 06E648 02BC+00 0/0 0/0 7/7 .text request__10dAttLook_cFP10fopAc_ac_cfffsi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dAttLook_c::request(fopAc_ac_c* param_0, f32 param_1, f32 param_2, f32 param_3,
                             s16 param_4, int param_5) {
    nofralloc
#include "asm/d/d_attention/request__10dAttLook_cFP10fopAc_ac_cfffsi.s"
}
#pragma pop

/* 80073FC4-8007400C 06E904 0048+00 2/1 0/0 0/0 .text            __dt__15dAttDrawParam_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dAttDrawParam_c::~dAttDrawParam_c() {
    nofralloc
#include "asm/d/d_attention/__dt__15dAttDrawParam_cFv.s"
}
#pragma pop

/* 8007400C-80074048 06E94C 003C+00 0/0 1/0 0/0 .text            __sinit_d_attention_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_attention_cpp() {
    nofralloc
#include "asm/d/d_attention/__sinit_d_attention_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8007400C, __sinit_d_attention_cpp);
#pragma pop

/* ############################################################################################## */
/* 8045067A-8045067E -00001 0004+00 0/0 0/0 0/0 .sdata           None */
#pragma push
#pragma force_active on
SECTION_SDATA static u8 pad_8045067A[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
#pragma pop

/* 80450680-80450688 000100 0008+00 0/0 2/2 0/0 .sdata           None */
SECTION_SDATA extern u8 data_80450680[8] = {
    0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80450688-80450690 000108 0008+00 0/0 1/1 0/0 .sdata           None */
SECTION_SDATA extern u8 data_80450688[8] = {
    0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8037A770-8037A770 006DD0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
