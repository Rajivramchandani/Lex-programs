%{

    //*********************************************************
    // Flex program to count vowels and consonants 
    // ********************************************************
    //Global definitions
    int vowel_count=0,consonant_count=0;

%}
 // here vowels and consonants are character classes 
 //which would match when any of the characters in their brackets are encountered

 //here + means that matches with one or more occurances of precceding expression
 // ex: [0-9]+ means any number but not empty string
vowel [aeiou]+
 //the [^] is used for negation. ex: [^verb] means match everything without verb
consonant [^aeiou]
 //eol stands for end of line
eol \n

%%
 //RULES
{eol} return 0; 
[ \t]+ ; // do nothing for multiple spaces (\t stands for space)
{vowel} {vowel_count++;}
{consonant} {consonant_count++;}

%%

int yywrap() {
    return 1;
}

int main() {
    printf("\nEnter a string : ");
    yylex();
    printf("Number of Vowels = %d \nNumber of Consonant = %d \n",vowel_count,consonant_count);
    return 0 ;
}
