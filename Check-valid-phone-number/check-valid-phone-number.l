
%{ 
    //**********************************************
    // Flex program to check for valid phone number 
    // *********************************************
    //Global definitions
    #include<stdio.h>
    int words=0;
%} 
    //character classes 
    //a phone number can have numbers starting from [1-9] then any number [0-9], and has to have length of 10 this is what the {9} ensures
PhNum [1-9][0-9]{9}
invalid_PhNum [1-9][0-9]{10}
%% 
    //Rules
    //the invalid_PhNum is to account for cases where more than 10 numbers are given 
{PhNum} {printf("Valid phone number\n"); return 0;}
{invalid_PhNum} {printf("More than 10 numbers given\n "); return 0;}
. {}
%% 
 // Subroutines  
int yywrap(){
    return 1;
} 

int main() {
    yylex();
    return 0 ;
}   