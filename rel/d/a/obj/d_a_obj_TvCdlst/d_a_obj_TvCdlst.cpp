//
// Generated By: dol2asm
// Translation Unit: d_a_obj_TvCdlst
//

#include "rel/d/a/obj/d_a_obj_TvCdlst/d_a_obj_TvCdlst.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

struct request_of_phase_process_class {};

struct mDoHIO_entry_c {
    /* 80B9ECF8 */ ~mDoHIO_entry_c();
};

struct fopAc_ac_c {
    /* 80018B64 */ fopAc_ac_c();
};

struct daTvCdlst_c {
    /* 80B9ED40 */ void setBaseMtx();
    /* 80B9EDC8 */ void CreateHeap();
    /* 80B9EE34 */ void create();
    /* 80B9F144 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80B9F164 */ void lightInit();
    /* 80B9F1F0 */ void setLight();
    /* 80B9F220 */ void cutLight();
    /* 80B9F250 */ void pointLightProc();
    /* 80B9F300 */ void Execute();
    /* 80B9F634 */ void Draw();
    /* 80B9F6D8 */ void Delete();
};

struct daTvCdlst_HIO_c {
    /* 80B9ECCC */ daTvCdlst_HIO_c();
    /* 80B9F7B0 */ ~daTvCdlst_HIO_c();
};

struct dSv_info_c {
    /* 80035360 */ void isSwitch(int, int) const;
};

struct cXyz {};

struct dKy_tevstr_c {};

struct J3DModelData {};

struct dScnKy_env_light_c {
    /* 801A37C4 */ void settingTevStruct(int, cXyz*, dKy_tevstr_c*);
    /* 801A4DA0 */ void setLightTevColorType_MAJI(J3DModelData*, dKy_tevstr_c*);
};

struct dRes_info_c {};

struct dRes_control_c {
    /* 8003C2EC */ void getRes(char const*, s32, dRes_info_c*, int);
};

struct _GXColor {};

struct dPa_control_c {
    /* 8004D1B8 */ void setSimple(u16, cXyz const*, dKy_tevstr_c const*, u8, _GXColor const&,
                                  _GXColor const&, int, f32);
};

struct dCcD_Stts {
    /* 80083860 */ void Init(int, int, fopAc_ac_c*);
};

struct dCcD_SrcCyl {};

struct dCcD_GStts {
    /* 80083760 */ dCcD_GStts();
};

struct dCcD_GObjInf {
    /* 80083A28 */ dCcD_GObjInf();
    /* 80084460 */ void ChkTgHit();
    /* 800844F8 */ void GetTgHitObj();
    /* 8008457C */ void GetTgHitObjSe();
    /* 800845B0 */ void getHitSeID(u8, int);
};

struct dCcD_Cyl {
    /* 800848B4 */ void Set(dCcD_SrcCyl const&);
};

struct cM3dGCyl {
    /* 8026F1DC */ void SetC(cXyz const&);
    /* 8026F1F8 */ void SetH(f32);
    /* 8026F200 */ void SetR(f32);
    /* 80B9F0B4 */ ~cM3dGCyl();
};

struct cM3dGAab {
    /* 80B9F0FC */ ~cM3dGAab();
};

struct cCcD_Obj {};

struct cCcS {
    /* 80264BA8 */ void Set(cCcD_Obj*);
};

struct Z2SoundObjSimple {
    /* 802BE844 */ Z2SoundObjSimple();
};

struct Z2SoundObjBase {
    /* 802BDFF8 */ void deleteObject();
    /* 802BE4A4 */ void startCollisionSE(u32, u32, Z2SoundObjBase*);
};

struct JAISoundID {};

struct Vec {};

struct Z2SeMgr {
    /* 802AB984 */ void seStart(JAISoundID, Vec const*, u32, s8, f32, f32, f32, f32, u8);
    /* 802AC50C */ void seStartLevel(JAISoundID, Vec const*, u32, s8, f32, f32, f32, f32, u8);
};

