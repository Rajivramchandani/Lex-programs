# How to use : run this file by typing ./run-and-keep ["lex file name"] 

# interupts the end command ctrl + c and performs the following actions 
trap '{ echo "Operation ended. deleting lex.yy.c and a.out" ; 
        rm lex.yy.c a.out; 
        exit 1; }' INT

# if file with name doesnt exist display error message 
if [ -e $1.l ]
then
   echo "Running" "$1" 
   lex $1.l
   gcc lex.yy.c
   ./a.out
else
    echo "The file $1 doesn't exist"
fi