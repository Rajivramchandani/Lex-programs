# How to use : run this file by typing ./run-and-keep ["lex file name"] 

# Create an output folder and move output files into it 
# if an output folder exists delete and create again 

# interupts the end command ctrl + c and performs the following actions 
trap '{ echo "    Operation ended. Output files have been stored in the folder named $1-output" ; 
        if [ -d "$1-output" ]; then   
           echo "Overriding existing directory"
           rm -r $1-output; 
        fi 
        mkdir $1-output; 
        mv ./lex.yy.c ./$1-output; 
        mv ./a.out ./$1-output;
        exit 1; }' INT

# Delete already existing lex.yy.c and a.out files before execution
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

# in cases where program ends without ctrl+c, Save files in respective folder
if [[ -e lex.yy.c || -e a.out ]]
then
   echo ""
   echo "Operation ended. Output files have been stored in the folder named $1-output" 
        if [ -d "$1-output" ]
         then   
           echo "Overriding existing directory"
           rm -r $1-output
        fi 
        mkdir $1-output
        mv ./lex.yy.c ./$1-output
        mv ./a.out ./$1-output
        exit 1
fi