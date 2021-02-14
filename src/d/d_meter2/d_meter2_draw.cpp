/* d_meter2_draw.cpp autogenerated by split.py v0.3 at 2021-01-02 00:12:18.355606 */

#include "Z2AudioLib/Z2SeMgr/Z2SeMgr.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "global.h"
#include "m_Do/m_Do_audio/m_Do_audio.h"

extern "C" {
char* strcpy(char*, const char*);
int strcmp(const char*, const char*);
u16 dComIfGs_getMaxLifeGauge(void);
void __ct__9J2DScreenFv(void);
void __dl__FPv(void);
void __nw__FUl(void);
void alloc__7JKRHeapFUli(void);
void animationTransform__7J2DPaneFv(void);
void appendChild__7J2DPaneFP7J2DPane(void);
void cLib_addCalc2__FPffff(void);
void CPaneMgr_NS_getGlobalVtxCenter(void);
void CPaneMgr_NS_paneTrans(void);
void CPaneMgr_NS_setBlackWhite(void);
void CPaneMgr_X1_(void);
void CPaneMgrAlpha_NS_getAlphaRate(void);
void CPaneMgrAlpha_NS_hide(void);
void CPaneMgrAlpha_NS_isVisible(void);
void CPaneMgrAlpha_NS_setAlphaRate(void);
void CPaneMgrAlpha_NS_show(void);
void CPaneMgrAlpha_X1_(void);
void dCam_getBody(void);
void dComIfGp_getSelectItem(void);
void dKantera_icon_c_NS_setAlphaRate(void);
void dKantera_icon_c_NS_setNowGauge(void);
void dKantera_icon_c_NS_setPos(void);
void dKantera_icon_c_NS_setScale(void);
void dKantera_icon_c(void);
void dMeter2Draw_c_NS_changeTextureItemB(void);
void dMeter2Draw_c_NS_changeTextureItemXY(void);
void dMeter2Draw_c_NS_drawButton3D(void);
void dMeter2Draw_c_NS_drawButtonA(void);
void dMeter2Draw_c_NS_drawButtonB(void);
void dMeter2Draw_c_NS_drawButtonC(void);
void dMeter2Draw_c_NS_drawButtonCross(void);
void dMeter2Draw_c_NS_drawButtonR(void);
void dMeter2Draw_c_NS_drawButtonS(void);
void dMeter2Draw_c_NS_drawButtonXY(void);
void dMeter2Draw_c_NS_drawButtonZ(void);
void dMeter2Draw_c_NS_drawKantera(void);
void dMeter2Draw_c_NS_drawKanteraScreen(void);
void dMeter2Draw_c_NS_drawKey(void);
void dMeter2Draw_c_NS_drawLife(void);
void dMeter2Draw_c_NS_drawLightDrop(void);
void dMeter2Draw_c_NS_drawMagic(void);
void dMeter2Draw_c_NS_drawPikari_X1_(void);
void dMeter2Draw_c_NS_drawPikari(void);
void dMeter2Draw_c_NS_drawRupee(void);
void dMeter2Draw_c_NS_getActionString(void);
void dMeter2Draw_c_NS_getCanoeFishing(void);
void dMeter2Draw_c_NS_getFishingType(void);
void dMeter2Draw_c_NS_getNumberTexture(void);
void dMeter2Draw_c_NS_init(void);
void dMeter2Draw_c_NS_initButton(void);
void dMeter2Draw_c_NS_initButtonCross(void);
void dMeter2Draw_c_NS_initLife(void);
void dMeter2Draw_c_NS_initLightDrop(void);
void dMeter2Draw_c_NS_initMagic(void);
void dMeter2Draw_c_NS_initRupeeKey(void);
void dMeter2Draw_c_NS_isBButtonShow(void);
void dMeter2Draw_c_NS_playPikariBckAnimation(void);
void dMeter2Draw_c_NS_playPikariBpkAnimation(void);
void dMeter2Draw_c_NS_setAlphaAnimeMax(void);
void dMeter2Draw_c_NS_setAlphaAnimeMin(void);
void dMeter2Draw_c_NS_setAlphaButtonChange(void);
void dMeter2Draw_c_NS_setAlphaButtonCrossItemAnimeMax(void);
void dMeter2Draw_c_NS_setAlphaButtonCrossItemAnimeMin(void);
void dMeter2Draw_c_NS_setAlphaButtonCrossMapAnimeMax(void);
void dMeter2Draw_c_NS_setAlphaButtonCrossMapAnimeMin(void);
void dMeter2Draw_c_NS_setAlphaKanteraChange(void);
void dMeter2Draw_c_NS_setAlphaKeyChange(void);
void dMeter2Draw_c_NS_setAlphaLifeChange(void);
void dMeter2Draw_c_NS_setAlphaLightDropChange(void);
void dMeter2Draw_c_NS_setAlphaMagicChange(void);
void dMeter2Draw_c_NS_setAlphaOxygenChange(void);
void dMeter2Draw_c_NS_setAlphaRupeeChange(void);
void dMeter2Draw_c_NS_setItemParamB(void);
void dMeter2Draw_c_NS_setItemParamX(void);
void dMeter2Draw_c_NS_setItemParamY(void);
void dMeter2Draw_c_NS_setItemParamZ(void);
void dMeter2Info_c_NS_getString(void);
void dMeter2Info_c_NS_getStringKana(void);
void dMeter2Info_c_NS_getStringKanji(void);
void dMeter2Info_c_NS_isDirectUseItem(void);
void dMeter2Info_c_NS_readItemTexture(void);
void dMeter2Info_getNumberTextureName(void);
void dMeter2Info_isItemOpenCheck(void);
void dMeter2Info_isMapOpenCheck(void);
void dMeter2Info_set2DVibration(void);
void dMsgObject_c_NS_getStatus(void);
void dMsgObject_c_NS_isHowlMessage(void);
void dMsgObject_getGroupID(void);
void dPaneClass_showNullPane(void);
void free__7JKRHeapFPv(void);
void getGlbResource__10JKRArchiveFUlPCcP10JKRArchive(void);
void getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader(void);
void getGlbVtx__7J2DPaneCFUc(void);
void getItem__17dSv_player_item_cCFib(void);
void getLightDropNum__16dSv_light_drop_cCFUc(void);
void isBottleItem__FUc(void);
void isEventBit__11dSv_event_cCFUs(void);
void isLightDropGetFlag__16dSv_light_drop_cCFUc(void);
void J2DAnmLoaderDataBase_NS_load(void);
void J2DPicture_X3_(void);
void J2DPicture_X4_(void);
void J2DScreen_NS_animation(void);
void J2DScreen_NS_draw(void);
void J2DScreen_NS_setPriority(void);
void J2DTextBox_NS_getStringPtr(void);
void J2DTextBox_NS_setString_X1_(void);
void mDoExt_getMesgFont(void);
void rotate__7J2DPaneFff13J2DRotateAxisf(void);
void setBasePosition__7J2DPaneF15J2DBasePosition(void);
}

