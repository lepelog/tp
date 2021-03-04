/* d_meter_button.cpp autogenerated by split.py v0.3 at 2021-01-02 05:32:46.736453 */

#include "Z2AudioLib/Z2SeMgr/Z2SeMgr.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "global.h"
#include "m_Do/m_Do_audio/m_Do_audio.h"

extern "C" {
char* strcpy(char*, const char*);
int strcmp(const char*, const char*);
void __ct__9J2DScreenFv(void);
void __dl__FPv(void);
void __nw__FUl(void);
void alloc__7JKRHeapFUli(void);
void cLib_addCalc2__FPffff(void);
void COutFont_c(void);
void __dt__8CPaneMgrFv(void);
void getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs(void);
void getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbsCenter(void);
void paneTrans__8CPaneMgrFff(void);
void CPaneMgr_X1_(void);
void CPaneMgr(void);
void getAlphaRate__13CPaneMgrAlphaFv(void);
void hide__13CPaneMgrAlphaFv(void);
void setAlphaRate__13CPaneMgrAlphaFf(void);
void show__13CPaneMgrAlphaFv(void);
void dComIfG_play_c_NS_getLayerNo(int);
void dComIfGs_isOneZoneSwitch(void);
void dMeter2Draw_c_NS_drawPikari_X1_(void);
void dMeter2Draw_c_NS_getCanoeFishing(void);
void dMeter2Draw_c_NS_setAlphaAnimeMax(void);
void dMeter2Info_c_NS_decFloatingMessageTimer(void);
void dMeter2Info_c_NS_getStringLength(void);
void dMeter2Info_c_NS_readItemTexture(void);
void dMeter2Info_c_NS_resetFloatingMessage(void);
void dMeterButton_c_NS__create(void);
void dMeterButton_c_NS__delete(void);
void dMeterButton_c_NS_alphaAnimeButton3D(void);
void dMeterButton_c_NS_alphaAnimeButton3DB(void);
void dMeterButton_c_NS_alphaAnimeButtonA(void);
void dMeterButton_c_NS_alphaAnimeButtonAB(void);
void dMeterButton_c_NS_alphaAnimeButtonAR(void);
void dMeterButton_c_NS_alphaAnimeButtonB(void);
void dMeterButton_c_NS_alphaAnimeButtonBin(void);
void dMeterButton_c_NS_alphaAnimeButtonC(void);
void dMeterButton_c_NS_alphaAnimeButtonNun(void);
void dMeterButton_c_NS_alphaAnimeButtonNunC(void);
void dMeterButton_c_NS_alphaAnimeButtonNunZ(void);
void dMeterButton_c_NS_alphaAnimeButtonNURE(void);
void dMeterButton_c_NS_alphaAnimeButtonR(void);
void dMeterButton_c_NS_alphaAnimeButtonReel(void);
void dMeterButton_c_NS_alphaAnimeButtonReel2(void);
void dMeterButton_c_NS_alphaAnimeButtonRemo(void);
void dMeterButton_c_NS_alphaAnimeButtonRemo2(void);
void dMeterButton_c_NS_alphaAnimeButtonS(void);
void dMeterButton_c_NS_alphaAnimeButtonTate(void);
void dMeterButton_c_NS_alphaAnimeButtonX(void);
void dMeterButton_c_NS_alphaAnimeButtonY(void);
void dMeterButton_c_NS_alphaAnimeButtonZ(void);
void dMeterButton_c_NS_getCenterPosCalc(void);
void dMeterButton_c_NS_hide_button(void);
void dMeterButton_c_NS_isFastSet(void);
void dMeterButton_c_NS_paneTrans(void);
void dMeterButton_c_NS_pikariCheck(void);
void dMeterButton_c_NS_screenInitButton(void);
void dMeterButton_c_NS_screenInitText(void);
void dMeterButton_c_NS_setAlphaButton3DAnimeMax(void);
void dMeterButton_c_NS_setAlphaButton3DAnimeMin(void);
void dMeterButton_c_NS_setAlphaButton3DBAnimeMax(void);
void dMeterButton_c_NS_setAlphaButton3DBAnimeMin(void);
void dMeterButton_c_NS_setAlphaButton3DVAnimeMax(void);
void dMeterButton_c_NS_setAlphaButton3DVAnimeMin(void);
void dMeterButton_c_NS_setAlphaButtonAAnimeMax(void);
void dMeterButton_c_NS_setAlphaButtonAAnimeMin(void);
void dMeterButton_c_NS_setAlphaButtonABAnimeMax(void);
void dMeterButton_c_NS_setAlphaButtonABAnimeMin(void);
void dMeterButton_c_NS_setAlphaButtonARAnimeMax(void);
void dMeterButton_c_NS_setAlphaButtonARAnimeMin(void);
void dMeterButton_c_NS_setAlphaButtonBAnimeMax(void);
void dMeterButton_c_NS_setAlphaButtonBAnimeMin(void);
void dMeterButton_c_NS_setAlphaButtonBinAnimeMax(void);
void dMeterButton_c_NS_setAlphaButtonBinAnimeMin(void);
void dMeterButton_c_NS_setAlphaButtonCAnimeMax(void);
void dMeterButton_c_NS_setAlphaButtonCAnimeMin(void);
void dMeterButton_c_NS_setAlphaButtonNunAnimeMax(void);
void dMeterButton_c_NS_setAlphaButtonNunAnimeMin(void);
void dMeterButton_c_NS_setAlphaButtonNunCAnimeMax(void);
void dMeterButton_c_NS_setAlphaButtonNunCAnimeMin(void);
void dMeterButton_c_NS_setAlphaButtonNunZAnimeMax(void);
void dMeterButton_c_NS_setAlphaButtonNunZAnimeMin(void);
void dMeterButton_c_NS_setAlphaButtonNUREAnimeMax(void);
void dMeterButton_c_NS_setAlphaButtonNUREAnimeMin(void);
void dMeterButton_c_NS_setAlphaButtonOAnimeMax(void);
void dMeterButton_c_NS_setAlphaButtonOAnimeMin(void);
void dMeterButton_c_NS_setAlphaButtonRAnimeMax(void);
void dMeterButton_c_NS_setAlphaButtonRAnimeMin(void);
void dMeterButton_c_NS_setAlphaButtonReel2AnimeMax(void);
void dMeterButton_c_NS_setAlphaButtonReel2AnimeMin(void);
void dMeterButton_c_NS_setAlphaButtonReelAnimeMax(void);
void dMeterButton_c_NS_setAlphaButtonReelAnimeMin(void);
void dMeterButton_c_NS_setAlphaButtonRemo2AnimeMax(void);
void dMeterButton_c_NS_setAlphaButtonRemo2AnimeMin(void);
void dMeterButton_c_NS_setAlphaButtonRemoAnimeMax(void);
void dMeterButton_c_NS_setAlphaButtonRemoAnimeMin(void);
void dMeterButton_c_NS_setAlphaButtonSAnimeMax(void);
void dMeterButton_c_NS_setAlphaButtonSAnimeMin(void);
void dMeterButton_c_NS_setAlphaButtonTateAnimeMax(void);
void dMeterButton_c_NS_setAlphaButtonTateAnimeMin(void);
void dMeterButton_c_NS_setAlphaButtonXAnimeMax(void);
void dMeterButton_c_NS_setAlphaButtonXAnimeMin(void);
void dMeterButton_c_NS_setAlphaButtonYAnimeMax(void);
void dMeterButton_c_NS_setAlphaButtonYAnimeMin(void);
void dMeterButton_c_NS_setAlphaButtonZAnimeMax(void);
void dMeterButton_c_NS_setAlphaButtonZAnimeMin(void);
void dMeterButton_c_NS_setAlphaIconAnimeMax(void);
void dMeterButton_c_NS_setAlphaIconAnimeMin(void);
void dMeterButton_c_NS_trans_button(void);
void dMeterButton_c_NS_updateButton(void);
void dMeterButton_c_NS_updateText(void);
void getScrnDrawPtr__12dMsgObject_cFv(void);
void getStatus__12dMsgObject_cFv(void);
void getString__12dMsgObject_cFUlP10J2DTextBoxP10J2DTextBoxP7JUTFontP10COutFont_cPcPcPcPs(void);
void isBookMessage__12dMsgObject_cFv(void);
void isBossMessage__12dMsgObject_cFv(void);
void isGetItemMessage__12dMsgObject_cFv(void);
void isHowlMessage__12dMsgObject_cFv(void);
void isKanbanMessage__12dMsgObject_cFv(void);
void isMidonaTalkWait__12dMsgObject_cFv(void);
void isPlaceMessage__12dMsgObject_cFv(void);
void isStaffMessage__12dMsgObject_cFv(void);
void __dt__12dMsgString_cFv(void);
void dMsgString_c(void);
void dPaneClass_showNullPane(void);
void free__7JKRHeapFPv(void);
void getBounds__7J2DPaneFv(void);
void getItem__17dSv_player_item_cCFib(void);
void isEventBit__11dSv_event_cCFUs(void);
void draw__9J2DScreenFffPC14J2DGrafContext(void);
void setPriority__9J2DScreenFPCcUlP10JKRArchive(void);
void getStringPtr__10J2DTextBoxCFv(void);
void setString__10J2DTextBoxFPCce_X1_(void);
void mDoExt_getCurrentHeap(void);
void mDoExt_getMesgFont(void);
}

