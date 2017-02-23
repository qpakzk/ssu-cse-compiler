zero 0
one 1
empty [\t\n]
%{
#include <stdio.h>
#include "y.tab.h"
extern int yylval;
int yylex();
int yywrap();
%}
%%
{zero} {yylval=0; return ZERO;}
{one} {yylval=1; return ONE;}
{empty} {return 0;}
%%
int yywrap() {
	return 1;
}
