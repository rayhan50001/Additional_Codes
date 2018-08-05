%{

#include <stdlib.h>
#include <stdio.h>

%}

%%

[0-9]+	{printf(" unsigned integer \n");}
[0-9]*.[0-9]+	{printf(" unsigned Float \n");}
[a-z|A-Z]+[a-z|A-Z|_|0-9]*  {printf(" identifier \n");}
[0-9]+\.[0-9]*[eE][+-][0-9]+|[0-9]+[eE][+-][0-9]+  {printf(" Exponent\n");}
.|\n ECHO;

%%
main()
{
	yylex();
}
int yywrap(void)
{
return 0;
}
int yyerror(void)
{
printf("Error\n");
exit(1);
}

