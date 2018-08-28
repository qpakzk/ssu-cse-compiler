#include "type.h"

BOOLEAN isPointerOrArrayType(A_TYPE *t) {
	if(t && (t->kind == T_POINTER || t->kind == T_ARRAY))
		return(TRUE);
	else
		return(FALSE);
}
