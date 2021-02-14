/* d_kankyo_rain.cpp autogenerated by split.py v0.3 at 2021-01-01 22:35:45.009983 */

#include "JSystem/JMath/JMath.h"
#include "SComponent/c_math.h"
#include "d/d_bg/d_bg_s/d_bg_s_poly_pass_chk.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "d/d_kankyo/d_kankyo.h"
#include "global.h"
#include "msl_c/math.h"

extern "C" {
double func_8036CA54(double);
int dKy_daynight_check(void);
int func_8036608C(const void*, const void*, u32);
int strcmp(const char*, const char*);
void __ct__5csXyzFsss(void);
void __nw__FUli(void);
void __pl__4cXyzCFRC3Vec(void);
void cBgS_NS_GroundCross(void);
void cLib_addCalc__FPfffff(void);
void cM3d_VectorProduct2d__Fffffff(void);
void csXyz_NS_dtor(void);
void cXyz_NS_dtor(void);
void daPy_py_c_NS_checkNowWolfEyeUp(void);
void dBgS_CamGndChk_Wtr_NS_dtor(void);
void dBgS_CamGndChk_Wtr(void);
void dBgS_GndChk_NS_dtor(void);
void dBgS_GndChk(void);
void dBgS_NS_RoofChk(void);
void dBgS_ObjGndChk_All_NS_dtor(void);
void dBgS_RoofChk_NS_dtor(void);
void dBgS_RoofChk(void);
void dCcMassS_Mng_NS_Prepare(void);
void dComIfG_getStageRes(void);
void dComIfG_play_c_NS_getLayerNo(int);
void dComIfGs_PolyDamageOff_Set(void);
void dDlst_peekZ_c_NS_newData(void);
void dEvent_manager_c_NS_getRunEventName(void);
void dKy_actor_addcol_amb_set(void);
void dKy_addcol_fog_set(void);
void dKy_bg_addcol_amb_set(void);
void dKy_bg1_addcol_amb_set(void);
void dKy_darkworld_check(void);
void dKy_efplight_cut(void);
void dKy_efplight_set(void);
void dKy_get_parcent(void);
void dKy_GxFog_set(void);
void dKy_move_room_ratio(void);
void dKy_ParticleColor_get_bg(void);
void dKy_rain_check(void);
void dKy_set_actcol_ratio(void);
void dKy_set_bgcol_ratio(void);
void dKy_set_fogcol_ratio(void);
void dKy_set_vrboxcol_ratio(void);
void dKy_vrbox_addcol_kasumi_set(void);
void dKy_vrbox_addcol_sky0_set(void);
void dKyw_get_wind_pow(void);
void dKyw_get_wind_vec(void);
void dKyw_get_wind_vecpow(void);
void dKyw_pntwind_get_vecpow(void);
void dPa_control_c_NS_set_X1_(void);
void dRes_control_c_NS_getRes(void);
void dScnKy_env_light_c_NS_getDaytime(void);
void dStage_roomControl_c_NS_getStatusRoomDt(void);
void fopKyM_create(void);
void func_80361C24(void);
void func_80361D60(void);
void GXLoadPosMtxImm(void);
void GXLoadTexMtxImm(void);
void GXSetAlphaCompare(void);
void GXSetClipMode(void);
void GXSetColorUpdate(void);
void GXSetCullMode(void);
void GXSetCurrentMtx(void);
void GXSetFog(void);
void GXSetNumIndStages(void);
void GXSetTexCoordGen2(void);
void GXSetZCompLoc(void);
void GXSetZMode(void);
void isDungeonItem__12dSv_memBit_cCFi(void);
void J3DSys_NS_reinitGX(void);
void mDoLib_project(void);
void mDoMtx_XrotM(void);
void mDoMtx_YrotM(void);
void mDoMtx_ZrotM(void);
void mDoMtx_ZXYrotM(void);
void SetPos__11cBgS_GndChkFPC4cXyz(void);
void SNOW_EFF_NS_dtor(void);
void SNOW_EFF(void);
void STAR_EFF_NS_dtor(void);
void STAR_EFF(void);
void Z2EnvSeMgr_NS_startNearThunderSe(void);
}

