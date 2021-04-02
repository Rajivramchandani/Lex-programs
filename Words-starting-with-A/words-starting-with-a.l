
%{ 
    //****************************************************************
    // Flex program to count number of words starting with 'A' or 'a'
    // ***************************************************************
    //Global definitions
    #include<stdio.h>
    int words=0;
    extern FILE *yyin;
%} 
    //character classes 
letter [a-zA-Z]
space [ \t]

%% 
    // Rules 
    // words starting with 'A' or 'a' shouldn't have any words before
    //if you don't want to count singular occurance of 'a' or 'A' then use : {space}(a|A){space} {}  
[^{letter}](a|A)({letter})*  {words++; } 
. {}
%% 
 // Subroutines  
int yywrap(){
    return 1;
} 

int main(int argc, char *argv[]) {
    FILE *fp=fopen(argv[1],"r");
    yyin=fp;
    yylex();
    printf("Number of words starting with 'A' or 'a' are :  %d \n",words);
    fclose(fp);    
    return 0 ;
}
