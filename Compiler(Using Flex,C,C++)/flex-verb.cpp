%{

#include <stdlib.h>
#include <stdio.h>

%}

%%
am|is|are|was|were|do|does|did|shall|should|will|would|be|been|being|have|has|had|might|can|could|may  {printf("\n%s is a verb \n", yytext);}
to|for|of|on|with|by|upon|over|in|at|from|above|about|between|into|since|abort  {printf("\n%s is a preposition \n", yytext);}
[a-z]+  {printf("\n%s not recognized\n", yytext);}
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

