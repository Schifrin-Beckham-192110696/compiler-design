%{
#include<stdio.h>
int k=0;
%}
%%
[a-zA-Z]+ {
if(yyleng>k)
{ k= yyleng;
}
}
%%
int yywrap(void)
{
return 1;
}
int main(int arg[],char **argv[])
{
yyin=fopen("a.txt","r");
yylex();
printf("longest: %d",k);
printf("\n");
return 0;
}


