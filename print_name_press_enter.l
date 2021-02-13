
%{ 
    //*********************************************************
    // Flex program to print name when the ENTER key is pressed
    // ********************************************************
    #include<stdio.h>
    char Name[10]; //global declaration of variable Name
%} 
  
%% 
    // Rules
[\n] { 
    printf("\nHello there %s\n",Name);
    return 1;
} 

%% 
 // Subroutines  
int yywrap(){} 

int main(){
    char opt;
    do{
        printf("\n What's your name : ");
        scanf("%s",Name);
        yylex(); 
        printf("Press y or Y to continue : ");
        scanf("%c",&opt);
    
    }while ((opt == 'Y') || (opt =='y'));
    return 0; 
}