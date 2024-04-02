%{
#include<stdio.h>
int length;
%}
%%
[a-zA-Z0-9]+ {length=yyleng;fun(length);}
%%
fun(int length){
if(yytext[0]=='A'){
	if(length==3){
	printf("%s is word with length 3\n",yytext);
	}
    }
}
int yywrap(){
return 1;
}
int main(){
yylex();
return 0;
}

