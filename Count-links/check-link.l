
%{
    //*************************************************
    // Flex program to Check lines ending with .com
    // ************************************************
    //Global definitions
#include<stdio.h> 
extern FILE *yyin;

int count = 0;
%}

    //Character classes

letter [a-zA-Z]

%%
    //letters first followed by a . (\. is used to specify the . in the string) and then a com at the ends
{letter}*.\.com\n {count++;}
. ;

%%
 // Subroutines  

int yywrap(){
    return 1;
} 

int main(int argc, char *argv[]) {
    FILE *fp=fopen(argv[1],"r");
    yyin=fp;
    yylex();
	printf("Count of lines ending with .com are = %d\n",count);   
	fclose(fp);    
    return 0 ;
}