extern "C" {
// vectle_calc__FP10DOUBLE_POSP4cXyz
// vectle_calc(DOUBLE_POS*, cXyz*)
asm void vectle_calc_X1_(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8005B660.s"
}

// get_vectle_calc__FP4cXyzP4cXyzP4cXyz
// get_vectle_calc(cXyz*, cXyz*, cXyz*)
asm void get_vectle_calc_X1_(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8005B708.s"
}

// dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz
// dKyr_get_vectle_calc(cXyz*, cXyz*, cXyz*)
asm void dKyr_get_vectle_calc(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8005B760.s"
}

// dKy_set_eyevect_calc__FP12camera_classP3Vecff
// dKy_set_eyevect_calc(camera_class*, Vec*, float, float)
asm void dKy_set_eyevect_calc(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8005B780.s"
}

// dKy_set_eyevect_calc2__FP12camera_classP3Vecff
// dKy_set_eyevect_calc2(camera_class*, Vec*, float, float)
asm void dKy_set_eyevect_calc2(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8005B830.s"
}

// dKyr_set_btitex_common__FP9_GXTexObjP7ResTIMG11_GXTexMapID
// dKyr_set_btitex_common(_GXTexObj*, ResTIMG*, _GXTexMapID)
asm void dKyr_set_btitex_common(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8005B92C.s"
}

// dKyr_set_btitex__FP9_GXTexObjP7ResTIMG
// dKyr_set_btitex(_GXTexObj*, ResTIMG*)
asm void dKyr_set_btitex(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8005BA24.s"
}

// dKyr_lenzflare_move__Fv
// dKyr_lenzflare_move(void)
asm void dKyr_lenzflare_move(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8005BA48.s"
}

// dKyr_moon_arrival_check__Fv
// dKyr_moon_arrival_check(void)
asm void dKyr_moon_arrival_check(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8005BED8.s"
}

// dKyr_sun_move__Fv
// dKyr_sun_move(void)
asm void dKyr_sun_move(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8005BF08.s"
}

// dKyr_rain_init__Fv
// dKyr_rain_init(void)
asm void dKyr_rain_init(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8005CC5C.s"
}

// rain_bg_chk__FP19dKankyo_rain_Packeti
// rain_bg_chk(dKankyo_rain_Packet*, int)
asm void rain_bg_chk(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8005CDA8.s"
}

// overhead_bg_chk__Fv
// overhead_bg_chk(void)
asm void overhead_bg_chk(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8005CDD0.s"
}

// forward_overhead_bg_chk__FP4cXyzf
// forward_overhead_bg_chk(cXyz*, float)
asm void forward_overhead_bg_chk(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8005CF78.s"
}

// dKyr_rain_move__Fv
// dKyr_rain_move(void)
asm void dKyr_rain_move(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8005D18C.s"
}

// d_krain_cut_turn_check__Fv
// d_krain_cut_turn_check(void)
asm void d_krain_cut_turn_check(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8005E8B0.s"
}

// dKyr_housi_move__Fv
// dKyr_housi_move(void)
asm void dKyr_housi_move(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8005E8F8.s"
}

// dKyr_snow_init__Fv
// dKyr_snow_init(void)
asm void dKyr_snow_init(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8005FBDC.s"
}

// dKyr_snow_move__Fv
// dKyr_snow_move(void)
asm void dKyr_snow_move(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8005FD48.s"
}

// dKyr_star_init__Fv
// dKyr_star_init(void)
asm void dKyr_star_init(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_80061324.s"
}

// dKyr_star_move__Fv
// dKyr_star_move(void)
asm void dKyr_star_move(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8006140C.s"
}

// cloud_shadow_move__Fv
// cloud_shadow_move(void)
asm void cloud_shadow_move(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_80061438.s"
}

// vrkumo_move__Fv
// vrkumo_move(void)
asm void vrkumo_move(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_800620AC.s"
}

// dKr_cullVtx_Set__Fv
// dKr_cullVtx_Set(void)
asm void dKr_cullVtx_Set(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_80062ADC.s"
}

// dKyr_draw_rev_moon__FPA4_fPPUc
asm void dKyr_draw_rev_moon(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_80062B4C.s"
}

// dKyr_drawSun__FPA4_fP4cXyzR8_GXColorPPUc
asm void dKyr_drawSun(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_80063670.s"
}

// dKyr_drawLenzflare__FPA4_fP4cXyzR8_GXColorPPUc
asm void dKyr_drawLenzflare(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8006444C.s"
}

// dKyr_drawRain__FPA4_fPPUc
asm void dKyr_drawRain(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8006562C.s"
}

// dKyr_drawSibuki__FPA4_fPPUc
asm void dKyr_drawSibuki(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_80066048.s"
}

// dKyr_drawHousi__FPA4_fPPUc
asm void dKyr_drawHousi(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8006653C.s"
}

// dKyr_drawSnow__FPA4_fPPUc
asm void dKyr_drawSnow(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_80067488.s"
}

// dKyr_drawStar__FPA4_fPPUc
asm void dKyr_drawStar(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_800685DC.s"
}

// drawCloudShadow__FPA4_fPPUc
asm void drawCloudShadow(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8006950C.s"
}

// drawVrkumo__FPA4_fR8_GXColorPPUc
asm void drawVrkumo(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8006A090.s"
}

// dKyr_thunder_init__Fv
// dKyr_thunder_init(void)
asm void dKyr_thunder_init(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8006B190.s"
}

// dKyr_thunder_move__Fv
// dKyr_thunder_move(void)
asm void dKyr_thunder_move(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8006B1A8.s"
}

// dKyr_shstar_init__Fv
// dKyr_shstar_init(void)
asm void dKyr_shstar_init(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8006B8DC.s"
}

// dKyr_shstar_move__Fv
// dKyr_shstar_move(void)
asm void dKyr_shstar_move(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8006B8E0.s"
}

// dKyr_odour_init__Fv
// dKyr_odour_init(void)
asm void dKyr_odour_init(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8006B8E4.s"
}

// dKyr_odour_move__Fv
// dKyr_odour_move(void)
asm void dKyr_odour_move(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8006B924.s"
}

// dKyr_odour_draw__FPA4_fPPUc
asm void dKyr_odour_draw(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8006BE0C.s"
}

// dKyr_mud_init__Fv
// dKyr_mud_init(void)
asm void dKyr_mud_init(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8006C790.s"
}

// dKyr_mud_move__Fv
// dKyr_mud_move(void)
asm void dKyr_mud_move(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8006C85C.s"
}

// dKyr_mud_draw__FPA4_fPPUc
asm void dKyr_mud_draw(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8006D01C.s"
}

// dKyr_evil_init__Fv
// dKyr_evil_init(void)
asm void dKyr_evil_init(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8006D914.s"
}

// dKyr_evil_move__Fv
// dKyr_evil_move(void)
asm void dKyr_evil_move(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8006DA04.s"
}

// dKyr_evil_draw2__FPA4_fPPUc
asm void dKyr_evil_draw2(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8006DA7C.s"
}

// dKyr_near_bosslight_check__F4cXyz
// dKyr_near_bosslight_check(cXyz)
asm void dKyr_near_bosslight_check(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8006E448.s"
}

// dKyr_evil_draw__FPA4_fPPUc
asm void dKyr_evil_draw(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8006E6B0.s"
}

// getKandelaarFlamePos__9daPy_py_cFv
// daPy_py_c::getKandelaarFlamePos(void)
asm void func_8006F160(void) {
    nofralloc
#include "d/d_kankyo/d_kankyo_rain/asm/func_8006F160.s"
}
};
