%{

#include <stdlib.h>
#include <stdio.h>

%}

%%
[0-9]*[0|2|4|6|8]+  {printf("Even number \n");}
[0-9]*[1|3|5|7|9]+  {printf("Odd number \n");}

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

