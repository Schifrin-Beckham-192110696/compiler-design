%{
#include<stdio.h>
%}
%%
[/]{1}[/]{1}[a-zA-Z0=9]* {printf("single line comment", yytext);}
[/]{1}[*]{1}[a-zA-Z0-9]*[*]{1}[/]{1} {printf("multiline comment", yytext);}
%%
int main()
{
printf("\n enter the input string:");
yylex();
}
int yywrap()
{
return 1;
}
