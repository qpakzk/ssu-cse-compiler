#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "symbol.h"

void yyerror(char *s) {
	printf("%s\n", s);
}
struct symtab *symlook(char *s)
{
	struct symtab *sp;
	for(sp=symtab; sp < &symtab[NSYMS]; sp++) {
		/* is it already here ? */
		if(sp->name && !strcmp(sp->name, s))
			return sp;
		/* is it free ? */
		if(!sp->name) {
			sp->name=strdup(s);
			return sp;
		}
		/* otherwise continue to next */
	}
	yyerror("Too many symbols");
	exit(1);
}
