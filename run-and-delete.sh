# How to use : run this file by typing ./run-and-keep ["lex file name"] 

# interupts the end command ctrl + c and performs the following actions 
trap '{ echo "Operation ended. deleting lex.yy.c and a.out" ; 
        rm lex.yy.c a.out; 
        exit 1; }' INT

# in cases where program ends without ctrl+c, delete the lex.yy.c and a.out files before execution
if [[ -e lex.yy.c || -e a.out ]]
then
    echo "Deleting existing lex.yy.c and a.out in folder"
    rm lex.yy.c a.out; 
fi

# if file with name doesnt exist display error message 
if [ -e $1 ]
then
   echo "Running" "$1" 
   flex $1
   gcc lex.yy.c -ll
   ./a.out $2
else
    echo "The file $1 doesn't exist"
fi

# in cases where program ends without ctrl+c, delete the lex.yy.c and a.out files after execution
if [[ -e lex.yy.c || -e a.out ]]
then
    echo ""
    echo "Operation ended. deleting lex.yy.c and a.out" 
    rm lex.yy.c a.out
    exit 1
fi