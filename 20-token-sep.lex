%{
#include<stdio.h>
%}
%%
bool|int|float|main|{printf("\n%s is a keyword",yytext);}
[-,+]?[0-9]+ {printf("\n%s isa constants",yytext);}
[,.'"]+ {printf(\n%s is a punctuation chars",yytext);}
[!@#$%^&*()]+ {printf('\n%s is a special chars",yytext):}
[a-zA-Z]+ {printf("\n%s is a identifiers",yytext);}
%%
int yywrap()
{
return 1;
}
int main(int argc,char* argv[])
{
yyin=fopen(argv[1],"r");
yyout=fopen("output.c","w");
yylex();
}
