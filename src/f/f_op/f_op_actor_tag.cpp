#include "f/f_op/f_op_actor_tag.h"
#include "SComponent/c_tag.h"
#include "global.h"

u32 fopAcTg_ToActorQ__FP16create_tag_class(create_tag_class* c) {
    return cTg_Addition(&lbl_803A35E0, c);
}

u32 fopAcTg_ActorQTo__FP16create_tag_class(create_tag_class* pTag) {
    return cTg_SingleCutFromTree(pTag);
}

u32 fopAcTg_Init__FP16create_tag_classPv(create_tag_class* pTag, void* data) {
    cTg_Create(pTag, data);
    return 1;
}