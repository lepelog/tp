/* f_op_draw_tag.cpp autogenerated by split.py v0.4 at 2021-02-15 20:18:52.463012 */

#include "f/f_op/f_op_draw_tag.h"
#include "global.h"

// additional symbols needed for f_op_draw_tag.cpp
// autogenerated by split.py v0.4 at 2021-02-15 20:18:52.463040
extern "C" {
void fopDwTg_CreateQueue__Fv(void);
void fopDwTg_DrawQTo(void);
void fopDwTg_Init__FP16create_tag_classPv(void);
void fopDwTg_ToDrawQ__FP16create_tag_classi(void);
}

// additional symbols needed for f_op_draw_tag.cpp
// autogenerated by split.py v0.4 at 2021-02-15 20:18:52.463045
extern u8 lbl_803F1E10;
extern u8 g_fopDwTg_Queue;

extern "C" {
// fopDwTg_ToDrawQ__FP16create_tag_classi
// fopDwTg_ToDrawQ__FP16create_tag_classi(create_tag_class*, int)
asm void fopDwTg_ToDrawQ__FP16create_tag_classi(void) {
    nofralloc
#include "f/f_op/f_op_draw_tag/asm/func_800204AC.s"
}
};

// fopDwTg_DrawQTo__FP16create_tag_class
// fopDwTg_DrawQTo(create_tag_class*)
asm void fopDwTg_DrawQTo(create_tag_class*) {
    nofralloc
#include "f/f_op/f_op_draw_tag/asm/func_800204D4.s"
}

extern "C" {
// fopDwTg_Init__FP16create_tag_classPv
// fopDwTg_Init__FP16create_tag_classPv(create_tag_class*, void*)
asm void fopDwTg_Init__FP16create_tag_classPv(void) {
    nofralloc
#include "f/f_op/f_op_draw_tag/asm/func_800204F4.s"
}

// fopDwTg_CreateQueue__Fv
// fopDwTg_CreateQueue__Fv(void)
asm void fopDwTg_CreateQueue__Fv(void) {
    nofralloc
#include "f/f_op/f_op_draw_tag/asm/func_80020518.s"
}
};
