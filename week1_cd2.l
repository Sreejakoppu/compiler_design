%{
#include<stdio.h>
int lc=0,sc=0,ch=0,wc=0,tc=0;
%}
%%
\n {lc++;}
([ ])+ {sc++;}
\t {tc++;}
[^\t\n ]+ {wc++;ch=ch+yyleng;}
%%
int yywrap(){
return 1;
}
int main(){
yylex();
printf("Lines count is %d\n",lc);
printf("Spaces count is %d\n",sc);
printf("Tab count is %d\n",tc);
printf("word count is %d\n",wc);
printf("character count is %d\n",ch);
return 0;
}