// additional symbols needed for d_meter_button.cpp
// autogenerated by split.py v0.3 at 2021-01-02 05:32:46.640422
extern u8 lbl_80454788;
extern u8 lbl_8045478C;
extern u8 lbl_804547A0;
extern u8 lbl_803BF258;
extern u8 lbl_80454774;
extern u8 lbl_8045477C;
extern u8 lbl_80454784;
extern u8 lbl_8045475C;
extern u8 lbl_803980E8;
extern u8 lbl_8045474C;
extern u8 lbl_80454790;
extern u8 lbl_80454748;
extern u8 lbl_80454798;
extern u8 lbl_8045479C;
extern u8 lbl_80454760;
extern u8 lbl_80454778;
extern u8 lbl_80454754;
extern u8 lbl_804547A4;
extern u8 lbl_80454750;
extern u8 lbl_80454770;
extern u8 lbl_803BF1A8;
extern u8 lbl_80454758;
extern u8 lbl_80398048;
extern u8 lbl_80454780;
extern u8 lbl_803BF200;
extern u8 lbl_80398098;
extern u8 lbl_80454794;
extern u8 lbl_80454768;
extern u8 lbl_804547A8;
extern u8 lbl_804547AC;
extern u8 lbl_803A6F88;
extern u8 lbl_803790C0;
extern u8 lbl_80430188;
extern u8 lbl_8042EBC8;
extern u8 lbl_80430188;
extern u8 lbl_8043028C;