struct LIGHT_INFLUENCE {};

struct J3DModel {};

//
// Forward References:
//

static void daTvCdlst_Draw(daTvCdlst_c*);
static void daTvCdlst_Execute(daTvCdlst_c*);
static void daTvCdlst_Delete(daTvCdlst_c*);
static void daTvCdlst_Create(fopAc_ac_c*);

extern "C" void __ct__15daTvCdlst_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__11daTvCdlst_cFv();
extern "C" void CreateHeap__11daTvCdlst_cFv();
extern "C" void create__11daTvCdlst_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void createHeapCallBack__11daTvCdlst_cFP10fopAc_ac_c();
extern "C" void lightInit__11daTvCdlst_cFv();
extern "C" void setLight__11daTvCdlst_cFv();
extern "C" void cutLight__11daTvCdlst_cFv();
extern "C" void pointLightProc__11daTvCdlst_cFv();
extern "C" void Execute__11daTvCdlst_cFv();
extern "C" void Draw__11daTvCdlst_cFv();
extern "C" void Delete__11daTvCdlst_cFv();
extern "C" static void daTvCdlst_Draw__FP11daTvCdlst_c();
extern "C" static void daTvCdlst_Execute__FP11daTvCdlst_c();
extern "C" static void daTvCdlst_Delete__FP11daTvCdlst_c();
extern "C" static void daTvCdlst_Create__FP10fopAc_ac_c();
extern "C" void __dt__15daTvCdlst_HIO_cFv();
extern "C" void __sinit_d_a_obj_TvCdlst_cpp();
extern "C" extern char const* const stringBase0;
extern "C" extern void* g_profile_Obj_TvCdlst[12];

//
// External References:
//

void mDoMtx_ZXYrotM(f32 (*)[4], s16, s16, s16);
void mDoExt_modelUpdateDL(J3DModel*);
void mDoExt_J3DModel__create(J3DModelData*, u32, u32);
void fopAcM_entrySolidHeap(fopAc_ac_c*, int (*)(fopAc_ac_c*), u32);
void fopAcM_setCullSizeBox2(fopAc_ac_c*, J3DModelData*);
void dComIfG_resLoad(request_of_phase_process_class*, char const*);
void dComIfG_resDelete(request_of_phase_process_class*, char const*);
void dComIfGp_getReverb(int);
void dKy_plight_set(LIGHT_INFLUENCE*);
void dKy_plight_cut(LIGHT_INFLUENCE*);
void dKy_BossLight_set(cXyz*, _GXColor*, f32, u8);
void cLib_addCalc(f32*, f32, f32, f32, f32);
void operator delete(void*);

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void GetTgHitObjSe__12dCcD_GObjInfFv();
extern "C" void getHitSeID__12dCcD_GObjInfFUci();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_plight_set__FP15LIGHT_INFLUENCE();
extern "C" void dKy_plight_cut__FP15LIGHT_INFLUENCE();
extern "C" void dKy_BossLight_set__FP4cXyzP8_GXColorfUc();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void __dl__FPv();
extern "C" void PSMTXCopy();
extern "C" void PSMTXTrans();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" extern void* g_fopAc_Method[8];
extern "C" extern void* g_fpcLf_Method[5 + 1 /* padding */];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern u8 g_env_light[4880];
extern "C" extern u8 j3dSys[284];
extern "C" extern u32 g_whiteColor;
extern "C" extern u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();
extern void* const pad_80B9F888[2];

//
// Declarations:
//

