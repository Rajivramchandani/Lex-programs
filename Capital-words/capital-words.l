%{
    //*********************************************************
    // Flex program to print capital string from a given string 
    // ********************************************************
    //Global definitions
%}

%%
 //RULES

[A-Z]+[ \t\n\,\.] {printf("%s",yytext);} //match all capital letters and ignore all spaces, new lines and punctuation
.  {} ; //do nothing for everything else
%%


int yywrap() {}

int main() {
    printf("\nEnter input with capital letters :\n ");
    yylex();
    return 0;
}