extern "C" {
// __ct__14dMeterButton_cFv
// dMeterButton_c::dMeterButton_c(void)
asm void dMeterButton_c(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80201328.s"
}

// __dt__14dMeterButton_cFv
// dMeterButton_c::~dMeterButton_c(void)
asm void func_80201370(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80201370.s"
}

// _create__14dMeterButton_cFv
// dMeterButton_c::_create(void)
asm void dMeterButton_c_NS__create(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_802013CC.s"
}

// _execute__14dMeterButton_cFUlbbbbbbbbbbbbbbbbbbbbbb
// dMeterButton_c::_execute(unsigned long, bool, bool, bool, bool, bool, bool, bool, bool, bool,
// bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool)
asm void dMeterButton_c_NS__execute(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80201404.s"
}

// draw__14dMeterButton_cFv
// dMeterButton_c::draw(void)
asm void func_80202240(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80202240.s"
}

// _delete__14dMeterButton_cFv
// dMeterButton_c::_delete(void)
asm void dMeterButton_c_NS__delete(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80202A9C.s"
}

// alphaAnimeButtonA__14dMeterButton_cFUlb
// dMeterButton_c::alphaAnimeButtonA(unsigned long, bool)
asm void dMeterButton_c_NS_alphaAnimeButtonA(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_802032C4.s"
}

// alphaAnimeButtonB__14dMeterButton_cFUlb
// dMeterButton_c::alphaAnimeButtonB(unsigned long, bool)
asm void dMeterButton_c_NS_alphaAnimeButtonB(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_8020339C.s"
}

// alphaAnimeButtonR__14dMeterButton_cFUlb
// dMeterButton_c::alphaAnimeButtonR(unsigned long, bool)
asm void dMeterButton_c_NS_alphaAnimeButtonR(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_802034A8.s"
}

// alphaAnimeButtonZ__14dMeterButton_cFUlb
// dMeterButton_c::alphaAnimeButtonZ(unsigned long, bool)
asm void dMeterButton_c_NS_alphaAnimeButtonZ(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_802035AC.s"
}

// alphaAnimeButton3D__14dMeterButton_cFUlb
// dMeterButton_c::alphaAnimeButton3D(unsigned long, bool)
asm void dMeterButton_c_NS_alphaAnimeButton3D(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_802036C0.s"
}

// alphaAnimeButtonC__14dMeterButton_cFUlb
// dMeterButton_c::alphaAnimeButtonC(unsigned long, bool)
asm void dMeterButton_c_NS_alphaAnimeButtonC(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_802037B8.s"
}

// alphaAnimeButtonS__14dMeterButton_cFUlb
// dMeterButton_c::alphaAnimeButtonS(unsigned long, bool)
asm void dMeterButton_c_NS_alphaAnimeButtonS(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80203878.s"
}

// alphaAnimeButtonX__14dMeterButton_cFUlb
// dMeterButton_c::alphaAnimeButtonX(unsigned long, bool)
asm void dMeterButton_c_NS_alphaAnimeButtonX(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_802038F4.s"
}

// alphaAnimeButtonY__14dMeterButton_cFUlb
// dMeterButton_c::alphaAnimeButtonY(unsigned long, bool)
asm void dMeterButton_c_NS_alphaAnimeButtonY(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80203A08.s"
}

// alphaAnimeButtonNun__14dMeterButton_cFUlb
// dMeterButton_c::alphaAnimeButtonNun(unsigned long, bool)
asm void dMeterButton_c_NS_alphaAnimeButtonNun(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80203B1C.s"
}

// alphaAnimeButtonRemo__14dMeterButton_cFUlb
// dMeterButton_c::alphaAnimeButtonRemo(unsigned long, bool)
asm void dMeterButton_c_NS_alphaAnimeButtonRemo(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80203C30.s"
}

// alphaAnimeButtonRemo2__14dMeterButton_cFUlb
// dMeterButton_c::alphaAnimeButtonRemo2(unsigned long, bool)
asm void dMeterButton_c_NS_alphaAnimeButtonRemo2(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80203D44.s"
}

// alphaAnimeButtonAR__14dMeterButton_cFUlb
// dMeterButton_c::alphaAnimeButtonAR(unsigned long, bool)
asm void dMeterButton_c_NS_alphaAnimeButtonAR(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80203E58.s"
}

// alphaAnimeButton3DB__14dMeterButton_cFUlb
// dMeterButton_c::alphaAnimeButton3DB(unsigned long, bool)
asm void dMeterButton_c_NS_alphaAnimeButton3DB(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80203F60.s"
}

// alphaAnimeButtonNURE__14dMeterButton_cFUlb
// dMeterButton_c::alphaAnimeButtonNURE(unsigned long, bool)
asm void dMeterButton_c_NS_alphaAnimeButtonNURE(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80204068.s"
}

// alphaAnimeButtonReel__14dMeterButton_cFUlb
// dMeterButton_c::alphaAnimeButtonReel(unsigned long, bool)
asm void dMeterButton_c_NS_alphaAnimeButtonReel(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80204170.s"
}

// alphaAnimeButtonReel2__14dMeterButton_cFUlb
// dMeterButton_c::alphaAnimeButtonReel2(unsigned long, bool)
asm void dMeterButton_c_NS_alphaAnimeButtonReel2(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80204278.s"
}

// alphaAnimeButtonAB__14dMeterButton_cFUlb
// dMeterButton_c::alphaAnimeButtonAB(unsigned long, bool)
asm void dMeterButton_c_NS_alphaAnimeButtonAB(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80204368.s"
}

// alphaAnimeButtonTate__14dMeterButton_cFUlb
// dMeterButton_c::alphaAnimeButtonTate(unsigned long, bool)
asm void dMeterButton_c_NS_alphaAnimeButtonTate(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80204458.s"
}

// alphaAnimeButtonNunZ__14dMeterButton_cFUlb
// dMeterButton_c::alphaAnimeButtonNunZ(unsigned long, bool)
asm void dMeterButton_c_NS_alphaAnimeButtonNunZ(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80204548.s"
}

// alphaAnimeButtonNunC__14dMeterButton_cFUlb
// dMeterButton_c::alphaAnimeButtonNunC(unsigned long, bool)
asm void dMeterButton_c_NS_alphaAnimeButtonNunC(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80204620.s"
}

// alphaAnimeButtonBin__14dMeterButton_cFUlb
// dMeterButton_c::alphaAnimeButtonBin(unsigned long, bool)
asm void dMeterButton_c_NS_alphaAnimeButtonBin(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_802046F8.s"
}

// screenInitButton__14dMeterButton_cFv
// dMeterButton_c::screenInitButton(void)
asm void dMeterButton_c_NS_screenInitButton(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_802047E8.s"
}

// screenInitText__14dMeterButton_cFv
// dMeterButton_c::screenInitText(void)
asm void dMeterButton_c_NS_screenInitText(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80205834.s"
}

// updateButton__14dMeterButton_cFv
// dMeterButton_c::updateButton(void)
asm void dMeterButton_c_NS_updateButton(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80205CA0.s"
}

// updateText__14dMeterButton_cFUl
// dMeterButton_c::updateText(unsigned long)
asm void dMeterButton_c_NS_updateText(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80206978.s"
}

// setAlphaButtonAAnimeMin__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonAAnimeMin(void)
asm void dMeterButton_c_NS_setAlphaButtonAAnimeMin(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80206CE0.s"
}

// isFastSet__14dMeterButton_cFi
// dMeterButton_c::isFastSet(int)
asm void dMeterButton_c_NS_isFastSet(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80206D70.s"
}

// setAlphaButtonAAnimeMax__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonAAnimeMax(void)
asm void dMeterButton_c_NS_setAlphaButtonAAnimeMax(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80207060.s"
}

// setAlphaButtonBAnimeMin__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonBAnimeMin(void)
asm void dMeterButton_c_NS_setAlphaButtonBAnimeMin(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_8020714C.s"
}

// setAlphaButtonBAnimeMax__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonBAnimeMax(void)
asm void dMeterButton_c_NS_setAlphaButtonBAnimeMax(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_802071DC.s"
}

// setAlphaButtonRAnimeMin__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonRAnimeMin(void)
asm void dMeterButton_c_NS_setAlphaButtonRAnimeMin(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_802072C8.s"
}

// setAlphaButtonRAnimeMax__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonRAnimeMax(void)
asm void dMeterButton_c_NS_setAlphaButtonRAnimeMax(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80207358.s"
}

// setAlphaButtonZAnimeMin__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonZAnimeMin(void)
asm void dMeterButton_c_NS_setAlphaButtonZAnimeMin(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80207444.s"
}

// setAlphaButtonZAnimeMax__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonZAnimeMax(void)
asm void dMeterButton_c_NS_setAlphaButtonZAnimeMax(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_802074D4.s"
}

// setAlphaButton3DAnimeMin__14dMeterButton_cFv
// dMeterButton_c::setAlphaButton3DAnimeMin(void)
asm void dMeterButton_c_NS_setAlphaButton3DAnimeMin(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_802075C0.s"
}

// setAlphaButton3DAnimeMax__14dMeterButton_cFv
// dMeterButton_c::setAlphaButton3DAnimeMax(void)
asm void dMeterButton_c_NS_setAlphaButton3DAnimeMax(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80207654.s"
}

// setAlphaButton3DVAnimeMin__14dMeterButton_cFv
// dMeterButton_c::setAlphaButton3DVAnimeMin(void)
asm void dMeterButton_c_NS_setAlphaButton3DVAnimeMin(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80207740.s"
}

// setAlphaButton3DVAnimeMax__14dMeterButton_cFv
// dMeterButton_c::setAlphaButton3DVAnimeMax(void)
asm void dMeterButton_c_NS_setAlphaButton3DVAnimeMax(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80207744.s"
}

// setAlphaButtonCAnimeMin__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonCAnimeMin(void)
asm void dMeterButton_c_NS_setAlphaButtonCAnimeMin(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80207748.s"
}

// setAlphaButtonCAnimeMax__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonCAnimeMax(void)
asm void dMeterButton_c_NS_setAlphaButtonCAnimeMax(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_802077EC.s"
}

// setAlphaButtonSAnimeMin__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonSAnimeMin(void)
asm void dMeterButton_c_NS_setAlphaButtonSAnimeMin(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80207A28.s"
}

// setAlphaButtonSAnimeMax__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonSAnimeMax(void)
asm void dMeterButton_c_NS_setAlphaButtonSAnimeMax(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80207AB8.s"
}

// setAlphaButtonXAnimeMin__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonXAnimeMin(void)
asm void dMeterButton_c_NS_setAlphaButtonXAnimeMin(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80207BA4.s"
}

// setAlphaButtonXAnimeMax__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonXAnimeMax(void)
asm void dMeterButton_c_NS_setAlphaButtonXAnimeMax(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80207C34.s"
}

// setAlphaButtonYAnimeMin__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonYAnimeMin(void)
asm void dMeterButton_c_NS_setAlphaButtonYAnimeMin(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80207D20.s"
}

// setAlphaButtonYAnimeMax__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonYAnimeMax(void)
asm void dMeterButton_c_NS_setAlphaButtonYAnimeMax(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80207DB0.s"
}

// setAlphaButtonNunAnimeMin__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonNunAnimeMin(void)
asm void dMeterButton_c_NS_setAlphaButtonNunAnimeMin(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80207E9C.s"
}

// setAlphaButtonNunAnimeMax__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonNunAnimeMax(void)
asm void dMeterButton_c_NS_setAlphaButtonNunAnimeMax(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80207F34.s"
}

// setAlphaButtonRemoAnimeMin__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonRemoAnimeMin(void)
asm void dMeterButton_c_NS_setAlphaButtonRemoAnimeMin(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80208028.s"
}

// setAlphaButtonRemoAnimeMax__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonRemoAnimeMax(void)
asm void dMeterButton_c_NS_setAlphaButtonRemoAnimeMax(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_802080C0.s"
}

// setAlphaButtonRemo2AnimeMin__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonRemo2AnimeMin(void)
asm void dMeterButton_c_NS_setAlphaButtonRemo2AnimeMin(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_802081B4.s"
}

// setAlphaButtonRemo2AnimeMax__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonRemo2AnimeMax(void)
asm void dMeterButton_c_NS_setAlphaButtonRemo2AnimeMax(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_8020824C.s"
}

// setAlphaButtonARAnimeMin__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonARAnimeMin(void)
asm void dMeterButton_c_NS_setAlphaButtonARAnimeMin(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80208340.s"
}

// setAlphaButtonARAnimeMax__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonARAnimeMax(void)
asm void dMeterButton_c_NS_setAlphaButtonARAnimeMax(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_802083D8.s"
}

// setAlphaButton3DBAnimeMin__14dMeterButton_cFv
// dMeterButton_c::setAlphaButton3DBAnimeMin(void)
asm void dMeterButton_c_NS_setAlphaButton3DBAnimeMin(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_802084D8.s"
}

// setAlphaButton3DBAnimeMax__14dMeterButton_cFv
// dMeterButton_c::setAlphaButton3DBAnimeMax(void)
asm void dMeterButton_c_NS_setAlphaButton3DBAnimeMax(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80208570.s"
}

// setAlphaButtonNUREAnimeMin__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonNUREAnimeMin(void)
asm void dMeterButton_c_NS_setAlphaButtonNUREAnimeMin(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80208670.s"
}

// setAlphaButtonNUREAnimeMax__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonNUREAnimeMax(void)
asm void dMeterButton_c_NS_setAlphaButtonNUREAnimeMax(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80208708.s"
}

// setAlphaButtonReelAnimeMin__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonReelAnimeMin(void)
asm void dMeterButton_c_NS_setAlphaButtonReelAnimeMin(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80208808.s"
}

// setAlphaButtonReelAnimeMax__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonReelAnimeMax(void)
asm void dMeterButton_c_NS_setAlphaButtonReelAnimeMax(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_802088A0.s"
}

// setAlphaButtonReel2AnimeMin__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonReel2AnimeMin(void)
asm void dMeterButton_c_NS_setAlphaButtonReel2AnimeMin(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_802089A0.s"
}

// setAlphaButtonReel2AnimeMax__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonReel2AnimeMax(void)
asm void dMeterButton_c_NS_setAlphaButtonReel2AnimeMax(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80208A38.s"
}

// setAlphaButtonABAnimeMin__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonABAnimeMin(void)
asm void dMeterButton_c_NS_setAlphaButtonABAnimeMin(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80208AEC.s"
}

// setAlphaButtonABAnimeMax__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonABAnimeMax(void)
asm void dMeterButton_c_NS_setAlphaButtonABAnimeMax(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80208B84.s"
}

// setAlphaButtonTateAnimeMin__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonTateAnimeMin(void)
asm void dMeterButton_c_NS_setAlphaButtonTateAnimeMin(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80208C38.s"
}

// setAlphaButtonTateAnimeMax__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonTateAnimeMax(void)
asm void dMeterButton_c_NS_setAlphaButtonTateAnimeMax(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80208CD0.s"
}

// setAlphaButtonNunZAnimeMin__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonNunZAnimeMin(void)
asm void dMeterButton_c_NS_setAlphaButtonNunZAnimeMin(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80208D84.s"
}

// setAlphaButtonNunZAnimeMax__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonNunZAnimeMax(void)
asm void dMeterButton_c_NS_setAlphaButtonNunZAnimeMax(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80208E1C.s"
}

// setAlphaButtonNunCAnimeMin__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonNunCAnimeMin(void)
asm void dMeterButton_c_NS_setAlphaButtonNunCAnimeMin(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80208F1C.s"
}

// setAlphaButtonNunCAnimeMax__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonNunCAnimeMax(void)
asm void dMeterButton_c_NS_setAlphaButtonNunCAnimeMax(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80208FB4.s"
}

// setAlphaButtonBinAnimeMin__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonBinAnimeMin(void)
asm void dMeterButton_c_NS_setAlphaButtonBinAnimeMin(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_802090B4.s"
}

// setAlphaButtonBinAnimeMax__14dMeterButton_cFv
// dMeterButton_c::setAlphaButtonBinAnimeMax(void)
asm void dMeterButton_c_NS_setAlphaButtonBinAnimeMax(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_8020914C.s"
}

// setAlphaButtonOAnimeMin__14dMeterButton_cFi
// dMeterButton_c::setAlphaButtonOAnimeMin(int)
asm void dMeterButton_c_NS_setAlphaButtonOAnimeMin(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_8020924C.s"
}

// setAlphaButtonOAnimeMax__14dMeterButton_cFi
// dMeterButton_c::setAlphaButtonOAnimeMax(int)
asm void dMeterButton_c_NS_setAlphaButtonOAnimeMax(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_802092C0.s"
}

// setAlphaIconAnimeMin__14dMeterButton_cFv
// dMeterButton_c::setAlphaIconAnimeMin(void)
asm void dMeterButton_c_NS_setAlphaIconAnimeMin(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80209368.s"
}

// setAlphaIconAnimeMax__14dMeterButton_cFv
// dMeterButton_c::setAlphaIconAnimeMax(void)
asm void dMeterButton_c_NS_setAlphaIconAnimeMax(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_802093D8.s"
}

// isClose__14dMeterButton_cFv
// dMeterButton_c::isClose(void)
asm void dMeterButton_c_NS_isClose(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80209474.s"
}

// setString__14dMeterButton_cFPcUcUcUc
// dMeterButton_c::setString(char*, unsigned char, unsigned char, unsigned char)
asm void dMeterButton_c_NS_setString(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_802095C0.s"
}

// hideAll__14dMeterButton_cFv
// dMeterButton_c::hideAll(void)
asm void dMeterButton_c_NS_hideAll(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80209CEC.s"
}

// getCenterPosCalc__14dMeterButton_cFUcPci
// dMeterButton_c::getCenterPosCalc(unsigned char, char*, int)
asm void dMeterButton_c_NS_getCenterPosCalc(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_80209D7C.s"
}

// trans_button__14dMeterButton_cFif
// dMeterButton_c::trans_button(int, float)
asm void dMeterButton_c_NS_trans_button(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_8020A540.s"
}

// hide_button__14dMeterButton_cFUc
// dMeterButton_c::hide_button(unsigned char)
asm void dMeterButton_c_NS_hide_button(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_8020A94C.s"
}

// pikariCheck__14dMeterButton_cFv
// dMeterButton_c::pikariCheck(void)
asm void dMeterButton_c_NS_pikariCheck(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_8020AA84.s"
}

// paneTrans__14dMeterButton_cFP8CPaneMgrffUc
// dMeterButton_c::paneTrans(CPaneMgr*, float, float, unsigned char)
asm void dMeterButton_c_NS_paneTrans(void) {
    nofralloc
#include "d/d_meter/d_meter_button/asm/func_8020AE68.s"
}
};
