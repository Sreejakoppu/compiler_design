%{
#include<stdio.h>
int Intcount=0,floatcount=0;
%}
%%
[0-9]+"."[0-9]+ {floatcount++;}
[0-9]+ {Intcount++;}
%%
int yywrap(){
return 1;
}
int main(){
yylex();
printf("No.of Integers are:%d\n",Intcount);
printf("No.of floating point numbers are:%d\n",floatcount);
return 0;
}

