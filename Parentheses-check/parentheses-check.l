%{
    //*********************************************************
    // Flex program to check parentheses in a given file 
    // ********************************************************
    //Global definitions

    #include <stdio.h>
    #include <string.h>
    int r_paren=0,l_paren=0,line_num=1;
    extern FILE *yyin;
%}

%%
 //RULES
 //check for mismatched parentheses in every line of the given file 
"(" {printf("%s",yytext);l_paren++;}
")" {printf("%s",yytext);r_paren++;}
";" {
    printf(";\n");
    (l_paren!=r_paren)?printf("There are %d Mismatched Parentheses on line %d\n",abs(l_paren-r_paren),line_num)
                        :printf("Parentheses are Matched on line %d\n",line_num); 
                            l_paren=0,r_paren=0,line_num++;
    }
. {}
%%

 // Subroutines  
int yywrap(){}

int main(int argc, char *argv[]) {
    FILE *fp=fopen(argv[1],"r");
    yyin=fp;
    yylex();
    fclose(fp);    
    return 0 ;
}

