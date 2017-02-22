%{
#include <stdlib.h>
#include "symbol.h"
#include "y.tab.h"
int yywrap();
%}
digit	[0-9]
letter 	[a-zA-Z_]
delim	[ \t]
line	[\n]
ws		{delim}+
%%
{ws}						{ }
{line}						{ return (NL); }
"\+"						{ return (PLUS); }
"\*"						{ return (STAR); }
"\("						{ return (LPAREN); }
"\)"						{ return (RPAREN); }
"\="						{ return (EQL); }
{digit}+					{ yylval.nval=atoi(yytext); return (NUMBER); }
{letter}({letter}|{digit})*	{ yylval.pid = symlook(yytext); return (IDENT); }
"//"[^\n]*					{ }
%%
int yywrap() {
	return 1;
}
