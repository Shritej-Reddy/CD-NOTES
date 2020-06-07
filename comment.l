
%{ 
#include <stdio.h>
#undef yywrap
#define yywrap() 1
%}


%% 
 
\/\/(.*) {};					 

\/\*(.*\n)*.*\*\/ {};	 
		
%% 


int main() 
{ 
yyout=fopen("out.c","w"); 
yylex(); 
return 0; 
} 
