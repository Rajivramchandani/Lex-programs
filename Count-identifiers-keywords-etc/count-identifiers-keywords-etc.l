
%{ 
    //***************************************************************************************************
    // Flex program to count comments, keywords, identifiers, lines, words and spaces from the input file
    // **************************************************************************************************
    //Global definitions
    #include<stdio.h>
    int keywords=0,comments=0,spaces=0,identifiers=0,lines=0;
    extern FILE *yyin;
%} 
    //character classes 
letter [a-zA-Z]
digit [0-9]
newline [ \n]
space [ \t]
comment "//".*
keyword if|else|then|while|for|try|catch|do|char|int
identifier {letter}({letter}|{digit})*

%% 
    // Rules 
{keyword} {keywords++;} 
{comment} {comments++;}
{space} {spaces++;}
{newline} {lines++;}
{identifier} {identifiers++;}

";" {
    return 0;
} 
%% 
 // Subroutines  
int yywrap(){
    return 1;
} 

int main(int argc, char *argv[]) {
    FILE *fp=fopen(argv[1],"r");
    yyin=fp;
    yylex();

    printf("\n Keywords are %d \n",keywords);
    printf(" Comments are %d \n",comments);
    printf(" Spaces are %d \n",spaces);
    printf(" Lines are %d \n",lines+1); // +1 to count the 1st line as newline only matches to new lines
    printf(" Identifiers are %d \n",identifiers);
    printf(" Words are %d \n",identifiers+keywords); //words in comments arnt counted 

    fclose(fp);    
    return 0 ;
}
