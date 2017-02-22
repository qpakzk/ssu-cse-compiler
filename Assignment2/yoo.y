%{
#include "symbol.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern int yyparse (void);
extern int yylex();
void yyerror(const char *s);
%}
%union {
	int nval;
	struct symtab *pid;
}
%token EQL NL PLUS STAR LPAREN RPAREN
%token <nval> NUMBER
%token <pid> IDENT
%type <nval> factor term expression
%%
program : statement_list
		;
statement_list : statement_list statement NL
		| statement NL
		;
statement : IDENT EQL expression 	{ $1->value = $3; }
		| expression 				{ printf("%d\n", $1); }
		;
expression : expression PLUS term	{ $$ = $1 + $3; }
		| term						{ $$ = $1; }
		;
term : term STAR factor 			{ $$ = $1 * $3; }
		| factor					{ $$ = $1; }
		;
factor : LPAREN expression RPAREN	{ $$ = $2; }
		| IDENT						{ $$ = $1->value; }
		| NUMBER					{ $$ = $1; }
		;
%%
