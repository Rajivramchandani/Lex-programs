
%{ 
    //****************************************************************
    // Flex program to count number of words starting with vovels
    // ***************************************************************
    //Global definitions
    #include<stdio.h>
    int words=0;
    extern FILE *yyin;
%} 
    //character classes 
letter [a-zA-Z]
space [ \t]
vovel [aeiouAEIOU]
%% 
   
[^{letter}].({vovel}).({letter})* {words++;} 

%% 
 // Subroutines  
int yywrap(){
    return 1;
} 

int main(int argc, char *argv[]) {
    FILE *fp=fopen(argv[1],"r");
    yyin=fp;
    yylex();
    printf("Number of words starting with vovels are :  %d \n",words);
    fclose(fp);    
    return 0 ;
}   