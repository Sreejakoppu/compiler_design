%{
#include<stdio.h>
int vc=0;
int cc=0;
%}
%%
[aeiouAEIOU] {vc++;}
[a-zA-Z] {cc++;}
%%
int yywrap(){
return 1;
}
 int main(){
 printf("Enter a String:");
 yylex();
 printf("No.of vowels=%d\n,No.of consonants=%d\n",vc,cc);
 return 0;
 }