/* ############################################################################################## */
/* 80B9F900-80B9F944 0044+00 s=2 e=0 z=0  None .data      mCcDCyl__11daTvCdlst_c */
SECTION_DATA static u8 mCcDCyl__11daTvCdlst_c[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80B9F944-80B9F964 0020+00 s=1 e=0 z=0  None .data      l_daTvCdlst_Method */
SECTION_DATA static void* l_daTvCdlst_Method[8] = {
    (void*)daTvCdlst_Create__FP10fopAc_ac_c,
    (void*)daTvCdlst_Delete__FP11daTvCdlst_c,
    (void*)daTvCdlst_Execute__FP11daTvCdlst_c,
    (void*)NULL,
    (void*)daTvCdlst_Draw__FP11daTvCdlst_c,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 80B9F964-80B9F994 0030+00 s=0 e=0 z=1  None .data      g_profile_Obj_TvCdlst */
SECTION_DATA void* g_profile_Obj_TvCdlst[12] = {
    (void*)0xFFFFFFFD, (void*)0x0003FFFD,
    (void*)0x003B0000, (void*)&g_fpcLf_Method,
    (void*)0x00000754, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x01F00000, (void*)&l_daTvCdlst_Method,
    (void*)0x00044000, (void*)0x000E0000,
};

/* 80B9F994-80B9F9A0 000C+00 s=2 e=0 z=0  None .data      __vt__8cM3dGCyl */
SECTION_DATA static void* __vt__8cM3dGCyl[3] = {
    (void*)NULL,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80B9F9A0-80B9F9AC 000C+00 s=2 e=0 z=0  None .data      __vt__8cM3dGAab */
SECTION_DATA static void* __vt__8cM3dGAab[3] = {
    (void*)NULL,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80B9F9AC-80B9F9B8 000C+00 s=2 e=0 z=0  None .data      __vt__15daTvCdlst_HIO_c */
SECTION_DATA static void* __vt__15daTvCdlst_HIO_c[3] = {
    (void*)NULL,
    (void*)NULL,
    (void*)__dt__15daTvCdlst_HIO_cFv,
};

/* 80B9F9B8-80B9F9C4 000C+00 s=3 e=0 z=0  None .data      __vt__14mDoHIO_entry_c */
SECTION_DATA static void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80B9ECCC-80B9ECF8 002C+00 s=1 e=0 z=0  None .text      __ct__15daTvCdlst_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daTvCdlst_HIO_c::daTvCdlst_HIO_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_TvCdlst/d_a_obj_TvCdlst/__ct__15daTvCdlst_HIO_cFv.s"
}
#pragma pop

/* 80B9ECF8-80B9ED40 0048+00 s=1 e=0 z=0  None .text      __dt__14mDoHIO_entry_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm mDoHIO_entry_c::~mDoHIO_entry_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_TvCdlst/d_a_obj_TvCdlst/__dt__14mDoHIO_entry_cFv.s"
}
#pragma pop

/* 80B9ED40-80B9EDC8 0088+00 s=2 e=0 z=0  None .text      setBaseMtx__11daTvCdlst_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTvCdlst_c::setBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_TvCdlst/d_a_obj_TvCdlst/setBaseMtx__11daTvCdlst_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B9F890-80B9F8C0 0030+00 s=4 e=0 z=0  None .rodata    mCcDObjInfo__11daTvCdlst_c */
SECTION_RODATA static u8 const mCcDObjInfo__11daTvCdlst_c[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xD8, 0xFB, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x79, 0x01, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80B9F8C0-80B9F8C4 0004+00 s=1 e=0 z=0  None .rodata    @3750 */
SECTION_RODATA static u32 const lit_3750 = 0x431B0000;

/* 80B9F8C4-80B9F8C8 0004+00 s=1 e=0 z=0  None .rodata    @3840 */
SECTION_RODATA static u32 const lit_3840 = 0x41200000;

/* 80B9F8C8-80B9F8CC 0004+00 s=1 e=0 z=0  None .rodata    @3841 */
SECTION_RODATA static u32 const lit_3841 = 0x43FA0000;

/* 80B9F8CC-80B9F8D0 0004+00 s=3 e=0 z=0  None .rodata    @3842 */
SECTION_RODATA static u32 const lit_3842 = 0x3F800000;

/* 80B9F8D0-80B9F8D4 0004+00 s=3 e=0 z=0  None .rodata    @3843 */
SECTION_RODATA static u8 const lit_3843[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 80B9F8D4-80B9F8D8 0004+00 s=1 e=0 z=0  None .rodata    @3861 */
SECTION_RODATA static u32 const lit_3861 = 0xBC6642FF;

/* 80B9F8D8-80B9F8DC 0004+00 s=1 e=0 z=0  None .rodata    @3869 */
SECTION_RODATA static u32 const lit_3869 = 0x3F000000;

/* 80B9F8DC-80B9F8E0 0004+00 s=1 e=0 z=0  None .rodata    @3870 */
SECTION_RODATA static u32 const lit_3870 = 0x3DCCCCCD;

/* 80B9F8E0-80B9F8E4 0004+00 s=1 e=0 z=0  None .rodata    @3871 */
SECTION_RODATA static u32 const lit_3871 = 0x38D1B717;

/* 80B9F8E4-80B9F8E8 0004+00 s=1 e=0 z=0  None .rodata    @3872 */
SECTION_RODATA static u32 const lit_3872 = 0x358637BD;

/* 80B9F8E8-80B9F8EC 0004+00 s=1 e=0 z=0  None .rodata    @3937 */
SECTION_RODATA static u32 const lit_3937 = 0xBF800000;

/* 80B9F8EC-80B9F8F0 0004+00 s=1 e=0 z=0  None .rodata    @3938 */
SECTION_RODATA static u32 const lit_3938 = 0x41C80000;

/* 80B9F8F0-80B9F8F4 0004+00 s=1 e=0 z=0  None .rodata    @3939 */
SECTION_RODATA static u32 const lit_3939 = 0x430C0000;

/* 80B9F8F4-80B9F8FE 000A+00 s=4 e=0 z=0  None .rodata    @stringBase0 */
#pragma push
#pragma force_active on
#pragma section ".dead"
SECTION_DEAD char const* const stringBase_80B9F8F4 = "HShokudai";
#pragma pop

/* 80B9EDC8-80B9EE34 006C+00 s=1 e=0 z=0  None .text      CreateHeap__11daTvCdlst_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTvCdlst_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_TvCdlst/d_a_obj_TvCdlst/CreateHeap__11daTvCdlst_cFv.s"
}
#pragma pop

/* 80B9EE34-80B9F0B4 0280+00 s=1 e=0 z=0  None .text      create__11daTvCdlst_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTvCdlst_c::create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_TvCdlst/d_a_obj_TvCdlst/create__11daTvCdlst_cFv.s"
}
#pragma pop

/* 80B9F0B4-80B9F0FC 0048+00 s=1 e=0 z=0  None .text      __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm cM3dGCyl::~cM3dGCyl() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_TvCdlst/d_a_obj_TvCdlst/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 80B9F0FC-80B9F144 0048+00 s=1 e=0 z=0  None .text      __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm cM3dGAab::~cM3dGAab() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_TvCdlst/d_a_obj_TvCdlst/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80B9F144-80B9F164 0020+00 s=1 e=0 z=0  None .text
 * createHeapCallBack__11daTvCdlst_cFP10fopAc_ac_c              */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTvCdlst_c::createHeapCallBack(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_TvCdlst/d_a_obj_TvCdlst/createHeapCallBack__11daTvCdlst_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 80B9F164-80B9F1F0 008C+00 s=1 e=0 z=0  None .text      lightInit__11daTvCdlst_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTvCdlst_c::lightInit() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_TvCdlst/d_a_obj_TvCdlst/lightInit__11daTvCdlst_cFv.s"
}
#pragma pop

/* 80B9F1F0-80B9F220 0030+00 s=2 e=0 z=0  None .text      setLight__11daTvCdlst_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTvCdlst_c::setLight() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_TvCdlst/d_a_obj_TvCdlst/setLight__11daTvCdlst_cFv.s"
}
#pragma pop

/* 80B9F220-80B9F250 0030+00 s=1 e=0 z=0  None .text      cutLight__11daTvCdlst_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTvCdlst_c::cutLight() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_TvCdlst/d_a_obj_TvCdlst/cutLight__11daTvCdlst_cFv.s"
}
#pragma pop

/* 80B9F250-80B9F300 00B0+00 s=1 e=0 z=0  None .text      pointLightProc__11daTvCdlst_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTvCdlst_c::pointLightProc() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_TvCdlst/d_a_obj_TvCdlst/pointLightProc__11daTvCdlst_cFv.s"
}
#pragma pop

/* 80B9F300-80B9F634 0334+00 s=1 e=0 z=0  None .text      Execute__11daTvCdlst_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTvCdlst_c::Execute() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_TvCdlst/d_a_obj_TvCdlst/Execute__11daTvCdlst_cFv.s"
}
#pragma pop

/* 80B9F634-80B9F6D8 00A4+00 s=1 e=0 z=0  None .text      Draw__11daTvCdlst_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTvCdlst_c::Draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_TvCdlst/d_a_obj_TvCdlst/Draw__11daTvCdlst_cFv.s"
}
#pragma pop

/* 80B9F6D8-80B9F730 0058+00 s=1 e=0 z=0  None .text      Delete__11daTvCdlst_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daTvCdlst_c::Delete() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_TvCdlst/d_a_obj_TvCdlst/Delete__11daTvCdlst_cFv.s"
}
#pragma pop

/* 80B9F730-80B9F750 0020+00 s=1 e=0 z=0  None .text      daTvCdlst_Draw__FP11daTvCdlst_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void daTvCdlst_Draw(daTvCdlst_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_TvCdlst/d_a_obj_TvCdlst/daTvCdlst_Draw__FP11daTvCdlst_c.s"
}
#pragma pop

/* 80B9F750-80B9F770 0020+00 s=1 e=0 z=0  None .text      daTvCdlst_Execute__FP11daTvCdlst_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void daTvCdlst_Execute(daTvCdlst_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_TvCdlst/d_a_obj_TvCdlst/daTvCdlst_Execute__FP11daTvCdlst_c.s"
}
#pragma pop

/* 80B9F770-80B9F790 0020+00 s=1 e=0 z=0  None .text      daTvCdlst_Delete__FP11daTvCdlst_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void daTvCdlst_Delete(daTvCdlst_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_TvCdlst/d_a_obj_TvCdlst/daTvCdlst_Delete__FP11daTvCdlst_c.s"
}
#pragma pop

/* 80B9F790-80B9F7B0 0020+00 s=1 e=0 z=0  None .text      daTvCdlst_Create__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void daTvCdlst_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_TvCdlst/d_a_obj_TvCdlst/daTvCdlst_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80B9F7B0-80B9F80C 005C+00 s=2 e=0 z=0  None .text      __dt__15daTvCdlst_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daTvCdlst_HIO_c::~daTvCdlst_HIO_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_TvCdlst/d_a_obj_TvCdlst/__dt__15daTvCdlst_HIO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80B9F9D0-80B9F9DC 000C+00 s=1 e=0 z=0  None .bss       @3622 */
static u8 lit_3622[12];

/* 80B9F9DC-80B9F9E4 0008+00 s=1 e=0 z=0  None .bss       l_HIO */
static u8 l_HIO[8];

/* 80B9F80C-80B9F87C 0070+00 s=0 e=1 z=0  None .text      __sinit_d_a_obj_TvCdlst_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void __sinit_d_a_obj_TvCdlst_cpp() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_TvCdlst/d_a_obj_TvCdlst/__sinit_d_a_obj_TvCdlst_cpp.s"
}
#pragma pop