extern "C" {
// __ct__13dMeter2Draw_cFP10JKRExpHeap
// dMeter2Draw_c::dMeter2Draw_c(JKRExpHeap*)
asm void dMeter2Draw_c(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8020FAB4.s"
}

// __dt__13dMeter2Draw_cFv
// dMeter2Draw_c::~dMeter2Draw_c(void)
asm void func_802102F8(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_802102F8.s"
}

// init__13dMeter2Draw_cFv
// dMeter2Draw_c::init(void)
asm void dMeter2Draw_c_NS_init(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80210FB0.s"
}

// exec__13dMeter2Draw_cFUl
// dMeter2Draw_c::exec(unsigned long)
asm void dMeter2Draw_c_NS_exec(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021135C.s"
}

// draw__13dMeter2Draw_cFv
// dMeter2Draw_c::draw(void)
asm void func_8021151C(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021151C.s"
}

// initLife__13dMeter2Draw_cFv
// dMeter2Draw_c::initLife(void)
asm void dMeter2Draw_c_NS_initLife(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80211BEC.s"
}

// initMagic__13dMeter2Draw_cFv
// dMeter2Draw_c::initMagic(void)
asm void dMeter2Draw_c_NS_initMagic(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80211E64.s"
}

// initLightDrop__13dMeter2Draw_cFv
// dMeter2Draw_c::initLightDrop(void)
asm void dMeter2Draw_c_NS_initLightDrop(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80212190.s"
}

// initRupeeKey__13dMeter2Draw_cFv
// dMeter2Draw_c::initRupeeKey(void)
asm void dMeter2Draw_c_NS_initRupeeKey(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80212404.s"
}

// initButton__13dMeter2Draw_cFv
// dMeter2Draw_c::initButton(void)
asm void dMeter2Draw_c_NS_initButton(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_802126E4.s"
}

// initButtonCross__13dMeter2Draw_cFv
// dMeter2Draw_c::initButtonCross(void)
asm void dMeter2Draw_c_NS_initButtonCross(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021350C.s"
}

// playPikariBckAnimation__13dMeter2Draw_cFf
// dMeter2Draw_c::playPikariBckAnimation(float)
asm void dMeter2Draw_c_NS_playPikariBckAnimation(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80213CEC.s"
}

// setPikariBpkAnimation__13dMeter2Draw_cFP11J2DAnmColor
// dMeter2Draw_c::setPikariBpkAnimation(J2DAnmColor*)
asm void dMeter2Draw_c_NS_setPikariBpkAnimation(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80213D6C.s"
}

// playPikariBpkAnimation__13dMeter2Draw_cFf
// dMeter2Draw_c::playPikariBpkAnimation(float)
asm void dMeter2Draw_c_NS_playPikariBpkAnimation(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80213E3C.s"
}

// playOxygenBpkAnimation__13dMeter2Draw_cFP11J2DAnmColor
// dMeter2Draw_c::playOxygenBpkAnimation(J2DAnmColor*)
asm void dMeter2Draw_c_NS_playOxygenBpkAnimation(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80213E94.s"
}

// drawPikari__13dMeter2Draw_cFP8CPaneMgrPffQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorfUc
asm void dMeter2Draw_c_NS_drawPikari(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80213FF0.s"
}

// drawPikari__13dMeter2Draw_cFffPffQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorfUc
asm void dMeter2Draw_c_NS_drawPikari_X1_(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_802140DC.s"
}

// drawPikariHakusha__13dMeter2Draw_cFffffQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
asm void dMeter2Draw_c_NS_drawPikariHakusha(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021462C.s"
}

// changeTextureLife__13dMeter2Draw_cFibUc
asm void dMeter2Draw_c_NS_changeTextureLife(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_802147CC.s"
}

// drawLife__13dMeter2Draw_cFssff
// dMeter2Draw_c::drawLife(short, short, float, float)
asm void dMeter2Draw_c_NS_drawLife(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_802149F4.s"
}

// setAlphaLifeChange__13dMeter2Draw_cFb
asm void dMeter2Draw_c_NS_setAlphaLifeChange(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80214C20.s"
}

// setAlphaLifeAnimeMin__13dMeter2Draw_cFv
// dMeter2Draw_c::setAlphaLifeAnimeMin(void)
asm void dMeter2Draw_c_NS_setAlphaLifeAnimeMin(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80214DF4.s"
}

// setAlphaLifeAnimeMax__13dMeter2Draw_cFv
// dMeter2Draw_c::setAlphaLifeAnimeMax(void)
asm void dMeter2Draw_c_NS_setAlphaLifeAnimeMax(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80214E54.s"
}

// drawKanteraScreen__13dMeter2Draw_cFUc
// dMeter2Draw_c::drawKanteraScreen(unsigned char)
asm void dMeter2Draw_c_NS_drawKanteraScreen(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80214EB4.s"
}

// drawMagic__13dMeter2Draw_cFssff
// dMeter2Draw_c::drawMagic(short, short, float, float)
asm void dMeter2Draw_c_NS_drawMagic(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80215290.s"
}

// setAlphaMagicChange__13dMeter2Draw_cFb
asm void dMeter2Draw_c_NS_setAlphaMagicChange(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80215380.s"
}

// drawKantera__13dMeter2Draw_cFllff
// dMeter2Draw_c::drawKantera(long, long, float, float)
asm void dMeter2Draw_c_NS_drawKantera(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_802154A8.s"
}

// setAlphaKanteraChange__13dMeter2Draw_cFb
asm void dMeter2Draw_c_NS_setAlphaKanteraChange(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_802155B8.s"
}

// setAlphaKanteraAnimeMin__13dMeter2Draw_cFv
// dMeter2Draw_c::setAlphaKanteraAnimeMin(void)
asm void dMeter2Draw_c_NS_setAlphaKanteraAnimeMin(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_802156E0.s"
}

// setAlphaKanteraAnimeMax__13dMeter2Draw_cFv
// dMeter2Draw_c::setAlphaKanteraAnimeMax(void)
asm void dMeter2Draw_c_NS_setAlphaKanteraAnimeMax(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021575C.s"
}

// drawOxygen__13dMeter2Draw_cFllff
// dMeter2Draw_c::drawOxygen(long, long, float, float)
asm void dMeter2Draw_c_NS_drawOxygen(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_802157E0.s"
}

// setAlphaOxygenChange__13dMeter2Draw_cFb
asm void dMeter2Draw_c_NS_setAlphaOxygenChange(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_802158F0.s"
}

// setAlphaOxygenAnimeMin__13dMeter2Draw_cFv
// dMeter2Draw_c::setAlphaOxygenAnimeMin(void)
asm void dMeter2Draw_c_NS_setAlphaOxygenAnimeMin(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80215A18.s"
}

// setAlphaOxygenAnimeMax__13dMeter2Draw_cFv
// dMeter2Draw_c::setAlphaOxygenAnimeMax(void)
asm void dMeter2Draw_c_NS_setAlphaOxygenAnimeMax(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80215A94.s"
}

// drawLightDrop__13dMeter2Draw_cFUcUcffffUc
// dMeter2Draw_c::drawLightDrop(unsigned char, unsigned char, float, float, float, float, unsigned
// char)
asm void dMeter2Draw_c_NS_drawLightDrop(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80215B18.s"
}

// setAlphaLightDropChange__13dMeter2Draw_cFb
asm void dMeter2Draw_c_NS_setAlphaLightDropChange(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80215DA4.s"
}

// getNowLightDropRateCalc__13dMeter2Draw_cFv
// dMeter2Draw_c::getNowLightDropRateCalc(void)
asm void dMeter2Draw_c_NS_getNowLightDropRateCalc(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80215DA8.s"
}

// setAlphaLightDropAnimeMin__13dMeter2Draw_cFv
// dMeter2Draw_c::setAlphaLightDropAnimeMin(void)
asm void dMeter2Draw_c_NS_setAlphaLightDropAnimeMin(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80215E40.s"
}

// setAlphaLightDropAnimeMax__13dMeter2Draw_cFv
// dMeter2Draw_c::setAlphaLightDropAnimeMax(void)
asm void dMeter2Draw_c_NS_setAlphaLightDropAnimeMax(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80215F88.s"
}

// drawRupee__13dMeter2Draw_cFs
// dMeter2Draw_c::drawRupee(short)
asm void dMeter2Draw_c_NS_drawRupee(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021632C.s"
}

// setAlphaRupeeChange__13dMeter2Draw_cFb
asm void dMeter2Draw_c_NS_setAlphaRupeeChange(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80216684.s"
}

// setAlphaRupeeAnimeMin__13dMeter2Draw_cFv
// dMeter2Draw_c::setAlphaRupeeAnimeMin(void)
asm void dMeter2Draw_c_NS_setAlphaRupeeAnimeMin(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_802168D0.s"
}

// setAlphaRupeeAnimeMax__13dMeter2Draw_cFv
// dMeter2Draw_c::setAlphaRupeeAnimeMax(void)
asm void dMeter2Draw_c_NS_setAlphaRupeeAnimeMax(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80216990.s"
}

// drawKey__13dMeter2Draw_cFs
// dMeter2Draw_c::drawKey(short)
asm void dMeter2Draw_c_NS_drawKey(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80216A40.s"
}

// setAlphaKeyChange__13dMeter2Draw_cFb
asm void dMeter2Draw_c_NS_setAlphaKeyChange(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80216B28.s"
}

// setAlphaKeyAnimeMin__13dMeter2Draw_cFv
// dMeter2Draw_c::setAlphaKeyAnimeMin(void)
asm void dMeter2Draw_c_NS_setAlphaKeyAnimeMin(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80216CA8.s"
}

// setAlphaKeyAnimeMax__13dMeter2Draw_cFv
// dMeter2Draw_c::setAlphaKeyAnimeMax(void)
asm void dMeter2Draw_c_NS_setAlphaKeyAnimeMax(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80216D2C.s"
}

// drawButtonA__13dMeter2Draw_cFUcfffffbb
asm void dMeter2Draw_c_NS_drawButtonA(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80216DAC.s"
}

// drawButtonB__13dMeter2Draw_cFUcbfffffb
asm void dMeter2Draw_c_NS_drawButtonB(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_802170E4.s"
}

// drawButtonR__13dMeter2Draw_cFUcUcbb
asm void dMeter2Draw_c_NS_drawButtonR(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021764C.s"
}

// drawButtonZ__13dMeter2Draw_cFUc
// dMeter2Draw_c::drawButtonZ(unsigned char)
asm void dMeter2Draw_c_NS_drawButtonZ(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_802176EC.s"
}

// drawButton3D__13dMeter2Draw_cFUc
// dMeter2Draw_c::drawButton3D(unsigned char)
asm void dMeter2Draw_c_NS_drawButton3D(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80217904.s"
}

// drawButtonC__13dMeter2Draw_cFUcb
asm void dMeter2Draw_c_NS_drawButtonC(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80217954.s"
}

// drawButtonS__13dMeter2Draw_cFUc
// dMeter2Draw_c::drawButtonS(unsigned char)
asm void dMeter2Draw_c_NS_drawButtonS(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_802179C0.s"
}

// drawButtonBin__13dMeter2Draw_cFUc
// dMeter2Draw_c::drawButtonBin(unsigned char)
asm void dMeter2Draw_c_NS_drawButtonBin(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80217A10.s"
}

// drawButtonXY__13dMeter2Draw_cFiUcUcbb
asm void dMeter2Draw_c_NS_drawButtonXY(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80217AB4.s"
}

// getButtonCrossParentInitTransY__13dMeter2Draw_cFv
// dMeter2Draw_c::getButtonCrossParentInitTransY(void)
asm void dMeter2Draw_c_NS_getButtonCrossParentInitTransY(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80218238.s"
}

// drawButtonCross__13dMeter2Draw_cFff
// dMeter2Draw_c::drawButtonCross(float, float)
asm void dMeter2Draw_c_NS_drawButtonCross(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80218254.s"
}

// setAlphaButtonCrossAnimeMin__13dMeter2Draw_cFv
// dMeter2Draw_c::setAlphaButtonCrossAnimeMin(void)
asm void dMeter2Draw_c_NS_setAlphaButtonCrossAnimeMin(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80218338.s"
}

// setAlphaButtonCrossAnimeMax__13dMeter2Draw_cFv
// dMeter2Draw_c::setAlphaButtonCrossAnimeMax(void)
asm void dMeter2Draw_c_NS_setAlphaButtonCrossAnimeMax(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_802183A8.s"
}

// setAlphaButtonCrossItemAnimeMin__13dMeter2Draw_cFv
// dMeter2Draw_c::setAlphaButtonCrossItemAnimeMin(void)
asm void dMeter2Draw_c_NS_setAlphaButtonCrossItemAnimeMin(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80218448.s"
}

// setAlphaButtonCrossItemAnimeMax__13dMeter2Draw_cFv
// dMeter2Draw_c::setAlphaButtonCrossItemAnimeMax(void)
asm void dMeter2Draw_c_NS_setAlphaButtonCrossItemAnimeMax(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80218524.s"
}

// setAlphaButtonCrossMapAnimeMin__13dMeter2Draw_cFv
// dMeter2Draw_c::setAlphaButtonCrossMapAnimeMin(void)
asm void dMeter2Draw_c_NS_setAlphaButtonCrossMapAnimeMin(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_802185E8.s"
}

// setAlphaButtonCrossMapAnimeMax__13dMeter2Draw_cFv
// dMeter2Draw_c::setAlphaButtonCrossMapAnimeMax(void)
asm void dMeter2Draw_c_NS_setAlphaButtonCrossMapAnimeMax(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_802186C4.s"
}

// setAlphaButtonChange__13dMeter2Draw_cFb
asm void dMeter2Draw_c_NS_setAlphaButtonChange(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80218788.s"
}

// setAlphaButtonAnimeMin__13dMeter2Draw_cFv
// dMeter2Draw_c::setAlphaButtonAnimeMin(void)
asm void dMeter2Draw_c_NS_setAlphaButtonAnimeMin(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021901C.s"
}

// setAlphaButtonAnimeMax__13dMeter2Draw_cFv
// dMeter2Draw_c::setAlphaButtonAnimeMax(void)
asm void dMeter2Draw_c_NS_setAlphaButtonAnimeMax(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_802190A8.s"
}

// setAlphaButtonAAnimeMin__13dMeter2Draw_cFv
// dMeter2Draw_c::setAlphaButtonAAnimeMin(void)
asm void dMeter2Draw_c_NS_setAlphaButtonAAnimeMin(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80219174.s"
}

// setAlphaButtonAAnimeMax__13dMeter2Draw_cFv
// dMeter2Draw_c::setAlphaButtonAAnimeMax(void)
asm void dMeter2Draw_c_NS_setAlphaButtonAAnimeMax(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80219258.s"
}

// setAlphaButtonBAnimeMin__13dMeter2Draw_cFv
// dMeter2Draw_c::setAlphaButtonBAnimeMin(void)
asm void dMeter2Draw_c_NS_setAlphaButtonBAnimeMin(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80219324.s"
}

// setAlphaButtonBAnimeMax__13dMeter2Draw_cFv
// dMeter2Draw_c::setAlphaButtonBAnimeMax(void)
asm void dMeter2Draw_c_NS_setAlphaButtonBAnimeMax(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80219474.s"
}

// setButtonIconAAlpha__13dMeter2Draw_cFUcUlb
asm void dMeter2Draw_c_NS_setButtonIconAAlpha(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_802195A4.s"
}

// setButtonIconBAlpha__13dMeter2Draw_cFUcUlb
asm void dMeter2Draw_c_NS_setButtonIconBAlpha(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80219788.s"
}

// setButtonIconMidonaAlpha__13dMeter2Draw_cFUl
// dMeter2Draw_c::setButtonIconMidonaAlpha(unsigned long)
asm void dMeter2Draw_c_NS_setButtonIconMidonaAlpha(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80219A84.s"
}

// setButtonIconAlpha__13dMeter2Draw_cFiUcUlb
asm void dMeter2Draw_c_NS_setButtonIconAlpha(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_80219E98.s"
}

// getNumberTexture__13dMeter2Draw_cFi
// dMeter2Draw_c::getNumberTexture(int)
asm void dMeter2Draw_c_NS_getNumberTexture(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021A29C.s"
}

// getActionString__13dMeter2Draw_cFUcUcPUc
// dMeter2Draw_c::getActionString(unsigned char, unsigned char, unsigned char*)
asm void dMeter2Draw_c_NS_getActionString(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021A2F4.s"
}

// changeTextureItemB__13dMeter2Draw_cFUc
// dMeter2Draw_c::changeTextureItemB(unsigned char)
asm void dMeter2Draw_c_NS_changeTextureItemB(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021A468.s"
}

// changeTextureItemXY__13dMeter2Draw_cFiUc
// dMeter2Draw_c::changeTextureItemXY(int, unsigned char)
asm void dMeter2Draw_c_NS_changeTextureItemXY(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021A71C.s"
}

// setAlphaAnimeMin__13dMeter2Draw_cFP13CPaneMgrAlphas
// dMeter2Draw_c::setAlphaAnimeMin(CPaneMgrAlpha*, short)
asm void dMeter2Draw_c_NS_setAlphaAnimeMin(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021A9C8.s"
}

// setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
// dMeter2Draw_c::setAlphaAnimeMax(CPaneMgrAlpha*, short)
asm void dMeter2Draw_c_NS_setAlphaAnimeMax(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021AAA4.s"
}

// setItemNum__13dMeter2Draw_cFUcUcUc
// dMeter2Draw_c::setItemNum(unsigned char, unsigned char, unsigned char)
asm void dMeter2Draw_c_NS_setItemNum(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021AB84.s"
}

// drawItemNum__13dMeter2Draw_cFUcf
// dMeter2Draw_c::drawItemNum(unsigned char, float)
asm void dMeter2Draw_c_NS_drawItemNum(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021AEC8.s"
}

// drawKanteraMeter__13dMeter2Draw_cFUcf
// dMeter2Draw_c::drawKanteraMeter(unsigned char, float)
asm void dMeter2Draw_c_NS_drawKanteraMeter(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021AF78.s"
}

// isButtonVisible__13dMeter2Draw_cFv
// dMeter2Draw_c::isButtonVisible(void)
asm void dMeter2Draw_c_NS_isButtonVisible(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021B0C8.s"
}

// setItemParamX__13dMeter2Draw_cFUc
// dMeter2Draw_c::setItemParamX(unsigned char)
asm void dMeter2Draw_c_NS_setItemParamX(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021B104.s"
}

// setItemParamY__13dMeter2Draw_cFUc
// dMeter2Draw_c::setItemParamY(unsigned char)
asm void dMeter2Draw_c_NS_setItemParamY(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021B364.s"
}

// setItemParamZ__13dMeter2Draw_cFUc
// dMeter2Draw_c::setItemParamZ(unsigned char)
asm void dMeter2Draw_c_NS_setItemParamZ(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021B5B0.s"
}

// setItemParamB__13dMeter2Draw_cFUc
// dMeter2Draw_c::setItemParamB(unsigned char)
asm void dMeter2Draw_c_NS_setItemParamB(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021B810.s"
}

// getFishingType__13dMeter2Draw_cFv
// dMeter2Draw_c::getFishingType(void)
asm void dMeter2Draw_c_NS_getFishingType(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021BB6C.s"
}

// getCanoeFishing__13dMeter2Draw_cFv
// dMeter2Draw_c::getCanoeFishing(void)
asm void dMeter2Draw_c_NS_getCanoeFishing(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021BBB4.s"
}

// getCameraSubject__13dMeter2Draw_cFv
// dMeter2Draw_c::getCameraSubject(void)
asm void dMeter2Draw_c_NS_getCameraSubject(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021BC24.s"
}

// getItemSubject__13dMeter2Draw_cFv
// dMeter2Draw_c::getItemSubject(void)
asm void dMeter2Draw_c_NS_getItemSubject(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021BC54.s"
}

// getPlayerSubject__13dMeter2Draw_cFv
// dMeter2Draw_c::getPlayerSubject(void)
asm void dMeter2Draw_c_NS_getPlayerSubject(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021BCAC.s"
}

// isBButtonShow__13dMeter2Draw_cFb
asm void dMeter2Draw_c_NS_isBButtonShow(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021BCC0.s"
}

// getButtonTimer__13dMeter2Draw_cFv
// dMeter2Draw_c::getButtonTimer(void)
asm void dMeter2Draw_c_NS_getButtonTimer(void) {
    nofralloc
#include "d/d_meter2/d_meter2_draw/asm/func_8021BDD0.s"
}
};
