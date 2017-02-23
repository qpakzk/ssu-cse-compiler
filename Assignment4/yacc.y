%{
#include <stdio.h>
void yyerror(char *s);
%}

%start number
%token  ZERO ONE
%%
number: decimal {printf("%d\n", $$);}
decimal: decimal binary {$$=$1*2 + $2;}
	| binary {$$=$1;}
binary: ZERO {$$=$1;}
	| ONE {$$=$1;}
%%
int main(void) {
	yyparse();
	return 0;
}

void yyerror(char *s) {
	printf("%s\n", s);
}
